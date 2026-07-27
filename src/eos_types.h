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
using EOS_HSessionSearch = struct EOS_SessionSearchHandle*;
using EOS_HPlatform = struct EOS_PlatformHandle*;

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
