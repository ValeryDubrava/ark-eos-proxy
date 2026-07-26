# EOSProxy

A pass-through proxy for `EOSSDK-Win64-Shipping.dll` (ARK: Survival Ascended),
built with pure PE **export forwarding** — the Windows loader resolves every
call straight through to the real DLL, so at this stage there is zero custom
logic in the middle. This is step 1: confirm the game accepts a swapped-in
DLL at all before any interception logic is added.

## How it works

A `.def` file can declare an export as a *forward* instead of a real function:

```
EXPORTS
    EOS_Initialize=EOSSDK-Win64-Shipping-orig.EOS_Initialize
```

This tells the loader "when something calls `EOS_Initialize` in this DLL,
actually jump to `EOS_Initialize` in `EOSSDK-Win64-Shipping-orig.dll`". No C++
code runs for forwarded exports — it's resolved entirely by the loader. Once
this pure-forward version works, individual entries (e.g. the
`EOS_SessionSearch_*` functions) can be switched from a forward to a real C++
function that calls into the original via `LoadLibrary`/`GetProcAddress`,
tweaks parameters, and returns the result.

## 1. Get the export list

On the Windows machine, in a **Visual Studio Developer Command Prompt**, run
this against the *original* DLL (copy it out of the game folder first so you
don't lock the live file):

```
dumpbin /exports EOSSDK-Win64-Shipping.dll > exports.txt
```

Paste the contents of `exports.txt` back so `eossdk_proxy.def` can be filled
in with one forward line per export (see the template comments already in
that file).

## 2. Build

Requires CMake + MSVC (x64). From a Developer Command Prompt or a regular
prompt with `vcvars64.bat` sourced:

```
cmake -S . -B build -A x64
cmake --build build --config Release
```

Output: `build\Release\EOSSDK-Win64-Shipping.dll`.

## 3. Deploy

In the game's `...\ShooterGame\Binaries\Win64\` folder (confirm the exact
path for your install):

1. Rename the real `EOSSDK-Win64-Shipping.dll` to
   `EOSSDK-Win64-Shipping-orig.dll`.
2. Copy the built proxy DLL in as `EOSSDK-Win64-Shipping.dll`.

## 4. Test

- Launch the game normally and confirm it starts and logs into EOS as usual
  (this is the "does the game even accept a swapped DLL" check).
- Confirm existing functionality is unaffected (login, direct-IP connect,
  server browser) — with pure forwarding, behavior should be indistinguishable
  from the unmodified DLL.
- Watch for crashes, anti-tamper kicks, or bans. If the servers you use run
  BattlEye/EAC, worth checking beforehand whether swapping this DLL trips
  integrity checks — pure forwarding is the safest way to find out before any
  real interception logic is added.

## Next step (not yet implemented)

Once pure forwarding is confirmed working, change the relevant
`EOS_SessionSearch_*` lines in `eossdk_proxy.def` from forwards to real
exports implemented in `src/`, each loading the original DLL once at
`DllMain` (`DLL_PROCESS_ATTACH`) and calling through via `GetProcAddress`
after adjusting parameters.
