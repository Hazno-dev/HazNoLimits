---@diagnostic disable: unnecessary-if
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
local database      = api.database
local time          = api.time
local nlApi         = api.nlApi
local Vector3       = require("Vector3")

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local EditorUtils   = require("Utility.Mod_NoLimits.EditorUtils")               ---@type Mod_NoLimits.EditorUtils
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")          ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")      ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.TrackedRideDatabaseAPI : Mod_NoLimits.API.Base
local NLTrackedRideDatabaseAPI = BaseAPI.NewAPI("TrackedRideDatabaseAPI")
local logger = NLTrackedRideDatabaseAPI.Logger

NLTrackedRideDatabaseAPI.Enabled = true
NLTrackedRideDatabaseAPI.CoreAPIName = nil
NLTrackedRideDatabaseAPI.WorldAPIName = "trackedridedatabase"

NLTrackedRideDatabaseAPI.Debug_DumpAPI = false

function NLTrackedRideDatabaseAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("AllowsBlockSections")
            :Disable(),
        APIEntry.NewEntry("AllowsFreeEnds")
            :WithReturnValues(true),
        APIEntry.NewEntry("AllowsShuttleMode")
            :Disable(),
        APIEntry.NewEntry("BuildTrackResData")
            :AsListener(),
        APIEntry.NewEntry("GetAllElementLists")
            :Disable(),
        APIEntry.NewEntry("GetAllElementUsesRideParams")
            :Disable(),
        APIEntry.NewEntry("GetAllFlumeTypes")
            :Disable(),
        APIEntry.NewEntry("GetAllRideParams")
            :Disable(),
        APIEntry.NewEntry("GetAllTrackElementParams")
            :Disable(),
        APIEntry.NewEntry("GetAllTrackElements")
            :Disable(),
        APIEntry.NewEntry("GetAllTrainIDs")
            :Disable(),
        APIEntry.NewEntry("GetAllTrainsForRideType")
            :Disable(),
        APIEntry.NewEntry("GetBlueprintTags")
            :Disable(),
        APIEntry.NewEntry("GetCinematicCameraWeights")
            :Disable(),
        APIEntry.NewEntry("GetDefaultTrainTypeForRideType")
            :Disable(),
        APIEntry.NewEntry("GetFlumePlatformForRideType")
            :Disable(),
        APIEntry.NewEntry("GetRequiredDLCForTrain")
            :Disable(),
        APIEntry.NewEntry("GetRideTrainTypeName")
            :Disable(),
        APIEntry.NewEntry("GetTrackElements")
            :Disable(),
        APIEntry.NewEntry("GetTrackParamEnum")
            :Disable(),
        APIEntry.NewEntry("IsBoomerangCoaster")
            :Disable(),
        APIEntry.NewEntry("IsCoasterLoopedAsDefault")
            :Disable(),
        APIEntry.NewEntry("IsFlumePlatformType")
            :Disable(),
        APIEntry.NewEntry("IsNonstopRide")
            :Disable(),
        APIEntry.NewEntry("LookupElementParams", {"self", "sRideName", "sElementName", "bUseLooseTrackRestrictions"}, {"tParams"})
            :WithCallDelegate(NLTrackedRideDatabaseAPI.LookupElementParams),
        APIEntry.NewEntry("LookupElementParamsFromElementName", {"self", "sElementID", "bArg3"}, {"tElementParams"})
            :WithCallDelegate(NLTrackedRideDatabaseAPI.LookupElementParamsFromElementName),
        APIEntry.NewEntry("LookupRideParams", {"self", "sRideType", "bArg3"}, {"tRideParams"})
            :WithCallDelegate(NLTrackedRideDatabaseAPI.LookupRideParams),
    }

    return tEntries
end

function NLTrackedRideDatabaseAPI.LookupElementParams(rawApi, self, sRideName, sElementName, bUseLooseTrackRestrictions)
    return rawApi.LookupElementParams(self, sRideName, sElementName, true)
end

function NLTrackedRideDatabaseAPI.LookupElementParamsFromElementName(rawApi, self, sElementID, bArg3)
    return rawApi.LookupElementParamsFromElementName(self, sElementID, true)
end

function NLTrackedRideDatabaseAPI.LookupRideParams(rawApi, self, sRideType, bArg3)
    return rawApi.LookupRideParams(self, sRideType, true)
end

return BaseAPI.Validate(NLTrackedRideDatabaseAPI)