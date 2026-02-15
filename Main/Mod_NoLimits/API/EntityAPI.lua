-----------------------------------------------------------------------
--/  .API
--/  @author Hazno
--/
--/  @brief  Constructs an API hooking table
--/  @see Mod_NoLimits.API.Base
-----------------------------------------------------------------------

local global        = _G
local api           = global.api                                                ---@type Api
local table         = global.table
local pairs         = global.pairs
local ipairs        = global.ipairs
local math          = global.math
local tryrequire    = global.tryrequire
local type          = global.type
local string        = global.string
local database      = api.database
local Vector3       = require("Vector3")

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")          ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")      ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.EntityAPI : Mod_NoLimits.API.Base
local NLEntityAPI = BaseAPI.NewAPI("EntityAPI")
local logger = NLEntityAPI.Logger

NLEntityAPI.Enabled = true
NLEntityAPI.CoreAPIName = "entity"
NLEntityAPI.WorldAPIName = nil

NLEntityAPI.Debug_DumpAPI = false

NLEntityAPI.Windows = {}
NLEntityAPI.WindowsNames = {}

function NLEntityAPI.GetOverrides(apiProvider)
    NLEntityAPI.Windows = {}
    NLEntityAPI.WindowsNames = {}

    local tEntries = {
        APIEntry.NewEntry("AddComponentsToEntity")
            :AsListener(),
        APIEntry.NewEntry("ClearEntityDebugName")
            :Disable(),
        APIEntry.NewEntry("CompilePrefab")
            :AsListener(),
        APIEntry.NewEntry("CreateEntity")
            :AsListener(),
        APIEntry.NewEntry("CreateRequestCompletionToken")
            :AsListener(),
        APIEntry.NewEntry("DestroyEntity")
            :AsListener(),
        APIEntry.NewEntry("DestroyPrefab")
            :AsListener(),
        APIEntry.NewEntry("EnumerateRootPrefabs")
            :AsListener(),
        APIEntry.NewEntry("FindAncestorEntityProvidingFeature")
            :Disable(),
        APIEntry.NewEntry("FindEntityByName")
            :WithCallDelegate(NLEntityAPI.FindEntityByName),
        APIEntry.NewEntry("FindPrefab")
            :AsListener(),
        APIEntry.NewEntry("GetEntityDebugName")
            :Disable(),
        APIEntry.NewEntry("GetEntityName")
            :Disable(),
        APIEntry.NewEntry("GetEntityPath")
            :Disable(),
        APIEntry.NewEntry("HasPendingRequests")
            :AsListener(),
        APIEntry.NewEntry("HaveRequestsCompleted")
            :AsListener(),
        APIEntry.NewEntry("InstantiateDesc")
            :AsListener(),
        APIEntry.NewEntry("InstantiatePrefab")
            :AsListener(),
        APIEntry.NewEntry("IsFeatureProvidedByEntity")
            :AsListener(),
        APIEntry.NewEntry("OpenEntityInfoWindow")
            :AsListener(),
        APIEntry.NewEntry("PrefabExists")
            :Disable(),
        APIEntry.NewEntry("RemoveComponentsFromEntity")
            :Disable(),
        APIEntry.NewEntry("SetEntityDebugName")
            :Disable(),
    }

    return tEntries
end

local c_mutedEntityNames = {
    MainPhysicsWorld = true,
}

function NLEntityAPI.FindEntityByName(rawApi, sCEntityName, nAnimatedEntityID)
    local result = rawApi.FindEntityByName(sCEntityName, nAnimatedEntityID)

    if sCEntityName == nil or c_mutedEntityNames[sCEntityName] then
        return result
    end

    DebugUtils.LogEntriesFormatted(logger, "FindEntityByName() inputs  ", nil, true, sCEntityName, nAnimatedEntityID)
    DebugUtils.LogEntriesFormatted(logger, "FindEntityByName() outputs ", nil, true, result)
    return result
end

return BaseAPI.Validate(NLEntityAPI)