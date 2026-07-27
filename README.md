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

To later intercept specific calls (e.g. `EOS_SessionSearch_*`), replace the
corresponding entry: write a real C++ function with `__declspec(dllexport)`
implementing the tweaked logic (calling through to the resolved original
pointer as needed), and drop that name from the generated stub/name list so
there's no symbol clash.

## 1. Get the export list

On the Windows machine, in a **Visual Studio Developer Command Prompt**, run
this against the *original* DLL (copy it out of the game folder first so you
don't lock the live file):

```
dumpbin /exports EOSSDK-Win64-Shipping.dll > exports.txt
```

`eossdk_proxy.def`, `src/eossdk_thunks.asm`, and the name table in
`src/dllmain.cpp` are all generated together from this export list, so they
stay in sync (677 entries, same order).

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

## Next step (not yet implemented)

Once pure passthrough is confirmed working, implement the relevant
`EOS_SessionSearch_*` functions as real C++ exports instead of thunk stubs,
each calling through to the resolved original pointer after adjusting
parameters.
