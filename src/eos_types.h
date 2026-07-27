#pragma once

// Minimal subset of the EOS SDK C API's public ABI, hand-written from Epic's
// published API reference (struct/enum field layout is a stable public
// contract, not SDK source) - just enough to read the fields we log.
// https://dev.epicgames.com/docs/api-ref/structs/eos-sessions-attribute-data
// https://dev.epicgames.com/docs/api-ref/structs/eos-session-search-set-parameter-options

#include <cstdint>

#define EOS_CALL

using EOS_Bool = int32_t;
using EOS_EResult = int32_t;
constexpr EOS_EResult EOS_Success = 0;  // first EOS_EResult enumerator, guaranteed 0

using EOS_HSessionSearch = struct EOS_SessionSearchHandle*;
using EOS_HSessionDetails = struct EOS_SessionDetailsHandle*;
using EOS_HPlatform = struct EOS_PlatformHandle*;
using EOS_ProductUserId = struct EOS_ProductUserIdHandle*;

// Placeholder for an enum we never need to interpret, only forward/log as a
// raw integer (permission level, advertisement type).
using EOS_EOnlineSessionPermissionLevel = int32_t;
using EOS_ESessionAttributeAdvertisementType = int32_t;

enum EOS_EAttributeType : int32_t {
    EOS_AT_BOOLEAN = 0,
    EOS_AT_INT64 = 1,
    EOS_AT_DOUBLE = 2,
    EOS_AT_STRING = 3,
};

enum EOS_EComparisonOp : int32_t {
    EOS_CO_EQUAL = 0,
    EOS_CO_NOTEQUAL = 1,
    EOS_CO_GREATERTHAN = 2,
    EOS_CO_GREATERTHANOREQUAL = 3,
    EOS_CO_LESSTHAN = 4,
    EOS_CO_LESSTHANOREQUAL = 5,
    EOS_CO_DISTANCE = 6,
    EOS_CO_ANYOF = 7,
    EOS_CO_NOTANYOF = 8,
};

struct EOS_Sessions_AttributeData {
    int32_t ApiVersion;
    const char* Key;
    union {
        int64_t AsInt64;
        double AsDouble;
        EOS_Bool AsBool;
        const char* AsUtf8;
    } Value;
    EOS_EAttributeType ValueType;
};

struct EOS_SessionSearch_SetParameterOptions {
    int32_t ApiVersion;
    const EOS_Sessions_AttributeData* Parameter;
    EOS_EComparisonOp ComparisonOp;
};

struct EOS_Platform_ClientCredentials {
    const char* ClientId;
    const char* ClientSecret;
};

// EOS never reorders struct fields across SDK versions, only appends new ones
// at the end (that's what ApiVersion is for) - so mirroring just the leading
// fields of EOS_Platform_Options is safe even without knowing every field
// this particular build appended later. We only read up through
// OverrideLocaleCode; anything after that in the real struct is untouched.
struct EOS_Platform_Options_Prefix {
    int32_t ApiVersion;
    void* Reserved;
    const char* ProductId;
    const char* SandboxId;
    EOS_Platform_ClientCredentials ClientCredentials;
    EOS_Bool bIsServer;
    const char* EncryptionKey;
    const char* OverrideCountryCode;
    const char* OverrideLocaleCode;
};

// --- EOS_SessionSearch_Find and result readback ---
// https://dev.epicgames.com/docs/api-ref/functions/eos-session-search-find

struct EOS_SessionSearch_FindOptions {
    int32_t ApiVersion;
    EOS_ProductUserId LocalUserId;
};

struct EOS_SessionSearch_FindCallbackInfo {
    EOS_EResult ResultCode;
    void* ClientData;
};

using EOS_SessionSearch_OnFindCallback = void(EOS_CALL*)(const EOS_SessionSearch_FindCallbackInfo*);

struct EOS_SessionSearch_GetSearchResultCountOptions {
    int32_t ApiVersion;
};

struct EOS_SessionSearch_CopySearchResultByIndexOptions {
    int32_t ApiVersion;
    uint32_t SessionIndex;
};

struct EOS_SessionDetails_CopyInfoOptions {
    int32_t ApiVersion;
};

// Prefix-only mirror (see EOS_Platform_Options_Prefix comment above) - we
// only read up through bInvitesAllowed/bSanctionsEnabled.
struct EOS_SessionDetails_Settings_Prefix {
    int32_t ApiVersion;
    const char* BucketId;
    uint32_t NumPublicConnections;
    EOS_Bool bAllowJoinInProgress;
    EOS_EOnlineSessionPermissionLevel PermissionLevel;
    EOS_Bool bInvitesAllowed;
    EOS_Bool bSanctionsEnabled;
};

struct EOS_SessionDetails_Info {
    int32_t ApiVersion;
    const char* SessionId;
    const char* HostAddress;
    uint32_t NumOpenPublicConnections;
    const EOS_SessionDetails_Settings_Prefix* Settings;
    EOS_ProductUserId OwnerUserId;
    const char* OwnerServerClientId;
};

struct EOS_SessionDetails_GetSessionAttributeCountOptions {
    int32_t ApiVersion;
};

struct EOS_SessionDetails_CopySessionAttributeByIndexOptions {
    int32_t ApiVersion;
    uint32_t AttrIndex;
};

struct EOS_SessionDetails_Attribute {
    int32_t ApiVersion;
    EOS_Sessions_AttributeData* Data;
    EOS_ESessionAttributeAdvertisementType AdvertisementType;
};

// --- EOS_Sessions_JoinSession ---
// https://dev.epicgames.com/docs/api-ref/functions/eos-sessions-join-session
// Per Epic's docs: "Backend will validate various conditions to make sure it
// is possible to join the session" - this is the call whose result we
// actually want to see, since Find/search has already been shown to return
// real, valid session data.

using EOS_HSessions = struct EOS_SessionsHandle*;

struct EOS_Sessions_JoinSessionOptions {
    int32_t ApiVersion;
    const char* SessionName;
    EOS_HSessionDetails SessionHandle;
    EOS_ProductUserId LocalUserId;
    EOS_Bool bPresenceEnabled;
};

struct EOS_Sessions_JoinSessionCallbackInfo {
    EOS_EResult ResultCode;
    void* ClientData;
};

using EOS_Sessions_OnJoinSessionCallback = void(EOS_CALL*)(const EOS_Sessions_JoinSessionCallbackInfo*);
