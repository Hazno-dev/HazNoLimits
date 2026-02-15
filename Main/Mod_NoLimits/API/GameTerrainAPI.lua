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
local type          = global.type
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

---@class Mod_NoLimits.API.GameTerrainAPI : Mod_NoLimits.API.Base
local NLGameTerrainAPI = BaseAPI.NewAPI("GameTerrainAPI")
local logger = NLGameTerrainAPI.Logger

NLGameTerrainAPI.Enabled = true
NLGameTerrainAPI.CoreAPIName = nil
NLGameTerrainAPI.WorldAPIName = "gameterrain"

NLGameTerrainAPI.Debug_DumpAPI = false

function NLGameTerrainAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("AddAutoPaintVoxelColoursToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddDrawWithTestBrushToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddFlattenToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddLowerToPlaneToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddPaintVoxelColoursToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddPaintVoxelColoursTowardsDataToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddPlaneFlattenToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddPushPullToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddRaiseToPlaneToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddRemoveCapsuleToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddRemoveSphereToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddRemoveTestHullToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddRoughenToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddSkirtRevealFillToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddSkirtRevealToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddSmoothToChangeList")
            :Disable(),
        APIEntry.NewEntry("ClearCustomGeome")
            :Disable(),
        APIEntry.NewEntry("ClearMaterialOverride")
            :Disable(),
        APIEntry.NewEntry("ClearPreviewRenderGeometry")
            :Disable(),
        APIEntry.NewEntry("CreateCursor")
            :Disable(),
        APIEntry.NewEntry("CreateLake", {"self", "vLakePlacementSnappedCoord", "lakeType"})
            :WithLogInputs():WithLogOutputs():WithCallDelegate(NLGameTerrainAPI.CreateLake),
        APIEntry.NewEntry("CreateLakesCursor")
            :Disable(),
        APIEntry.NewEntry("CreateTerrainChangeList")
            :Disable(),
        APIEntry.NewEntry("CreateTerrainEditOperation")
            :Disable(),
        APIEntry.NewEntry("CreateWaterfall")
            :Disable(),
        APIEntry.NewEntry("DestroyLake")
            :Disable(),
        APIEntry.NewEntry("DestroyWaterfall")
            :Disable(),
        APIEntry.NewEntry("FindFlatGroundNearPoint")
            :Disable(),
        APIEntry.NewEntry("FindGroundInVerticalLocality")
            :Disable(),
        APIEntry.NewEntry("FindLake")
            :Disable(),
        APIEntry.NewEntry("FindLakesWithSphereCheck")
            :Disable(),
        APIEntry.NewEntry("ForceUpdatePreview")
            :Disable(),
        APIEntry.NewEntry("GetChangeListFromTerrainEditOp")
            :Disable(),
        APIEntry.NewEntry("GetIsoValueChangeCost")
            :Disable(),
        APIEntry.NewEntry("GetLakeSurfaceLevel")
            :Disable(),
        APIEntry.NewEntry("GetLakesCursorHasLinesVisible")
            :Disable(),
        APIEntry.NewEntry("HideCursor")
            :Disable(),
        APIEntry.NewEntry("HideLakesCursor")
            :Disable(),
        APIEntry.NewEntry("LakeCompleteWorldSerialisationLoad")
            :Disable(),
        APIEntry.NewEntry("ReplaceChangeListOnTerrainEditOp")
            :Disable(),
        APIEntry.NewEntry("ResetAutoPainting")
            :Disable(),
        APIEntry.NewEntry("SetAutoPaintingEnclosedColour")
            :Disable(),
        APIEntry.NewEntry("SetAutoPaintingEnclosedScaleOffset")
            :Disable(),
        APIEntry.NewEntry("SetAutoPaintingExposedColour")
            :Disable(),
        APIEntry.NewEntry("SetAutoPaintingExposureScaleOffset")
            :Disable(),
        APIEntry.NewEntry("SetAutoPaintingSideColour")
            :Disable(),
        APIEntry.NewEntry("SetAutoPaintingTopColour")
            :Disable(),
        APIEntry.NewEntry("SetAutoPaintingTopToSideTransition")
            :Disable(),
        APIEntry.NewEntry("SetCustomGeome")
            :Disable(),
        APIEntry.NewEntry("SetIsoValueChangeCost")
            :Disable(),
        APIEntry.NewEntry("SetMaterialOverride")
            :Disable(),
        APIEntry.NewEntry("SetTerrainEditOpCollisionFlags", {"self", "terrainEditOp", "bR5PC17", "bArg4", "bSceneryLock", "bArg6", "bIgnoreRaised", "bArg8"})
            :AsListener(),
        APIEntry.NewEntry("SetTerrainEditOpGridRenderingEnabled")
            :Disable(),
        APIEntry.NewEntry("ShowCursor")
            :Disable(),
        APIEntry.NewEntry("ShowLakesCursor")
            :Disable(),
        APIEntry.NewEntry("SnapLakeFillPoint")
            :AsListener(),
        APIEntry.NewEntry("TerrainSkirtHasSeaPlane")
            :Disable(),
        APIEntry.NewEntry("TestAABBForFlatGround")
            :Disable(),
        APIEntry.NewEntry("TestCapsuleForFlatGround")
            :Disable(),
        APIEntry.NewEntry("TestSpatialEntityIsAwayFromGround")
            :Disable(),
        APIEntry.NewEntry("TestSpatialEntityIsOnFlatGround")
            :Disable(),
        APIEntry.NewEntry("TestSphereForFlatGround")
            :Disable(),
        APIEntry.NewEntry("TryUnembed")
            :Disable(),
        APIEntry.NewEntry("UpdateCursor")
            :Disable(),
        APIEntry.NewEntry("UpdateLakesCursor")
            :Disable(),
    }

    return tEntries
end

function NLGameTerrainAPI.CreateLake(rawApi, self, vLakePlacementSnappedCoord, lakeType)
    logger:Info("CreateLake() Attempting to create lake")
    return rawApi.CreateLake(self, vLakePlacementSnappedCoord, lakeType)
end

return BaseAPI.Validate(NLGameTerrainAPI)