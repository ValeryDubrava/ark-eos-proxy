#include "session_mock.h"

#include <windows.h>

#include <cstring>
#include <fstream>
#include <mutex>
#include <unordered_map>
#include <unordered_set>

#include <nlohmann/json.hpp>

namespace mock {
namespace {

std::vector<FakeSession> g_fakeSessions;
std::unordered_set<const void*> g_fakeHandleSet;

std::mutex g_searchMutex;
std::unordered_map<EOS_HSessionSearch, std::string> g_searchClusterId;

std::mutex g_infoMutex;
std::unordered_set<void*> g_fakeInfoSet;

std::mutex g_attrMutex;
std::unordered_set<void*> g_fakeAttrSet;

struct FakeInfoBlock {
    EOS_SessionDetails_Info info{};
    EOS_SessionDetails_Settings_Prefix settings{};
    std::string sessionId;
    std::string hostAddress;
    std::string bucketId;
    std::string ownerServerClientId;
};

struct FakeAttributeBlock {
    EOS_SessionDetails_Attribute attr{};
    EOS_Sessions_AttributeData data{};
    std::string key;
    std::string valueString;
};

EOS_EAttributeType ToEosAttributeType(AttributeValue::Kind kind) {
    switch (kind) {
        case AttributeValue::Kind::Bool: return EOS_AT_BOOLEAN;
        case AttributeValue::Kind::Int64: return EOS_AT_INT64;
        case AttributeValue::Kind::Double: return EOS_AT_DOUBLE;
        case AttributeValue::Kind::String: return EOS_AT_STRING;
    }
    return EOS_AT_STRING;
}

AttributeValue ParseAttributeValue(const nlohmann::json& value) {
    AttributeValue result;
    if (value.is_string()) {
        result.kind = AttributeValue::Kind::String;
        result.asString = value.get<std::string>();
    } else if (value.is_boolean()) {
        result.kind = AttributeValue::Kind::Bool;
        result.asBool = value.get<bool>();
    } else if (value.is_number_float()) {
        result.kind = AttributeValue::Kind::Double;
        result.asDouble = value.get<double>();
    } else if (value.is_number_integer()) {
        result.kind = AttributeValue::Kind::Int64;
        result.asInt64 = value.get<int64_t>();
    }
    return result;
}

std::string BuildConfigPath(void* thisModuleHandle) {
    char path[MAX_PATH]{};
    GetModuleFileNameA(static_cast<HMODULE>(thisModuleHandle), path, MAX_PATH);
    char* lastSlash = strrchr(path, '\\');
    if (lastSlash) {
        *(lastSlash + 1) = '\0';
    }
    strcat_s(path, "EOSProxy.mock.json");
    return path;
}

}  // namespace

void Init(void* thisModuleHandle) {
    std::ifstream in(BuildConfigPath(thisModuleHandle), std::ios::binary);
    if (!in) {
        return;  // no config file - no fake sessions, that's fine
    }

    nlohmann::json root;
    try {
        in >> root;
    } catch (...) {
        return;
    }

    if (!root.contains("sessions") || !root["sessions"].is_array()) {
        return;
    }

    for (const auto& entry : root["sessions"]) {
        FakeSession session;
        session.sessionId = entry.value("sessionId", std::string());
        session.hostAddress = entry.value("hostAddress", std::string());
        session.numOpenPublicConnections = entry.value("numOpenPublicConnections", 0u);
        session.bucketId = entry.value("bucketId", std::string());
        session.numPublicConnections = entry.value("numPublicConnections", 0u);
        session.permissionLevel = entry.value("permissionLevel", 0);
        session.allowJoinInProgress = entry.value("allowJoinInProgress", true);
        session.ownerServerClientId = entry.value("ownerServerClientId", std::string());

        if (entry.contains("attributes") && entry["attributes"].is_object()) {
            for (auto it = entry["attributes"].begin(); it != entry["attributes"].end(); ++it) {
                session.attributes.emplace_back(it.key(), ParseAttributeValue(it.value()));
            }
        }

        for (const auto& kv : session.attributes) {
            if (kv.first == "CLUSTERID" && kv.second.kind == AttributeValue::Kind::String) {
                session.matchClusterId = kv.second.asString;
                break;
            }
        }

        g_fakeSessions.push_back(std::move(session));
    }

    for (const auto& session : g_fakeSessions) {
        g_fakeHandleSet.insert(&session);
    }
}

void RecordSearchClusterId(EOS_HSessionSearch handle, const std::string& clusterId) {
    std::lock_guard<std::mutex> lock(g_searchMutex);
    g_searchClusterId[handle] = clusterId;
}

std::vector<const FakeSession*> MatchesForSearch(EOS_HSessionSearch handle) {
    std::string clusterId;
    {
        std::lock_guard<std::mutex> lock(g_searchMutex);
        auto it = g_searchClusterId.find(handle);
        if (it == g_searchClusterId.end() || it->second.empty()) {
            return {};
        }
        clusterId = it->second;
    }

    std::vector<const FakeSession*> matches;
    for (const auto& session : g_fakeSessions) {
        if (session.matchClusterId == clusterId) {
            matches.push_back(&session);
        }
    }
    return matches;
}

bool IsFakeDetailsHandle(EOS_HSessionDetails handle) {
    return g_fakeHandleSet.count(handle) != 0;
}

const FakeSession& ResolveFakeDetailsHandle(EOS_HSessionDetails handle) {
    return *static_cast<const FakeSession*>(static_cast<const void*>(handle));
}

EOS_SessionDetails_Info* CreateInfo(const FakeSession& session) {
    auto* block = new FakeInfoBlock();
    block->sessionId = session.sessionId;
    block->hostAddress = session.hostAddress;
    block->bucketId = session.bucketId;
    block->ownerServerClientId = session.ownerServerClientId;

    block->settings.ApiVersion = 1;
    block->settings.BucketId = block->bucketId.c_str();
    block->settings.NumPublicConnections = session.numPublicConnections;
    block->settings.bAllowJoinInProgress = session.allowJoinInProgress ? 1 : 0;
    block->settings.PermissionLevel = session.permissionLevel;

    block->info.ApiVersion = 1;
    block->info.SessionId = block->sessionId.c_str();
    block->info.HostAddress = block->hostAddress.c_str();
    block->info.NumOpenPublicConnections = session.numOpenPublicConnections;
    block->info.Settings = &block->settings;
    block->info.OwnerUserId = nullptr;
    block->info.OwnerServerClientId = block->ownerServerClientId.c_str();

    {
        std::lock_guard<std::mutex> lock(g_infoMutex);
        g_fakeInfoSet.insert(&block->info);
    }

    return &block->info;
}

bool IsFakeInfo(EOS_SessionDetails_Info* info) {
    std::lock_guard<std::mutex> lock(g_infoMutex);
    return g_fakeInfoSet.count(info) != 0;
}

void ReleaseInfo(EOS_SessionDetails_Info* info) {
    {
        std::lock_guard<std::mutex> lock(g_infoMutex);
        g_fakeInfoSet.erase(info);
    }
    // EOS_SessionDetails_Info is the first member of FakeInfoBlock, so this
    // is a legal downcast back to the block that owns it.
    delete reinterpret_cast<FakeInfoBlock*>(info);
}

EOS_SessionDetails_Attribute* CreateAttribute(const std::string& key, const AttributeValue& value) {
    auto* block = new FakeAttributeBlock();
    block->key = key;

    block->data.ApiVersion = 1;
    block->data.Key = block->key.c_str();
    block->data.ValueType = ToEosAttributeType(value.kind);
    switch (value.kind) {
        case AttributeValue::Kind::String:
            block->valueString = value.asString;
            block->data.Value.AsUtf8 = block->valueString.c_str();
            break;
        case AttributeValue::Kind::Int64:
            block->data.Value.AsInt64 = value.asInt64;
            break;
        case AttributeValue::Kind::Double:
            block->data.Value.AsDouble = value.asDouble;
            break;
        case AttributeValue::Kind::Bool:
            block->data.Value.AsBool = value.asBool ? 1 : 0;
            break;
    }

    block->attr.ApiVersion = 1;
    block->attr.Data = &block->data;
    block->attr.AdvertisementType = 1;  // EOS_SAAT_Advertised

    {
        std::lock_guard<std::mutex> lock(g_attrMutex);
        g_fakeAttrSet.insert(&block->attr);
    }

    return &block->attr;
}

bool IsFakeAttribute(EOS_SessionDetails_Attribute* attr) {
    std::lock_guard<std::mutex> lock(g_attrMutex);
    return g_fakeAttrSet.count(attr) != 0;
}

void ReleaseAttribute(EOS_SessionDetails_Attribute* attr) {
    {
        std::lock_guard<std::mutex> lock(g_attrMutex);
        g_fakeAttrSet.erase(attr);
    }
    delete reinterpret_cast<FakeAttributeBlock*>(attr);
}

}  // namespace mock
