#include <windows.h>

#include <cstdarg>
#include <cstdio>
#include <cstring>
#include <ctime>

#include "eos_types.h"
#include "session_mock.h"

extern "C" HMODULE g_originalModule;
extern "C" HMODULE g_thisModule;

// Forward declarations for the read-chain functions defined near the bottom
// of this file (search "Mock session injection"), needed here because
// OnFindComplete (below) calls them before their definitions appear. They
// used to be plain thunk exports; now they're real hooked implementations
// that check for injected fake sessions before delegating to the original.
// Note: __declspec(dllexport) has to be present here too, not just on the
// definitions below - MSVC treats a plain extern "C" declaration followed by
// a dllexport'd definition of the same function as a linkage mismatch
// (error C2375), not as adding the attribute at definition time.
extern "C" __declspec(dllexport) uint32_t EOS_CALL EOS_SessionSearch_GetSearchResultCount(
    EOS_HSessionSearch Handle, const EOS_SessionSearch_GetSearchResultCountOptions* Options);
extern "C" __declspec(dllexport) EOS_EResult EOS_CALL EOS_SessionSearch_CopySearchResultByIndex(
    EOS_HSessionSearch Handle, const EOS_SessionSearch_CopySearchResultByIndexOptions* Options,
    EOS_HSessionDetails* OutSessionHandle);
extern "C" __declspec(dllexport) EOS_EResult EOS_CALL EOS_SessionDetails_CopyInfo(
    EOS_HSessionDetails Handle, const EOS_SessionDetails_CopyInfoOptions* Options,
    EOS_SessionDetails_Info** OutSessionInfo);
extern "C" __declspec(dllexport) void EOS_CALL EOS_SessionDetails_Info_Release(
    EOS_SessionDetails_Info* SessionInfo);
extern "C" __declspec(dllexport) uint32_t EOS_CALL EOS_SessionDetails_GetSessionAttributeCount(
    EOS_HSessionDetails Handle, const EOS_SessionDetails_GetSessionAttributeCountOptions* Options);
extern "C" __declspec(dllexport) EOS_EResult EOS_CALL EOS_SessionDetails_CopySessionAttributeByIndex(
    EOS_HSessionDetails Handle, const EOS_SessionDetails_CopySessionAttributeByIndexOptions* Options,
    EOS_SessionDetails_Attribute** OutSessionAttribute);
extern "C" __declspec(dllexport) void EOS_CALL EOS_SessionDetails_Attribute_Release(
    EOS_SessionDetails_Attribute* SessionAttribute);
extern "C" __declspec(dllexport) void EOS_CALL EOS_SessionDetails_Release(EOS_HSessionDetails SessionHandle);

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

using FindFn = void(EOS_CALL*)(EOS_HSessionSearch, const EOS_SessionSearch_FindOptions*, void*,
                                EOS_SessionSearch_OnFindCallback);

FindFn ResolveFind() {
    static FindFn original =
        reinterpret_cast<FindFn>(GetProcAddress(g_originalModule, "EOS_SessionSearch_Find"));
    return original;
}

struct FindContext {
    void* originalClientData;
    EOS_SessionSearch_OnFindCallback originalCallback;
    EOS_HSessionSearch handle;
};

void LogAttribute(const char* prefix, const EOS_Sessions_AttributeData& param) {
    switch (param.ValueType) {
        case EOS_AT_BOOLEAN:
            LogLine("%s key=\"%s\" value(bool)=%s", prefix, param.Key,
                    param.Value.AsBool ? "true" : "false");
            break;
        case EOS_AT_INT64:
            LogLine("%s key=\"%s\" value(int64)=%lld", prefix, param.Key,
                     static_cast<long long>(param.Value.AsInt64));
            break;
        case EOS_AT_DOUBLE:
            LogLine("%s key=\"%s\" value(double)=%f", prefix, param.Key, param.Value.AsDouble);
            break;
        case EOS_AT_STRING:
            LogLine("%s key=\"%s\" value(string)=\"%s\"", prefix, param.Key,
                     SafeStr(param.Value.AsUtf8));
            break;
        default:
            LogLine("%s key=\"%s\" value type=%d (unknown)", prefix, param.Key,
                     static_cast<int>(param.ValueType));
            break;
    }
}

void EOS_CALL OnFindComplete(const EOS_SessionSearch_FindCallbackInfo* Data) {
    auto* ctx = static_cast<FindContext*>(Data->ClientData);

    LogLine("Find completed ResultCode=%d", Data->ResultCode);

    if (Data->ResultCode == EOS_Success) {
        EOS_SessionSearch_GetSearchResultCountOptions countOpts{1};
        uint32_t count = EOS_SessionSearch_GetSearchResultCount(ctx->handle, &countOpts);
        LogLine("Find resultCount=%u", count);

        for (uint32_t i = 0; i < count; ++i) {
            EOS_SessionSearch_CopySearchResultByIndexOptions copyOpts{1, i};
            EOS_HSessionDetails details = nullptr;
            if (EOS_SessionSearch_CopySearchResultByIndex(ctx->handle, &copyOpts, &details) != EOS_Success ||
                !details) {
                continue;
            }

            EOS_SessionDetails_CopyInfoOptions infoOpts{1};
            EOS_SessionDetails_Info* info = nullptr;
            if (EOS_SessionDetails_CopyInfo(details, &infoOpts, &info) == EOS_Success && info) {
                LogLine(
                    "  [%u] SessionId=\"%s\" HostAddress=\"%s\" NumOpenPublicConnections=%u "
                    "BucketId=\"%s\" NumPublicConnections=%u PermissionLevel=%d "
                    "bAllowJoinInProgress=%s OwnerServerClientId=\"%s\"",
                    i, SafeStr(info->SessionId), SafeStr(info->HostAddress),
                    info->NumOpenPublicConnections,
                    info->Settings ? SafeStr(info->Settings->BucketId) : "(null)",
                    info->Settings ? info->Settings->NumPublicConnections : 0u,
                    info->Settings ? info->Settings->PermissionLevel : -1,
                    (info->Settings && info->Settings->bAllowJoinInProgress) ? "true" : "false",
                    SafeStr(info->OwnerServerClientId));
                EOS_SessionDetails_Info_Release(info);
            }

            EOS_SessionDetails_GetSessionAttributeCountOptions attrCountOpts{1};
            uint32_t attrCount = EOS_SessionDetails_GetSessionAttributeCount(details, &attrCountOpts);
            for (uint32_t a = 0; a < attrCount; ++a) {
                EOS_SessionDetails_CopySessionAttributeByIndexOptions attrOpts{1, a};
                EOS_SessionDetails_Attribute* attr = nullptr;
                if (EOS_SessionDetails_CopySessionAttributeByIndex(details, &attrOpts, &attr) ==
                        EOS_Success &&
                    attr && attr->Data) {
                    LogAttribute("  attr", *attr->Data);
                    EOS_SessionDetails_Attribute_Release(attr);
                }
            }

            EOS_SessionDetails_Release(details);
        }
    }

    EOS_SessionSearch_FindCallbackInfo forwarded = *Data;
    forwarded.ClientData = ctx->originalClientData;
    EOS_SessionSearch_OnFindCallback originalCallback = ctx->originalCallback;
    delete ctx;

    if (originalCallback) {
        originalCallback(&forwarded);
    }
}

using GetSearchResultCountFn =
    uint32_t(EOS_CALL*)(EOS_HSessionSearch, const EOS_SessionSearch_GetSearchResultCountOptions*);

GetSearchResultCountFn ResolveGetSearchResultCount() {
    static GetSearchResultCountFn original = reinterpret_cast<GetSearchResultCountFn>(
        GetProcAddress(g_originalModule, "EOS_SessionSearch_GetSearchResultCount"));
    return original;
}

using CopySearchResultByIndexFn = EOS_EResult(EOS_CALL*)(
    EOS_HSessionSearch, const EOS_SessionSearch_CopySearchResultByIndexOptions*, EOS_HSessionDetails*);

CopySearchResultByIndexFn ResolveCopySearchResultByIndex() {
    static CopySearchResultByIndexFn original = reinterpret_cast<CopySearchResultByIndexFn>(
        GetProcAddress(g_originalModule, "EOS_SessionSearch_CopySearchResultByIndex"));
    return original;
}

using SessionDetailsCopyInfoFn = EOS_EResult(EOS_CALL*)(
    EOS_HSessionDetails, const EOS_SessionDetails_CopyInfoOptions*, EOS_SessionDetails_Info**);

SessionDetailsCopyInfoFn ResolveSessionDetailsCopyInfo() {
    static SessionDetailsCopyInfoFn original = reinterpret_cast<SessionDetailsCopyInfoFn>(
        GetProcAddress(g_originalModule, "EOS_SessionDetails_CopyInfo"));
    return original;
}

using GetSessionAttributeCountFn =
    uint32_t(EOS_CALL*)(EOS_HSessionDetails, const EOS_SessionDetails_GetSessionAttributeCountOptions*);

GetSessionAttributeCountFn ResolveGetSessionAttributeCount() {
    static GetSessionAttributeCountFn original = reinterpret_cast<GetSessionAttributeCountFn>(
        GetProcAddress(g_originalModule, "EOS_SessionDetails_GetSessionAttributeCount"));
    return original;
}

using CopySessionAttributeByIndexFn = EOS_EResult(EOS_CALL*)(
    EOS_HSessionDetails, const EOS_SessionDetails_CopySessionAttributeByIndexOptions*,
    EOS_SessionDetails_Attribute**);

CopySessionAttributeByIndexFn ResolveCopySessionAttributeByIndex() {
    static CopySessionAttributeByIndexFn original = reinterpret_cast<CopySessionAttributeByIndexFn>(
        GetProcAddress(g_originalModule, "EOS_SessionDetails_CopySessionAttributeByIndex"));
    return original;
}

using SessionDetailsInfoReleaseFn = void(EOS_CALL*)(EOS_SessionDetails_Info*);

SessionDetailsInfoReleaseFn ResolveSessionDetailsInfoRelease() {
    static SessionDetailsInfoReleaseFn original = reinterpret_cast<SessionDetailsInfoReleaseFn>(
        GetProcAddress(g_originalModule, "EOS_SessionDetails_Info_Release"));
    return original;
}

using SessionDetailsAttributeReleaseFn = void(EOS_CALL*)(EOS_SessionDetails_Attribute*);

SessionDetailsAttributeReleaseFn ResolveSessionDetailsAttributeRelease() {
    static SessionDetailsAttributeReleaseFn original = reinterpret_cast<SessionDetailsAttributeReleaseFn>(
        GetProcAddress(g_originalModule, "EOS_SessionDetails_Attribute_Release"));
    return original;
}

using SessionDetailsReleaseFn = void(EOS_CALL*)(EOS_HSessionDetails);

SessionDetailsReleaseFn ResolveSessionDetailsRelease() {
    static SessionDetailsReleaseFn original = reinterpret_cast<SessionDetailsReleaseFn>(
        GetProcAddress(g_originalModule, "EOS_SessionDetails_Release"));
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
        if (param.Key && param.ValueType == EOS_AT_STRING && param.Value.AsUtf8 &&
            std::strcmp(param.Key, "ClusterId") == 0) {
            mock::RecordSearchClusterId(Handle, param.Value.AsUtf8);
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

// Logs the full shape of a search result (session info + settings + every
// attribute) before forwarding the callback unchanged. Purely observational
// for now - this is what a later mock/replace step would need to fabricate.
extern "C" __declspec(dllexport) void EOS_CALL EOS_SessionSearch_Find(
    EOS_HSessionSearch Handle, const EOS_SessionSearch_FindOptions* Options, void* ClientData,
    EOS_SessionSearch_OnFindCallback CompletionDelegate) {
    LogLine("Find called");

    FindFn original = ResolveFind();
    if (!original) {
        LogLine("Find: failed to resolve original function");
        if (CompletionDelegate) {
            EOS_SessionSearch_FindCallbackInfo errorInfo{-1, ClientData};
            CompletionDelegate(&errorInfo);
        }
        return;
    }

    auto* ctx = new FindContext{ClientData, CompletionDelegate, Handle};
    original(Handle, Options, ctx, OnFindComplete);
}

// --- Mock session injection ---
// These five functions are the ones the game actually calls to read search
// results (Find's callback only signals completion). Each one checks
// whether the handle/index refers to one of our injected fake sessions
// first; if not, it delegates to the real function exactly as the generic
// thunks would have. Real result count/indices are always handled first, so
// injected entries only ever appear at the end of the list.

extern "C" __declspec(dllexport) uint32_t EOS_CALL EOS_SessionSearch_GetSearchResultCount(
    EOS_HSessionSearch Handle, const EOS_SessionSearch_GetSearchResultCountOptions* Options) {
    GetSearchResultCountFn original = ResolveGetSearchResultCount();
    uint32_t realCount = original ? original(Handle, Options) : 0;
    return realCount + static_cast<uint32_t>(mock::MatchesForSearch(Handle).size());
}

extern "C" __declspec(dllexport) EOS_EResult EOS_CALL EOS_SessionSearch_CopySearchResultByIndex(
    EOS_HSessionSearch Handle, const EOS_SessionSearch_CopySearchResultByIndexOptions* Options,
    EOS_HSessionDetails* OutSessionHandle) {
    if (!Options || !OutSessionHandle) {
        return -1;
    }

    EOS_SessionSearch_GetSearchResultCountOptions countOpts{1};
    GetSearchResultCountFn countFn = ResolveGetSearchResultCount();
    uint32_t realCount = countFn ? countFn(Handle, &countOpts) : 0;

    if (Options->SessionIndex < realCount) {
        CopySearchResultByIndexFn original = ResolveCopySearchResultByIndex();
        if (!original) {
            return -1;
        }
        return original(Handle, Options, OutSessionHandle);
    }

    auto matches = mock::MatchesForSearch(Handle);
    uint32_t fakeIndex = Options->SessionIndex - realCount;
    if (fakeIndex >= matches.size()) {
        return -1;
    }

    *OutSessionHandle = reinterpret_cast<EOS_HSessionDetails>(const_cast<mock::FakeSession*>(matches[fakeIndex]));
    return EOS_Success;
}

extern "C" __declspec(dllexport) EOS_EResult EOS_CALL EOS_SessionDetails_CopyInfo(
    EOS_HSessionDetails Handle, const EOS_SessionDetails_CopyInfoOptions* Options,
    EOS_SessionDetails_Info** OutSessionInfo) {
    if (!OutSessionInfo) {
        return -1;
    }

    if (mock::IsFakeDetailsHandle(Handle)) {
        *OutSessionInfo = mock::CreateInfo(mock::ResolveFakeDetailsHandle(Handle));
        return EOS_Success;
    }

    SessionDetailsCopyInfoFn original = ResolveSessionDetailsCopyInfo();
    if (!original) {
        return -1;
    }
    return original(Handle, Options, OutSessionInfo);
}

extern "C" __declspec(dllexport) uint32_t EOS_CALL EOS_SessionDetails_GetSessionAttributeCount(
    EOS_HSessionDetails Handle, const EOS_SessionDetails_GetSessionAttributeCountOptions* Options) {
    if (mock::IsFakeDetailsHandle(Handle)) {
        return static_cast<uint32_t>(mock::ResolveFakeDetailsHandle(Handle).attributes.size());
    }

    GetSessionAttributeCountFn original = ResolveGetSessionAttributeCount();
    return original ? original(Handle, Options) : 0;
}

extern "C" __declspec(dllexport) EOS_EResult EOS_CALL EOS_SessionDetails_CopySessionAttributeByIndex(
    EOS_HSessionDetails Handle, const EOS_SessionDetails_CopySessionAttributeByIndexOptions* Options,
    EOS_SessionDetails_Attribute** OutSessionAttribute) {
    if (!Options || !OutSessionAttribute) {
        return -1;
    }

    if (mock::IsFakeDetailsHandle(Handle)) {
        const mock::FakeSession& session = mock::ResolveFakeDetailsHandle(Handle);
        if (Options->AttrIndex >= session.attributes.size()) {
            return -1;
        }
        const auto& kv = session.attributes[Options->AttrIndex];
        *OutSessionAttribute = mock::CreateAttribute(kv.first, kv.second);
        return EOS_Success;
    }

    CopySessionAttributeByIndexFn original = ResolveCopySessionAttributeByIndex();
    if (!original) {
        return -1;
    }
    return original(Handle, Options, OutSessionAttribute);
}

extern "C" __declspec(dllexport) void EOS_CALL EOS_SessionDetails_Info_Release(
    EOS_SessionDetails_Info* SessionInfo) {
    if (!SessionInfo) {
        return;
    }
    if (mock::IsFakeInfo(SessionInfo)) {
        mock::ReleaseInfo(SessionInfo);
        return;
    }
    SessionDetailsInfoReleaseFn original = ResolveSessionDetailsInfoRelease();
    if (original) {
        original(SessionInfo);
    }
}

extern "C" __declspec(dllexport) void EOS_CALL EOS_SessionDetails_Attribute_Release(
    EOS_SessionDetails_Attribute* SessionAttribute) {
    if (!SessionAttribute) {
        return;
    }
    if (mock::IsFakeAttribute(SessionAttribute)) {
        mock::ReleaseAttribute(SessionAttribute);
        return;
    }
    SessionDetailsAttributeReleaseFn original = ResolveSessionDetailsAttributeRelease();
    if (original) {
        original(SessionAttribute);
    }
}

extern "C" __declspec(dllexport) void EOS_CALL EOS_SessionDetails_Release(EOS_HSessionDetails SessionHandle) {
    if (!SessionHandle) {
        return;
    }
    if (mock::IsFakeDetailsHandle(SessionHandle)) {
        return;  // points into our static session list - nothing to free
    }
    SessionDetailsReleaseFn original = ResolveSessionDetailsRelease();
    if (original) {
        original(SessionHandle);
    }
}
