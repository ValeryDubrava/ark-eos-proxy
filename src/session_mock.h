#pragma once

// Injected fake session support: lets us append fabricated search results
// (loaded from EOSProxy.mock.json, next to the DLL) to whatever the real
// EOS backend returns, matched by the ClusterId the game searched for. This
// exists because the real cluster search comes back empty for at least one
// known-reachable (by direct IP) server, for reasons that turned out not to
// be any locally-visible parameter (see hooks.cpp / SetParameter logging) -
// this sidesteps the question of *why* by supplying the connection info the
// game needs directly, rather than fixing the search itself.

#include <string>
#include <vector>

#include "eos_types.h"

namespace mock {

struct AttributeValue {
    enum class Kind { String, Int64, Double, Bool } kind = Kind::String;
    std::string asString;
    int64_t asInt64 = 0;
    double asDouble = 0;
    bool asBool = false;
};

struct FakeSession {
    std::string sessionId;
    std::string hostAddress;
    uint32_t numOpenPublicConnections = 0;
    std::string bucketId;
    uint32_t numPublicConnections = 0;
    int32_t permissionLevel = 0;
    bool allowJoinInProgress = true;
    std::string ownerServerClientId;
    std::string matchClusterId;
    std::vector<std::pair<std::string, AttributeValue>> attributes;
};

// Loads EOSProxy.mock.json from next to the given module (the proxy DLL
// itself). Safe to call if the file doesn't exist - just yields no fake
// sessions, i.e. a no-op mock layer.
void Init(void* thisModuleHandle);

// Called from the EOS_SessionSearch_SetParameter hook: remembers which
// ClusterId (if any) a given search handle was constrained to, so Find-time
// matching can look it up later.
void RecordSearchClusterId(EOS_HSessionSearch handle, const std::string& clusterId);

// Fake sessions whose matchClusterId equals the ClusterId recorded for this
// search handle (empty if none was recorded, or none match).
std::vector<const FakeSession*> MatchesForSearch(EOS_HSessionSearch handle);

// EOS_HSessionDetails handles for fake sessions are just pointers into our
// own static session list - stable for the process's lifetime, nothing to
// allocate or release.
bool IsFakeDetailsHandle(EOS_HSessionDetails handle);
const FakeSession& ResolveFakeDetailsHandle(EOS_HSessionDetails handle);

// EOS_SessionDetails_Info / EOS_SessionDetails_Attribute are "fresh copy per
// call" APIs in the real SDK (caller must Release each one), so these do
// allocate - tracked in a registry so the Release hooks can tell a fake one
// from a real one without touching potentially-foreign memory.
EOS_SessionDetails_Info* CreateInfo(const FakeSession& session);
bool IsFakeInfo(EOS_SessionDetails_Info* info);
void ReleaseInfo(EOS_SessionDetails_Info* info);

EOS_SessionDetails_Attribute* CreateAttribute(const std::string& key, const AttributeValue& value);
bool IsFakeAttribute(EOS_SessionDetails_Attribute* attr);
void ReleaseAttribute(EOS_SessionDetails_Attribute* attr);

}  // namespace mock
