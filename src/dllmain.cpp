#include <windows.h>

// All real work is done by the linker: every export listed in eossdk_proxy.def
// is a *forwarder* to the renamed original DLL, so the OS loader resolves calls
// directly to the real EOSSDK without any code here. DllMain only needs to exist
// so the module has at least one object file to link.
BOOL APIENTRY DllMain(HMODULE, DWORD, LPVOID) {
    return TRUE;
}
