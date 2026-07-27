# EOSProxy

A pass-through proxy for `EOSSDK-Win64-Shipping.dll` (ARK: Survival Ascended).
This is step 1: confirm the game accepts a swapped-in DLL at all, with
behavior identical to the original, before any interception logic is added.

## How it works

The first approach tried here was pure PE **export forwarding** via a `.def`
file (`entryname=other_module.func`) — this is documented by Microsoft, but
in practice MSVC's linker does not reliably treat it as a real forward; it
falls back to requiring `entryname` to be a locally-defined symbol and fails
with `LNK2001: unresolved external symbol` for every entry. This matches what
real-world MSVC/x64 DLL proxies do in practice: they don't rely on link-time
`.def` forwarding at all, because MSVC also dropped `__declspec(naked)` for
x64, so there's no compiler-level way to write a bare passthrough function
either.

Instead, this project uses a small assembly stub per export:

- **`src/eossdk_thunks.asm`** (MASM, assembled by `ml64.exe`, which ships with
  every MSVC "Desktop development with C++" install): one `PROC` per EOS
  export, each doing nothing but `jmp qword ptr [g_thunkTargets + N]` — an
  indirect jump through a slot in a shared pointer table. This is the same
  pattern the OS uses internally for import address tables.
- **`src/dllmain.cpp`**: at `DLL_PROCESS_ATTACH`, loads the renamed original
  DLL and calls `GetProcAddress` for each of the 677 exports, filling in the
  corresponding slot in `g_thunkTargets`. After that, every call into this
  DLL's exports jumps straight through to the real implementation.
- **`eossdk_proxy.def`**: back to the simple, well-supported form — a bare
  list of export names, each backed by the real MASM symbol of the same name
  (no forwarding syntax, no flakiness).

No self-modifying code, no `VirtualProtect` patching — the indirection lives
in a data table, not in the instruction stream.

To intercept a specific call, its name is dropped from the generated
stub/name list (`eossdk_proxy.def`, `src/eossdk_thunks.asm`,
`src/dllmain.cpp`'s `kExportNames`), and a real C++ function is added
instead, exported via `__declspec(dllexport)` and resolving/calling the
original itself.

**Fourteen functions are intercepted this way today** (`src/hooks.cpp`). Six
are purely for logging (call straight through, unmodified); the other eight
implement mock session injection (see below).

### Logging hooks

- `EOS_SessionSearch_SetParameter` — logs every search-filter key,
  comparison op, and value the game sets before starting a session search.
  Checked first: none of ARK's search filters (`OFFICIALSERVER`,
  `ISPRIVATE`, `minslotsavailable`, `ClusterId`, `SERVERPLATFORMTYPE`,
  `BuildId`, `__EOS_bListening`) carry anything region/country-related, so
  the empty Russian-cluster list isn't an explicit search parameter.
- `EOS_Platform_Create` — logs `ProductId`, `SandboxId`, `ClientId`,
  `bIsServer`, `OverrideCountryCode`, `OverrideLocaleCode` from the options
  struct passed at startup. Result: both overrides are always null, and
  `ProductId`/`SandboxId`/`ClientId` are fixed values shared by the whole
  game (standard EOS deployment credentials, not account-specific) — ruled
  out as a region-filtering lead too.
- `EOS_Platform_SetOverrideCountryCode` / `EOS_Platform_SetOverrideLocaleCode`
  — logs whatever value the game sets at runtime (in practice: never
  called). Epic's own docs for the country code variant say it's *"not
  currently used for anything internally"*.
- `EOS_SessionSearch_Find` — this is the async call that actually executes
  a search. The hook wraps its completion callback: after the real search
  finishes, it walks every result via `GetSearchResultCount` →
  `CopySearchResultByIndex` → `SessionDetails_CopyInfo` (session ID, host
  address, bucket ID, permission level, invites/sanctions flags, etc.) and
  `GetSessionAttributeCount`/`CopySessionAttributeByIndex` (every
  key/value attribute on the session), logs all of it, releases the
  handles, then calls the game's original callback with its original
  `ClientData` restored — so from the game's point of view nothing
  changed. **This turned out to be the key finding**: the ClusterId search
  for the Russian cluster returns 8 fully valid real sessions (real GUIDs,
  real host address, correct map/bucket data) — search was never the
  problem. In-game, selecting one of these still fails ("Session not
  found"), so whatever's actually blocking this happens *after* a
  successful search.
- `EOS_Sessions_JoinSession` — the actual "connect to this session" call,
  added once `Find` proved search itself works. Epic's own docs for this
  function are explicit: *"Backend will validate various conditions to
  make sure it is possible to join the session"* — including a documented
  `EOS_Sessions_PlayerSanctioned` result specifically for accounts with a
  `RESTRICT_MATCHMAKING` sanction. The hook logs `ResultCode` using the
  SDK's own `EOS_EResult_ToString` (declared and called directly here,
  still a plain thunk export elsewhere in this DLL) rather than a
  hand-maintained numeric table, so the name is authoritative.

Root-cause hunting on the *search* side is done: no explicit region
parameter appeared anywhere client-side (search filters, platform options,
overrides), and a VPN test (different exit country, confirmed via
`tracert`) made no difference — consistent with search never having been
filtered at all, which the `Find` logging above later confirmed directly.
The open question moved to the join/connect step, which `JoinSession`'s
logging now covers. If `PlayerSanctioned` shows up, the fix is on Epic's/
the game operator's side (lifting the sanction), not something a client
patch can route around — but knowing which failure it actually is beats
guessing. Mock injection (below) remains useful independent of the answer,
since it supplies the connection info the game needs directly rather than
depending on search or join succeeding for the target server.

`src/eos_types.h` has the minimal struct/enum definitions these hooks need,
hand-written from Epic's public API reference (dev.epicgames.com/docs) —
field layout is a documented public contract, not copied SDK source.

### Mock session injection

The game doesn't get search results through `Find`'s callback — it just
gets a completion signal, then calls `GetSearchResultCount` /
`CopySearchResultByIndex` / `SessionDetails_CopyInfo` /
`GetSessionAttributeCount` / `CopySessionAttributeByIndex` (plus the three
`_Release` functions) itself afterward to enumerate results. So injecting a
fake result means intercepting that whole chain, not just `Find`:

- **`src/session_mock.h` / `.cpp`** load `EOSProxy.mock.json` (next to the
  DLL; see `EOSProxy.mock.json.example` for the format) into a static list
  of `FakeSession`s at startup. `EOS_SessionSearch_SetParameter`'s hook
  additionally records which `ClusterId` (if any) each search handle was
  constrained to, so a search can be matched against fake sessions whose
  `CLUSTERID` attribute equals it.
- Fake `EOS_HSessionDetails` handles are just pointers into that static
  list — stable for the process's lifetime, nothing to allocate or
  release. `EOS_SessionDetails_Info`/`EOS_SessionDetails_Attribute` *are*
  real per-call heap allocations (matching the real SDK's "copy" semantics,
  where the caller must `_Release` each one), tracked in small registries
  so the `_Release` hooks can tell a fake one from a real one without ever
  touching a pointer we don't own.
- Each of the eight hooked functions checks "is this handle/index one of
  ours?" first; real results/indices always come first, so injected
  sessions only ever appear appended at the end of a real result set —
  nothing about existing search behavior changes when there's no match.

Uses `nlohmann/json` (vendored single header, MIT-licensed, in
`third_party/nlohmann/json.hpp`) to parse the config — no other
dependencies.

**Note:** `EOSProxy.mock.json` (the real one, with actual server IPs) is
gitignored — only the `.example` template is tracked. Copy it, edit in your
server's real details, matching `CLUSTERID` to whatever cluster search you
want it to appear in.

## Reading the log

After deploying and triggering the relevant action (launch, login, or a
search), check `EOSProxy.log` next to the DLL. Lines look like:

```
[2026-07-27 12:00:00] SetParameter key="SESSIONFILTER_..." op=EQUAL value(string)="..."
[2026-07-27 12:00:00] Platform_Create ProductId="..." SandboxId="..." ClientId="..." bIsServer=false OverrideCountryCode="(null)" OverrideLocaleCode="(null)"
[2026-07-27 12:00:00] Find called
[2026-07-27 12:00:00] Find completed ResultCode=0
[2026-07-27 12:00:00] Find resultCount=8
[2026-07-27 12:00:00]   [0] SessionId="..." HostAddress="..." NumOpenPublicConnections=... BucketId="..." NumPublicConnections=... PermissionLevel=... bAllowJoinInProgress=... bInvitesAllowed=... bSanctionsEnabled=... OwnerServerClientId="..."
[2026-07-27 12:00:00]   attr key="..." value(string)="..."
[2026-07-27 12:00:00] JoinSession called SessionName="..." bPresenceEnabled=...
[2026-07-27 12:00:00] JoinSession completed ResultCode=... (EOS_Success | EOS_Sessions_PlayerSanctioned | ...)
```

For `SetParameter`, the `key` names are what to look for — anything
filtering by region, platform, or a bucket ID tied to a data-center
location. For `Platform_Create`, `SandboxId`/`OverrideCountryCode`/
`OverrideLocaleCode` are the fields most likely to carry region info, if
any does. For `Find`, a real, non-empty `resultCount` (as confirmed for
the Russian cluster) rules out search-level filtering — check
`bSanctionsEnabled` too: if it's `false` for every result, sanctions
enforcement isn't even active for these sessions, ruling out
`EOS_Sessions_PlayerSanctioned` before even looking at `JoinSession`. For
`JoinSession`, the parenthesized name after `ResultCode` is the actual
answer — anything other than `EOS_Success` is where "Session not found"
is coming from.

**Mock config caution:** don't give a fake session a `MAPNAME`/`BucketId`
that duplicates a real session already in the same cluster — the game's
per-map lookup appears to assume one session per map, and a duplicate
reliably crashed the client in testing (this is separate from, and not
caused by, the proxy or the mock code itself).

## 1. Get the export list

On the Windows machine, in a **Visual Studio Developer Command Prompt**, run
this against the *original* DLL (copy it out of the game folder first so you
don't lock the live file):

```
dumpbin /exports EOSSDK-Win64-Shipping.dll > exports.txt
```

`eossdk_proxy.def`, `src/eossdk_thunks.asm`, and the name table in
`src/dllmain.cpp` are all generated together from this export list (minus
whichever names are hand-hooked in `src/hooks.cpp` — currently 14 of 677),
so they stay in sync with each other.

## 2. Build

Requires CMake + MSVC (x64), with MASM (`ml64.exe`) available — this comes
with the standard "Desktop development with C++" workload. From a Developer
Command Prompt or a regular prompt with `vcvars64.bat` sourced:

```
cmake -S . -B build -A x64
cmake --build build --config Release
```

Output: `build\Release\EOSSDK-Win64-Shipping.dll`.

## 3. Deploy

In the game's `...\ShooterGame\Binaries\Win64\` folder (confirm the exact
path for your install):

1. Rename the real `EOSSDK-Win64-Shipping.dll` to
   `EOSSDK_Win64_Shipping_orig.dll` (underscores — this exact name is what
   `dllmain.cpp` passes to `LoadLibraryA`).
2. Copy the built proxy DLL in as `EOSSDK-Win64-Shipping.dll`.

## 4. Test

- Launch the game normally and confirm it starts and logs into EOS as usual
  (this is the "does the game even accept a swapped DLL" check).
- Confirm existing functionality is unaffected (login, direct-IP connect,
  server browser) — behavior should be indistinguishable from the unmodified
  DLL.
- Watch for crashes, anti-tamper kicks, or bans. If the servers you use run
  BattlEye/EAC, worth checking beforehand whether swapping this DLL trips
  integrity checks — pure passthrough is the safest way to find out before
  any real interception logic is added.

## Next step

Rebuild/redeploy and trigger the cluster transfer again. Check
`EOSProxy.log` for:

1. Each result's `bSanctionsEnabled` in the `Find` output.
2. The `JoinSession completed ResultCode=... (name)` line — this should
   name the actual failure directly.

If it comes back `EOS_Sessions_PlayerSanctioned`, that's an account-level
restriction enforced by Epic's backend, not something a client-side proxy
can fix. If it's something else entirely, that reopens the investigation
with a concrete error to chase instead of a guess.

Separately: when testing `EOSProxy.mock.json`, give fake sessions map names
that don't already exist in the real cluster result (see the caution
above) to avoid crashing the client.
