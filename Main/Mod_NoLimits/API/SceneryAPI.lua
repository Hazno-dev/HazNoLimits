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

---@class Mod_NoLimits.API.SceneryAPI : Mod_NoLimits.API.Base
local NLSceneryAPI = BaseAPI.NewAPI("SceneryAPI")
local logger = NLSceneryAPI.Logger

NLSceneryAPI.Enabled = true
NLSceneryAPI.CoreAPIName = nil
NLSceneryAPI.WorldAPIName = "scenery"

NLSceneryAPI.Debug_DumpAPI = false

function NLSceneryAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("AddGroupToBlueprintSelection")
            :Disable(),
        APIEntry.NewEntry("AddSceneryToBlueprintSelection")
            :Disable(),
        APIEntry.NewEntry("AttachGuestDestinationEntityHighlightRequest")
            :Disable(),
        APIEntry.NewEntry("BillboardListSpeakers")
            :Disable(),
        APIEntry.NewEntry("BillboardSetSpeakers")
            :Disable(),
        APIEntry.NewEntry("CalculateBuildingSetCosts")
            :Disable(),
        APIEntry.NewEntry("CalculatePointOnAxisNearScreenPoint")
            :Disable(),
        APIEntry.NewEntry("ClampPointToVoxelTerrainWidthDepth")
            :Disable(),
        APIEntry.NewEntry("ClearSnapPointVisuals")
            :Disable(),
        APIEntry.NewEntry("CreateBuildingHighlightRequest")
            :Disable(),
        APIEntry.NewEntry("CreateBuildingPartSet")
            :Disable(),
        APIEntry.NewEntry("CreateEntityHighlightRequest")
            :Disable(),
        APIEntry.NewEntry("CreateGuestDestinationEntityHighlightRequest")
            :Disable(),
        APIEntry.NewEntry("DebugDrawPivotSphere")
            :Disable(),
        APIEntry.NewEntry("DetatchGuestDestinationEntityHighlightRequest")
            :Disable(),
        APIEntry.NewEntry("DoesMoveObjectContainAnyUnattachedParts")
            :Disable(),
        APIEntry.NewEntry("DoesMoveObjectContainPart")
            :Disable(),
        APIEntry.NewEntry("FindSceneryLink")
            :Disable(),
        APIEntry.NewEntry("GetAllCustomTextures")
            :Disable(),
        APIEntry.NewEntry("GetAllVistaPoints")
            :Disable(),
        APIEntry.NewEntry("GetBillboardIsOn")
            :Disable(),
        APIEntry.NewEntry("GetBillboardMuted")
            :Disable(),
        APIEntry.NewEntry("GetBoothOperator")
            :Disable(),
        APIEntry.NewEntry("GetConfigCategoryForMoveObject")
            :Disable(),
        APIEntry.NewEntry("GetCustomProvidedTextureCategory")
            :Disable(),
        APIEntry.NewEntry("GetCustomTextureDisplayName")
            :Disable(),
        APIEntry.NewEntry("GetCustomTextureFavourites")
            :Disable(),
        APIEntry.NewEntry("GetCustomTextureSource")
            :Disable(),
        APIEntry.NewEntry("GetCustomTextureType")
            :Disable(),
        APIEntry.NewEntry("GetCustomTexture_Off")
            :Disable(),
        APIEntry.NewEntry("GetCustomTexture_On")
            :Disable(),
        APIEntry.NewEntry("GetIconPathForTag")
            :Disable(),
        APIEntry.NewEntry("GetMinMaxScale", {"self", "sResourceName"})
            :AsListener():WithReturnValues(0.01, 999),
        APIEntry.NewEntry("GetMoveObjectPartIDs")
            :Disable(),
        APIEntry.NewEntry("GetOriginalPropName")
            :Disable(),
        APIEntry.NewEntry("GetPartScaleData", {"self", "nPartID"})
            :WithCallDelegate(NLSceneryAPI.GetPartScaleData),
        APIEntry.NewEntry("GetPropCategoryIcon")
            :Disable(),
        APIEntry.NewEntry("GetPropDesignOverrideNameFromEntityID")
            :Disable(),
        APIEntry.NewEntry("GetPropName")
            :Disable(),
        APIEntry.NewEntry("GetPropNameFromEntityID")
            :Disable(),
        APIEntry.NewEntry("GetPropResourceName")
            :Disable(),
        APIEntry.NewEntry("GetPropResourceNameFromPuppetID")
            :Disable(),
        APIEntry.NewEntry("GetRawNameOverride")
            :Disable(),
        APIEntry.NewEntry("GetRequiredDLCForGroup")
            :Disable(),
        APIEntry.NewEntry("GetRequiredDLCForPart")
            :Disable(),
        APIEntry.NewEntry("GetRideVendorInfo")
            :Disable(),
        APIEntry.NewEntry("GetRootBrowserCategory")
            :Disable(),
        APIEntry.NewEntry("GetRootBrowserCategoryForMoveObject")
            :Disable(),
        APIEntry.NewEntry("GetRunningCostApplies")
            :Disable(),
        APIEntry.NewEntry("GetSceneryLinks")
            :Disable(),
        APIEntry.NewEntry("GetSceneryTagCount")
            :Disable(),
        APIEntry.NewEntry("GetSecurityCameraIsOn")
            :Disable(),
        APIEntry.NewEntry("GetSecurityCameraStats")
            :Disable(),
        APIEntry.NewEntry("GetTotalSceneryPrestige")
            :Disable(),
        APIEntry.NewEntry("GetVistaPointFocusSceneryPart")
            :Disable(),
        APIEntry.NewEntry("GetWaterPumpSpeed")
            :Disable(),
        APIEntry.NewEntry("IsCustomTexturePropData")
            :Disable(),
        APIEntry.NewEntry("IsPartEditable", {"self", "nPartID"})
            :WithLogOutputs():WithCallOriginal():WithReturnValues(true),
        APIEntry.NewEntry("IsPathExtraPart")
            :Disable(),
        APIEntry.NewEntry("IsPicnicBench")
            :Disable(),
        APIEntry.NewEntry("IsPropAssignedWithGivenTag")
            :Disable(),
        APIEntry.NewEntry("IsPuppetEditable")
            :Disable(),
        APIEntry.NewEntry("IsSceneryPart")
            :Disable(),
        APIEntry.NewEntry("IsSignPart")
            :Disable(),
        APIEntry.NewEntry("IsVistaPoint")
            :Disable(),
        APIEntry.NewEntry("IsVisualPropPart")
            :Disable(),
        APIEntry.NewEntry("OverridePropName")
            :Disable(),
        APIEntry.NewEntry("RefreshUserTextures")
            :Disable(),
        APIEntry.NewEntry("RemoveVistaPointFocusSceneryPart")
            :Disable(),
        APIEntry.NewEntry("ResetCullingTypeToDefault")
            :Disable(),
        APIEntry.NewEntry("SendSetMusicOnSequencer")
            :Disable(),
        APIEntry.NewEntry("SetAmbienceOnSpeaker")
            :Disable(),
        APIEntry.NewEntry("SetBillboardIsOn")
            :Disable(),
        APIEntry.NewEntry("SetBillboardMuted")
            :Disable(),
        APIEntry.NewEntry("SetBreakdownsEnabled")
            :Disable(),
        APIEntry.NewEntry("SetConditionEnabled")
            :Disable(),
        APIEntry.NewEntry("SetCullingType")
            :Disable(),
        APIEntry.NewEntry("SetCustomTextureFavourite")
            :Disable(),
        APIEntry.NewEntry("SetCustomTexture_Off")
            :Disable(),
        APIEntry.NewEntry("SetCustomTexture_On")
            :Disable(),
        APIEntry.NewEntry("SetMusicOnSpeaker")
            :Disable(),
        APIEntry.NewEntry("SetSceneryLinks")
            :Disable(),
        APIEntry.NewEntry("SetSecurityCameraIsOn")
            :Disable(),
        APIEntry.NewEntry("SetTriggerOnSpeaker")
            :Disable(),
        APIEntry.NewEntry("SetTriggerPitchOnSpeaker")
            :Disable(),
        APIEntry.NewEntry("SetTriggerVolumeOnSpeaker")
            :Disable(),
        APIEntry.NewEntry("SetVistaPointFocusSceneryPart")
            :Disable(),
        APIEntry.NewEntry("SetVoxelTerrainEntity")
            :Disable(),
        APIEntry.NewEntry("SetWaterPumpSpeed")
            :Disable(),
        APIEntry.NewEntry("UpdateSnapPointVisuals")
            :Disable(),
    }

    return tEntries
end

function NLSceneryAPI.GetPartScaleData(rawApi, self, nPartID)
    local data = rawApi.GetPartScaleData(self, nPartID)
    if data == nil then
        return data
    end

    if data.nMinScale == nil or data.nMaxScale == nil or data.nScale == nil then
        return data
    end

    data.nMinScale = 0.01
    data.nMaxScale = 999
    return data
end

return BaseAPI.Validate(NLSceneryAPI)