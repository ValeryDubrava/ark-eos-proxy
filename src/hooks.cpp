#include <windows.h>

#include <cstdarg>
#include <cstdio>
#include <cstring>
#include <ctime>

#include "eos_types.h"

extern "C" HMODULE g_originalModule;
extern "C" HMODULE g_thisModule;

namespace {

void LogLine(const char* fmt, ...) {
    char path[MAX_PATH]{};
    GetModuleFileNameA(g_thisModule, path, MAX_PATH);
    char* lastSlash = strrchr(path, '\\');
    if (lastSlash) {
        *(lastSlash + 1) = '\0';
    }
    strcat_s(path, "EOSProxy.log");

    FILE* f = nullptr;
    if (fopen_s(&f, path, "a") != 0 || !f) {
        return;
    }

    time_t now = time(nullptr);
    tm localTm{};
    localtime_s(&localTm, &now);
    char timeBuf[32];
    strftime(timeBuf, sizeof(timeBuf), "%Y-%m-%d %H:%M:%S", &localTm);
    fprintf(f, "[%s] ", timeBuf);

    va_list args;
    va_start(args, fmt);
    vfprintf(f, fmt, args);
    va_end(args);
    fprintf(f, "\n");

    fclose(f);
}

const char* SafeStr(const char* s) {
    return s ? s : "(null)";
}

const char* ComparisonOpName(EOS_EComparisonOp op) {
    switch (op) {
        case EOS_CO_EQUAL: return "EQUAL";
        case EOS_CO_NOTEQUAL: return "NOTEQUAL";
        case EOS_CO_GREATERTHAN: return "GREATERTHAN";
        case EOS_CO_GREATERTHANOREQUAL: return "GREATERTHANOREQUAL";
        case EOS_CO_LESSTHAN: return "LESSTHAN";
        case EOS_CO_LESSTHANOREQUAL: return "LESSTHANOREQUAL";
        case EOS_CO_DISTANCE: return "DISTANCE";
        case EOS_CO_ANYOF: return "ANYOF";
        case EOS_CO_NOTANYOF: return "NOTANYOF";
        default: return "UNKNOWN";
    }
}

using SetParameterFn = EOS_EResult(EOS_CALL*)(EOS_HSessionSearch, const EOS_SessionSearch_SetParameterOptions*);

SetParameterFn ResolveOriginal() {
    static SetParameterFn original = reinterpret_cast<SetParameterFn>(
        GetProcAddress(g_originalModule, "EOS_SessionSearch_SetParameter"));
    return original;
}

using PlatformCreateFn = EOS_HPlatform(EOS_CALL*)(const EOS_Platform_Options_Prefix*);

PlatformCreateFn ResolvePlatformCreate() {
    static PlatformCreateFn original = reinterpret_cast<PlatformCreateFn>(
        GetProcAddress(g_originalModule, "EOS_Platform_Create"));
    return original;
}

using SetOverrideCodeFn = EOS_EResult(EOS_CALL*)(EOS_HPlatform, const char*);

SetOverrideCodeFn ResolveSetOverrideCountryCode() {
    static SetOverrideCodeFn original = reinterpret_cast<SetOverrideCodeFn>(
        GetProcAddress(g_originalModule, "EOS_Platform_SetOverrideCountryCode"));
    return original;
}

SetOverrideCodeFn ResolveSetOverrideLocaleCode() {
    static SetOverrideCodeFn original = reinterpret_cast<SetOverrideCodeFn>(
        GetProcAddress(g_originalModule, "EOS_Platform_SetOverrideLocaleCode"));
    return original;
}

}  // namespace

extern "C" __declspec(dllexport) EOS_EResult EOS_CALL EOS_SessionSearch_SetParameter(
    EOS_HSessionSearch Handle, const EOS_SessionSearch_SetParameterOptions* Options) {
    if (Options && Options->Parameter) {
        const EOS_Sessions_AttributeData& param = *Options->Parameter;
        const char* op = ComparisonOpName(Options->ComparisonOp);
        switch (param.ValueType) {
            case EOS_AT_BOOLEAN:
                LogLine("SetParameter key=\"%s\" op=%s value(bool)=%s",
                        param.Key, op, param.Value.AsBool ? "true" : "false");
                break;
            case EOS_AT_INT64:
                LogLine("SetParameter key=\"%s\" op=%s value(int64)=%lld",
                        param.Key, op, static_cast<long long>(param.Value.AsInt64));
                break;
            case EOS_AT_DOUBLE:
                LogLine("SetParameter key=\"%s\" op=%s value(double)=%f",
                        param.Key, op, param.Value.AsDouble);
                break;
            case EOS_AT_STRING:
                LogLine("SetParameter key=\"%s\" op=%s value(string)=\"%s\"",
                        param.Key, op, param.Value.AsUtf8 ? param.Value.AsUtf8 : "(null)");
                break;
            default:
                LogLine("SetParameter key=\"%s\" op=%s value type=%d (unknown)",
                        param.Key, op, static_cast<int>(param.ValueType));
                break;
        }
    } else {
        LogLine("SetParameter called with null Options/Parameter");
    }

    SetParameterFn original = ResolveOriginal();
    if (!original) {
        LogLine("SetParameter: failed to resolve original function");
        return -1;
    }

    return original(Handle, Options);
}

// Logged purely as a "does this carry region/locale info" probe - Epic's own
// docs for SetOverrideCountryCode say it's "not currently used for anything
// internally", so this is unlikely to be the filtering mechanism, but it's
// cheap to watch anyway.
extern "C" __declspec(dllexport) EOS_HPlatform EOS_CALL EOS_Platform_Create(
    const EOS_Platform_Options_Prefix* Options) {
    if (Options) {
        LogLine(
            "Platform_Create ProductId=\"%s\" SandboxId=\"%s\" ClientId=\"%s\" "
            "bIsServer=%s OverrideCountryCode=\"%s\" OverrideLocaleCode=\"%s\"",
            SafeStr(Options->ProductId), SafeStr(Options->SandboxId),
            SafeStr(Options->ClientCredentials.ClientId),
            Options->bIsServer ? "true" : "false",
            SafeStr(Options->OverrideCountryCode), SafeStr(Options->OverrideLocaleCode));
    } else {
        LogLine("Platform_Create called with null Options");
    }

    PlatformCreateFn original = ResolvePlatformCreate();
    if (!original) {
        LogLine("Platform_Create: failed to resolve original function");
        return nullptr;
    }

    return original(Options);
}

extern "C" __declspec(dllexport) EOS_EResult EOS_CALL EOS_Platform_SetOverrideCountryCode(
    EOS_HPlatform Handle, const char* NewCountryCode) {
    LogLine("Platform_SetOverrideCountryCode value=\"%s\"", SafeStr(NewCountryCode));

    SetOverrideCodeFn original = ResolveSetOverrideCountryCode();
    if (!original) {
        LogLine("Platform_SetOverrideCountryCode: failed to resolve original function");
        return -1;
    }

    return original(Handle, NewCountryCode);
}

extern "C" __declspec(dllexport) EOS_EResult EOS_CALL EOS_Platform_SetOverrideLocaleCode(
    EOS_HPlatform Handle, const char* NewLocaleCode) {
    LogLine("Platform_SetOverrideLocaleCode value=\"%s\"", SafeStr(NewLocaleCode));

    SetOverrideCodeFn original = ResolveSetOverrideLocaleCode();
    if (!original) {
        LogLine("Platform_SetOverrideLocaleCode: failed to resolve original function");
        return -1;
    }

    return original(Handle, NewLocaleCode);
}
