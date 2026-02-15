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

---@class Mod_NoLimits.API.SceneryVolumeExtrasAPI : Mod_NoLimits.API.Base
local NLSceneryVolumeExtrasAPI = BaseAPI.NewAPI("SceneryVolumeExtrasAPI")
local logger = NLSceneryVolumeExtrasAPI.Logger

NLSceneryVolumeExtrasAPI.Enabled = true
NLSceneryVolumeExtrasAPI.CoreAPIName = nil
NLSceneryVolumeExtrasAPI.WorldAPIName = "scenery_volumeextras"

NLSceneryVolumeExtrasAPI.Debug_DumpAPI = false

function NLSceneryVolumeExtrasAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("CalculateBestPlacementPosition", {"self", "cParams"}, {"tResult"})
            :AsListener():WithCallDelegate(NLSceneryVolumeExtrasAPI.CalculateBestPlacementPosition),
        APIEntry.NewEntry("CalculateBestPlacementPositionFromPreviewChangelist", {"self", "cParams"}, {"tPlacementResults"})
            :Disable(),
        APIEntry.NewEntry("CalculatePlacementTransformsAlongVolumeSpline", {"self", "volumeMoveObject", "cSceneryPlacement"}, {"tPositions"})
            :Disable(),
        APIEntry.NewEntry("FindFirstPhysicsRayVolumeHit", {"self", "rayStart", "rayDir"}, {"oPathPart", "vCursorHitPos"})
            :Disable(),
        APIEntry.NewEntry("GetVC_Path_Spline", {"self", "cArg2"})
            :Disable(),
        APIEntry.NewEntry("GetVC_Pool_Spline", {"self", "cArg2"})
            :Disable(),
        APIEntry.NewEntry("SetCurbSnappedForMoveObject", {"self", "cMoveObject", "bPathSnapped"})
            :AsListener(),
        APIEntry.NewEntry("SetVC_Path_Spline", {"self", "standard"})
            :Disable(),
        APIEntry.NewEntry("SetVC_Pool_Spline", {"self", "pool"})
            :Disable(),
    }

    return tEntries
end


function NLSceneryVolumeExtrasAPI.CalculateBestPlacementPosition(rawApi, self, cParams)
    local data = rawApi.CalculateBestPlacementPosition(self, cParams)
    if data == nil then
        return data
    end

    if data.bIsValid then
        return data
    end

    data.bIsValid = true
    return data
end

return BaseAPI.Validate(NLSceneryVolumeExtrasAPI)