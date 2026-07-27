.data

PUBLIC g_thunkTargets
g_thunkTargets QWORD 673 DUP(0)

.code

PUBLIC EOS_Achievements_AddNotifyAchievementsUnlocked
EOS_Achievements_AddNotifyAchievementsUnlocked PROC
    jmp qword ptr [g_thunkTargets + 0]
EOS_Achievements_AddNotifyAchievementsUnlocked ENDP

PUBLIC EOS_Achievements_AddNotifyAchievementsUnlockedV2
EOS_Achievements_AddNotifyAchievementsUnlockedV2 PROC
    jmp qword ptr [g_thunkTargets + 8]
EOS_Achievements_AddNotifyAchievementsUnlockedV2 ENDP

PUBLIC EOS_Achievements_CopyAchievementDefinitionByAchievementId
EOS_Achievements_CopyAchievementDefinitionByAchievementId PROC
    jmp qword ptr [g_thunkTargets + 16]
EOS_Achievements_CopyAchievementDefinitionByAchievementId ENDP

PUBLIC EOS_Achievements_CopyAchievementDefinitionByIndex
EOS_Achievements_CopyAchievementDefinitionByIndex PROC
    jmp qword ptr [g_thunkTargets + 24]
EOS_Achievements_CopyAchievementDefinitionByIndex ENDP

PUBLIC EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId
EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId PROC
    jmp qword ptr [g_thunkTargets + 32]
EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId ENDP

PUBLIC EOS_Achievements_CopyAchievementDefinitionV2ByIndex
EOS_Achievements_CopyAchievementDefinitionV2ByIndex PROC
    jmp qword ptr [g_thunkTargets + 40]
EOS_Achievements_CopyAchievementDefinitionV2ByIndex ENDP

PUBLIC EOS_Achievements_CopyPlayerAchievementByAchievementId
EOS_Achievements_CopyPlayerAchievementByAchievementId PROC
    jmp qword ptr [g_thunkTargets + 48]
EOS_Achievements_CopyPlayerAchievementByAchievementId ENDP

PUBLIC EOS_Achievements_CopyPlayerAchievementByIndex
EOS_Achievements_CopyPlayerAchievementByIndex PROC
    jmp qword ptr [g_thunkTargets + 56]
EOS_Achievements_CopyPlayerAchievementByIndex ENDP

PUBLIC EOS_Achievements_CopyUnlockedAchievementByAchievementId
EOS_Achievements_CopyUnlockedAchievementByAchievementId PROC
    jmp qword ptr [g_thunkTargets + 64]
EOS_Achievements_CopyUnlockedAchievementByAchievementId ENDP

PUBLIC EOS_Achievements_CopyUnlockedAchievementByIndex
EOS_Achievements_CopyUnlockedAchievementByIndex PROC
    jmp qword ptr [g_thunkTargets + 72]
EOS_Achievements_CopyUnlockedAchievementByIndex ENDP

PUBLIC EOS_Achievements_DefinitionV2_Release
EOS_Achievements_DefinitionV2_Release PROC
    jmp qword ptr [g_thunkTargets + 80]
EOS_Achievements_DefinitionV2_Release ENDP

PUBLIC EOS_Achievements_Definition_Release
EOS_Achievements_Definition_Release PROC
    jmp qword ptr [g_thunkTargets + 88]
EOS_Achievements_Definition_Release ENDP

PUBLIC EOS_Achievements_GetAchievementDefinitionCount
EOS_Achievements_GetAchievementDefinitionCount PROC
    jmp qword ptr [g_thunkTargets + 96]
EOS_Achievements_GetAchievementDefinitionCount ENDP

PUBLIC EOS_Achievements_GetPlayerAchievementCount
EOS_Achievements_GetPlayerAchievementCount PROC
    jmp qword ptr [g_thunkTargets + 104]
EOS_Achievements_GetPlayerAchievementCount ENDP

PUBLIC EOS_Achievements_GetUnlockedAchievementCount
EOS_Achievements_GetUnlockedAchievementCount PROC
    jmp qword ptr [g_thunkTargets + 112]
EOS_Achievements_GetUnlockedAchievementCount ENDP

PUBLIC EOS_Achievements_PlayerAchievement_Release
EOS_Achievements_PlayerAchievement_Release PROC
    jmp qword ptr [g_thunkTargets + 120]
EOS_Achievements_PlayerAchievement_Release ENDP

PUBLIC EOS_Achievements_QueryDefinitions
EOS_Achievements_QueryDefinitions PROC
    jmp qword ptr [g_thunkTargets + 128]
EOS_Achievements_QueryDefinitions ENDP

PUBLIC EOS_Achievements_QueryPlayerAchievements
EOS_Achievements_QueryPlayerAchievements PROC
    jmp qword ptr [g_thunkTargets + 136]
EOS_Achievements_QueryPlayerAchievements ENDP

PUBLIC EOS_Achievements_RemoveNotifyAchievementsUnlocked
EOS_Achievements_RemoveNotifyAchievementsUnlocked PROC
    jmp qword ptr [g_thunkTargets + 144]
EOS_Achievements_RemoveNotifyAchievementsUnlocked ENDP

PUBLIC EOS_Achievements_UnlockAchievements
EOS_Achievements_UnlockAchievements PROC
    jmp qword ptr [g_thunkTargets + 152]
EOS_Achievements_UnlockAchievements ENDP

PUBLIC EOS_Achievements_UnlockedAchievement_Release
EOS_Achievements_UnlockedAchievement_Release PROC
    jmp qword ptr [g_thunkTargets + 160]
EOS_Achievements_UnlockedAchievement_Release ENDP

PUBLIC EOS_ActiveSession_CopyInfo
EOS_ActiveSession_CopyInfo PROC
    jmp qword ptr [g_thunkTargets + 168]
EOS_ActiveSession_CopyInfo ENDP

PUBLIC EOS_ActiveSession_GetRegisteredPlayerByIndex
EOS_ActiveSession_GetRegisteredPlayerByIndex PROC
    jmp qword ptr [g_thunkTargets + 176]
EOS_ActiveSession_GetRegisteredPlayerByIndex ENDP

PUBLIC EOS_ActiveSession_GetRegisteredPlayerCount
EOS_ActiveSession_GetRegisteredPlayerCount PROC
    jmp qword ptr [g_thunkTargets + 184]
EOS_ActiveSession_GetRegisteredPlayerCount ENDP

PUBLIC EOS_ActiveSession_Info_Release
EOS_ActiveSession_Info_Release PROC
    jmp qword ptr [g_thunkTargets + 192]
EOS_ActiveSession_Info_Release ENDP

PUBLIC EOS_ActiveSession_Release
EOS_ActiveSession_Release PROC
    jmp qword ptr [g_thunkTargets + 200]
EOS_ActiveSession_Release ENDP

PUBLIC EOS_AntiCheatClient_AddExternalIntegrityCatalog
EOS_AntiCheatClient_AddExternalIntegrityCatalog PROC
    jmp qword ptr [g_thunkTargets + 208]
EOS_AntiCheatClient_AddExternalIntegrityCatalog ENDP

PUBLIC EOS_AntiCheatClient_AddNotifyClientIntegrityViolated
EOS_AntiCheatClient_AddNotifyClientIntegrityViolated PROC
    jmp qword ptr [g_thunkTargets + 216]
EOS_AntiCheatClient_AddNotifyClientIntegrityViolated ENDP

PUBLIC EOS_AntiCheatClient_AddNotifyMessageToPeer
EOS_AntiCheatClient_AddNotifyMessageToPeer PROC
    jmp qword ptr [g_thunkTargets + 224]
EOS_AntiCheatClient_AddNotifyMessageToPeer ENDP

PUBLIC EOS_AntiCheatClient_AddNotifyMessageToServer
EOS_AntiCheatClient_AddNotifyMessageToServer PROC
    jmp qword ptr [g_thunkTargets + 232]
EOS_AntiCheatClient_AddNotifyMessageToServer ENDP

PUBLIC EOS_AntiCheatClient_AddNotifyPeerActionRequired
EOS_AntiCheatClient_AddNotifyPeerActionRequired PROC
    jmp qword ptr [g_thunkTargets + 240]
EOS_AntiCheatClient_AddNotifyPeerActionRequired ENDP

PUBLIC EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged
EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 248]
EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged ENDP

PUBLIC EOS_AntiCheatClient_BeginSession
EOS_AntiCheatClient_BeginSession PROC
    jmp qword ptr [g_thunkTargets + 256]
EOS_AntiCheatClient_BeginSession ENDP

PUBLIC EOS_AntiCheatClient_EndSession
EOS_AntiCheatClient_EndSession PROC
    jmp qword ptr [g_thunkTargets + 264]
EOS_AntiCheatClient_EndSession ENDP

PUBLIC EOS_AntiCheatClient_GetProtectMessageOutputLength
EOS_AntiCheatClient_GetProtectMessageOutputLength PROC
    jmp qword ptr [g_thunkTargets + 272]
EOS_AntiCheatClient_GetProtectMessageOutputLength ENDP

PUBLIC EOS_AntiCheatClient_PollStatus
EOS_AntiCheatClient_PollStatus PROC
    jmp qword ptr [g_thunkTargets + 280]
EOS_AntiCheatClient_PollStatus ENDP

PUBLIC EOS_AntiCheatClient_ProtectMessage
EOS_AntiCheatClient_ProtectMessage PROC
    jmp qword ptr [g_thunkTargets + 288]
EOS_AntiCheatClient_ProtectMessage ENDP

PUBLIC EOS_AntiCheatClient_ReceiveMessageFromPeer
EOS_AntiCheatClient_ReceiveMessageFromPeer PROC
    jmp qword ptr [g_thunkTargets + 296]
EOS_AntiCheatClient_ReceiveMessageFromPeer ENDP

PUBLIC EOS_AntiCheatClient_ReceiveMessageFromServer
EOS_AntiCheatClient_ReceiveMessageFromServer PROC
    jmp qword ptr [g_thunkTargets + 304]
EOS_AntiCheatClient_ReceiveMessageFromServer ENDP

PUBLIC EOS_AntiCheatClient_RegisterPeer
EOS_AntiCheatClient_RegisterPeer PROC
    jmp qword ptr [g_thunkTargets + 312]
EOS_AntiCheatClient_RegisterPeer ENDP

PUBLIC EOS_AntiCheatClient_RemoveNotifyClientIntegrityViolated
EOS_AntiCheatClient_RemoveNotifyClientIntegrityViolated PROC
    jmp qword ptr [g_thunkTargets + 320]
EOS_AntiCheatClient_RemoveNotifyClientIntegrityViolated ENDP

PUBLIC EOS_AntiCheatClient_RemoveNotifyMessageToPeer
EOS_AntiCheatClient_RemoveNotifyMessageToPeer PROC
    jmp qword ptr [g_thunkTargets + 328]
EOS_AntiCheatClient_RemoveNotifyMessageToPeer ENDP

PUBLIC EOS_AntiCheatClient_RemoveNotifyMessageToServer
EOS_AntiCheatClient_RemoveNotifyMessageToServer PROC
    jmp qword ptr [g_thunkTargets + 336]
EOS_AntiCheatClient_RemoveNotifyMessageToServer ENDP

PUBLIC EOS_AntiCheatClient_RemoveNotifyPeerActionRequired
EOS_AntiCheatClient_RemoveNotifyPeerActionRequired PROC
    jmp qword ptr [g_thunkTargets + 344]
EOS_AntiCheatClient_RemoveNotifyPeerActionRequired ENDP

PUBLIC EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged
EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 352]
EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged ENDP

PUBLIC EOS_AntiCheatClient_UnprotectMessage
EOS_AntiCheatClient_UnprotectMessage PROC
    jmp qword ptr [g_thunkTargets + 360]
EOS_AntiCheatClient_UnprotectMessage ENDP

PUBLIC EOS_AntiCheatClient_UnregisterPeer
EOS_AntiCheatClient_UnregisterPeer PROC
    jmp qword ptr [g_thunkTargets + 368]
EOS_AntiCheatClient_UnregisterPeer ENDP

PUBLIC EOS_AntiCheatServer_AddNotifyClientActionRequired
EOS_AntiCheatServer_AddNotifyClientActionRequired PROC
    jmp qword ptr [g_thunkTargets + 376]
EOS_AntiCheatServer_AddNotifyClientActionRequired ENDP

PUBLIC EOS_AntiCheatServer_AddNotifyClientAuthStatusChanged
EOS_AntiCheatServer_AddNotifyClientAuthStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 384]
EOS_AntiCheatServer_AddNotifyClientAuthStatusChanged ENDP

PUBLIC EOS_AntiCheatServer_AddNotifyMessageToClient
EOS_AntiCheatServer_AddNotifyMessageToClient PROC
    jmp qword ptr [g_thunkTargets + 392]
EOS_AntiCheatServer_AddNotifyMessageToClient ENDP

PUBLIC EOS_AntiCheatServer_BeginSession
EOS_AntiCheatServer_BeginSession PROC
    jmp qword ptr [g_thunkTargets + 400]
EOS_AntiCheatServer_BeginSession ENDP

PUBLIC EOS_AntiCheatServer_EndSession
EOS_AntiCheatServer_EndSession PROC
    jmp qword ptr [g_thunkTargets + 408]
EOS_AntiCheatServer_EndSession ENDP

PUBLIC EOS_AntiCheatServer_GetProtectMessageOutputLength
EOS_AntiCheatServer_GetProtectMessageOutputLength PROC
    jmp qword ptr [g_thunkTargets + 416]
EOS_AntiCheatServer_GetProtectMessageOutputLength ENDP

PUBLIC EOS_AntiCheatServer_LogEvent
EOS_AntiCheatServer_LogEvent PROC
    jmp qword ptr [g_thunkTargets + 424]
EOS_AntiCheatServer_LogEvent ENDP

PUBLIC EOS_AntiCheatServer_LogGameRoundEnd
EOS_AntiCheatServer_LogGameRoundEnd PROC
    jmp qword ptr [g_thunkTargets + 432]
EOS_AntiCheatServer_LogGameRoundEnd ENDP

PUBLIC EOS_AntiCheatServer_LogGameRoundStart
EOS_AntiCheatServer_LogGameRoundStart PROC
    jmp qword ptr [g_thunkTargets + 440]
EOS_AntiCheatServer_LogGameRoundStart ENDP

PUBLIC EOS_AntiCheatServer_LogPlayerDespawn
EOS_AntiCheatServer_LogPlayerDespawn PROC
    jmp qword ptr [g_thunkTargets + 448]
EOS_AntiCheatServer_LogPlayerDespawn ENDP

PUBLIC EOS_AntiCheatServer_LogPlayerRevive
EOS_AntiCheatServer_LogPlayerRevive PROC
    jmp qword ptr [g_thunkTargets + 456]
EOS_AntiCheatServer_LogPlayerRevive ENDP

PUBLIC EOS_AntiCheatServer_LogPlayerSpawn
EOS_AntiCheatServer_LogPlayerSpawn PROC
    jmp qword ptr [g_thunkTargets + 464]
EOS_AntiCheatServer_LogPlayerSpawn ENDP

PUBLIC EOS_AntiCheatServer_LogPlayerTakeDamage
EOS_AntiCheatServer_LogPlayerTakeDamage PROC
    jmp qword ptr [g_thunkTargets + 472]
EOS_AntiCheatServer_LogPlayerTakeDamage ENDP

PUBLIC EOS_AntiCheatServer_LogPlayerTick
EOS_AntiCheatServer_LogPlayerTick PROC
    jmp qword ptr [g_thunkTargets + 480]
EOS_AntiCheatServer_LogPlayerTick ENDP

PUBLIC EOS_AntiCheatServer_LogPlayerUseAbility
EOS_AntiCheatServer_LogPlayerUseAbility PROC
    jmp qword ptr [g_thunkTargets + 488]
EOS_AntiCheatServer_LogPlayerUseAbility ENDP

PUBLIC EOS_AntiCheatServer_LogPlayerUseWeapon
EOS_AntiCheatServer_LogPlayerUseWeapon PROC
    jmp qword ptr [g_thunkTargets + 496]
EOS_AntiCheatServer_LogPlayerUseWeapon ENDP

PUBLIC EOS_AntiCheatServer_ProtectMessage
EOS_AntiCheatServer_ProtectMessage PROC
    jmp qword ptr [g_thunkTargets + 504]
EOS_AntiCheatServer_ProtectMessage ENDP

PUBLIC EOS_AntiCheatServer_ReceiveMessageFromClient
EOS_AntiCheatServer_ReceiveMessageFromClient PROC
    jmp qword ptr [g_thunkTargets + 512]
EOS_AntiCheatServer_ReceiveMessageFromClient ENDP

PUBLIC EOS_AntiCheatServer_RegisterClient
EOS_AntiCheatServer_RegisterClient PROC
    jmp qword ptr [g_thunkTargets + 520]
EOS_AntiCheatServer_RegisterClient ENDP

PUBLIC EOS_AntiCheatServer_RegisterEvent
EOS_AntiCheatServer_RegisterEvent PROC
    jmp qword ptr [g_thunkTargets + 528]
EOS_AntiCheatServer_RegisterEvent ENDP

PUBLIC EOS_AntiCheatServer_RemoveNotifyClientActionRequired
EOS_AntiCheatServer_RemoveNotifyClientActionRequired PROC
    jmp qword ptr [g_thunkTargets + 536]
EOS_AntiCheatServer_RemoveNotifyClientActionRequired ENDP

PUBLIC EOS_AntiCheatServer_RemoveNotifyClientAuthStatusChanged
EOS_AntiCheatServer_RemoveNotifyClientAuthStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 544]
EOS_AntiCheatServer_RemoveNotifyClientAuthStatusChanged ENDP

PUBLIC EOS_AntiCheatServer_RemoveNotifyMessageToClient
EOS_AntiCheatServer_RemoveNotifyMessageToClient PROC
    jmp qword ptr [g_thunkTargets + 552]
EOS_AntiCheatServer_RemoveNotifyMessageToClient ENDP

PUBLIC EOS_AntiCheatServer_SetClientDetails
EOS_AntiCheatServer_SetClientDetails PROC
    jmp qword ptr [g_thunkTargets + 560]
EOS_AntiCheatServer_SetClientDetails ENDP

PUBLIC EOS_AntiCheatServer_SetClientNetworkState
EOS_AntiCheatServer_SetClientNetworkState PROC
    jmp qword ptr [g_thunkTargets + 568]
EOS_AntiCheatServer_SetClientNetworkState ENDP

PUBLIC EOS_AntiCheatServer_SetGameSessionId
EOS_AntiCheatServer_SetGameSessionId PROC
    jmp qword ptr [g_thunkTargets + 576]
EOS_AntiCheatServer_SetGameSessionId ENDP

PUBLIC EOS_AntiCheatServer_UnprotectMessage
EOS_AntiCheatServer_UnprotectMessage PROC
    jmp qword ptr [g_thunkTargets + 584]
EOS_AntiCheatServer_UnprotectMessage ENDP

PUBLIC EOS_AntiCheatServer_UnregisterClient
EOS_AntiCheatServer_UnregisterClient PROC
    jmp qword ptr [g_thunkTargets + 592]
EOS_AntiCheatServer_UnregisterClient ENDP

PUBLIC EOS_Audio_CreateNewInputStream
EOS_Audio_CreateNewInputStream PROC
    jmp qword ptr [g_thunkTargets + 600]
EOS_Audio_CreateNewInputStream ENDP

PUBLIC EOS_Audio_CreateNewOutputStream
EOS_Audio_CreateNewOutputStream PROC
    jmp qword ptr [g_thunkTargets + 608]
EOS_Audio_CreateNewOutputStream ENDP

PUBLIC EOS_Audio_DestroyInputStream
EOS_Audio_DestroyInputStream PROC
    jmp qword ptr [g_thunkTargets + 616]
EOS_Audio_DestroyInputStream ENDP

PUBLIC EOS_Audio_DestroyOutputStream
EOS_Audio_DestroyOutputStream PROC
    jmp qword ptr [g_thunkTargets + 624]
EOS_Audio_DestroyOutputStream ENDP

PUBLIC EOS_Audio_EnableCommunicationsModeOutputDevices
EOS_Audio_EnableCommunicationsModeOutputDevices PROC
    jmp qword ptr [g_thunkTargets + 632]
EOS_Audio_EnableCommunicationsModeOutputDevices ENDP

PUBLIC EOS_Audio_GetInputDeviceInfo
EOS_Audio_GetInputDeviceInfo PROC
    jmp qword ptr [g_thunkTargets + 640]
EOS_Audio_GetInputDeviceInfo ENDP

PUBLIC EOS_Audio_GetInputStreamInfo
EOS_Audio_GetInputStreamInfo PROC
    jmp qword ptr [g_thunkTargets + 648]
EOS_Audio_GetInputStreamInfo ENDP

PUBLIC EOS_Audio_GetOutputDeviceInfo
EOS_Audio_GetOutputDeviceInfo PROC
    jmp qword ptr [g_thunkTargets + 656]
EOS_Audio_GetOutputDeviceInfo ENDP

PUBLIC EOS_Audio_GetOutputStreamInfo
EOS_Audio_GetOutputStreamInfo PROC
    jmp qword ptr [g_thunkTargets + 664]
EOS_Audio_GetOutputStreamInfo ENDP

PUBLIC EOS_Audio_IsInputStreamDeviceDisconnected
EOS_Audio_IsInputStreamDeviceDisconnected PROC
    jmp qword ptr [g_thunkTargets + 672]
EOS_Audio_IsInputStreamDeviceDisconnected ENDP

PUBLIC EOS_Audio_IsInputStreamSilent
EOS_Audio_IsInputStreamSilent PROC
    jmp qword ptr [g_thunkTargets + 680]
EOS_Audio_IsInputStreamSilent ENDP

PUBLIC EOS_Audio_QueryInputDevices
EOS_Audio_QueryInputDevices PROC
    jmp qword ptr [g_thunkTargets + 688]
EOS_Audio_QueryInputDevices ENDP

PUBLIC EOS_Audio_QueryOutputDevices
EOS_Audio_QueryOutputDevices PROC
    jmp qword ptr [g_thunkTargets + 696]
EOS_Audio_QueryOutputDevices ENDP

PUBLIC EOS_Audio_RegisterUser
EOS_Audio_RegisterUser PROC
    jmp qword ptr [g_thunkTargets + 704]
EOS_Audio_RegisterUser ENDP

PUBLIC EOS_Audio_RemoveNotifyDevicesChanged
EOS_Audio_RemoveNotifyDevicesChanged PROC
    jmp qword ptr [g_thunkTargets + 712]
EOS_Audio_RemoveNotifyDevicesChanged ENDP

PUBLIC EOS_Audio_SetFeatureEnabledForInputStream
EOS_Audio_SetFeatureEnabledForInputStream PROC
    jmp qword ptr [g_thunkTargets + 720]
EOS_Audio_SetFeatureEnabledForInputStream ENDP

PUBLIC EOS_Audio_SetNotifyDevicesChanged
EOS_Audio_SetNotifyDevicesChanged PROC
    jmp qword ptr [g_thunkTargets + 728]
EOS_Audio_SetNotifyDevicesChanged ENDP

PUBLIC EOS_Audio_StartInputStream
EOS_Audio_StartInputStream PROC
    jmp qword ptr [g_thunkTargets + 736]
EOS_Audio_StartInputStream ENDP

PUBLIC EOS_Audio_StartOutputStream
EOS_Audio_StartOutputStream PROC
    jmp qword ptr [g_thunkTargets + 744]
EOS_Audio_StartOutputStream ENDP

PUBLIC EOS_Audio_StopInputStream
EOS_Audio_StopInputStream PROC
    jmp qword ptr [g_thunkTargets + 752]
EOS_Audio_StopInputStream ENDP

PUBLIC EOS_Audio_StopOutputStream
EOS_Audio_StopOutputStream PROC
    jmp qword ptr [g_thunkTargets + 760]
EOS_Audio_StopOutputStream ENDP

PUBLIC EOS_Audio_UnregisterUser
EOS_Audio_UnregisterUser PROC
    jmp qword ptr [g_thunkTargets + 768]
EOS_Audio_UnregisterUser ENDP

PUBLIC EOS_Auth_AddNotifyLoginStatusChanged
EOS_Auth_AddNotifyLoginStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 776]
EOS_Auth_AddNotifyLoginStatusChanged ENDP

PUBLIC EOS_Auth_CopyIdToken
EOS_Auth_CopyIdToken PROC
    jmp qword ptr [g_thunkTargets + 784]
EOS_Auth_CopyIdToken ENDP

PUBLIC EOS_Auth_CopyUserAuthToken
EOS_Auth_CopyUserAuthToken PROC
    jmp qword ptr [g_thunkTargets + 792]
EOS_Auth_CopyUserAuthToken ENDP

PUBLIC EOS_Auth_DeletePersistentAuth
EOS_Auth_DeletePersistentAuth PROC
    jmp qword ptr [g_thunkTargets + 800]
EOS_Auth_DeletePersistentAuth ENDP

PUBLIC EOS_Auth_GetLoggedInAccountByIndex
EOS_Auth_GetLoggedInAccountByIndex PROC
    jmp qword ptr [g_thunkTargets + 808]
EOS_Auth_GetLoggedInAccountByIndex ENDP

PUBLIC EOS_Auth_GetLoggedInAccountsCount
EOS_Auth_GetLoggedInAccountsCount PROC
    jmp qword ptr [g_thunkTargets + 816]
EOS_Auth_GetLoggedInAccountsCount ENDP

PUBLIC EOS_Auth_GetLoginStatus
EOS_Auth_GetLoginStatus PROC
    jmp qword ptr [g_thunkTargets + 824]
EOS_Auth_GetLoginStatus ENDP

PUBLIC EOS_Auth_GetMergedAccountByIndex
EOS_Auth_GetMergedAccountByIndex PROC
    jmp qword ptr [g_thunkTargets + 832]
EOS_Auth_GetMergedAccountByIndex ENDP

PUBLIC EOS_Auth_GetMergedAccountsCount
EOS_Auth_GetMergedAccountsCount PROC
    jmp qword ptr [g_thunkTargets + 840]
EOS_Auth_GetMergedAccountsCount ENDP

PUBLIC EOS_Auth_GetSelectedAccountId
EOS_Auth_GetSelectedAccountId PROC
    jmp qword ptr [g_thunkTargets + 848]
EOS_Auth_GetSelectedAccountId ENDP

PUBLIC EOS_Auth_IdToken_Release
EOS_Auth_IdToken_Release PROC
    jmp qword ptr [g_thunkTargets + 856]
EOS_Auth_IdToken_Release ENDP

PUBLIC EOS_Auth_LinkAccount
EOS_Auth_LinkAccount PROC
    jmp qword ptr [g_thunkTargets + 864]
EOS_Auth_LinkAccount ENDP

PUBLIC EOS_Auth_Login
EOS_Auth_Login PROC
    jmp qword ptr [g_thunkTargets + 872]
EOS_Auth_Login ENDP

PUBLIC EOS_Auth_Logout
EOS_Auth_Logout PROC
    jmp qword ptr [g_thunkTargets + 880]
EOS_Auth_Logout ENDP

PUBLIC EOS_Auth_QueryIdToken
EOS_Auth_QueryIdToken PROC
    jmp qword ptr [g_thunkTargets + 888]
EOS_Auth_QueryIdToken ENDP

PUBLIC EOS_Auth_RemoveNotifyLoginStatusChanged
EOS_Auth_RemoveNotifyLoginStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 896]
EOS_Auth_RemoveNotifyLoginStatusChanged ENDP

PUBLIC EOS_Auth_Token_Release
EOS_Auth_Token_Release PROC
    jmp qword ptr [g_thunkTargets + 904]
EOS_Auth_Token_Release ENDP

PUBLIC EOS_Auth_VerifyIdToken
EOS_Auth_VerifyIdToken PROC
    jmp qword ptr [g_thunkTargets + 912]
EOS_Auth_VerifyIdToken ENDP

PUBLIC EOS_Auth_VerifyUserAuth
EOS_Auth_VerifyUserAuth PROC
    jmp qword ptr [g_thunkTargets + 920]
EOS_Auth_VerifyUserAuth ENDP

PUBLIC EOS_BeginScopeEvent
EOS_BeginScopeEvent PROC
    jmp qword ptr [g_thunkTargets + 928]
EOS_BeginScopeEvent ENDP

PUBLIC EOS_BroadcastAudio_CreateNewInputStream
EOS_BroadcastAudio_CreateNewInputStream PROC
    jmp qword ptr [g_thunkTargets + 936]
EOS_BroadcastAudio_CreateNewInputStream ENDP

PUBLIC EOS_BroadcastAudio_CreateNewOutputStream
EOS_BroadcastAudio_CreateNewOutputStream PROC
    jmp qword ptr [g_thunkTargets + 944]
EOS_BroadcastAudio_CreateNewOutputStream ENDP

PUBLIC EOS_BroadcastAudio_DestroyInputStream
EOS_BroadcastAudio_DestroyInputStream PROC
    jmp qword ptr [g_thunkTargets + 952]
EOS_BroadcastAudio_DestroyInputStream ENDP

PUBLIC EOS_BroadcastAudio_DestroyOutputStream
EOS_BroadcastAudio_DestroyOutputStream PROC
    jmp qword ptr [g_thunkTargets + 960]
EOS_BroadcastAudio_DestroyOutputStream ENDP

PUBLIC EOS_BroadcastAudio_GetCurrentGainLevel
EOS_BroadcastAudio_GetCurrentGainLevel PROC
    jmp qword ptr [g_thunkTargets + 968]
EOS_BroadcastAudio_GetCurrentGainLevel ENDP

PUBLIC EOS_BroadcastAudio_GetCurrentMicAmplitude
EOS_BroadcastAudio_GetCurrentMicAmplitude PROC
    jmp qword ptr [g_thunkTargets + 976]
EOS_BroadcastAudio_GetCurrentMicAmplitude ENDP

PUBLIC EOS_BroadcastAudio_GetInputStreamInfo
EOS_BroadcastAudio_GetInputStreamInfo PROC
    jmp qword ptr [g_thunkTargets + 984]
EOS_BroadcastAudio_GetInputStreamInfo ENDP

PUBLIC EOS_BroadcastAudio_GetOutputStreamInfo
EOS_BroadcastAudio_GetOutputStreamInfo PROC
    jmp qword ptr [g_thunkTargets + 992]
EOS_BroadcastAudio_GetOutputStreamInfo ENDP

PUBLIC EOS_BroadcastAudio_PushPacketToOutputStream
EOS_BroadcastAudio_PushPacketToOutputStream PROC
    jmp qword ptr [g_thunkTargets + 1000]
EOS_BroadcastAudio_PushPacketToOutputStream ENDP

PUBLIC EOS_BroadcastAudio_SetEncoderSettings
EOS_BroadcastAudio_SetEncoderSettings PROC
    jmp qword ptr [g_thunkTargets + 1008]
EOS_BroadcastAudio_SetEncoderSettings ENDP

PUBLIC EOS_BroadcastAudio_SetMicProcessingSettings
EOS_BroadcastAudio_SetMicProcessingSettings PROC
    jmp qword ptr [g_thunkTargets + 1016]
EOS_BroadcastAudio_SetMicProcessingSettings ENDP

PUBLIC EOS_BroadcastAudio_StartInputStream
EOS_BroadcastAudio_StartInputStream PROC
    jmp qword ptr [g_thunkTargets + 1024]
EOS_BroadcastAudio_StartInputStream ENDP

PUBLIC EOS_BroadcastAudio_StartOutputStream
EOS_BroadcastAudio_StartOutputStream PROC
    jmp qword ptr [g_thunkTargets + 1032]
EOS_BroadcastAudio_StartOutputStream ENDP

PUBLIC EOS_BroadcastAudio_StopInputStream
EOS_BroadcastAudio_StopInputStream PROC
    jmp qword ptr [g_thunkTargets + 1040]
EOS_BroadcastAudio_StopInputStream ENDP

PUBLIC EOS_BroadcastAudio_StopOutputStream
EOS_BroadcastAudio_StopOutputStream PROC
    jmp qword ptr [g_thunkTargets + 1048]
EOS_BroadcastAudio_StopOutputStream ENDP

PUBLIC EOS_ByteArray_ToString
EOS_ByteArray_ToString PROC
    jmp qword ptr [g_thunkTargets + 1056]
EOS_ByteArray_ToString ENDP

PUBLIC EOS_Connect_AddNotifyAuthExpiration
EOS_Connect_AddNotifyAuthExpiration PROC
    jmp qword ptr [g_thunkTargets + 1064]
EOS_Connect_AddNotifyAuthExpiration ENDP

PUBLIC EOS_Connect_AddNotifyLoginStatusChanged
EOS_Connect_AddNotifyLoginStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 1072]
EOS_Connect_AddNotifyLoginStatusChanged ENDP

PUBLIC EOS_Connect_CopyIdToken
EOS_Connect_CopyIdToken PROC
    jmp qword ptr [g_thunkTargets + 1080]
EOS_Connect_CopyIdToken ENDP

PUBLIC EOS_Connect_CopyProductUserExternalAccountByAccountId
EOS_Connect_CopyProductUserExternalAccountByAccountId PROC
    jmp qword ptr [g_thunkTargets + 1088]
EOS_Connect_CopyProductUserExternalAccountByAccountId ENDP

PUBLIC EOS_Connect_CopyProductUserExternalAccountByAccountType
EOS_Connect_CopyProductUserExternalAccountByAccountType PROC
    jmp qword ptr [g_thunkTargets + 1096]
EOS_Connect_CopyProductUserExternalAccountByAccountType ENDP

PUBLIC EOS_Connect_CopyProductUserExternalAccountByIndex
EOS_Connect_CopyProductUserExternalAccountByIndex PROC
    jmp qword ptr [g_thunkTargets + 1104]
EOS_Connect_CopyProductUserExternalAccountByIndex ENDP

PUBLIC EOS_Connect_CopyProductUserInfo
EOS_Connect_CopyProductUserInfo PROC
    jmp qword ptr [g_thunkTargets + 1112]
EOS_Connect_CopyProductUserInfo ENDP

PUBLIC EOS_Connect_CreateDeviceId
EOS_Connect_CreateDeviceId PROC
    jmp qword ptr [g_thunkTargets + 1120]
EOS_Connect_CreateDeviceId ENDP

PUBLIC EOS_Connect_CreateUser
EOS_Connect_CreateUser PROC
    jmp qword ptr [g_thunkTargets + 1128]
EOS_Connect_CreateUser ENDP

PUBLIC EOS_Connect_DeleteDeviceId
EOS_Connect_DeleteDeviceId PROC
    jmp qword ptr [g_thunkTargets + 1136]
EOS_Connect_DeleteDeviceId ENDP

PUBLIC EOS_Connect_ExternalAccountInfo_Release
EOS_Connect_ExternalAccountInfo_Release PROC
    jmp qword ptr [g_thunkTargets + 1144]
EOS_Connect_ExternalAccountInfo_Release ENDP

PUBLIC EOS_Connect_GetExternalAccountMapping
EOS_Connect_GetExternalAccountMapping PROC
    jmp qword ptr [g_thunkTargets + 1152]
EOS_Connect_GetExternalAccountMapping ENDP

PUBLIC EOS_Connect_GetLoggedInUserByIndex
EOS_Connect_GetLoggedInUserByIndex PROC
    jmp qword ptr [g_thunkTargets + 1160]
EOS_Connect_GetLoggedInUserByIndex ENDP

PUBLIC EOS_Connect_GetLoggedInUsersCount
EOS_Connect_GetLoggedInUsersCount PROC
    jmp qword ptr [g_thunkTargets + 1168]
EOS_Connect_GetLoggedInUsersCount ENDP

PUBLIC EOS_Connect_GetLoginStatus
EOS_Connect_GetLoginStatus PROC
    jmp qword ptr [g_thunkTargets + 1176]
EOS_Connect_GetLoginStatus ENDP

PUBLIC EOS_Connect_GetProductUserExternalAccountCount
EOS_Connect_GetProductUserExternalAccountCount PROC
    jmp qword ptr [g_thunkTargets + 1184]
EOS_Connect_GetProductUserExternalAccountCount ENDP

PUBLIC EOS_Connect_GetProductUserIdMapping
EOS_Connect_GetProductUserIdMapping PROC
    jmp qword ptr [g_thunkTargets + 1192]
EOS_Connect_GetProductUserIdMapping ENDP

PUBLIC EOS_Connect_IdToken_Release
EOS_Connect_IdToken_Release PROC
    jmp qword ptr [g_thunkTargets + 1200]
EOS_Connect_IdToken_Release ENDP

PUBLIC EOS_Connect_LinkAccount
EOS_Connect_LinkAccount PROC
    jmp qword ptr [g_thunkTargets + 1208]
EOS_Connect_LinkAccount ENDP

PUBLIC EOS_Connect_Login
EOS_Connect_Login PROC
    jmp qword ptr [g_thunkTargets + 1216]
EOS_Connect_Login ENDP

PUBLIC EOS_Connect_Logout
EOS_Connect_Logout PROC
    jmp qword ptr [g_thunkTargets + 1224]
EOS_Connect_Logout ENDP

PUBLIC EOS_Connect_QueryExternalAccountMappings
EOS_Connect_QueryExternalAccountMappings PROC
    jmp qword ptr [g_thunkTargets + 1232]
EOS_Connect_QueryExternalAccountMappings ENDP

PUBLIC EOS_Connect_QueryProductUserIdMappings
EOS_Connect_QueryProductUserIdMappings PROC
    jmp qword ptr [g_thunkTargets + 1240]
EOS_Connect_QueryProductUserIdMappings ENDP

PUBLIC EOS_Connect_RemoveNotifyAuthExpiration
EOS_Connect_RemoveNotifyAuthExpiration PROC
    jmp qword ptr [g_thunkTargets + 1248]
EOS_Connect_RemoveNotifyAuthExpiration ENDP

PUBLIC EOS_Connect_RemoveNotifyLoginStatusChanged
EOS_Connect_RemoveNotifyLoginStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 1256]
EOS_Connect_RemoveNotifyLoginStatusChanged ENDP

PUBLIC EOS_Connect_TransferDeviceIdAccount
EOS_Connect_TransferDeviceIdAccount PROC
    jmp qword ptr [g_thunkTargets + 1264]
EOS_Connect_TransferDeviceIdAccount ENDP

PUBLIC EOS_Connect_UnlinkAccount
EOS_Connect_UnlinkAccount PROC
    jmp qword ptr [g_thunkTargets + 1272]
EOS_Connect_UnlinkAccount ENDP

PUBLIC EOS_Connect_VerifyIdToken
EOS_Connect_VerifyIdToken PROC
    jmp qword ptr [g_thunkTargets + 1280]
EOS_Connect_VerifyIdToken ENDP

PUBLIC EOS_ContinuanceToken_ToString
EOS_ContinuanceToken_ToString PROC
    jmp qword ptr [g_thunkTargets + 1288]
EOS_ContinuanceToken_ToString ENDP

PUBLIC EOS_CustomInvites_AcceptRequestToJoin
EOS_CustomInvites_AcceptRequestToJoin PROC
    jmp qword ptr [g_thunkTargets + 1296]
EOS_CustomInvites_AcceptRequestToJoin ENDP

PUBLIC EOS_CustomInvites_AddNotifyCustomInviteAccepted
EOS_CustomInvites_AddNotifyCustomInviteAccepted PROC
    jmp qword ptr [g_thunkTargets + 1304]
EOS_CustomInvites_AddNotifyCustomInviteAccepted ENDP

PUBLIC EOS_CustomInvites_AddNotifyCustomInviteReceived
EOS_CustomInvites_AddNotifyCustomInviteReceived PROC
    jmp qword ptr [g_thunkTargets + 1312]
EOS_CustomInvites_AddNotifyCustomInviteReceived ENDP

PUBLIC EOS_CustomInvites_AddNotifyCustomInviteRejected
EOS_CustomInvites_AddNotifyCustomInviteRejected PROC
    jmp qword ptr [g_thunkTargets + 1320]
EOS_CustomInvites_AddNotifyCustomInviteRejected ENDP

PUBLIC EOS_CustomInvites_AddNotifyRequestToJoinAccepted
EOS_CustomInvites_AddNotifyRequestToJoinAccepted PROC
    jmp qword ptr [g_thunkTargets + 1328]
EOS_CustomInvites_AddNotifyRequestToJoinAccepted ENDP

PUBLIC EOS_CustomInvites_AddNotifyRequestToJoinReceived
EOS_CustomInvites_AddNotifyRequestToJoinReceived PROC
    jmp qword ptr [g_thunkTargets + 1336]
EOS_CustomInvites_AddNotifyRequestToJoinReceived ENDP

PUBLIC EOS_CustomInvites_AddNotifyRequestToJoinRejected
EOS_CustomInvites_AddNotifyRequestToJoinRejected PROC
    jmp qword ptr [g_thunkTargets + 1344]
EOS_CustomInvites_AddNotifyRequestToJoinRejected ENDP

PUBLIC EOS_CustomInvites_AddNotifyRequestToJoinResponseReceived
EOS_CustomInvites_AddNotifyRequestToJoinResponseReceived PROC
    jmp qword ptr [g_thunkTargets + 1352]
EOS_CustomInvites_AddNotifyRequestToJoinResponseReceived ENDP

PUBLIC EOS_CustomInvites_AddNotifySendCustomNativeInviteRequested
EOS_CustomInvites_AddNotifySendCustomNativeInviteRequested PROC
    jmp qword ptr [g_thunkTargets + 1360]
EOS_CustomInvites_AddNotifySendCustomNativeInviteRequested ENDP

PUBLIC EOS_CustomInvites_FinalizeInvite
EOS_CustomInvites_FinalizeInvite PROC
    jmp qword ptr [g_thunkTargets + 1368]
EOS_CustomInvites_FinalizeInvite ENDP

PUBLIC EOS_CustomInvites_RejectRequestToJoin
EOS_CustomInvites_RejectRequestToJoin PROC
    jmp qword ptr [g_thunkTargets + 1376]
EOS_CustomInvites_RejectRequestToJoin ENDP

PUBLIC EOS_CustomInvites_RemoveNotifyCustomInviteAccepted
EOS_CustomInvites_RemoveNotifyCustomInviteAccepted PROC
    jmp qword ptr [g_thunkTargets + 1384]
EOS_CustomInvites_RemoveNotifyCustomInviteAccepted ENDP

PUBLIC EOS_CustomInvites_RemoveNotifyCustomInviteReceived
EOS_CustomInvites_RemoveNotifyCustomInviteReceived PROC
    jmp qword ptr [g_thunkTargets + 1392]
EOS_CustomInvites_RemoveNotifyCustomInviteReceived ENDP

PUBLIC EOS_CustomInvites_RemoveNotifyCustomInviteRejected
EOS_CustomInvites_RemoveNotifyCustomInviteRejected PROC
    jmp qword ptr [g_thunkTargets + 1400]
EOS_CustomInvites_RemoveNotifyCustomInviteRejected ENDP

PUBLIC EOS_CustomInvites_RemoveNotifyRequestToJoinAccepted
EOS_CustomInvites_RemoveNotifyRequestToJoinAccepted PROC
    jmp qword ptr [g_thunkTargets + 1408]
EOS_CustomInvites_RemoveNotifyRequestToJoinAccepted ENDP

PUBLIC EOS_CustomInvites_RemoveNotifyRequestToJoinReceived
EOS_CustomInvites_RemoveNotifyRequestToJoinReceived PROC
    jmp qword ptr [g_thunkTargets + 1416]
EOS_CustomInvites_RemoveNotifyRequestToJoinReceived ENDP

PUBLIC EOS_CustomInvites_RemoveNotifyRequestToJoinRejected
EOS_CustomInvites_RemoveNotifyRequestToJoinRejected PROC
    jmp qword ptr [g_thunkTargets + 1424]
EOS_CustomInvites_RemoveNotifyRequestToJoinRejected ENDP

PUBLIC EOS_CustomInvites_RemoveNotifyRequestToJoinResponseReceived
EOS_CustomInvites_RemoveNotifyRequestToJoinResponseReceived PROC
    jmp qword ptr [g_thunkTargets + 1432]
EOS_CustomInvites_RemoveNotifyRequestToJoinResponseReceived ENDP

PUBLIC EOS_CustomInvites_RemoveNotifySendCustomNativeInviteRequested
EOS_CustomInvites_RemoveNotifySendCustomNativeInviteRequested PROC
    jmp qword ptr [g_thunkTargets + 1440]
EOS_CustomInvites_RemoveNotifySendCustomNativeInviteRequested ENDP

PUBLIC EOS_CustomInvites_SendCustomInvite
EOS_CustomInvites_SendCustomInvite PROC
    jmp qword ptr [g_thunkTargets + 1448]
EOS_CustomInvites_SendCustomInvite ENDP

PUBLIC EOS_CustomInvites_SendRequestToJoin
EOS_CustomInvites_SendRequestToJoin PROC
    jmp qword ptr [g_thunkTargets + 1456]
EOS_CustomInvites_SendRequestToJoin ENDP

PUBLIC EOS_CustomInvites_SetCustomInvite
EOS_CustomInvites_SetCustomInvite PROC
    jmp qword ptr [g_thunkTargets + 1464]
EOS_CustomInvites_SetCustomInvite ENDP

PUBLIC EOS_EApplicationStatus_ToString
EOS_EApplicationStatus_ToString PROC
    jmp qword ptr [g_thunkTargets + 1472]
EOS_EApplicationStatus_ToString ENDP

PUBLIC EOS_ENetworkStatus_ToString
EOS_ENetworkStatus_ToString PROC
    jmp qword ptr [g_thunkTargets + 1480]
EOS_ENetworkStatus_ToString ENDP

PUBLIC EOS_EResult_IsOperationComplete
EOS_EResult_IsOperationComplete PROC
    jmp qword ptr [g_thunkTargets + 1488]
EOS_EResult_IsOperationComplete ENDP

PUBLIC EOS_EResult_ToString
EOS_EResult_ToString PROC
    jmp qword ptr [g_thunkTargets + 1496]
EOS_EResult_ToString ENDP

PUBLIC EOS_Ecom_CatalogItem_Release
EOS_Ecom_CatalogItem_Release PROC
    jmp qword ptr [g_thunkTargets + 1504]
EOS_Ecom_CatalogItem_Release ENDP

PUBLIC EOS_Ecom_CatalogOffer_Release
EOS_Ecom_CatalogOffer_Release PROC
    jmp qword ptr [g_thunkTargets + 1512]
EOS_Ecom_CatalogOffer_Release ENDP

PUBLIC EOS_Ecom_CatalogRelease_Release
EOS_Ecom_CatalogRelease_Release PROC
    jmp qword ptr [g_thunkTargets + 1520]
EOS_Ecom_CatalogRelease_Release ENDP

PUBLIC EOS_Ecom_Checkout
EOS_Ecom_Checkout PROC
    jmp qword ptr [g_thunkTargets + 1528]
EOS_Ecom_Checkout ENDP

PUBLIC EOS_Ecom_CopyEntitlementById
EOS_Ecom_CopyEntitlementById PROC
    jmp qword ptr [g_thunkTargets + 1536]
EOS_Ecom_CopyEntitlementById ENDP

PUBLIC EOS_Ecom_CopyEntitlementByIndex
EOS_Ecom_CopyEntitlementByIndex PROC
    jmp qword ptr [g_thunkTargets + 1544]
EOS_Ecom_CopyEntitlementByIndex ENDP

PUBLIC EOS_Ecom_CopyEntitlementByNameAndIndex
EOS_Ecom_CopyEntitlementByNameAndIndex PROC
    jmp qword ptr [g_thunkTargets + 1552]
EOS_Ecom_CopyEntitlementByNameAndIndex ENDP

PUBLIC EOS_Ecom_CopyItemById
EOS_Ecom_CopyItemById PROC
    jmp qword ptr [g_thunkTargets + 1560]
EOS_Ecom_CopyItemById ENDP

PUBLIC EOS_Ecom_CopyItemImageInfoByIndex
EOS_Ecom_CopyItemImageInfoByIndex PROC
    jmp qword ptr [g_thunkTargets + 1568]
EOS_Ecom_CopyItemImageInfoByIndex ENDP

PUBLIC EOS_Ecom_CopyItemReleaseByIndex
EOS_Ecom_CopyItemReleaseByIndex PROC
    jmp qword ptr [g_thunkTargets + 1576]
EOS_Ecom_CopyItemReleaseByIndex ENDP

PUBLIC EOS_Ecom_CopyLastRedeemedEntitlementByIndex
EOS_Ecom_CopyLastRedeemedEntitlementByIndex PROC
    jmp qword ptr [g_thunkTargets + 1584]
EOS_Ecom_CopyLastRedeemedEntitlementByIndex ENDP

PUBLIC EOS_Ecom_CopyOfferById
EOS_Ecom_CopyOfferById PROC
    jmp qword ptr [g_thunkTargets + 1592]
EOS_Ecom_CopyOfferById ENDP

PUBLIC EOS_Ecom_CopyOfferByIndex
EOS_Ecom_CopyOfferByIndex PROC
    jmp qword ptr [g_thunkTargets + 1600]
EOS_Ecom_CopyOfferByIndex ENDP

PUBLIC EOS_Ecom_CopyOfferImageInfoByIndex
EOS_Ecom_CopyOfferImageInfoByIndex PROC
    jmp qword ptr [g_thunkTargets + 1608]
EOS_Ecom_CopyOfferImageInfoByIndex ENDP

PUBLIC EOS_Ecom_CopyOfferItemByIndex
EOS_Ecom_CopyOfferItemByIndex PROC
    jmp qword ptr [g_thunkTargets + 1616]
EOS_Ecom_CopyOfferItemByIndex ENDP

PUBLIC EOS_Ecom_CopyTransactionById
EOS_Ecom_CopyTransactionById PROC
    jmp qword ptr [g_thunkTargets + 1624]
EOS_Ecom_CopyTransactionById ENDP

PUBLIC EOS_Ecom_CopyTransactionByIndex
EOS_Ecom_CopyTransactionByIndex PROC
    jmp qword ptr [g_thunkTargets + 1632]
EOS_Ecom_CopyTransactionByIndex ENDP

PUBLIC EOS_Ecom_Entitlement_Release
EOS_Ecom_Entitlement_Release PROC
    jmp qword ptr [g_thunkTargets + 1640]
EOS_Ecom_Entitlement_Release ENDP

PUBLIC EOS_Ecom_GetEntitlementsByNameCount
EOS_Ecom_GetEntitlementsByNameCount PROC
    jmp qword ptr [g_thunkTargets + 1648]
EOS_Ecom_GetEntitlementsByNameCount ENDP

PUBLIC EOS_Ecom_GetEntitlementsCount
EOS_Ecom_GetEntitlementsCount PROC
    jmp qword ptr [g_thunkTargets + 1656]
EOS_Ecom_GetEntitlementsCount ENDP

PUBLIC EOS_Ecom_GetItemImageInfoCount
EOS_Ecom_GetItemImageInfoCount PROC
    jmp qword ptr [g_thunkTargets + 1664]
EOS_Ecom_GetItemImageInfoCount ENDP

PUBLIC EOS_Ecom_GetItemReleaseCount
EOS_Ecom_GetItemReleaseCount PROC
    jmp qword ptr [g_thunkTargets + 1672]
EOS_Ecom_GetItemReleaseCount ENDP

PUBLIC EOS_Ecom_GetLastRedeemedEntitlementsCount
EOS_Ecom_GetLastRedeemedEntitlementsCount PROC
    jmp qword ptr [g_thunkTargets + 1680]
EOS_Ecom_GetLastRedeemedEntitlementsCount ENDP

PUBLIC EOS_Ecom_GetOfferCount
EOS_Ecom_GetOfferCount PROC
    jmp qword ptr [g_thunkTargets + 1688]
EOS_Ecom_GetOfferCount ENDP

PUBLIC EOS_Ecom_GetOfferImageInfoCount
EOS_Ecom_GetOfferImageInfoCount PROC
    jmp qword ptr [g_thunkTargets + 1696]
EOS_Ecom_GetOfferImageInfoCount ENDP

PUBLIC EOS_Ecom_GetOfferItemCount
EOS_Ecom_GetOfferItemCount PROC
    jmp qword ptr [g_thunkTargets + 1704]
EOS_Ecom_GetOfferItemCount ENDP

PUBLIC EOS_Ecom_GetTransactionCount
EOS_Ecom_GetTransactionCount PROC
    jmp qword ptr [g_thunkTargets + 1712]
EOS_Ecom_GetTransactionCount ENDP

PUBLIC EOS_Ecom_KeyImageInfo_Release
EOS_Ecom_KeyImageInfo_Release PROC
    jmp qword ptr [g_thunkTargets + 1720]
EOS_Ecom_KeyImageInfo_Release ENDP

PUBLIC EOS_Ecom_QueryEntitlementToken
EOS_Ecom_QueryEntitlementToken PROC
    jmp qword ptr [g_thunkTargets + 1728]
EOS_Ecom_QueryEntitlementToken ENDP

PUBLIC EOS_Ecom_QueryEntitlements
EOS_Ecom_QueryEntitlements PROC
    jmp qword ptr [g_thunkTargets + 1736]
EOS_Ecom_QueryEntitlements ENDP

PUBLIC EOS_Ecom_QueryOffers
EOS_Ecom_QueryOffers PROC
    jmp qword ptr [g_thunkTargets + 1744]
EOS_Ecom_QueryOffers ENDP

PUBLIC EOS_Ecom_QueryOwnership
EOS_Ecom_QueryOwnership PROC
    jmp qword ptr [g_thunkTargets + 1752]
EOS_Ecom_QueryOwnership ENDP

PUBLIC EOS_Ecom_QueryOwnershipBySandboxIds
EOS_Ecom_QueryOwnershipBySandboxIds PROC
    jmp qword ptr [g_thunkTargets + 1760]
EOS_Ecom_QueryOwnershipBySandboxIds ENDP

PUBLIC EOS_Ecom_QueryOwnershipToken
EOS_Ecom_QueryOwnershipToken PROC
    jmp qword ptr [g_thunkTargets + 1768]
EOS_Ecom_QueryOwnershipToken ENDP

PUBLIC EOS_Ecom_RedeemEntitlements
EOS_Ecom_RedeemEntitlements PROC
    jmp qword ptr [g_thunkTargets + 1776]
EOS_Ecom_RedeemEntitlements ENDP

PUBLIC EOS_Ecom_Transaction_CopyEntitlementByIndex
EOS_Ecom_Transaction_CopyEntitlementByIndex PROC
    jmp qword ptr [g_thunkTargets + 1784]
EOS_Ecom_Transaction_CopyEntitlementByIndex ENDP

PUBLIC EOS_Ecom_Transaction_GetEntitlementsCount
EOS_Ecom_Transaction_GetEntitlementsCount PROC
    jmp qword ptr [g_thunkTargets + 1792]
EOS_Ecom_Transaction_GetEntitlementsCount ENDP

PUBLIC EOS_Ecom_Transaction_GetTransactionId
EOS_Ecom_Transaction_GetTransactionId PROC
    jmp qword ptr [g_thunkTargets + 1800]
EOS_Ecom_Transaction_GetTransactionId ENDP

PUBLIC EOS_Ecom_Transaction_Release
EOS_Ecom_Transaction_Release PROC
    jmp qword ptr [g_thunkTargets + 1808]
EOS_Ecom_Transaction_Release ENDP

PUBLIC EOS_EndScopeEvent
EOS_EndScopeEvent PROC
    jmp qword ptr [g_thunkTargets + 1816]
EOS_EndScopeEvent ENDP

PUBLIC EOS_EpicAccountId_FromString
EOS_EpicAccountId_FromString PROC
    jmp qword ptr [g_thunkTargets + 1824]
EOS_EpicAccountId_FromString ENDP

PUBLIC EOS_EpicAccountId_IsValid
EOS_EpicAccountId_IsValid PROC
    jmp qword ptr [g_thunkTargets + 1832]
EOS_EpicAccountId_IsValid ENDP

PUBLIC EOS_EpicAccountId_ToString
EOS_EpicAccountId_ToString PROC
    jmp qword ptr [g_thunkTargets + 1840]
EOS_EpicAccountId_ToString ENDP

PUBLIC EOS_Friends_AcceptInvite
EOS_Friends_AcceptInvite PROC
    jmp qword ptr [g_thunkTargets + 1848]
EOS_Friends_AcceptInvite ENDP

PUBLIC EOS_Friends_AddNotifyBlockedUsersUpdate
EOS_Friends_AddNotifyBlockedUsersUpdate PROC
    jmp qword ptr [g_thunkTargets + 1856]
EOS_Friends_AddNotifyBlockedUsersUpdate ENDP

PUBLIC EOS_Friends_AddNotifyFriendsUpdate
EOS_Friends_AddNotifyFriendsUpdate PROC
    jmp qword ptr [g_thunkTargets + 1864]
EOS_Friends_AddNotifyFriendsUpdate ENDP

PUBLIC EOS_Friends_GetBlockedUserAtIndex
EOS_Friends_GetBlockedUserAtIndex PROC
    jmp qword ptr [g_thunkTargets + 1872]
EOS_Friends_GetBlockedUserAtIndex ENDP

PUBLIC EOS_Friends_GetBlockedUsersCount
EOS_Friends_GetBlockedUsersCount PROC
    jmp qword ptr [g_thunkTargets + 1880]
EOS_Friends_GetBlockedUsersCount ENDP

PUBLIC EOS_Friends_GetFriendAtIndex
EOS_Friends_GetFriendAtIndex PROC
    jmp qword ptr [g_thunkTargets + 1888]
EOS_Friends_GetFriendAtIndex ENDP

PUBLIC EOS_Friends_GetFriendsCount
EOS_Friends_GetFriendsCount PROC
    jmp qword ptr [g_thunkTargets + 1896]
EOS_Friends_GetFriendsCount ENDP

PUBLIC EOS_Friends_GetStatus
EOS_Friends_GetStatus PROC
    jmp qword ptr [g_thunkTargets + 1904]
EOS_Friends_GetStatus ENDP

PUBLIC EOS_Friends_QueryFriends
EOS_Friends_QueryFriends PROC
    jmp qword ptr [g_thunkTargets + 1912]
EOS_Friends_QueryFriends ENDP

PUBLIC EOS_Friends_RejectInvite
EOS_Friends_RejectInvite PROC
    jmp qword ptr [g_thunkTargets + 1920]
EOS_Friends_RejectInvite ENDP

PUBLIC EOS_Friends_RemoveNotifyBlockedUsersUpdate
EOS_Friends_RemoveNotifyBlockedUsersUpdate PROC
    jmp qword ptr [g_thunkTargets + 1928]
EOS_Friends_RemoveNotifyBlockedUsersUpdate ENDP

PUBLIC EOS_Friends_RemoveNotifyFriendsUpdate
EOS_Friends_RemoveNotifyFriendsUpdate PROC
    jmp qword ptr [g_thunkTargets + 1936]
EOS_Friends_RemoveNotifyFriendsUpdate ENDP

PUBLIC EOS_Friends_SendInvite
EOS_Friends_SendInvite PROC
    jmp qword ptr [g_thunkTargets + 1944]
EOS_Friends_SendInvite ENDP

PUBLIC EOS_GetVersion
EOS_GetVersion PROC
    jmp qword ptr [g_thunkTargets + 1952]
EOS_GetVersion ENDP

PUBLIC EOS_Initialize
EOS_Initialize PROC
    jmp qword ptr [g_thunkTargets + 1960]
EOS_Initialize ENDP

PUBLIC EOS_IntegratedPlatformOptionsContainer_Add
EOS_IntegratedPlatformOptionsContainer_Add PROC
    jmp qword ptr [g_thunkTargets + 1968]
EOS_IntegratedPlatformOptionsContainer_Add ENDP

PUBLIC EOS_IntegratedPlatformOptionsContainer_Release
EOS_IntegratedPlatformOptionsContainer_Release PROC
    jmp qword ptr [g_thunkTargets + 1976]
EOS_IntegratedPlatformOptionsContainer_Release ENDP

PUBLIC EOS_IntegratedPlatform_AddNotifyUserLoginStatusChanged
EOS_IntegratedPlatform_AddNotifyUserLoginStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 1984]
EOS_IntegratedPlatform_AddNotifyUserLoginStatusChanged ENDP

PUBLIC EOS_IntegratedPlatform_ClearUserPreLogoutCallback
EOS_IntegratedPlatform_ClearUserPreLogoutCallback PROC
    jmp qword ptr [g_thunkTargets + 1992]
EOS_IntegratedPlatform_ClearUserPreLogoutCallback ENDP

PUBLIC EOS_IntegratedPlatform_CreateIntegratedPlatformOptionsContainer
EOS_IntegratedPlatform_CreateIntegratedPlatformOptionsContainer PROC
    jmp qword ptr [g_thunkTargets + 2000]
EOS_IntegratedPlatform_CreateIntegratedPlatformOptionsContainer ENDP

PUBLIC EOS_IntegratedPlatform_FinalizeDeferredUserLogout
EOS_IntegratedPlatform_FinalizeDeferredUserLogout PROC
    jmp qword ptr [g_thunkTargets + 2008]
EOS_IntegratedPlatform_FinalizeDeferredUserLogout ENDP

PUBLIC EOS_IntegratedPlatform_RemoveNotifyUserLoginStatusChanged
EOS_IntegratedPlatform_RemoveNotifyUserLoginStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 2016]
EOS_IntegratedPlatform_RemoveNotifyUserLoginStatusChanged ENDP

PUBLIC EOS_IntegratedPlatform_SetUserLoginStatus
EOS_IntegratedPlatform_SetUserLoginStatus PROC
    jmp qword ptr [g_thunkTargets + 2024]
EOS_IntegratedPlatform_SetUserLoginStatus ENDP

PUBLIC EOS_IntegratedPlatform_SetUserPreLogoutCallback
EOS_IntegratedPlatform_SetUserPreLogoutCallback PROC
    jmp qword ptr [g_thunkTargets + 2032]
EOS_IntegratedPlatform_SetUserPreLogoutCallback ENDP

PUBLIC EOS_KWS_AddNotifyPermissionsUpdateReceived
EOS_KWS_AddNotifyPermissionsUpdateReceived PROC
    jmp qword ptr [g_thunkTargets + 2040]
EOS_KWS_AddNotifyPermissionsUpdateReceived ENDP

PUBLIC EOS_KWS_CopyPermissionByIndex
EOS_KWS_CopyPermissionByIndex PROC
    jmp qword ptr [g_thunkTargets + 2048]
EOS_KWS_CopyPermissionByIndex ENDP

PUBLIC EOS_KWS_CreateUser
EOS_KWS_CreateUser PROC
    jmp qword ptr [g_thunkTargets + 2056]
EOS_KWS_CreateUser ENDP

PUBLIC EOS_KWS_GetPermissionByKey
EOS_KWS_GetPermissionByKey PROC
    jmp qword ptr [g_thunkTargets + 2064]
EOS_KWS_GetPermissionByKey ENDP

PUBLIC EOS_KWS_GetPermissionsCount
EOS_KWS_GetPermissionsCount PROC
    jmp qword ptr [g_thunkTargets + 2072]
EOS_KWS_GetPermissionsCount ENDP

PUBLIC EOS_KWS_PermissionStatus_Release
EOS_KWS_PermissionStatus_Release PROC
    jmp qword ptr [g_thunkTargets + 2080]
EOS_KWS_PermissionStatus_Release ENDP

PUBLIC EOS_KWS_QueryAgeGate
EOS_KWS_QueryAgeGate PROC
    jmp qword ptr [g_thunkTargets + 2088]
EOS_KWS_QueryAgeGate ENDP

PUBLIC EOS_KWS_QueryPermissions
EOS_KWS_QueryPermissions PROC
    jmp qword ptr [g_thunkTargets + 2096]
EOS_KWS_QueryPermissions ENDP

PUBLIC EOS_KWS_RemoveNotifyPermissionsUpdateReceived
EOS_KWS_RemoveNotifyPermissionsUpdateReceived PROC
    jmp qword ptr [g_thunkTargets + 2104]
EOS_KWS_RemoveNotifyPermissionsUpdateReceived ENDP

PUBLIC EOS_KWS_RequestPermissions
EOS_KWS_RequestPermissions PROC
    jmp qword ptr [g_thunkTargets + 2112]
EOS_KWS_RequestPermissions ENDP

PUBLIC EOS_KWS_UpdateParentEmail
EOS_KWS_UpdateParentEmail PROC
    jmp qword ptr [g_thunkTargets + 2120]
EOS_KWS_UpdateParentEmail ENDP

PUBLIC EOS_Leaderboards_CopyLeaderboardDefinitionByIndex
EOS_Leaderboards_CopyLeaderboardDefinitionByIndex PROC
    jmp qword ptr [g_thunkTargets + 2128]
EOS_Leaderboards_CopyLeaderboardDefinitionByIndex ENDP

PUBLIC EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId
EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId PROC
    jmp qword ptr [g_thunkTargets + 2136]
EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId ENDP

PUBLIC EOS_Leaderboards_CopyLeaderboardRecordByIndex
EOS_Leaderboards_CopyLeaderboardRecordByIndex PROC
    jmp qword ptr [g_thunkTargets + 2144]
EOS_Leaderboards_CopyLeaderboardRecordByIndex ENDP

PUBLIC EOS_Leaderboards_CopyLeaderboardRecordByUserId
EOS_Leaderboards_CopyLeaderboardRecordByUserId PROC
    jmp qword ptr [g_thunkTargets + 2152]
EOS_Leaderboards_CopyLeaderboardRecordByUserId ENDP

PUBLIC EOS_Leaderboards_CopyLeaderboardUserScoreByIndex
EOS_Leaderboards_CopyLeaderboardUserScoreByIndex PROC
    jmp qword ptr [g_thunkTargets + 2160]
EOS_Leaderboards_CopyLeaderboardUserScoreByIndex ENDP

PUBLIC EOS_Leaderboards_CopyLeaderboardUserScoreByUserId
EOS_Leaderboards_CopyLeaderboardUserScoreByUserId PROC
    jmp qword ptr [g_thunkTargets + 2168]
EOS_Leaderboards_CopyLeaderboardUserScoreByUserId ENDP

PUBLIC EOS_Leaderboards_Definition_Release
EOS_Leaderboards_Definition_Release PROC
    jmp qword ptr [g_thunkTargets + 2176]
EOS_Leaderboards_Definition_Release ENDP

PUBLIC EOS_Leaderboards_GetLeaderboardDefinitionCount
EOS_Leaderboards_GetLeaderboardDefinitionCount PROC
    jmp qword ptr [g_thunkTargets + 2184]
EOS_Leaderboards_GetLeaderboardDefinitionCount ENDP

PUBLIC EOS_Leaderboards_GetLeaderboardRecordCount
EOS_Leaderboards_GetLeaderboardRecordCount PROC
    jmp qword ptr [g_thunkTargets + 2192]
EOS_Leaderboards_GetLeaderboardRecordCount ENDP

PUBLIC EOS_Leaderboards_GetLeaderboardUserScoreCount
EOS_Leaderboards_GetLeaderboardUserScoreCount PROC
    jmp qword ptr [g_thunkTargets + 2200]
EOS_Leaderboards_GetLeaderboardUserScoreCount ENDP

PUBLIC EOS_Leaderboards_LeaderboardDefinition_Release
EOS_Leaderboards_LeaderboardDefinition_Release PROC
    jmp qword ptr [g_thunkTargets + 2208]
EOS_Leaderboards_LeaderboardDefinition_Release ENDP

PUBLIC EOS_Leaderboards_LeaderboardRecord_Release
EOS_Leaderboards_LeaderboardRecord_Release PROC
    jmp qword ptr [g_thunkTargets + 2216]
EOS_Leaderboards_LeaderboardRecord_Release ENDP

PUBLIC EOS_Leaderboards_LeaderboardUserScore_Release
EOS_Leaderboards_LeaderboardUserScore_Release PROC
    jmp qword ptr [g_thunkTargets + 2224]
EOS_Leaderboards_LeaderboardUserScore_Release ENDP

PUBLIC EOS_Leaderboards_QueryLeaderboardDefinitions
EOS_Leaderboards_QueryLeaderboardDefinitions PROC
    jmp qword ptr [g_thunkTargets + 2232]
EOS_Leaderboards_QueryLeaderboardDefinitions ENDP

PUBLIC EOS_Leaderboards_QueryLeaderboardRanks
EOS_Leaderboards_QueryLeaderboardRanks PROC
    jmp qword ptr [g_thunkTargets + 2240]
EOS_Leaderboards_QueryLeaderboardRanks ENDP

PUBLIC EOS_Leaderboards_QueryLeaderboardUserScores
EOS_Leaderboards_QueryLeaderboardUserScores PROC
    jmp qword ptr [g_thunkTargets + 2248]
EOS_Leaderboards_QueryLeaderboardUserScores ENDP

PUBLIC EOS_LobbyDetails_CopyAttributeByIndex
EOS_LobbyDetails_CopyAttributeByIndex PROC
    jmp qword ptr [g_thunkTargets + 2256]
EOS_LobbyDetails_CopyAttributeByIndex ENDP

PUBLIC EOS_LobbyDetails_CopyAttributeByKey
EOS_LobbyDetails_CopyAttributeByKey PROC
    jmp qword ptr [g_thunkTargets + 2264]
EOS_LobbyDetails_CopyAttributeByKey ENDP

PUBLIC EOS_LobbyDetails_CopyInfo
EOS_LobbyDetails_CopyInfo PROC
    jmp qword ptr [g_thunkTargets + 2272]
EOS_LobbyDetails_CopyInfo ENDP

PUBLIC EOS_LobbyDetails_CopyMemberAttributeByIndex
EOS_LobbyDetails_CopyMemberAttributeByIndex PROC
    jmp qword ptr [g_thunkTargets + 2280]
EOS_LobbyDetails_CopyMemberAttributeByIndex ENDP

PUBLIC EOS_LobbyDetails_CopyMemberAttributeByKey
EOS_LobbyDetails_CopyMemberAttributeByKey PROC
    jmp qword ptr [g_thunkTargets + 2288]
EOS_LobbyDetails_CopyMemberAttributeByKey ENDP

PUBLIC EOS_LobbyDetails_CopyMemberInfo
EOS_LobbyDetails_CopyMemberInfo PROC
    jmp qword ptr [g_thunkTargets + 2296]
EOS_LobbyDetails_CopyMemberInfo ENDP

PUBLIC EOS_LobbyDetails_GetAttributeCount
EOS_LobbyDetails_GetAttributeCount PROC
    jmp qword ptr [g_thunkTargets + 2304]
EOS_LobbyDetails_GetAttributeCount ENDP

PUBLIC EOS_LobbyDetails_GetLobbyOwner
EOS_LobbyDetails_GetLobbyOwner PROC
    jmp qword ptr [g_thunkTargets + 2312]
EOS_LobbyDetails_GetLobbyOwner ENDP

PUBLIC EOS_LobbyDetails_GetMemberAttributeCount
EOS_LobbyDetails_GetMemberAttributeCount PROC
    jmp qword ptr [g_thunkTargets + 2320]
EOS_LobbyDetails_GetMemberAttributeCount ENDP

PUBLIC EOS_LobbyDetails_GetMemberByIndex
EOS_LobbyDetails_GetMemberByIndex PROC
    jmp qword ptr [g_thunkTargets + 2328]
EOS_LobbyDetails_GetMemberByIndex ENDP

PUBLIC EOS_LobbyDetails_GetMemberCount
EOS_LobbyDetails_GetMemberCount PROC
    jmp qword ptr [g_thunkTargets + 2336]
EOS_LobbyDetails_GetMemberCount ENDP

PUBLIC EOS_LobbyDetails_Info_Release
EOS_LobbyDetails_Info_Release PROC
    jmp qword ptr [g_thunkTargets + 2344]
EOS_LobbyDetails_Info_Release ENDP

PUBLIC EOS_LobbyDetails_MemberInfo_Release
EOS_LobbyDetails_MemberInfo_Release PROC
    jmp qword ptr [g_thunkTargets + 2352]
EOS_LobbyDetails_MemberInfo_Release ENDP

PUBLIC EOS_LobbyDetails_Release
EOS_LobbyDetails_Release PROC
    jmp qword ptr [g_thunkTargets + 2360]
EOS_LobbyDetails_Release ENDP

PUBLIC EOS_LobbyModification_AddAttribute
EOS_LobbyModification_AddAttribute PROC
    jmp qword ptr [g_thunkTargets + 2368]
EOS_LobbyModification_AddAttribute ENDP

PUBLIC EOS_LobbyModification_AddMemberAttribute
EOS_LobbyModification_AddMemberAttribute PROC
    jmp qword ptr [g_thunkTargets + 2376]
EOS_LobbyModification_AddMemberAttribute ENDP

PUBLIC EOS_LobbyModification_Release
EOS_LobbyModification_Release PROC
    jmp qword ptr [g_thunkTargets + 2384]
EOS_LobbyModification_Release ENDP

PUBLIC EOS_LobbyModification_RemoveAttribute
EOS_LobbyModification_RemoveAttribute PROC
    jmp qword ptr [g_thunkTargets + 2392]
EOS_LobbyModification_RemoveAttribute ENDP

PUBLIC EOS_LobbyModification_RemoveMemberAttribute
EOS_LobbyModification_RemoveMemberAttribute PROC
    jmp qword ptr [g_thunkTargets + 2400]
EOS_LobbyModification_RemoveMemberAttribute ENDP

PUBLIC EOS_LobbyModification_SetAllowedPlatformIds
EOS_LobbyModification_SetAllowedPlatformIds PROC
    jmp qword ptr [g_thunkTargets + 2408]
EOS_LobbyModification_SetAllowedPlatformIds ENDP

PUBLIC EOS_LobbyModification_SetBucketId
EOS_LobbyModification_SetBucketId PROC
    jmp qword ptr [g_thunkTargets + 2416]
EOS_LobbyModification_SetBucketId ENDP

PUBLIC EOS_LobbyModification_SetInvitesAllowed
EOS_LobbyModification_SetInvitesAllowed PROC
    jmp qword ptr [g_thunkTargets + 2424]
EOS_LobbyModification_SetInvitesAllowed ENDP

PUBLIC EOS_LobbyModification_SetMaxMembers
EOS_LobbyModification_SetMaxMembers PROC
    jmp qword ptr [g_thunkTargets + 2432]
EOS_LobbyModification_SetMaxMembers ENDP

PUBLIC EOS_LobbyModification_SetPermissionLevel
EOS_LobbyModification_SetPermissionLevel PROC
    jmp qword ptr [g_thunkTargets + 2440]
EOS_LobbyModification_SetPermissionLevel ENDP

PUBLIC EOS_LobbySearch_CopySearchResultByIndex
EOS_LobbySearch_CopySearchResultByIndex PROC
    jmp qword ptr [g_thunkTargets + 2448]
EOS_LobbySearch_CopySearchResultByIndex ENDP

PUBLIC EOS_LobbySearch_Find
EOS_LobbySearch_Find PROC
    jmp qword ptr [g_thunkTargets + 2456]
EOS_LobbySearch_Find ENDP

PUBLIC EOS_LobbySearch_GetSearchResultCount
EOS_LobbySearch_GetSearchResultCount PROC
    jmp qword ptr [g_thunkTargets + 2464]
EOS_LobbySearch_GetSearchResultCount ENDP

PUBLIC EOS_LobbySearch_Release
EOS_LobbySearch_Release PROC
    jmp qword ptr [g_thunkTargets + 2472]
EOS_LobbySearch_Release ENDP

PUBLIC EOS_LobbySearch_RemoveParameter
EOS_LobbySearch_RemoveParameter PROC
    jmp qword ptr [g_thunkTargets + 2480]
EOS_LobbySearch_RemoveParameter ENDP

PUBLIC EOS_LobbySearch_SetLobbyId
EOS_LobbySearch_SetLobbyId PROC
    jmp qword ptr [g_thunkTargets + 2488]
EOS_LobbySearch_SetLobbyId ENDP

PUBLIC EOS_LobbySearch_SetMaxResults
EOS_LobbySearch_SetMaxResults PROC
    jmp qword ptr [g_thunkTargets + 2496]
EOS_LobbySearch_SetMaxResults ENDP

PUBLIC EOS_LobbySearch_SetParameter
EOS_LobbySearch_SetParameter PROC
    jmp qword ptr [g_thunkTargets + 2504]
EOS_LobbySearch_SetParameter ENDP

PUBLIC EOS_LobbySearch_SetTargetUserId
EOS_LobbySearch_SetTargetUserId PROC
    jmp qword ptr [g_thunkTargets + 2512]
EOS_LobbySearch_SetTargetUserId ENDP

PUBLIC EOS_Lobby_AddNotifyJoinLobbyAccepted
EOS_Lobby_AddNotifyJoinLobbyAccepted PROC
    jmp qword ptr [g_thunkTargets + 2520]
EOS_Lobby_AddNotifyJoinLobbyAccepted ENDP

PUBLIC EOS_Lobby_AddNotifyLeaveLobbyRequested
EOS_Lobby_AddNotifyLeaveLobbyRequested PROC
    jmp qword ptr [g_thunkTargets + 2528]
EOS_Lobby_AddNotifyLeaveLobbyRequested ENDP

PUBLIC EOS_Lobby_AddNotifyLobbyInviteAccepted
EOS_Lobby_AddNotifyLobbyInviteAccepted PROC
    jmp qword ptr [g_thunkTargets + 2536]
EOS_Lobby_AddNotifyLobbyInviteAccepted ENDP

PUBLIC EOS_Lobby_AddNotifyLobbyInviteReceived
EOS_Lobby_AddNotifyLobbyInviteReceived PROC
    jmp qword ptr [g_thunkTargets + 2544]
EOS_Lobby_AddNotifyLobbyInviteReceived ENDP

PUBLIC EOS_Lobby_AddNotifyLobbyInviteRejected
EOS_Lobby_AddNotifyLobbyInviteRejected PROC
    jmp qword ptr [g_thunkTargets + 2552]
EOS_Lobby_AddNotifyLobbyInviteRejected ENDP

PUBLIC EOS_Lobby_AddNotifyLobbyMemberStatusReceived
EOS_Lobby_AddNotifyLobbyMemberStatusReceived PROC
    jmp qword ptr [g_thunkTargets + 2560]
EOS_Lobby_AddNotifyLobbyMemberStatusReceived ENDP

PUBLIC EOS_Lobby_AddNotifyLobbyMemberUpdateReceived
EOS_Lobby_AddNotifyLobbyMemberUpdateReceived PROC
    jmp qword ptr [g_thunkTargets + 2568]
EOS_Lobby_AddNotifyLobbyMemberUpdateReceived ENDP

PUBLIC EOS_Lobby_AddNotifyLobbyUpdateReceived
EOS_Lobby_AddNotifyLobbyUpdateReceived PROC
    jmp qword ptr [g_thunkTargets + 2576]
EOS_Lobby_AddNotifyLobbyUpdateReceived ENDP

PUBLIC EOS_Lobby_AddNotifyRTCRoomConnectionChanged
EOS_Lobby_AddNotifyRTCRoomConnectionChanged PROC
    jmp qword ptr [g_thunkTargets + 2584]
EOS_Lobby_AddNotifyRTCRoomConnectionChanged ENDP

PUBLIC EOS_Lobby_AddNotifySendLobbyNativeInviteRequested
EOS_Lobby_AddNotifySendLobbyNativeInviteRequested PROC
    jmp qword ptr [g_thunkTargets + 2592]
EOS_Lobby_AddNotifySendLobbyNativeInviteRequested ENDP

PUBLIC EOS_Lobby_Attribute_Release
EOS_Lobby_Attribute_Release PROC
    jmp qword ptr [g_thunkTargets + 2600]
EOS_Lobby_Attribute_Release ENDP

PUBLIC EOS_Lobby_CopyLobbyDetailsHandle
EOS_Lobby_CopyLobbyDetailsHandle PROC
    jmp qword ptr [g_thunkTargets + 2608]
EOS_Lobby_CopyLobbyDetailsHandle ENDP

PUBLIC EOS_Lobby_CopyLobbyDetailsHandleByInviteId
EOS_Lobby_CopyLobbyDetailsHandleByInviteId PROC
    jmp qword ptr [g_thunkTargets + 2616]
EOS_Lobby_CopyLobbyDetailsHandleByInviteId ENDP

PUBLIC EOS_Lobby_CopyLobbyDetailsHandleByUiEventId
EOS_Lobby_CopyLobbyDetailsHandleByUiEventId PROC
    jmp qword ptr [g_thunkTargets + 2624]
EOS_Lobby_CopyLobbyDetailsHandleByUiEventId ENDP

PUBLIC EOS_Lobby_CreateLobby
EOS_Lobby_CreateLobby PROC
    jmp qword ptr [g_thunkTargets + 2632]
EOS_Lobby_CreateLobby ENDP

PUBLIC EOS_Lobby_CreateLobbySearch
EOS_Lobby_CreateLobbySearch PROC
    jmp qword ptr [g_thunkTargets + 2640]
EOS_Lobby_CreateLobbySearch ENDP

PUBLIC EOS_Lobby_DestroyLobby
EOS_Lobby_DestroyLobby PROC
    jmp qword ptr [g_thunkTargets + 2648]
EOS_Lobby_DestroyLobby ENDP

PUBLIC EOS_Lobby_GetConnectString
EOS_Lobby_GetConnectString PROC
    jmp qword ptr [g_thunkTargets + 2656]
EOS_Lobby_GetConnectString ENDP

PUBLIC EOS_Lobby_GetInviteCount
EOS_Lobby_GetInviteCount PROC
    jmp qword ptr [g_thunkTargets + 2664]
EOS_Lobby_GetInviteCount ENDP

PUBLIC EOS_Lobby_GetInviteIdByIndex
EOS_Lobby_GetInviteIdByIndex PROC
    jmp qword ptr [g_thunkTargets + 2672]
EOS_Lobby_GetInviteIdByIndex ENDP

PUBLIC EOS_Lobby_GetRTCRoomName
EOS_Lobby_GetRTCRoomName PROC
    jmp qword ptr [g_thunkTargets + 2680]
EOS_Lobby_GetRTCRoomName ENDP

PUBLIC EOS_Lobby_HardMuteMember
EOS_Lobby_HardMuteMember PROC
    jmp qword ptr [g_thunkTargets + 2688]
EOS_Lobby_HardMuteMember ENDP

PUBLIC EOS_Lobby_IsRTCRoomConnected
EOS_Lobby_IsRTCRoomConnected PROC
    jmp qword ptr [g_thunkTargets + 2696]
EOS_Lobby_IsRTCRoomConnected ENDP

PUBLIC EOS_Lobby_JoinLobby
EOS_Lobby_JoinLobby PROC
    jmp qword ptr [g_thunkTargets + 2704]
EOS_Lobby_JoinLobby ENDP

PUBLIC EOS_Lobby_JoinLobbyById
EOS_Lobby_JoinLobbyById PROC
    jmp qword ptr [g_thunkTargets + 2712]
EOS_Lobby_JoinLobbyById ENDP

PUBLIC EOS_Lobby_KickMember
EOS_Lobby_KickMember PROC
    jmp qword ptr [g_thunkTargets + 2720]
EOS_Lobby_KickMember ENDP

PUBLIC EOS_Lobby_LeaveLobby
EOS_Lobby_LeaveLobby PROC
    jmp qword ptr [g_thunkTargets + 2728]
EOS_Lobby_LeaveLobby ENDP

PUBLIC EOS_Lobby_ParseConnectString
EOS_Lobby_ParseConnectString PROC
    jmp qword ptr [g_thunkTargets + 2736]
EOS_Lobby_ParseConnectString ENDP

PUBLIC EOS_Lobby_PromoteMember
EOS_Lobby_PromoteMember PROC
    jmp qword ptr [g_thunkTargets + 2744]
EOS_Lobby_PromoteMember ENDP

PUBLIC EOS_Lobby_QueryInvites
EOS_Lobby_QueryInvites PROC
    jmp qword ptr [g_thunkTargets + 2752]
EOS_Lobby_QueryInvites ENDP

PUBLIC EOS_Lobby_RejectInvite
EOS_Lobby_RejectInvite PROC
    jmp qword ptr [g_thunkTargets + 2760]
EOS_Lobby_RejectInvite ENDP

PUBLIC EOS_Lobby_RemoveNotifyJoinLobbyAccepted
EOS_Lobby_RemoveNotifyJoinLobbyAccepted PROC
    jmp qword ptr [g_thunkTargets + 2768]
EOS_Lobby_RemoveNotifyJoinLobbyAccepted ENDP

PUBLIC EOS_Lobby_RemoveNotifyLeaveLobbyRequested
EOS_Lobby_RemoveNotifyLeaveLobbyRequested PROC
    jmp qword ptr [g_thunkTargets + 2776]
EOS_Lobby_RemoveNotifyLeaveLobbyRequested ENDP

PUBLIC EOS_Lobby_RemoveNotifyLobbyInviteAccepted
EOS_Lobby_RemoveNotifyLobbyInviteAccepted PROC
    jmp qword ptr [g_thunkTargets + 2784]
EOS_Lobby_RemoveNotifyLobbyInviteAccepted ENDP

PUBLIC EOS_Lobby_RemoveNotifyLobbyInviteReceived
EOS_Lobby_RemoveNotifyLobbyInviteReceived PROC
    jmp qword ptr [g_thunkTargets + 2792]
EOS_Lobby_RemoveNotifyLobbyInviteReceived ENDP

PUBLIC EOS_Lobby_RemoveNotifyLobbyInviteRejected
EOS_Lobby_RemoveNotifyLobbyInviteRejected PROC
    jmp qword ptr [g_thunkTargets + 2800]
EOS_Lobby_RemoveNotifyLobbyInviteRejected ENDP

PUBLIC EOS_Lobby_RemoveNotifyLobbyMemberStatusReceived
EOS_Lobby_RemoveNotifyLobbyMemberStatusReceived PROC
    jmp qword ptr [g_thunkTargets + 2808]
EOS_Lobby_RemoveNotifyLobbyMemberStatusReceived ENDP

PUBLIC EOS_Lobby_RemoveNotifyLobbyMemberUpdateReceived
EOS_Lobby_RemoveNotifyLobbyMemberUpdateReceived PROC
    jmp qword ptr [g_thunkTargets + 2816]
EOS_Lobby_RemoveNotifyLobbyMemberUpdateReceived ENDP

PUBLIC EOS_Lobby_RemoveNotifyLobbyUpdateReceived
EOS_Lobby_RemoveNotifyLobbyUpdateReceived PROC
    jmp qword ptr [g_thunkTargets + 2824]
EOS_Lobby_RemoveNotifyLobbyUpdateReceived ENDP

PUBLIC EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged
EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged PROC
    jmp qword ptr [g_thunkTargets + 2832]
EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged ENDP

PUBLIC EOS_Lobby_RemoveNotifySendLobbyNativeInviteRequested
EOS_Lobby_RemoveNotifySendLobbyNativeInviteRequested PROC
    jmp qword ptr [g_thunkTargets + 2840]
EOS_Lobby_RemoveNotifySendLobbyNativeInviteRequested ENDP

PUBLIC EOS_Lobby_SendInvite
EOS_Lobby_SendInvite PROC
    jmp qword ptr [g_thunkTargets + 2848]
EOS_Lobby_SendInvite ENDP

PUBLIC EOS_Lobby_UpdateLobby
EOS_Lobby_UpdateLobby PROC
    jmp qword ptr [g_thunkTargets + 2856]
EOS_Lobby_UpdateLobby ENDP

PUBLIC EOS_Lobby_UpdateLobbyModification
EOS_Lobby_UpdateLobbyModification PROC
    jmp qword ptr [g_thunkTargets + 2864]
EOS_Lobby_UpdateLobbyModification ENDP

PUBLIC EOS_Logging_SetCallback
EOS_Logging_SetCallback PROC
    jmp qword ptr [g_thunkTargets + 2872]
EOS_Logging_SetCallback ENDP

PUBLIC EOS_Logging_SetLogLevel
EOS_Logging_SetLogLevel PROC
    jmp qword ptr [g_thunkTargets + 2880]
EOS_Logging_SetLogLevel ENDP

PUBLIC EOS_Mercury_Initialize
EOS_Mercury_Initialize PROC
    jmp qword ptr [g_thunkTargets + 2888]
EOS_Mercury_Initialize ENDP

PUBLIC EOS_Mercury_Shutdown
EOS_Mercury_Shutdown PROC
    jmp qword ptr [g_thunkTargets + 2896]
EOS_Mercury_Shutdown ENDP

PUBLIC EOS_Mercury_Tick
EOS_Mercury_Tick PROC
    jmp qword ptr [g_thunkTargets + 2904]
EOS_Mercury_Tick ENDP

PUBLIC EOS_Metrics_BeginPlayerSession
EOS_Metrics_BeginPlayerSession PROC
    jmp qword ptr [g_thunkTargets + 2912]
EOS_Metrics_BeginPlayerSession ENDP

PUBLIC EOS_Metrics_EndPlayerSession
EOS_Metrics_EndPlayerSession PROC
    jmp qword ptr [g_thunkTargets + 2920]
EOS_Metrics_EndPlayerSession ENDP

PUBLIC EOS_Mods_CopyModInfo
EOS_Mods_CopyModInfo PROC
    jmp qword ptr [g_thunkTargets + 2928]
EOS_Mods_CopyModInfo ENDP

PUBLIC EOS_Mods_EnumerateMods
EOS_Mods_EnumerateMods PROC
    jmp qword ptr [g_thunkTargets + 2936]
EOS_Mods_EnumerateMods ENDP

PUBLIC EOS_Mods_InstallMod
EOS_Mods_InstallMod PROC
    jmp qword ptr [g_thunkTargets + 2944]
EOS_Mods_InstallMod ENDP

PUBLIC EOS_Mods_ModInfo_Release
EOS_Mods_ModInfo_Release PROC
    jmp qword ptr [g_thunkTargets + 2952]
EOS_Mods_ModInfo_Release ENDP

PUBLIC EOS_Mods_UninstallMod
EOS_Mods_UninstallMod PROC
    jmp qword ptr [g_thunkTargets + 2960]
EOS_Mods_UninstallMod ENDP

PUBLIC EOS_Mods_UpdateMod
EOS_Mods_UpdateMod PROC
    jmp qword ptr [g_thunkTargets + 2968]
EOS_Mods_UpdateMod ENDP

PUBLIC EOS_P2P_AcceptConnection
EOS_P2P_AcceptConnection PROC
    jmp qword ptr [g_thunkTargets + 2976]
EOS_P2P_AcceptConnection ENDP

PUBLIC EOS_P2P_AddNotifyIncomingPacketQueueFull
EOS_P2P_AddNotifyIncomingPacketQueueFull PROC
    jmp qword ptr [g_thunkTargets + 2984]
EOS_P2P_AddNotifyIncomingPacketQueueFull ENDP

PUBLIC EOS_P2P_AddNotifyPeerConnectionClosed
EOS_P2P_AddNotifyPeerConnectionClosed PROC
    jmp qword ptr [g_thunkTargets + 2992]
EOS_P2P_AddNotifyPeerConnectionClosed ENDP

PUBLIC EOS_P2P_AddNotifyPeerConnectionEstablished
EOS_P2P_AddNotifyPeerConnectionEstablished PROC
    jmp qword ptr [g_thunkTargets + 3000]
EOS_P2P_AddNotifyPeerConnectionEstablished ENDP

PUBLIC EOS_P2P_AddNotifyPeerConnectionInterrupted
EOS_P2P_AddNotifyPeerConnectionInterrupted PROC
    jmp qword ptr [g_thunkTargets + 3008]
EOS_P2P_AddNotifyPeerConnectionInterrupted ENDP

PUBLIC EOS_P2P_AddNotifyPeerConnectionRequest
EOS_P2P_AddNotifyPeerConnectionRequest PROC
    jmp qword ptr [g_thunkTargets + 3016]
EOS_P2P_AddNotifyPeerConnectionRequest ENDP

PUBLIC EOS_P2P_ClearPacketQueue
EOS_P2P_ClearPacketQueue PROC
    jmp qword ptr [g_thunkTargets + 3024]
EOS_P2P_ClearPacketQueue ENDP

PUBLIC EOS_P2P_CloseConnection
EOS_P2P_CloseConnection PROC
    jmp qword ptr [g_thunkTargets + 3032]
EOS_P2P_CloseConnection ENDP

PUBLIC EOS_P2P_CloseConnections
EOS_P2P_CloseConnections PROC
    jmp qword ptr [g_thunkTargets + 3040]
EOS_P2P_CloseConnections ENDP

PUBLIC EOS_P2P_GetNATType
EOS_P2P_GetNATType PROC
    jmp qword ptr [g_thunkTargets + 3048]
EOS_P2P_GetNATType ENDP

PUBLIC EOS_P2P_GetNextReceivedPacketSize
EOS_P2P_GetNextReceivedPacketSize PROC
    jmp qword ptr [g_thunkTargets + 3056]
EOS_P2P_GetNextReceivedPacketSize ENDP

PUBLIC EOS_P2P_GetPacketQueueInfo
EOS_P2P_GetPacketQueueInfo PROC
    jmp qword ptr [g_thunkTargets + 3064]
EOS_P2P_GetPacketQueueInfo ENDP

PUBLIC EOS_P2P_GetPortRange
EOS_P2P_GetPortRange PROC
    jmp qword ptr [g_thunkTargets + 3072]
EOS_P2P_GetPortRange ENDP

PUBLIC EOS_P2P_GetRelayControl
EOS_P2P_GetRelayControl PROC
    jmp qword ptr [g_thunkTargets + 3080]
EOS_P2P_GetRelayControl ENDP

PUBLIC EOS_P2P_QueryNATType
EOS_P2P_QueryNATType PROC
    jmp qword ptr [g_thunkTargets + 3088]
EOS_P2P_QueryNATType ENDP

PUBLIC EOS_P2P_ReceivePacket
EOS_P2P_ReceivePacket PROC
    jmp qword ptr [g_thunkTargets + 3096]
EOS_P2P_ReceivePacket ENDP

PUBLIC EOS_P2P_RemoveNotifyIncomingPacketQueueFull
EOS_P2P_RemoveNotifyIncomingPacketQueueFull PROC
    jmp qword ptr [g_thunkTargets + 3104]
EOS_P2P_RemoveNotifyIncomingPacketQueueFull ENDP

PUBLIC EOS_P2P_RemoveNotifyPeerConnectionClosed
EOS_P2P_RemoveNotifyPeerConnectionClosed PROC
    jmp qword ptr [g_thunkTargets + 3112]
EOS_P2P_RemoveNotifyPeerConnectionClosed ENDP

PUBLIC EOS_P2P_RemoveNotifyPeerConnectionEstablished
EOS_P2P_RemoveNotifyPeerConnectionEstablished PROC
    jmp qword ptr [g_thunkTargets + 3120]
EOS_P2P_RemoveNotifyPeerConnectionEstablished ENDP

PUBLIC EOS_P2P_RemoveNotifyPeerConnectionInterrupted
EOS_P2P_RemoveNotifyPeerConnectionInterrupted PROC
    jmp qword ptr [g_thunkTargets + 3128]
EOS_P2P_RemoveNotifyPeerConnectionInterrupted ENDP

PUBLIC EOS_P2P_RemoveNotifyPeerConnectionRequest
EOS_P2P_RemoveNotifyPeerConnectionRequest PROC
    jmp qword ptr [g_thunkTargets + 3136]
EOS_P2P_RemoveNotifyPeerConnectionRequest ENDP

PUBLIC EOS_P2P_SendPacket
EOS_P2P_SendPacket PROC
    jmp qword ptr [g_thunkTargets + 3144]
EOS_P2P_SendPacket ENDP

PUBLIC EOS_P2P_SetPacketQueueSize
EOS_P2P_SetPacketQueueSize PROC
    jmp qword ptr [g_thunkTargets + 3152]
EOS_P2P_SetPacketQueueSize ENDP

PUBLIC EOS_P2P_SetPortRange
EOS_P2P_SetPortRange PROC
    jmp qword ptr [g_thunkTargets + 3160]
EOS_P2P_SetPortRange ENDP

PUBLIC EOS_P2P_SetRelayControl
EOS_P2P_SetRelayControl PROC
    jmp qword ptr [g_thunkTargets + 3168]
EOS_P2P_SetRelayControl ENDP

PUBLIC EOS_Platform_CheckForLauncherAndRestart
EOS_Platform_CheckForLauncherAndRestart PROC
    jmp qword ptr [g_thunkTargets + 3176]
EOS_Platform_CheckForLauncherAndRestart ENDP

PUBLIC EOS_Platform_GetAchievementsInterface
EOS_Platform_GetAchievementsInterface PROC
    jmp qword ptr [g_thunkTargets + 3184]
EOS_Platform_GetAchievementsInterface ENDP

PUBLIC EOS_Platform_GetActiveCountryCode
EOS_Platform_GetActiveCountryCode PROC
    jmp qword ptr [g_thunkTargets + 3192]
EOS_Platform_GetActiveCountryCode ENDP

PUBLIC EOS_Platform_GetActiveLocaleCode
EOS_Platform_GetActiveLocaleCode PROC
    jmp qword ptr [g_thunkTargets + 3200]
EOS_Platform_GetActiveLocaleCode ENDP

PUBLIC EOS_Platform_GetAntiCheatClientInterface
EOS_Platform_GetAntiCheatClientInterface PROC
    jmp qword ptr [g_thunkTargets + 3208]
EOS_Platform_GetAntiCheatClientInterface ENDP

PUBLIC EOS_Platform_GetAntiCheatServerInterface
EOS_Platform_GetAntiCheatServerInterface PROC
    jmp qword ptr [g_thunkTargets + 3216]
EOS_Platform_GetAntiCheatServerInterface ENDP

PUBLIC EOS_Platform_GetApplicationStatus
EOS_Platform_GetApplicationStatus PROC
    jmp qword ptr [g_thunkTargets + 3224]
EOS_Platform_GetApplicationStatus ENDP

PUBLIC EOS_Platform_GetAuthInterface
EOS_Platform_GetAuthInterface PROC
    jmp qword ptr [g_thunkTargets + 3232]
EOS_Platform_GetAuthInterface ENDP

PUBLIC EOS_Platform_GetConnectInterface
EOS_Platform_GetConnectInterface PROC
    jmp qword ptr [g_thunkTargets + 3240]
EOS_Platform_GetConnectInterface ENDP

PUBLIC EOS_Platform_GetCustomInvitesInterface
EOS_Platform_GetCustomInvitesInterface PROC
    jmp qword ptr [g_thunkTargets + 3248]
EOS_Platform_GetCustomInvitesInterface ENDP

PUBLIC EOS_Platform_GetDesktopCrossplayStatus
EOS_Platform_GetDesktopCrossplayStatus PROC
    jmp qword ptr [g_thunkTargets + 3256]
EOS_Platform_GetDesktopCrossplayStatus ENDP

PUBLIC EOS_Platform_GetEcomInterface
EOS_Platform_GetEcomInterface PROC
    jmp qword ptr [g_thunkTargets + 3264]
EOS_Platform_GetEcomInterface ENDP

PUBLIC EOS_Platform_GetFriendsInterface
EOS_Platform_GetFriendsInterface PROC
    jmp qword ptr [g_thunkTargets + 3272]
EOS_Platform_GetFriendsInterface ENDP

PUBLIC EOS_Platform_GetIntegratedPlatformInterface
EOS_Platform_GetIntegratedPlatformInterface PROC
    jmp qword ptr [g_thunkTargets + 3280]
EOS_Platform_GetIntegratedPlatformInterface ENDP

PUBLIC EOS_Platform_GetKWSInterface
EOS_Platform_GetKWSInterface PROC
    jmp qword ptr [g_thunkTargets + 3288]
EOS_Platform_GetKWSInterface ENDP

PUBLIC EOS_Platform_GetLeaderboardsInterface
EOS_Platform_GetLeaderboardsInterface PROC
    jmp qword ptr [g_thunkTargets + 3296]
EOS_Platform_GetLeaderboardsInterface ENDP

PUBLIC EOS_Platform_GetLobbyInterface
EOS_Platform_GetLobbyInterface PROC
    jmp qword ptr [g_thunkTargets + 3304]
EOS_Platform_GetLobbyInterface ENDP

PUBLIC EOS_Platform_GetMetricsInterface
EOS_Platform_GetMetricsInterface PROC
    jmp qword ptr [g_thunkTargets + 3312]
EOS_Platform_GetMetricsInterface ENDP

PUBLIC EOS_Platform_GetModsInterface
EOS_Platform_GetModsInterface PROC
    jmp qword ptr [g_thunkTargets + 3320]
EOS_Platform_GetModsInterface ENDP

PUBLIC EOS_Platform_GetNetworkStatus
EOS_Platform_GetNetworkStatus PROC
    jmp qword ptr [g_thunkTargets + 3328]
EOS_Platform_GetNetworkStatus ENDP

PUBLIC EOS_Platform_GetOverrideCountryCode
EOS_Platform_GetOverrideCountryCode PROC
    jmp qword ptr [g_thunkTargets + 3336]
EOS_Platform_GetOverrideCountryCode ENDP

PUBLIC EOS_Platform_GetOverrideLocaleCode
EOS_Platform_GetOverrideLocaleCode PROC
    jmp qword ptr [g_thunkTargets + 3344]
EOS_Platform_GetOverrideLocaleCode ENDP

PUBLIC EOS_Platform_GetP2PInterface
EOS_Platform_GetP2PInterface PROC
    jmp qword ptr [g_thunkTargets + 3352]
EOS_Platform_GetP2PInterface ENDP

PUBLIC EOS_Platform_GetPlayerDataStorageInterface
EOS_Platform_GetPlayerDataStorageInterface PROC
    jmp qword ptr [g_thunkTargets + 3360]
EOS_Platform_GetPlayerDataStorageInterface ENDP

PUBLIC EOS_Platform_GetPresenceInterface
EOS_Platform_GetPresenceInterface PROC
    jmp qword ptr [g_thunkTargets + 3368]
EOS_Platform_GetPresenceInterface ENDP

PUBLIC EOS_Platform_GetProgressionSnapshotInterface
EOS_Platform_GetProgressionSnapshotInterface PROC
    jmp qword ptr [g_thunkTargets + 3376]
EOS_Platform_GetProgressionSnapshotInterface ENDP

PUBLIC EOS_Platform_GetRTCAdminInterface
EOS_Platform_GetRTCAdminInterface PROC
    jmp qword ptr [g_thunkTargets + 3384]
EOS_Platform_GetRTCAdminInterface ENDP

PUBLIC EOS_Platform_GetRTCInterface
EOS_Platform_GetRTCInterface PROC
    jmp qword ptr [g_thunkTargets + 3392]
EOS_Platform_GetRTCInterface ENDP

PUBLIC EOS_Platform_GetReportsInterface
EOS_Platform_GetReportsInterface PROC
    jmp qword ptr [g_thunkTargets + 3400]
EOS_Platform_GetReportsInterface ENDP

PUBLIC EOS_Platform_GetSanctionsInterface
EOS_Platform_GetSanctionsInterface PROC
    jmp qword ptr [g_thunkTargets + 3408]
EOS_Platform_GetSanctionsInterface ENDP

PUBLIC EOS_Platform_GetSessionsInterface
EOS_Platform_GetSessionsInterface PROC
    jmp qword ptr [g_thunkTargets + 3416]
EOS_Platform_GetSessionsInterface ENDP

PUBLIC EOS_Platform_GetStatsInterface
EOS_Platform_GetStatsInterface PROC
    jmp qword ptr [g_thunkTargets + 3424]
EOS_Platform_GetStatsInterface ENDP

PUBLIC EOS_Platform_GetTitleStorageInterface
EOS_Platform_GetTitleStorageInterface PROC
    jmp qword ptr [g_thunkTargets + 3432]
EOS_Platform_GetTitleStorageInterface ENDP

PUBLIC EOS_Platform_GetUIInterface
EOS_Platform_GetUIInterface PROC
    jmp qword ptr [g_thunkTargets + 3440]
EOS_Platform_GetUIInterface ENDP

PUBLIC EOS_Platform_GetUserInfoInterface
EOS_Platform_GetUserInfoInterface PROC
    jmp qword ptr [g_thunkTargets + 3448]
EOS_Platform_GetUserInfoInterface ENDP

PUBLIC EOS_Platform_Release
EOS_Platform_Release PROC
    jmp qword ptr [g_thunkTargets + 3456]
EOS_Platform_Release ENDP

PUBLIC EOS_Platform_SetApplicationStatus
EOS_Platform_SetApplicationStatus PROC
    jmp qword ptr [g_thunkTargets + 3464]
EOS_Platform_SetApplicationStatus ENDP

PUBLIC EOS_Platform_SetNetworkStatus
EOS_Platform_SetNetworkStatus PROC
    jmp qword ptr [g_thunkTargets + 3472]
EOS_Platform_SetNetworkStatus ENDP

PUBLIC EOS_Platform_Tick
EOS_Platform_Tick PROC
    jmp qword ptr [g_thunkTargets + 3480]
EOS_Platform_Tick ENDP

PUBLIC EOS_PlayerDataStorageFileTransferRequest_CancelRequest
EOS_PlayerDataStorageFileTransferRequest_CancelRequest PROC
    jmp qword ptr [g_thunkTargets + 3488]
EOS_PlayerDataStorageFileTransferRequest_CancelRequest ENDP

PUBLIC EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState
EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState PROC
    jmp qword ptr [g_thunkTargets + 3496]
EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState ENDP

PUBLIC EOS_PlayerDataStorageFileTransferRequest_GetFilename
EOS_PlayerDataStorageFileTransferRequest_GetFilename PROC
    jmp qword ptr [g_thunkTargets + 3504]
EOS_PlayerDataStorageFileTransferRequest_GetFilename ENDP

PUBLIC EOS_PlayerDataStorageFileTransferRequest_Release
EOS_PlayerDataStorageFileTransferRequest_Release PROC
    jmp qword ptr [g_thunkTargets + 3512]
EOS_PlayerDataStorageFileTransferRequest_Release ENDP

PUBLIC EOS_PlayerDataStorage_CopyFileMetadataAtIndex
EOS_PlayerDataStorage_CopyFileMetadataAtIndex PROC
    jmp qword ptr [g_thunkTargets + 3520]
EOS_PlayerDataStorage_CopyFileMetadataAtIndex ENDP

PUBLIC EOS_PlayerDataStorage_CopyFileMetadataByFilename
EOS_PlayerDataStorage_CopyFileMetadataByFilename PROC
    jmp qword ptr [g_thunkTargets + 3528]
EOS_PlayerDataStorage_CopyFileMetadataByFilename ENDP

PUBLIC EOS_PlayerDataStorage_DeleteCache
EOS_PlayerDataStorage_DeleteCache PROC
    jmp qword ptr [g_thunkTargets + 3536]
EOS_PlayerDataStorage_DeleteCache ENDP

PUBLIC EOS_PlayerDataStorage_DeleteFile
EOS_PlayerDataStorage_DeleteFile PROC
    jmp qword ptr [g_thunkTargets + 3544]
EOS_PlayerDataStorage_DeleteFile ENDP

PUBLIC EOS_PlayerDataStorage_DuplicateFile
EOS_PlayerDataStorage_DuplicateFile PROC
    jmp qword ptr [g_thunkTargets + 3552]
EOS_PlayerDataStorage_DuplicateFile ENDP

PUBLIC EOS_PlayerDataStorage_FileMetadata_Release
EOS_PlayerDataStorage_FileMetadata_Release PROC
    jmp qword ptr [g_thunkTargets + 3560]
EOS_PlayerDataStorage_FileMetadata_Release ENDP

PUBLIC EOS_PlayerDataStorage_GetFileMetadataCount
EOS_PlayerDataStorage_GetFileMetadataCount PROC
    jmp qword ptr [g_thunkTargets + 3568]
EOS_PlayerDataStorage_GetFileMetadataCount ENDP

PUBLIC EOS_PlayerDataStorage_QueryFile
EOS_PlayerDataStorage_QueryFile PROC
    jmp qword ptr [g_thunkTargets + 3576]
EOS_PlayerDataStorage_QueryFile ENDP

PUBLIC EOS_PlayerDataStorage_QueryFileList
EOS_PlayerDataStorage_QueryFileList PROC
    jmp qword ptr [g_thunkTargets + 3584]
EOS_PlayerDataStorage_QueryFileList ENDP

PUBLIC EOS_PlayerDataStorage_ReadFile
EOS_PlayerDataStorage_ReadFile PROC
    jmp qword ptr [g_thunkTargets + 3592]
EOS_PlayerDataStorage_ReadFile ENDP

PUBLIC EOS_PlayerDataStorage_WriteFile
EOS_PlayerDataStorage_WriteFile PROC
    jmp qword ptr [g_thunkTargets + 3600]
EOS_PlayerDataStorage_WriteFile ENDP

PUBLIC EOS_PresenceModification_DeleteData
EOS_PresenceModification_DeleteData PROC
    jmp qword ptr [g_thunkTargets + 3608]
EOS_PresenceModification_DeleteData ENDP

PUBLIC EOS_PresenceModification_Release
EOS_PresenceModification_Release PROC
    jmp qword ptr [g_thunkTargets + 3616]
EOS_PresenceModification_Release ENDP

PUBLIC EOS_PresenceModification_SetData
EOS_PresenceModification_SetData PROC
    jmp qword ptr [g_thunkTargets + 3624]
EOS_PresenceModification_SetData ENDP

PUBLIC EOS_PresenceModification_SetJoinInfo
EOS_PresenceModification_SetJoinInfo PROC
    jmp qword ptr [g_thunkTargets + 3632]
EOS_PresenceModification_SetJoinInfo ENDP

PUBLIC EOS_PresenceModification_SetRawRichText
EOS_PresenceModification_SetRawRichText PROC
    jmp qword ptr [g_thunkTargets + 3640]
EOS_PresenceModification_SetRawRichText ENDP

PUBLIC EOS_PresenceModification_SetStatus
EOS_PresenceModification_SetStatus PROC
    jmp qword ptr [g_thunkTargets + 3648]
EOS_PresenceModification_SetStatus ENDP

PUBLIC EOS_Presence_AddNotifyJoinGameAccepted
EOS_Presence_AddNotifyJoinGameAccepted PROC
    jmp qword ptr [g_thunkTargets + 3656]
EOS_Presence_AddNotifyJoinGameAccepted ENDP

PUBLIC EOS_Presence_AddNotifyOnPresenceChanged
EOS_Presence_AddNotifyOnPresenceChanged PROC
    jmp qword ptr [g_thunkTargets + 3664]
EOS_Presence_AddNotifyOnPresenceChanged ENDP

PUBLIC EOS_Presence_CopyPresence
EOS_Presence_CopyPresence PROC
    jmp qword ptr [g_thunkTargets + 3672]
EOS_Presence_CopyPresence ENDP

PUBLIC EOS_Presence_CreatePresenceModification
EOS_Presence_CreatePresenceModification PROC
    jmp qword ptr [g_thunkTargets + 3680]
EOS_Presence_CreatePresenceModification ENDP

PUBLIC EOS_Presence_GetJoinInfo
EOS_Presence_GetJoinInfo PROC
    jmp qword ptr [g_thunkTargets + 3688]
EOS_Presence_GetJoinInfo ENDP

PUBLIC EOS_Presence_HasPresence
EOS_Presence_HasPresence PROC
    jmp qword ptr [g_thunkTargets + 3696]
EOS_Presence_HasPresence ENDP

PUBLIC EOS_Presence_Info_Release
EOS_Presence_Info_Release PROC
    jmp qword ptr [g_thunkTargets + 3704]
EOS_Presence_Info_Release ENDP

PUBLIC EOS_Presence_QueryPresence
EOS_Presence_QueryPresence PROC
    jmp qword ptr [g_thunkTargets + 3712]
EOS_Presence_QueryPresence ENDP

PUBLIC EOS_Presence_RemoveNotifyJoinGameAccepted
EOS_Presence_RemoveNotifyJoinGameAccepted PROC
    jmp qword ptr [g_thunkTargets + 3720]
EOS_Presence_RemoveNotifyJoinGameAccepted ENDP

PUBLIC EOS_Presence_RemoveNotifyOnPresenceChanged
EOS_Presence_RemoveNotifyOnPresenceChanged PROC
    jmp qword ptr [g_thunkTargets + 3728]
EOS_Presence_RemoveNotifyOnPresenceChanged ENDP

PUBLIC EOS_Presence_SetPresence
EOS_Presence_SetPresence PROC
    jmp qword ptr [g_thunkTargets + 3736]
EOS_Presence_SetPresence ENDP

PUBLIC EOS_ProductUserId_FromString
EOS_ProductUserId_FromString PROC
    jmp qword ptr [g_thunkTargets + 3744]
EOS_ProductUserId_FromString ENDP

PUBLIC EOS_ProductUserId_IsValid
EOS_ProductUserId_IsValid PROC
    jmp qword ptr [g_thunkTargets + 3752]
EOS_ProductUserId_IsValid ENDP

PUBLIC EOS_ProductUserId_ToString
EOS_ProductUserId_ToString PROC
    jmp qword ptr [g_thunkTargets + 3760]
EOS_ProductUserId_ToString ENDP

PUBLIC EOS_ProgressionSnapshot_AddProgression
EOS_ProgressionSnapshot_AddProgression PROC
    jmp qword ptr [g_thunkTargets + 3768]
EOS_ProgressionSnapshot_AddProgression ENDP

PUBLIC EOS_ProgressionSnapshot_BeginSnapshot
EOS_ProgressionSnapshot_BeginSnapshot PROC
    jmp qword ptr [g_thunkTargets + 3776]
EOS_ProgressionSnapshot_BeginSnapshot ENDP

PUBLIC EOS_ProgressionSnapshot_DeleteSnapshot
EOS_ProgressionSnapshot_DeleteSnapshot PROC
    jmp qword ptr [g_thunkTargets + 3784]
EOS_ProgressionSnapshot_DeleteSnapshot ENDP

PUBLIC EOS_ProgressionSnapshot_EndSnapshot
EOS_ProgressionSnapshot_EndSnapshot PROC
    jmp qword ptr [g_thunkTargets + 3792]
EOS_ProgressionSnapshot_EndSnapshot ENDP

PUBLIC EOS_ProgressionSnapshot_SubmitSnapshot
EOS_ProgressionSnapshot_SubmitSnapshot PROC
    jmp qword ptr [g_thunkTargets + 3800]
EOS_ProgressionSnapshot_SubmitSnapshot ENDP

PUBLIC EOS_RTCAdmin_CopyUserTokenByIndex
EOS_RTCAdmin_CopyUserTokenByIndex PROC
    jmp qword ptr [g_thunkTargets + 3808]
EOS_RTCAdmin_CopyUserTokenByIndex ENDP

PUBLIC EOS_RTCAdmin_CopyUserTokenByUserId
EOS_RTCAdmin_CopyUserTokenByUserId PROC
    jmp qword ptr [g_thunkTargets + 3816]
EOS_RTCAdmin_CopyUserTokenByUserId ENDP

PUBLIC EOS_RTCAdmin_Kick
EOS_RTCAdmin_Kick PROC
    jmp qword ptr [g_thunkTargets + 3824]
EOS_RTCAdmin_Kick ENDP

PUBLIC EOS_RTCAdmin_QueryJoinRoomToken
EOS_RTCAdmin_QueryJoinRoomToken PROC
    jmp qword ptr [g_thunkTargets + 3832]
EOS_RTCAdmin_QueryJoinRoomToken ENDP

PUBLIC EOS_RTCAdmin_SetParticipantHardMute
EOS_RTCAdmin_SetParticipantHardMute PROC
    jmp qword ptr [g_thunkTargets + 3840]
EOS_RTCAdmin_SetParticipantHardMute ENDP

PUBLIC EOS_RTCAdmin_UserToken_Release
EOS_RTCAdmin_UserToken_Release PROC
    jmp qword ptr [g_thunkTargets + 3848]
EOS_RTCAdmin_UserToken_Release ENDP

PUBLIC EOS_RTCAudio_AddNotifyAudioBeforeRender
EOS_RTCAudio_AddNotifyAudioBeforeRender PROC
    jmp qword ptr [g_thunkTargets + 3856]
EOS_RTCAudio_AddNotifyAudioBeforeRender ENDP

PUBLIC EOS_RTCAudio_AddNotifyAudioBeforeSend
EOS_RTCAudio_AddNotifyAudioBeforeSend PROC
    jmp qword ptr [g_thunkTargets + 3864]
EOS_RTCAudio_AddNotifyAudioBeforeSend ENDP

PUBLIC EOS_RTCAudio_AddNotifyAudioDevicesChanged
EOS_RTCAudio_AddNotifyAudioDevicesChanged PROC
    jmp qword ptr [g_thunkTargets + 3872]
EOS_RTCAudio_AddNotifyAudioDevicesChanged ENDP

PUBLIC EOS_RTCAudio_AddNotifyAudioInputState
EOS_RTCAudio_AddNotifyAudioInputState PROC
    jmp qword ptr [g_thunkTargets + 3880]
EOS_RTCAudio_AddNotifyAudioInputState ENDP

PUBLIC EOS_RTCAudio_AddNotifyAudioOutputState
EOS_RTCAudio_AddNotifyAudioOutputState PROC
    jmp qword ptr [g_thunkTargets + 3888]
EOS_RTCAudio_AddNotifyAudioOutputState ENDP

PUBLIC EOS_RTCAudio_AddNotifyParticipantUpdated
EOS_RTCAudio_AddNotifyParticipantUpdated PROC
    jmp qword ptr [g_thunkTargets + 3896]
EOS_RTCAudio_AddNotifyParticipantUpdated ENDP

PUBLIC EOS_RTCAudio_CopyInputDeviceInformationByIndex
EOS_RTCAudio_CopyInputDeviceInformationByIndex PROC
    jmp qword ptr [g_thunkTargets + 3904]
EOS_RTCAudio_CopyInputDeviceInformationByIndex ENDP

PUBLIC EOS_RTCAudio_CopyOutputDeviceInformationByIndex
EOS_RTCAudio_CopyOutputDeviceInformationByIndex PROC
    jmp qword ptr [g_thunkTargets + 3912]
EOS_RTCAudio_CopyOutputDeviceInformationByIndex ENDP

PUBLIC EOS_RTCAudio_GetAudioInputDeviceByIndex
EOS_RTCAudio_GetAudioInputDeviceByIndex PROC
    jmp qword ptr [g_thunkTargets + 3920]
EOS_RTCAudio_GetAudioInputDeviceByIndex ENDP

PUBLIC EOS_RTCAudio_GetAudioInputDevicesCount
EOS_RTCAudio_GetAudioInputDevicesCount PROC
    jmp qword ptr [g_thunkTargets + 3928]
EOS_RTCAudio_GetAudioInputDevicesCount ENDP

PUBLIC EOS_RTCAudio_GetAudioOutputDeviceByIndex
EOS_RTCAudio_GetAudioOutputDeviceByIndex PROC
    jmp qword ptr [g_thunkTargets + 3936]
EOS_RTCAudio_GetAudioOutputDeviceByIndex ENDP

PUBLIC EOS_RTCAudio_GetAudioOutputDevicesCount
EOS_RTCAudio_GetAudioOutputDevicesCount PROC
    jmp qword ptr [g_thunkTargets + 3944]
EOS_RTCAudio_GetAudioOutputDevicesCount ENDP

PUBLIC EOS_RTCAudio_GetInputDevicesCount
EOS_RTCAudio_GetInputDevicesCount PROC
    jmp qword ptr [g_thunkTargets + 3952]
EOS_RTCAudio_GetInputDevicesCount ENDP

PUBLIC EOS_RTCAudio_GetOutputDevicesCount
EOS_RTCAudio_GetOutputDevicesCount PROC
    jmp qword ptr [g_thunkTargets + 3960]
EOS_RTCAudio_GetOutputDevicesCount ENDP

PUBLIC EOS_RTCAudio_InputDeviceInformation_Release
EOS_RTCAudio_InputDeviceInformation_Release PROC
    jmp qword ptr [g_thunkTargets + 3968]
EOS_RTCAudio_InputDeviceInformation_Release ENDP

PUBLIC EOS_RTCAudio_OutputDeviceInformation_Release
EOS_RTCAudio_OutputDeviceInformation_Release PROC
    jmp qword ptr [g_thunkTargets + 3976]
EOS_RTCAudio_OutputDeviceInformation_Release ENDP

PUBLIC EOS_RTCAudio_QueryInputDevicesInformation
EOS_RTCAudio_QueryInputDevicesInformation PROC
    jmp qword ptr [g_thunkTargets + 3984]
EOS_RTCAudio_QueryInputDevicesInformation ENDP

PUBLIC EOS_RTCAudio_QueryOutputDevicesInformation
EOS_RTCAudio_QueryOutputDevicesInformation PROC
    jmp qword ptr [g_thunkTargets + 3992]
EOS_RTCAudio_QueryOutputDevicesInformation ENDP

PUBLIC EOS_RTCAudio_RegisterPlatformAudioUser
EOS_RTCAudio_RegisterPlatformAudioUser PROC
    jmp qword ptr [g_thunkTargets + 4000]
EOS_RTCAudio_RegisterPlatformAudioUser ENDP

PUBLIC EOS_RTCAudio_RegisterPlatformUser
EOS_RTCAudio_RegisterPlatformUser PROC
    jmp qword ptr [g_thunkTargets + 4008]
EOS_RTCAudio_RegisterPlatformUser ENDP

PUBLIC EOS_RTCAudio_RemoveNotifyAudioBeforeRender
EOS_RTCAudio_RemoveNotifyAudioBeforeRender PROC
    jmp qword ptr [g_thunkTargets + 4016]
EOS_RTCAudio_RemoveNotifyAudioBeforeRender ENDP

PUBLIC EOS_RTCAudio_RemoveNotifyAudioBeforeSend
EOS_RTCAudio_RemoveNotifyAudioBeforeSend PROC
    jmp qword ptr [g_thunkTargets + 4024]
EOS_RTCAudio_RemoveNotifyAudioBeforeSend ENDP

PUBLIC EOS_RTCAudio_RemoveNotifyAudioDevicesChanged
EOS_RTCAudio_RemoveNotifyAudioDevicesChanged PROC
    jmp qword ptr [g_thunkTargets + 4032]
EOS_RTCAudio_RemoveNotifyAudioDevicesChanged ENDP

PUBLIC EOS_RTCAudio_RemoveNotifyAudioInputState
EOS_RTCAudio_RemoveNotifyAudioInputState PROC
    jmp qword ptr [g_thunkTargets + 4040]
EOS_RTCAudio_RemoveNotifyAudioInputState ENDP

PUBLIC EOS_RTCAudio_RemoveNotifyAudioOutputState
EOS_RTCAudio_RemoveNotifyAudioOutputState PROC
    jmp qword ptr [g_thunkTargets + 4048]
EOS_RTCAudio_RemoveNotifyAudioOutputState ENDP

PUBLIC EOS_RTCAudio_RemoveNotifyParticipantUpdated
EOS_RTCAudio_RemoveNotifyParticipantUpdated PROC
    jmp qword ptr [g_thunkTargets + 4056]
EOS_RTCAudio_RemoveNotifyParticipantUpdated ENDP

PUBLIC EOS_RTCAudio_SendAudio
EOS_RTCAudio_SendAudio PROC
    jmp qword ptr [g_thunkTargets + 4064]
EOS_RTCAudio_SendAudio ENDP

PUBLIC EOS_RTCAudio_SetAudioInputSettings
EOS_RTCAudio_SetAudioInputSettings PROC
    jmp qword ptr [g_thunkTargets + 4072]
EOS_RTCAudio_SetAudioInputSettings ENDP

PUBLIC EOS_RTCAudio_SetAudioOutputSettings
EOS_RTCAudio_SetAudioOutputSettings PROC
    jmp qword ptr [g_thunkTargets + 4080]
EOS_RTCAudio_SetAudioOutputSettings ENDP

PUBLIC EOS_RTCAudio_SetInputDeviceSettings
EOS_RTCAudio_SetInputDeviceSettings PROC
    jmp qword ptr [g_thunkTargets + 4088]
EOS_RTCAudio_SetInputDeviceSettings ENDP

PUBLIC EOS_RTCAudio_SetOutputDeviceSettings
EOS_RTCAudio_SetOutputDeviceSettings PROC
    jmp qword ptr [g_thunkTargets + 4096]
EOS_RTCAudio_SetOutputDeviceSettings ENDP

PUBLIC EOS_RTCAudio_SetPosition
EOS_RTCAudio_SetPosition PROC
    jmp qword ptr [g_thunkTargets + 4104]
EOS_RTCAudio_SetPosition ENDP

PUBLIC EOS_RTCAudio_UnregisterPlatformAudioUser
EOS_RTCAudio_UnregisterPlatformAudioUser PROC
    jmp qword ptr [g_thunkTargets + 4112]
EOS_RTCAudio_UnregisterPlatformAudioUser ENDP

PUBLIC EOS_RTCAudio_UnregisterPlatformUser
EOS_RTCAudio_UnregisterPlatformUser PROC
    jmp qword ptr [g_thunkTargets + 4120]
EOS_RTCAudio_UnregisterPlatformUser ENDP

PUBLIC EOS_RTCAudio_UpdateParticipantVolume
EOS_RTCAudio_UpdateParticipantVolume PROC
    jmp qword ptr [g_thunkTargets + 4128]
EOS_RTCAudio_UpdateParticipantVolume ENDP

PUBLIC EOS_RTCAudio_UpdateReceiving
EOS_RTCAudio_UpdateReceiving PROC
    jmp qword ptr [g_thunkTargets + 4136]
EOS_RTCAudio_UpdateReceiving ENDP

PUBLIC EOS_RTCAudio_UpdateReceivingVolume
EOS_RTCAudio_UpdateReceivingVolume PROC
    jmp qword ptr [g_thunkTargets + 4144]
EOS_RTCAudio_UpdateReceivingVolume ENDP

PUBLIC EOS_RTCAudio_UpdateSending
EOS_RTCAudio_UpdateSending PROC
    jmp qword ptr [g_thunkTargets + 4152]
EOS_RTCAudio_UpdateSending ENDP

PUBLIC EOS_RTCAudio_UpdateSendingVolume
EOS_RTCAudio_UpdateSendingVolume PROC
    jmp qword ptr [g_thunkTargets + 4160]
EOS_RTCAudio_UpdateSendingVolume ENDP

PUBLIC EOS_RTCData_AddNotifyDataReceived
EOS_RTCData_AddNotifyDataReceived PROC
    jmp qword ptr [g_thunkTargets + 4168]
EOS_RTCData_AddNotifyDataReceived ENDP

PUBLIC EOS_RTCData_AddNotifyParticipantUpdated
EOS_RTCData_AddNotifyParticipantUpdated PROC
    jmp qword ptr [g_thunkTargets + 4176]
EOS_RTCData_AddNotifyParticipantUpdated ENDP

PUBLIC EOS_RTCData_RemoveNotifyDataReceived
EOS_RTCData_RemoveNotifyDataReceived PROC
    jmp qword ptr [g_thunkTargets + 4184]
EOS_RTCData_RemoveNotifyDataReceived ENDP

PUBLIC EOS_RTCData_RemoveNotifyParticipantUpdated
EOS_RTCData_RemoveNotifyParticipantUpdated PROC
    jmp qword ptr [g_thunkTargets + 4192]
EOS_RTCData_RemoveNotifyParticipantUpdated ENDP

PUBLIC EOS_RTCData_SendData
EOS_RTCData_SendData PROC
    jmp qword ptr [g_thunkTargets + 4200]
EOS_RTCData_SendData ENDP

PUBLIC EOS_RTCData_UpdateReceiving
EOS_RTCData_UpdateReceiving PROC
    jmp qword ptr [g_thunkTargets + 4208]
EOS_RTCData_UpdateReceiving ENDP

PUBLIC EOS_RTCData_UpdateSending
EOS_RTCData_UpdateSending PROC
    jmp qword ptr [g_thunkTargets + 4216]
EOS_RTCData_UpdateSending ENDP

PUBLIC EOS_RTCVideo_AddNotifyParticipantUpdated
EOS_RTCVideo_AddNotifyParticipantUpdated PROC
    jmp qword ptr [g_thunkTargets + 4224]
EOS_RTCVideo_AddNotifyParticipantUpdated ENDP

PUBLIC EOS_RTCVideo_AddNotifyVideoReceived
EOS_RTCVideo_AddNotifyVideoReceived PROC
    jmp qword ptr [g_thunkTargets + 4232]
EOS_RTCVideo_AddNotifyVideoReceived ENDP

PUBLIC EOS_RTCVideo_CreateOutgoingVideoFrameFormat
EOS_RTCVideo_CreateOutgoingVideoFrameFormat PROC
    jmp qword ptr [g_thunkTargets + 4240]
EOS_RTCVideo_CreateOutgoingVideoFrameFormat ENDP

PUBLIC EOS_RTCVideo_RemoveNotifyParticipantUpdated
EOS_RTCVideo_RemoveNotifyParticipantUpdated PROC
    jmp qword ptr [g_thunkTargets + 4248]
EOS_RTCVideo_RemoveNotifyParticipantUpdated ENDP

PUBLIC EOS_RTCVideo_RemoveNotifyVideoReceived
EOS_RTCVideo_RemoveNotifyVideoReceived PROC
    jmp qword ptr [g_thunkTargets + 4256]
EOS_RTCVideo_RemoveNotifyVideoReceived ENDP

PUBLIC EOS_RTCVideo_SendVideo
EOS_RTCVideo_SendVideo PROC
    jmp qword ptr [g_thunkTargets + 4264]
EOS_RTCVideo_SendVideo ENDP

PUBLIC EOS_RTCVideo_SetAdaptVideoFrameCallback
EOS_RTCVideo_SetAdaptVideoFrameCallback PROC
    jmp qword ptr [g_thunkTargets + 4272]
EOS_RTCVideo_SetAdaptVideoFrameCallback ENDP

PUBLIC EOS_RTCVideo_SetVideoAllocationCallback
EOS_RTCVideo_SetVideoAllocationCallback PROC
    jmp qword ptr [g_thunkTargets + 4280]
EOS_RTCVideo_SetVideoAllocationCallback ENDP

PUBLIC EOS_RTCVideo_SetVideoReleaseCallback
EOS_RTCVideo_SetVideoReleaseCallback PROC
    jmp qword ptr [g_thunkTargets + 4288]
EOS_RTCVideo_SetVideoReleaseCallback ENDP

PUBLIC EOS_RTCVideo_UpdateReceiving
EOS_RTCVideo_UpdateReceiving PROC
    jmp qword ptr [g_thunkTargets + 4296]
EOS_RTCVideo_UpdateReceiving ENDP

PUBLIC EOS_RTCVideo_UpdateSending
EOS_RTCVideo_UpdateSending PROC
    jmp qword ptr [g_thunkTargets + 4304]
EOS_RTCVideo_UpdateSending ENDP

PUBLIC EOS_RTC_AddNotifyDisconnected
EOS_RTC_AddNotifyDisconnected PROC
    jmp qword ptr [g_thunkTargets + 4312]
EOS_RTC_AddNotifyDisconnected ENDP

PUBLIC EOS_RTC_AddNotifyParticipantStatusChanged
EOS_RTC_AddNotifyParticipantStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 4320]
EOS_RTC_AddNotifyParticipantStatusChanged ENDP

PUBLIC EOS_RTC_AddNotifyRoomStatisticsUpdated
EOS_RTC_AddNotifyRoomStatisticsUpdated PROC
    jmp qword ptr [g_thunkTargets + 4328]
EOS_RTC_AddNotifyRoomStatisticsUpdated ENDP

PUBLIC EOS_RTC_BlockParticipant
EOS_RTC_BlockParticipant PROC
    jmp qword ptr [g_thunkTargets + 4336]
EOS_RTC_BlockParticipant ENDP

PUBLIC EOS_RTC_GetAudioInterface
EOS_RTC_GetAudioInterface PROC
    jmp qword ptr [g_thunkTargets + 4344]
EOS_RTC_GetAudioInterface ENDP

PUBLIC EOS_RTC_GetDataInterface
EOS_RTC_GetDataInterface PROC
    jmp qword ptr [g_thunkTargets + 4352]
EOS_RTC_GetDataInterface ENDP

PUBLIC EOS_RTC_JoinRoom
EOS_RTC_JoinRoom PROC
    jmp qword ptr [g_thunkTargets + 4360]
EOS_RTC_JoinRoom ENDP

PUBLIC EOS_RTC_LeaveRoom
EOS_RTC_LeaveRoom PROC
    jmp qword ptr [g_thunkTargets + 4368]
EOS_RTC_LeaveRoom ENDP

PUBLIC EOS_RTC_RemoveNotifyDisconnected
EOS_RTC_RemoveNotifyDisconnected PROC
    jmp qword ptr [g_thunkTargets + 4376]
EOS_RTC_RemoveNotifyDisconnected ENDP

PUBLIC EOS_RTC_RemoveNotifyParticipantStatusChanged
EOS_RTC_RemoveNotifyParticipantStatusChanged PROC
    jmp qword ptr [g_thunkTargets + 4384]
EOS_RTC_RemoveNotifyParticipantStatusChanged ENDP

PUBLIC EOS_RTC_RemoveNotifyRoomStatisticsUpdated
EOS_RTC_RemoveNotifyRoomStatisticsUpdated PROC
    jmp qword ptr [g_thunkTargets + 4392]
EOS_RTC_RemoveNotifyRoomStatisticsUpdated ENDP

PUBLIC EOS_RTC_SetRoomSetting
EOS_RTC_SetRoomSetting PROC
    jmp qword ptr [g_thunkTargets + 4400]
EOS_RTC_SetRoomSetting ENDP

PUBLIC EOS_RTC_SetSetting
EOS_RTC_SetSetting PROC
    jmp qword ptr [g_thunkTargets + 4408]
EOS_RTC_SetSetting ENDP

PUBLIC EOS_Reports_SendPlayerBehaviorReport
EOS_Reports_SendPlayerBehaviorReport PROC
    jmp qword ptr [g_thunkTargets + 4416]
EOS_Reports_SendPlayerBehaviorReport ENDP

PUBLIC EOS_Sanctions_CopyPlayerSanctionByIndex
EOS_Sanctions_CopyPlayerSanctionByIndex PROC
    jmp qword ptr [g_thunkTargets + 4424]
EOS_Sanctions_CopyPlayerSanctionByIndex ENDP

PUBLIC EOS_Sanctions_CreatePlayerSanctionAppeal
EOS_Sanctions_CreatePlayerSanctionAppeal PROC
    jmp qword ptr [g_thunkTargets + 4432]
EOS_Sanctions_CreatePlayerSanctionAppeal ENDP

PUBLIC EOS_Sanctions_GetPlayerSanctionCount
EOS_Sanctions_GetPlayerSanctionCount PROC
    jmp qword ptr [g_thunkTargets + 4440]
EOS_Sanctions_GetPlayerSanctionCount ENDP

PUBLIC EOS_Sanctions_PlayerSanction_Release
EOS_Sanctions_PlayerSanction_Release PROC
    jmp qword ptr [g_thunkTargets + 4448]
EOS_Sanctions_PlayerSanction_Release ENDP

PUBLIC EOS_Sanctions_QueryActivePlayerSanctions
EOS_Sanctions_QueryActivePlayerSanctions PROC
    jmp qword ptr [g_thunkTargets + 4456]
EOS_Sanctions_QueryActivePlayerSanctions ENDP

PUBLIC EOS_SessionDetails_Attribute_Release
EOS_SessionDetails_Attribute_Release PROC
    jmp qword ptr [g_thunkTargets + 4464]
EOS_SessionDetails_Attribute_Release ENDP

PUBLIC EOS_SessionDetails_CopyInfo
EOS_SessionDetails_CopyInfo PROC
    jmp qword ptr [g_thunkTargets + 4472]
EOS_SessionDetails_CopyInfo ENDP

PUBLIC EOS_SessionDetails_CopySessionAttributeByIndex
EOS_SessionDetails_CopySessionAttributeByIndex PROC
    jmp qword ptr [g_thunkTargets + 4480]
EOS_SessionDetails_CopySessionAttributeByIndex ENDP

PUBLIC EOS_SessionDetails_CopySessionAttributeByKey
EOS_SessionDetails_CopySessionAttributeByKey PROC
    jmp qword ptr [g_thunkTargets + 4488]
EOS_SessionDetails_CopySessionAttributeByKey ENDP

PUBLIC EOS_SessionDetails_GetSessionAttributeCount
EOS_SessionDetails_GetSessionAttributeCount PROC
    jmp qword ptr [g_thunkTargets + 4496]
EOS_SessionDetails_GetSessionAttributeCount ENDP

PUBLIC EOS_SessionDetails_Info_Release
EOS_SessionDetails_Info_Release PROC
    jmp qword ptr [g_thunkTargets + 4504]
EOS_SessionDetails_Info_Release ENDP

PUBLIC EOS_SessionDetails_Release
EOS_SessionDetails_Release PROC
    jmp qword ptr [g_thunkTargets + 4512]
EOS_SessionDetails_Release ENDP

PUBLIC EOS_SessionModification_AddAttribute
EOS_SessionModification_AddAttribute PROC
    jmp qword ptr [g_thunkTargets + 4520]
EOS_SessionModification_AddAttribute ENDP

PUBLIC EOS_SessionModification_Release
EOS_SessionModification_Release PROC
    jmp qword ptr [g_thunkTargets + 4528]
EOS_SessionModification_Release ENDP

PUBLIC EOS_SessionModification_RemoveAttribute
EOS_SessionModification_RemoveAttribute PROC
    jmp qword ptr [g_thunkTargets + 4536]
EOS_SessionModification_RemoveAttribute ENDP

PUBLIC EOS_SessionModification_SetAllowedPlatformIds
EOS_SessionModification_SetAllowedPlatformIds PROC
    jmp qword ptr [g_thunkTargets + 4544]
EOS_SessionModification_SetAllowedPlatformIds ENDP

PUBLIC EOS_SessionModification_SetBucketId
EOS_SessionModification_SetBucketId PROC
    jmp qword ptr [g_thunkTargets + 4552]
EOS_SessionModification_SetBucketId ENDP

PUBLIC EOS_SessionModification_SetHostAddress
EOS_SessionModification_SetHostAddress PROC
    jmp qword ptr [g_thunkTargets + 4560]
EOS_SessionModification_SetHostAddress ENDP

PUBLIC EOS_SessionModification_SetInvitesAllowed
EOS_SessionModification_SetInvitesAllowed PROC
    jmp qword ptr [g_thunkTargets + 4568]
EOS_SessionModification_SetInvitesAllowed ENDP

PUBLIC EOS_SessionModification_SetJoinInProgressAllowed
EOS_SessionModification_SetJoinInProgressAllowed PROC
    jmp qword ptr [g_thunkTargets + 4576]
EOS_SessionModification_SetJoinInProgressAllowed ENDP

PUBLIC EOS_SessionModification_SetMaxPlayers
EOS_SessionModification_SetMaxPlayers PROC
    jmp qword ptr [g_thunkTargets + 4584]
EOS_SessionModification_SetMaxPlayers ENDP

PUBLIC EOS_SessionModification_SetPermissionLevel
EOS_SessionModification_SetPermissionLevel PROC
    jmp qword ptr [g_thunkTargets + 4592]
EOS_SessionModification_SetPermissionLevel ENDP

PUBLIC EOS_SessionSearch_CopySearchResultByIndex
EOS_SessionSearch_CopySearchResultByIndex PROC
    jmp qword ptr [g_thunkTargets + 4600]
EOS_SessionSearch_CopySearchResultByIndex ENDP

PUBLIC EOS_SessionSearch_Find
EOS_SessionSearch_Find PROC
    jmp qword ptr [g_thunkTargets + 4608]
EOS_SessionSearch_Find ENDP

PUBLIC EOS_SessionSearch_GetSearchResultCount
EOS_SessionSearch_GetSearchResultCount PROC
    jmp qword ptr [g_thunkTargets + 4616]
EOS_SessionSearch_GetSearchResultCount ENDP

PUBLIC EOS_SessionSearch_Release
EOS_SessionSearch_Release PROC
    jmp qword ptr [g_thunkTargets + 4624]
EOS_SessionSearch_Release ENDP

PUBLIC EOS_SessionSearch_RemoveParameter
EOS_SessionSearch_RemoveParameter PROC
    jmp qword ptr [g_thunkTargets + 4632]
EOS_SessionSearch_RemoveParameter ENDP

PUBLIC EOS_SessionSearch_SetMaxResults
EOS_SessionSearch_SetMaxResults PROC
    jmp qword ptr [g_thunkTargets + 4640]
EOS_SessionSearch_SetMaxResults ENDP

PUBLIC EOS_SessionSearch_SetSessionId
EOS_SessionSearch_SetSessionId PROC
    jmp qword ptr [g_thunkTargets + 4648]
EOS_SessionSearch_SetSessionId ENDP

PUBLIC EOS_SessionSearch_SetTargetUserId
EOS_SessionSearch_SetTargetUserId PROC
    jmp qword ptr [g_thunkTargets + 4656]
EOS_SessionSearch_SetTargetUserId ENDP

PUBLIC EOS_Sessions_AddNotifyJoinSessionAccepted
EOS_Sessions_AddNotifyJoinSessionAccepted PROC
    jmp qword ptr [g_thunkTargets + 4664]
EOS_Sessions_AddNotifyJoinSessionAccepted ENDP

PUBLIC EOS_Sessions_AddNotifyLeaveSessionRequested
EOS_Sessions_AddNotifyLeaveSessionRequested PROC
    jmp qword ptr [g_thunkTargets + 4672]
EOS_Sessions_AddNotifyLeaveSessionRequested ENDP

PUBLIC EOS_Sessions_AddNotifySendSessionNativeInviteRequested
EOS_Sessions_AddNotifySendSessionNativeInviteRequested PROC
    jmp qword ptr [g_thunkTargets + 4680]
EOS_Sessions_AddNotifySendSessionNativeInviteRequested ENDP

PUBLIC EOS_Sessions_AddNotifySessionInviteAccepted
EOS_Sessions_AddNotifySessionInviteAccepted PROC
    jmp qword ptr [g_thunkTargets + 4688]
EOS_Sessions_AddNotifySessionInviteAccepted ENDP

PUBLIC EOS_Sessions_AddNotifySessionInviteReceived
EOS_Sessions_AddNotifySessionInviteReceived PROC
    jmp qword ptr [g_thunkTargets + 4696]
EOS_Sessions_AddNotifySessionInviteReceived ENDP

PUBLIC EOS_Sessions_AddNotifySessionInviteRejected
EOS_Sessions_AddNotifySessionInviteRejected PROC
    jmp qword ptr [g_thunkTargets + 4704]
EOS_Sessions_AddNotifySessionInviteRejected ENDP

PUBLIC EOS_Sessions_CopyActiveSessionHandle
EOS_Sessions_CopyActiveSessionHandle PROC
    jmp qword ptr [g_thunkTargets + 4712]
EOS_Sessions_CopyActiveSessionHandle ENDP

PUBLIC EOS_Sessions_CopySessionHandleByInviteId
EOS_Sessions_CopySessionHandleByInviteId PROC
    jmp qword ptr [g_thunkTargets + 4720]
EOS_Sessions_CopySessionHandleByInviteId ENDP

PUBLIC EOS_Sessions_CopySessionHandleByUiEventId
EOS_Sessions_CopySessionHandleByUiEventId PROC
    jmp qword ptr [g_thunkTargets + 4728]
EOS_Sessions_CopySessionHandleByUiEventId ENDP

PUBLIC EOS_Sessions_CopySessionHandleForPresence
EOS_Sessions_CopySessionHandleForPresence PROC
    jmp qword ptr [g_thunkTargets + 4736]
EOS_Sessions_CopySessionHandleForPresence ENDP

PUBLIC EOS_Sessions_CreateSessionModification
EOS_Sessions_CreateSessionModification PROC
    jmp qword ptr [g_thunkTargets + 4744]
EOS_Sessions_CreateSessionModification ENDP

PUBLIC EOS_Sessions_CreateSessionSearch
EOS_Sessions_CreateSessionSearch PROC
    jmp qword ptr [g_thunkTargets + 4752]
EOS_Sessions_CreateSessionSearch ENDP

PUBLIC EOS_Sessions_DestroySession
EOS_Sessions_DestroySession PROC
    jmp qword ptr [g_thunkTargets + 4760]
EOS_Sessions_DestroySession ENDP

PUBLIC EOS_Sessions_DumpSessionState
EOS_Sessions_DumpSessionState PROC
    jmp qword ptr [g_thunkTargets + 4768]
EOS_Sessions_DumpSessionState ENDP

PUBLIC EOS_Sessions_EndSession
EOS_Sessions_EndSession PROC
    jmp qword ptr [g_thunkTargets + 4776]
EOS_Sessions_EndSession ENDP

PUBLIC EOS_Sessions_GetInviteCount
EOS_Sessions_GetInviteCount PROC
    jmp qword ptr [g_thunkTargets + 4784]
EOS_Sessions_GetInviteCount ENDP

PUBLIC EOS_Sessions_GetInviteIdByIndex
EOS_Sessions_GetInviteIdByIndex PROC
    jmp qword ptr [g_thunkTargets + 4792]
EOS_Sessions_GetInviteIdByIndex ENDP

PUBLIC EOS_Sessions_IsUserInSession
EOS_Sessions_IsUserInSession PROC
    jmp qword ptr [g_thunkTargets + 4800]
EOS_Sessions_IsUserInSession ENDP

PUBLIC EOS_Sessions_JoinSession
EOS_Sessions_JoinSession PROC
    jmp qword ptr [g_thunkTargets + 4808]
EOS_Sessions_JoinSession ENDP

PUBLIC EOS_Sessions_QueryInvites
EOS_Sessions_QueryInvites PROC
    jmp qword ptr [g_thunkTargets + 4816]
EOS_Sessions_QueryInvites ENDP

PUBLIC EOS_Sessions_RegisterPlayers
EOS_Sessions_RegisterPlayers PROC
    jmp qword ptr [g_thunkTargets + 4824]
EOS_Sessions_RegisterPlayers ENDP

PUBLIC EOS_Sessions_RejectInvite
EOS_Sessions_RejectInvite PROC
    jmp qword ptr [g_thunkTargets + 4832]
EOS_Sessions_RejectInvite ENDP

PUBLIC EOS_Sessions_RemoveNotifyJoinSessionAccepted
EOS_Sessions_RemoveNotifyJoinSessionAccepted PROC
    jmp qword ptr [g_thunkTargets + 4840]
EOS_Sessions_RemoveNotifyJoinSessionAccepted ENDP

PUBLIC EOS_Sessions_RemoveNotifyLeaveSessionRequested
EOS_Sessions_RemoveNotifyLeaveSessionRequested PROC
    jmp qword ptr [g_thunkTargets + 4848]
EOS_Sessions_RemoveNotifyLeaveSessionRequested ENDP

PUBLIC EOS_Sessions_RemoveNotifySendSessionNativeInviteRequested
EOS_Sessions_RemoveNotifySendSessionNativeInviteRequested PROC
    jmp qword ptr [g_thunkTargets + 4856]
EOS_Sessions_RemoveNotifySendSessionNativeInviteRequested ENDP

PUBLIC EOS_Sessions_RemoveNotifySessionInviteAccepted
EOS_Sessions_RemoveNotifySessionInviteAccepted PROC
    jmp qword ptr [g_thunkTargets + 4864]
EOS_Sessions_RemoveNotifySessionInviteAccepted ENDP

PUBLIC EOS_Sessions_RemoveNotifySessionInviteReceived
EOS_Sessions_RemoveNotifySessionInviteReceived PROC
    jmp qword ptr [g_thunkTargets + 4872]
EOS_Sessions_RemoveNotifySessionInviteReceived ENDP

PUBLIC EOS_Sessions_RemoveNotifySessionInviteRejected
EOS_Sessions_RemoveNotifySessionInviteRejected PROC
    jmp qword ptr [g_thunkTargets + 4880]
EOS_Sessions_RemoveNotifySessionInviteRejected ENDP

PUBLIC EOS_Sessions_SendInvite
EOS_Sessions_SendInvite PROC
    jmp qword ptr [g_thunkTargets + 4888]
EOS_Sessions_SendInvite ENDP

PUBLIC EOS_Sessions_StartSession
EOS_Sessions_StartSession PROC
    jmp qword ptr [g_thunkTargets + 4896]
EOS_Sessions_StartSession ENDP

PUBLIC EOS_Sessions_UnregisterPlayers
EOS_Sessions_UnregisterPlayers PROC
    jmp qword ptr [g_thunkTargets + 4904]
EOS_Sessions_UnregisterPlayers ENDP

PUBLIC EOS_Sessions_UpdateSession
EOS_Sessions_UpdateSession PROC
    jmp qword ptr [g_thunkTargets + 4912]
EOS_Sessions_UpdateSession ENDP

PUBLIC EOS_Sessions_UpdateSessionModification
EOS_Sessions_UpdateSessionModification PROC
    jmp qword ptr [g_thunkTargets + 4920]
EOS_Sessions_UpdateSessionModification ENDP

PUBLIC EOS_Shutdown
EOS_Shutdown PROC
    jmp qword ptr [g_thunkTargets + 4928]
EOS_Shutdown ENDP

PUBLIC EOS_Stats_CopyStatByIndex
EOS_Stats_CopyStatByIndex PROC
    jmp qword ptr [g_thunkTargets + 4936]
EOS_Stats_CopyStatByIndex ENDP

PUBLIC EOS_Stats_CopyStatByName
EOS_Stats_CopyStatByName PROC
    jmp qword ptr [g_thunkTargets + 4944]
EOS_Stats_CopyStatByName ENDP

PUBLIC EOS_Stats_GetStatsCount
EOS_Stats_GetStatsCount PROC
    jmp qword ptr [g_thunkTargets + 4952]
EOS_Stats_GetStatsCount ENDP

PUBLIC EOS_Stats_IngestStat
EOS_Stats_IngestStat PROC
    jmp qword ptr [g_thunkTargets + 4960]
EOS_Stats_IngestStat ENDP

PUBLIC EOS_Stats_QueryStats
EOS_Stats_QueryStats PROC
    jmp qword ptr [g_thunkTargets + 4968]
EOS_Stats_QueryStats ENDP

PUBLIC EOS_Stats_Stat_Release
EOS_Stats_Stat_Release PROC
    jmp qword ptr [g_thunkTargets + 4976]
EOS_Stats_Stat_Release ENDP

PUBLIC EOS_TitleStorageFileTransferRequest_CancelRequest
EOS_TitleStorageFileTransferRequest_CancelRequest PROC
    jmp qword ptr [g_thunkTargets + 4984]
EOS_TitleStorageFileTransferRequest_CancelRequest ENDP

PUBLIC EOS_TitleStorageFileTransferRequest_GetFileRequestState
EOS_TitleStorageFileTransferRequest_GetFileRequestState PROC
    jmp qword ptr [g_thunkTargets + 4992]
EOS_TitleStorageFileTransferRequest_GetFileRequestState ENDP

PUBLIC EOS_TitleStorageFileTransferRequest_GetFilename
EOS_TitleStorageFileTransferRequest_GetFilename PROC
    jmp qword ptr [g_thunkTargets + 5000]
EOS_TitleStorageFileTransferRequest_GetFilename ENDP

PUBLIC EOS_TitleStorageFileTransferRequest_Release
EOS_TitleStorageFileTransferRequest_Release PROC
    jmp qword ptr [g_thunkTargets + 5008]
EOS_TitleStorageFileTransferRequest_Release ENDP

PUBLIC EOS_TitleStorage_CopyFileMetadataAtIndex
EOS_TitleStorage_CopyFileMetadataAtIndex PROC
    jmp qword ptr [g_thunkTargets + 5016]
EOS_TitleStorage_CopyFileMetadataAtIndex ENDP

PUBLIC EOS_TitleStorage_CopyFileMetadataByFilename
EOS_TitleStorage_CopyFileMetadataByFilename PROC
    jmp qword ptr [g_thunkTargets + 5024]
EOS_TitleStorage_CopyFileMetadataByFilename ENDP

PUBLIC EOS_TitleStorage_DeleteCache
EOS_TitleStorage_DeleteCache PROC
    jmp qword ptr [g_thunkTargets + 5032]
EOS_TitleStorage_DeleteCache ENDP

PUBLIC EOS_TitleStorage_FileMetadata_Release
EOS_TitleStorage_FileMetadata_Release PROC
    jmp qword ptr [g_thunkTargets + 5040]
EOS_TitleStorage_FileMetadata_Release ENDP

PUBLIC EOS_TitleStorage_GetFileMetadataCount
EOS_TitleStorage_GetFileMetadataCount PROC
    jmp qword ptr [g_thunkTargets + 5048]
EOS_TitleStorage_GetFileMetadataCount ENDP

PUBLIC EOS_TitleStorage_QueryFile
EOS_TitleStorage_QueryFile PROC
    jmp qword ptr [g_thunkTargets + 5056]
EOS_TitleStorage_QueryFile ENDP

PUBLIC EOS_TitleStorage_QueryFileList
EOS_TitleStorage_QueryFileList PROC
    jmp qword ptr [g_thunkTargets + 5064]
EOS_TitleStorage_QueryFileList ENDP

PUBLIC EOS_TitleStorage_ReadFile
EOS_TitleStorage_ReadFile PROC
    jmp qword ptr [g_thunkTargets + 5072]
EOS_TitleStorage_ReadFile ENDP

PUBLIC EOS_UI_AcknowledgeEventId
EOS_UI_AcknowledgeEventId PROC
    jmp qword ptr [g_thunkTargets + 5080]
EOS_UI_AcknowledgeEventId ENDP

PUBLIC EOS_UI_AddNotifyDisplaySettingsUpdated
EOS_UI_AddNotifyDisplaySettingsUpdated PROC
    jmp qword ptr [g_thunkTargets + 5088]
EOS_UI_AddNotifyDisplaySettingsUpdated ENDP

PUBLIC EOS_UI_AddNotifyMemoryMonitor
EOS_UI_AddNotifyMemoryMonitor PROC
    jmp qword ptr [g_thunkTargets + 5096]
EOS_UI_AddNotifyMemoryMonitor ENDP

PUBLIC EOS_UI_GetFriendsExclusiveInput
EOS_UI_GetFriendsExclusiveInput PROC
    jmp qword ptr [g_thunkTargets + 5104]
EOS_UI_GetFriendsExclusiveInput ENDP

PUBLIC EOS_UI_GetFriendsVisible
EOS_UI_GetFriendsVisible PROC
    jmp qword ptr [g_thunkTargets + 5112]
EOS_UI_GetFriendsVisible ENDP

PUBLIC EOS_UI_GetNotificationLocationPreference
EOS_UI_GetNotificationLocationPreference PROC
    jmp qword ptr [g_thunkTargets + 5120]
EOS_UI_GetNotificationLocationPreference ENDP

PUBLIC EOS_UI_GetToggleFriendsButton
EOS_UI_GetToggleFriendsButton PROC
    jmp qword ptr [g_thunkTargets + 5128]
EOS_UI_GetToggleFriendsButton ENDP

PUBLIC EOS_UI_GetToggleFriendsKey
EOS_UI_GetToggleFriendsKey PROC
    jmp qword ptr [g_thunkTargets + 5136]
EOS_UI_GetToggleFriendsKey ENDP

PUBLIC EOS_UI_HideFriends
EOS_UI_HideFriends PROC
    jmp qword ptr [g_thunkTargets + 5144]
EOS_UI_HideFriends ENDP

PUBLIC EOS_UI_IsSocialOverlayPaused
EOS_UI_IsSocialOverlayPaused PROC
    jmp qword ptr [g_thunkTargets + 5152]
EOS_UI_IsSocialOverlayPaused ENDP

PUBLIC EOS_UI_IsValidButtonCombination
EOS_UI_IsValidButtonCombination PROC
    jmp qword ptr [g_thunkTargets + 5160]
EOS_UI_IsValidButtonCombination ENDP

PUBLIC EOS_UI_IsValidKeyCombination
EOS_UI_IsValidKeyCombination PROC
    jmp qword ptr [g_thunkTargets + 5168]
EOS_UI_IsValidKeyCombination ENDP

PUBLIC EOS_UI_PauseSocialOverlay
EOS_UI_PauseSocialOverlay PROC
    jmp qword ptr [g_thunkTargets + 5176]
EOS_UI_PauseSocialOverlay ENDP

PUBLIC EOS_UI_PrePresent
EOS_UI_PrePresent PROC
    jmp qword ptr [g_thunkTargets + 5184]
EOS_UI_PrePresent ENDP

PUBLIC EOS_UI_RemoveNotifyDisplaySettingsUpdated
EOS_UI_RemoveNotifyDisplaySettingsUpdated PROC
    jmp qword ptr [g_thunkTargets + 5192]
EOS_UI_RemoveNotifyDisplaySettingsUpdated ENDP

PUBLIC EOS_UI_RemoveNotifyMemoryMonitor
EOS_UI_RemoveNotifyMemoryMonitor PROC
    jmp qword ptr [g_thunkTargets + 5200]
EOS_UI_RemoveNotifyMemoryMonitor ENDP

PUBLIC EOS_UI_ReportInputState
EOS_UI_ReportInputState PROC
    jmp qword ptr [g_thunkTargets + 5208]
EOS_UI_ReportInputState ENDP

PUBLIC EOS_UI_SetDisplayPreference
EOS_UI_SetDisplayPreference PROC
    jmp qword ptr [g_thunkTargets + 5216]
EOS_UI_SetDisplayPreference ENDP

PUBLIC EOS_UI_SetToggleFriendsButton
EOS_UI_SetToggleFriendsButton PROC
    jmp qword ptr [g_thunkTargets + 5224]
EOS_UI_SetToggleFriendsButton ENDP

PUBLIC EOS_UI_SetToggleFriendsKey
EOS_UI_SetToggleFriendsKey PROC
    jmp qword ptr [g_thunkTargets + 5232]
EOS_UI_SetToggleFriendsKey ENDP

PUBLIC EOS_UI_ShowBlockPlayer
EOS_UI_ShowBlockPlayer PROC
    jmp qword ptr [g_thunkTargets + 5240]
EOS_UI_ShowBlockPlayer ENDP

PUBLIC EOS_UI_ShowFriends
EOS_UI_ShowFriends PROC
    jmp qword ptr [g_thunkTargets + 5248]
EOS_UI_ShowFriends ENDP

PUBLIC EOS_UI_ShowNativeProfile
EOS_UI_ShowNativeProfile PROC
    jmp qword ptr [g_thunkTargets + 5256]
EOS_UI_ShowNativeProfile ENDP

PUBLIC EOS_UI_ShowReportPlayer
EOS_UI_ShowReportPlayer PROC
    jmp qword ptr [g_thunkTargets + 5264]
EOS_UI_ShowReportPlayer ENDP

PUBLIC EOS_UserInfo_BestDisplayName_Release
EOS_UserInfo_BestDisplayName_Release PROC
    jmp qword ptr [g_thunkTargets + 5272]
EOS_UserInfo_BestDisplayName_Release ENDP

PUBLIC EOS_UserInfo_CopyBestDisplayName
EOS_UserInfo_CopyBestDisplayName PROC
    jmp qword ptr [g_thunkTargets + 5280]
EOS_UserInfo_CopyBestDisplayName ENDP

PUBLIC EOS_UserInfo_CopyBestDisplayNameWithPlatform
EOS_UserInfo_CopyBestDisplayNameWithPlatform PROC
    jmp qword ptr [g_thunkTargets + 5288]
EOS_UserInfo_CopyBestDisplayNameWithPlatform ENDP

PUBLIC EOS_UserInfo_CopyExternalUserInfoByAccountId
EOS_UserInfo_CopyExternalUserInfoByAccountId PROC
    jmp qword ptr [g_thunkTargets + 5296]
EOS_UserInfo_CopyExternalUserInfoByAccountId ENDP

PUBLIC EOS_UserInfo_CopyExternalUserInfoByAccountType
EOS_UserInfo_CopyExternalUserInfoByAccountType PROC
    jmp qword ptr [g_thunkTargets + 5304]
EOS_UserInfo_CopyExternalUserInfoByAccountType ENDP

PUBLIC EOS_UserInfo_CopyExternalUserInfoByIndex
EOS_UserInfo_CopyExternalUserInfoByIndex PROC
    jmp qword ptr [g_thunkTargets + 5312]
EOS_UserInfo_CopyExternalUserInfoByIndex ENDP

PUBLIC EOS_UserInfo_CopyUserInfo
EOS_UserInfo_CopyUserInfo PROC
    jmp qword ptr [g_thunkTargets + 5320]
EOS_UserInfo_CopyUserInfo ENDP

PUBLIC EOS_UserInfo_ExternalUserInfo_Release
EOS_UserInfo_ExternalUserInfo_Release PROC
    jmp qword ptr [g_thunkTargets + 5328]
EOS_UserInfo_ExternalUserInfo_Release ENDP

PUBLIC EOS_UserInfo_GetExternalUserInfoCount
EOS_UserInfo_GetExternalUserInfoCount PROC
    jmp qword ptr [g_thunkTargets + 5336]
EOS_UserInfo_GetExternalUserInfoCount ENDP

PUBLIC EOS_UserInfo_GetLocalPlatformType
EOS_UserInfo_GetLocalPlatformType PROC
    jmp qword ptr [g_thunkTargets + 5344]
EOS_UserInfo_GetLocalPlatformType ENDP

PUBLIC EOS_UserInfo_QueryUserInfo
EOS_UserInfo_QueryUserInfo PROC
    jmp qword ptr [g_thunkTargets + 5352]
EOS_UserInfo_QueryUserInfo ENDP

PUBLIC EOS_UserInfo_QueryUserInfoByDisplayName
EOS_UserInfo_QueryUserInfoByDisplayName PROC
    jmp qword ptr [g_thunkTargets + 5360]
EOS_UserInfo_QueryUserInfoByDisplayName ENDP

PUBLIC EOS_UserInfo_QueryUserInfoByExternalAccount
EOS_UserInfo_QueryUserInfoByExternalAccount PROC
    jmp qword ptr [g_thunkTargets + 5368]
EOS_UserInfo_QueryUserInfoByExternalAccount ENDP

PUBLIC EOS_UserInfo_Release
EOS_UserInfo_Release PROC
    jmp qword ptr [g_thunkTargets + 5376]
EOS_UserInfo_Release ENDP

END
