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
local Vector3       = require("Vector3")

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")          ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")      ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.CrowdSimulationAPI : Mod_NoLimits.API.Base
local NLCrowdSimulationAPI = BaseAPI.NewAPI("CrowdSimulationAPI")
local logger = NLCrowdSimulationAPI.Logger

NLCrowdSimulationAPI.Enabled = true
NLCrowdSimulationAPI.CoreAPIName = "crowdsimulation"
NLCrowdSimulationAPI.WorldAPIName = nil

NLCrowdSimulationAPI.Debug_DumpAPI = false

function NLCrowdSimulationAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("AddPeepsToCrowdParticle")
            :Disable(),
        APIEntry.NewEntry("AreAnyParkEntrancesConnectedToASpawnPoint")
            :Disable(),
        APIEntry.NewEntry("ArePathSectionsPending")
            :Disable(),
        APIEntry.NewEntry("CanBeReachedFromSpawnPoint", {"facilityID"})
            :WithCallOriginal():WithReturnValues(true),
        APIEntry.NewEntry("CanReachSpawnPointFrom")
            :Disable(),
        APIEntry.NewEntry("CompleteCrowdGoalPoolWorldSerialisationLoad")
            :Disable(),
        APIEntry.NewEntry("CreateBakedDijkstraGraphsOnLoad")
            :Disable(),
        APIEntry.NewEntry("CreatePropagationGraphsOnLoad")
            :Disable(),
        APIEntry.NewEntry("GetParticlesStillAwaitingInitialAnim")
            :Disable(),
        APIEntry.NewEntry("GetPathAreaEstimate")
            :Disable(),
        APIEntry.NewEntry("IsEntityConnectedToSpawnPoint", {"nQueueCrowdGoalEntity"})
            :WithCallOriginal():WithReturnValues(true),
        APIEntry.NewEntry("IsPointOnPath", {"vV3PathPos", "bArg2"})
            :WithCallOriginal():WithReturnValues(true),
        APIEntry.NewEntry("IsPositionConnectedToSpawnPoint")
            :Disable(),
        APIEntry.NewEntry("ParkEntranceExists")
            :Disable(),
        APIEntry.NewEntry("RemovePeepsFromCrowdParticle")
            :Disable(),
        APIEntry.NewEntry("SetUpdateFlowWhileInactive", {"bArg1"})
            :Disable(),
        APIEntry.NewEntry("SetVoxelTerrain", {"voxelTerrainEntityID"})
            :Disable(),
    }

    return tEntries
end

return BaseAPI.Validate(NLCrowdSimulationAPI)