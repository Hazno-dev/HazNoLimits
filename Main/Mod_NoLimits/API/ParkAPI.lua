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

---@class Mod_NoLimits.API.ParkAPI : Mod_NoLimits.API.Base
local NLParkAPI = BaseAPI.NewAPI("ParkAPI")
local logger = NLParkAPI.Logger

NLParkAPI.Enabled = true
NLParkAPI.CoreAPIName = nil
NLParkAPI.WorldAPIName = "park"

NLParkAPI.Debug_DumpAPI = false

function NLParkAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("ActivateParkEditConstraints", {"self"})
            :Disable(),
        APIEntry.NewEntry("AddHotelPerk_MoveObject", {"self", "moveObject", "entityID", "nPerkID"})
            :Disable(),
        APIEntry.NewEntry("AddObjectToBrush", {"self", "sID"})
            :Disable(),
        APIEntry.NewEntry("AreSecurityFeaturesEnabled", {"self"})
            :Disable(),
        APIEntry.NewEntry("AreStaffMoraleFeatureEnabled", {"self"})
            :Disable(),
        APIEntry.NewEntry("AreStaffRequireBreaksFeaturesEnabled", {})
            :Disable(),
        APIEntry.NewEntry("CanEditEntityAgainstParkBoundary", {"self", "nRideID"})
            :WithReturnValues(true),
        APIEntry.NewEntry("CanToggleParkOpenState", {"self"})
            :Disable(),
        APIEntry.NewEntry("ChangeCurrentBrushName", {"self", "sInput"})
            :Disable(),
        APIEntry.NewEntry("ClearAllPlotRestrictions", {"self"})
            :Disable(),
        APIEntry.NewEntry("ClearEnforcedPlacementArea", {"self"})
            :Disable(),
        APIEntry.NewEntry("ClearMinTimeBetweenServices", {})
            :Disable(),
        APIEntry.NewEntry("CompleteParkThemingSerialisationLoad", {"self"})
            :Disable(),
        APIEntry.NewEntry("CompletePathClutterSerialisationLoad", {"self"})
            :Disable(),
        APIEntry.NewEntry("CompleteWorldSerialisationLoad", {"self"})
            :Disable(),
        APIEntry.NewEntry("CopyNewBrush", {})
            :Disable(),
        APIEntry.NewEntry("CreateNewBrush", {})
            :Disable(),
        APIEntry.NewEntry("CreateScenarioLocationPoint", {})
            :Disable(),
        APIEntry.NewEntry("CreateTimeOfMonth", {})
            :Disable(),
        APIEntry.NewEntry("DeactivateParkEditConstraints", {})
            :Disable(),
        APIEntry.NewEntry("Debug_GetAllParkZones", {})
            :Disable(),
        APIEntry.NewEntry("Debug_GetGroupAgnosticIdealRoomPrices", {})
            :Disable(),
        APIEntry.NewEntry("Debug_GetRawHotelPrestigeValue", {})
            :Disable(),
        APIEntry.NewEntry("DeleteCurrentBrush", {})
            :Disable(),
        APIEntry.NewEntry("DeleteScenarioLocationPoint", {})
            :Disable(),
        APIEntry.NewEntry("ExportCurrentBrushToClipboard", {})
            :Disable(),
        APIEntry.NewEntry("FillBin", {})
            :Disable(),
        APIEntry.NewEntry("FlagStationForRezoning", {})
            :Disable(),
        APIEntry.NewEntry("GetAllHotelPerks", {})
            :Disable(),
        APIEntry.NewEntry("GetAllHotelRoomRunningCosts", {})
            :Disable(),
        APIEntry.NewEntry("GetAllHotelRoomsInWorldCount", {})
            :Disable(),
        APIEntry.NewEntry("GetAllHotelRoomsInWorldOutsideRadius", {})
            :Disable(),
        APIEntry.NewEntry("GetAllHotels", {})
            :Disable(),
        APIEntry.NewEntry("GetAllParkEntrancePriceOptionsAsString", {})
            :Disable(),
        APIEntry.NewEntry("GetAllParkZoneIcons", {})
            :Disable(),
        APIEntry.NewEntry("GetAllParkZoneWidgetData", {})
            :Disable(),
        APIEntry.NewEntry("GetAllPoolEntities", {})
            :Disable(),
        APIEntry.NewEntry("GetAllScenarioLocationPointNames", {})
            :Disable(),
        APIEntry.NewEntry("GetAllScenarioLocationPointNamesCategorised", {})
            :Disable(),
        APIEntry.NewEntry("GetAllScenarioLocationPointsForCategory", {})
            :Disable(),
        APIEntry.NewEntry("GetAllThemes", {})
            :Disable(),
        APIEntry.NewEntry("GetAllVendingMachineEntityIDs", {})
            :Disable(),
        APIEntry.NewEntry("GetAverageAndMaxPoolPrestige", {})
            :Disable(),
        APIEntry.NewEntry("GetAverageAndMinPoolCleanliness", {})
            :Disable(),
        APIEntry.NewEntry("GetAverageNumberOfRidesPerGuestYesterday", {})
            :Disable(),
        APIEntry.NewEntry("GetAverageThemingForFlatRide", {})
            :Disable(),
        APIEntry.NewEntry("GetAverageThemingForRide", {})
            :Disable(),
        APIEntry.NewEntry("GetAverageThemingForTrackRide", {})
            :Disable(),
        APIEntry.NewEntry("GetAverageThemingForZone", {})
            :Disable(),
        APIEntry.NewEntry("GetBaseAudioDistortionActive", {})
            :Disable(),
        APIEntry.NewEntry("GetBaseAudioDistortionIntensity", {})
            :Disable(),
        APIEntry.NewEntry("GetBaseAudioDistortionName", {})
            :Disable(),
        APIEntry.NewEntry("GetBaseAudioDistortionSFXName", {})
            :Disable(),
        APIEntry.NewEntry("GetBinDesirabilityMultiplier", {})
            :Disable(),
        APIEntry.NewEntry("GetBlockIndex", {})
            :Disable(),
        APIEntry.NewEntry("GetBrushNames", {})
            :Disable(),
        APIEntry.NewEntry("GetBrushTags", {})
            :Disable(),
        APIEntry.NewEntry("GetCamerasOfType", {})
            :Disable(),
        APIEntry.NewEntry("GetCostForHotelPerkChange", {})
            :Disable(),
        APIEntry.NewEntry("GetCurrentBrushIndex", {})
            :Disable(),
        APIEntry.NewEntry("GetCurrentBrushObjectList", {})
            :Disable(),
        APIEntry.NewEntry("GetCurrentBrushSettings", {})
            :Disable(),
        APIEntry.NewEntry("GetDayDurationInSeconds", {})
            :Disable(),
        APIEntry.NewEntry("GetDebugSettings", {"self"})
            :AsListener(),
        APIEntry.NewEntry("GetDifficultySettingValue", {})
            :Disable(),
        APIEntry.NewEntry("GetDifficultySettingsAsTable", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetEnforcedPlacementArea", {})
            :Disable(),
        APIEntry.NewEntry("GetEntityName", {})
            :Disable(),
        APIEntry.NewEntry("GetFacilitiesVandalisedCount", {})
            :Disable(),
        APIEntry.NewEntry("GetFastPassTicketPrice", {})
            :Disable(),
        APIEntry.NewEntry("GetFastPassTicketPriceState", {})
            :Disable(),
        APIEntry.NewEntry("GetFlatRideSceneryPrestigeBonus", {})
            :Disable(),
        APIEntry.NewEntry("GetFoliageBrushPoints", {})
            :Disable(),
        APIEntry.NewEntry("GetFreeParkEntrance", {})
            :Disable(),
        APIEntry.NewEntry("GetGroupAverageTimeInParkYesterday", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelAttractivenessMultiplier", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelAvailableRoomCounts", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelHasPerk", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelPerk", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelRoomCosts", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelRoomOwner", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelRoomRadius", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelRoomRunningCost", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelRoomType", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelRooms", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelRoomsCount", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelRoomsOfType", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelRunningCostMultiplier", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelSceneryProp", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelSeperateRoomCounts", {})
            :Disable(),
        APIEntry.NewEntry("GetHotelStarCount", {})
            :Disable(),
        APIEntry.NewEntry("GetInitialCashMultiplier", {})
            :Disable(),
        APIEntry.NewEntry("GetLastBreakdownDate", {})
            :Disable(),
        APIEntry.NewEntry("GetLastValidWear", {})
            :Disable(),
        APIEntry.NewEntry("GetLifetimeApprehendedPickpockets", {})
            :Disable(),
        APIEntry.NewEntry("GetLifetimeApprehendedVandals", {})
            :Disable(),
        APIEntry.NewEntry("GetLifetimeClutterQuantities", {})
            :Disable(),
        APIEntry.NewEntry("GetLifetimePickpockets", {})
            :Disable(),
        APIEntry.NewEntry("GetLifetimeVandals", {})
            :Disable(),
        APIEntry.NewEntry("GetLightingFixedEnabled", {})
            :Disable(),
        APIEntry.NewEntry("GetLightingFixedTime", {})
            :Disable(),
        APIEntry.NewEntry("GetLightingStartEndTime", {})
            :Disable(),
        APIEntry.NewEntry("GetListOfCameras", {})
            :Disable(),
        APIEntry.NewEntry("GetLitterClutterDisabled", {})
            :Disable(),
        APIEntry.NewEntry("GetLitterGenerationMultiplier", {})
            :Disable(),
        APIEntry.NewEntry("GetLocTagForTheme", {})
            :Disable(),
        APIEntry.NewEntry("GetMaxParkZoneCount", {})
            :Disable(),
        APIEntry.NewEntry("GetMaxPossibleThemingForRide", {})
            :Disable(),
        APIEntry.NewEntry("GetMinPossibleThemingForRide", {})
            :Disable(),
        APIEntry.NewEntry("GetMinTimeBetweenServices", {})
            :Disable(),
        APIEntry.NewEntry("GetMonthDurationInSeconds", {})
            :Disable(),
        APIEntry.NewEntry("GetNextBlockIndex", {})
            :Disable(),
        APIEntry.NewEntry("GetNumberOfBinsAndOverflowingBins", {})
            :Disable(),
        APIEntry.NewEntry("GetNumberOfHoursInDay", {})
            :Disable(),
        APIEntry.NewEntry("GetOpenConnectedPoolCount", {})
            :Disable(),
        APIEntry.NewEntry("GetOpenConnectedPoolCountYesterday", {})
            :Disable(),
        APIEntry.NewEntry("GetOpeningClosingProps", {})
            :Disable(),
        APIEntry.NewEntry("GetOpeningClosingTime", {})
            :Disable(),
        APIEntry.NewEntry("GetParkAssetCost", {})
            :Disable(),
        APIEntry.NewEntry("GetParkBoundaryPlotUIData", {"self"})
            :AsListener(),
        APIEntry.NewEntry("GetParkDay", {})
            :Disable(),
        APIEntry.NewEntry("GetParkEfficiency", {})
            :Disable(),
        APIEntry.NewEntry("GetParkEntranceAdultTicketPrice", {})
            :Disable(),
        APIEntry.NewEntry("GetParkEntranceChildTicketPrice", {})
            :Disable(),
        APIEntry.NewEntry("GetParkEntranceFocus", {})
            :Disable(),
        APIEntry.NewEntry("GetParkEntrancePriceOptionAsString", {})
            :Disable(),
        APIEntry.NewEntry("GetParkEntrancePriceState", {})
            :Disable(),
        APIEntry.NewEntry("GetParkGeome", {})
            :Disable(),
        APIEntry.NewEntry("GetParkMonthsOpen", {})
            :Disable(),
        APIEntry.NewEntry("GetParkName", {})
            :Disable(),
        APIEntry.NewEntry("GetParkRatingsYesterday", {})
            :Disable(),
        APIEntry.NewEntry("GetParkScale", {})
            :AsListener(),
        APIEntry.NewEntry("GetParkThemes", {})
            :Disable(),
        APIEntry.NewEntry("GetParkThemingCoverage", {})
            :Disable(),
        APIEntry.NewEntry("GetParkThemingCumulativeWeight", {})
            :Disable(),
        APIEntry.NewEntry("GetParkVisitorStats", {})
            :Disable(),
        APIEntry.NewEntry("GetParkVisitorTodayStats", {})
            :Disable(),
        APIEntry.NewEntry("GetParkVisitorYesterdayRefundStats", {})
            :Disable(),
        APIEntry.NewEntry("GetParkVisitorYesterdayStats", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneArea", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneColour", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneCount", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneDatastoreData", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneEntityIDFromStableID", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneFallbackID", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneFocusPos", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneForFlumePlatform", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneForPatrolPoint", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneForScenery", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneForStation", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneIDFromPoint", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneIcon", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneName", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneName_DesignOverride", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneName_PlayerOverride", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZoneStableIDFromEntityID", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZonesLocked", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZonesRenderPlaneHeight", {})
            :Disable(),
        APIEntry.NewEntry("GetParkZonesWithNoShape", {})
            :Disable(),
        APIEntry.NewEntry("GetPathClutterQuantities", {})
            :Disable(),
        APIEntry.NewEntry("GetPlacementPartNames", {})
            :Disable(),
        APIEntry.NewEntry("GetPlayerControlledCameraData", {})
            :Disable(),
        APIEntry.NewEntry("GetPlayerOwnedPlotsOfLandCount", {})
            :Disable(),
        APIEntry.NewEntry("GetPlotData", {})
            :Disable(),
        APIEntry.NewEntry("GetPlotIDForPosition", {})
            :Disable(),
        APIEntry.NewEntry("GetPlotUIData", {})
            :Disable(),
        APIEntry.NewEntry("GetPoolCount", {})
            :Disable(),
        APIEntry.NewEntry("GetPoolPassPrice", {})
            :Disable(),
        APIEntry.NewEntry("GetPoolPassPriceState", {})
            :Disable(),
        APIEntry.NewEntry("GetPriorityPassRequired", {})
            :Disable(),
        APIEntry.NewEntry("GetPropAsHours", {})
            :Disable(),
        APIEntry.NewEntry("GetRepairAllVandalisedCost", {})
            :Disable(),
        APIEntry.NewEntry("GetRepairVandalisedCost", {})
            :Disable(),
        APIEntry.NewEntry("GetRideStationParkZone", {})
            :Disable(),
        APIEntry.NewEntry("GetSafePositionForGuests", {})
            :Disable(),
        APIEntry.NewEntry("GetScenarioLocationPoint", {})
            :Disable(),
        APIEntry.NewEntry("GetSceneryScore", {})
            :Disable(),
        APIEntry.NewEntry("GetSceneryWeight", {})
            :Disable(),
        APIEntry.NewEntry("GetSpawnPoints", {})
            :Disable(),
        APIEntry.NewEntry("GetTimeNumberOfBlocks", {})
            :Disable(),
        APIEntry.NewEntry("GetTimeOfDayActual", {})
            :Disable(),
        APIEntry.NewEntry("GetTimeOfDayApparent", {})
            :Disable(),
        APIEntry.NewEntry("GetTimeOfDayForBlockIndex", {})
            :Disable(),
        APIEntry.NewEntry("GetTimeOfDayLighting", {})
            :Disable(),
        APIEntry.NewEntry("GetTimeOfDayRideCamOverride", {})
            :Disable(),
        APIEntry.NewEntry("GetTimeOfDayUserOverride", {})
            :Disable(),
        APIEntry.NewEntry("GetTimeOfMonth", {})
            :Disable(),
        APIEntry.NewEntry("GetTimePropBrokenDown", {})
            :Disable(),
        APIEntry.NewEntry("GetTimeSinceRefurbishment", {})
            :Disable(),
        APIEntry.NewEntry("GetTimeUntilService", {})
            :Disable(),
        APIEntry.NewEntry("GetTotalCriminalsInPark", {})
            :Disable(),
        APIEntry.NewEntry("GetTotalLandCount", {})
            :Disable(),
        APIEntry.NewEntry("GetTotalPoolPrestige", {})
            :Disable(),
        APIEntry.NewEntry("GetTrackedRideSceneryPrestigeBonus", {})
            :Disable(),
        APIEntry.NewEntry("GetUIListOfCameras", {})
            :Disable(),
        APIEntry.NewEntry("GetUnownedHotelRooms", {})
            :Disable(),
        APIEntry.NewEntry("GetVC_ParkZoneBrushRadius", {})
            :Disable(),
        APIEntry.NewEntry("GetVandalisedFurnitureCount", {})
            :Disable(),
        APIEntry.NewEntry("GetVendingMachineDebug", {})
            :Disable(),
        APIEntry.NewEntry("GetVendingMachineMaintenanceLevel", {})
            :Disable(),
        APIEntry.NewEntry("GetVendingMachineType", {})
            :Disable(),
        APIEntry.NewEntry("GetVisualPathClutterQuantities", {})
            :Disable(),
        APIEntry.NewEntry("GetVomitClutterDisabled", {})
            :Disable(),
        APIEntry.NewEntry("GetWear", {})
            :Disable(),
        APIEntry.NewEntry("GetZoneRideStations", {})
            :Disable(),
        APIEntry.NewEntry("GetZonedFacilities", {})
            :Disable(),
        APIEntry.NewEntry("GreyOutAllPlots", {})
            :Disable(),
        APIEntry.NewEntry("HasHighPriorityStaffAlert", {})
            :Disable(),
        APIEntry.NewEntry("HasSpawnPoint", {})
            :Disable(),
        APIEntry.NewEntry("HideSceneryPiece", {})
            :Disable(),
        APIEntry.NewEntry("ImportBrushFromClipboard", {})
                :Disable(),
        APIEntry.NewEntry("IsAreaClearOfDeletableEntities", {})
            :Disable(),
        APIEntry.NewEntry("IsBench", {})
            :Disable(),
        APIEntry.NewEntry("IsBin", {})
            :Disable(),
        APIEntry.NewEntry("IsDifficultySettingActive", {})
            :Disable(),
        APIEntry.NewEntry("IsDifficultySettingOnlyOnMainMenu", {})
            :Disable(),
        APIEntry.NewEntry("IsGuestDestinationAdvert", {})
            :Disable(),
        APIEntry.NewEntry("IsHotel", {})
            :Disable(),
        APIEntry.NewEntry("IsHotelRoom", {})
            :Disable(),
        APIEntry.NewEntry("IsHotelSynced", {})
            :Disable(),
        APIEntry.NewEntry("IsParkEntrance", {})
            :Disable(),
        APIEntry.NewEntry("IsParkOpenForGuests", {})
            :Disable(),
        APIEntry.NewEntry("IsParkZoneEntity", {})
            :Disable(),
        APIEntry.NewEntry("IsPlayerControlledCamera", {})
            :Disable(),
        APIEntry.NewEntry("IsPositionWithinParkBoundary", {"self", "vPosition"})
            :AsListener(),
        APIEntry.NewEntry("IsVandalised", {})
            :Disable(),
        APIEntry.NewEntry("IsVendingMachine", {})
            :Disable(),
        APIEntry.NewEntry("IsVendingMachineBrokenDown", {})
            :Disable(),
        APIEntry.NewEntry("IsZoltran", {})
            :Disable(),
        APIEntry.NewEntry("ParkBoundaryFlagToString", {})
            :Disable(),
        APIEntry.NewEntry("ParkReset", {})
            :Disable(),
        APIEntry.NewEntry("ReloadBrushes", {})
            :Disable(),
        APIEntry.NewEntry("RemoveAllObjectsFromBrush", {})
            :Disable(),
        APIEntry.NewEntry("RemoveHotelPerk_MoveObject", {})
            :Disable(),
        APIEntry.NewEntry("RemoveObjectFromBrush", {})
            :Disable(),
        APIEntry.NewEntry("RenameScenarioLocationPoint", {})
            :Disable(),
        APIEntry.NewEntry("RepairAllVandalisedItems", {})
            :Disable(),
        APIEntry.NewEntry("RepairVandalisedItem", {})
            :Disable(),
        APIEntry.NewEntry("RequestBreakdown", {})
            :Disable(),
        APIEntry.NewEntry("RequestService", {})
            :Disable(),
        APIEntry.NewEntry("ResetAudioDistortion", {})
            :Disable(),
        APIEntry.NewEntry("ResetColourGrading", {})
            :Disable(),
        APIEntry.NewEntry("ResetEntityName", {})
            :Disable(),
        APIEntry.NewEntry("ResetFilmGrain", {})
            :Disable(),
        APIEntry.NewEntry("ResetVignette", {})
            :Disable(),
        APIEntry.NewEntry("SaveBrushes", {})
            :Disable(),
        APIEntry.NewEntry("SendHighPriorityStaffAlert", {})
            :Disable(),
        APIEntry.NewEntry("SendSandboxSettingsUpdatedMessage", {})
            :Disable(),
        APIEntry.NewEntry("SetAudioDistortion", {})
            :Disable(),
        APIEntry.NewEntry("SetBinDesirabilityMultiplier", {})
            :Disable(),
        APIEntry.NewEntry("SetBrushIntensity", {})
            :Disable(),
        APIEntry.NewEntry("SetBrushSize", {})
            :Disable(),
        APIEntry.NewEntry("SetBrushTagsToSave", {})
            :Disable(),
        APIEntry.NewEntry("SetCanPlaceOnPaths", {})
            :Disable(),
        APIEntry.NewEntry("SetCanPlaceOnSteep", {})
            :Disable(),
        APIEntry.NewEntry("SetCanPlaceToSurface", {})
            :Disable(),
        APIEntry.NewEntry("SetCheckForCollisions", {})
            :Disable(),
        APIEntry.NewEntry("SetClosingProp", {})
            :Disable(),
        APIEntry.NewEntry("SetColourGrading", {})
            :Disable(),
        APIEntry.NewEntry("SetCreateNewGroup", {})
            :Disable(),
        APIEntry.NewEntry("SetCurrentBrushUsingName", {})
            :Disable(),
        APIEntry.NewEntry("SetDifficultySettingsFromTable", {"self", "cDifficultySettings"})
            :Disable(),
        APIEntry.NewEntry("SetEnforcedPlacementArea", {})
            :Disable(),
        APIEntry.NewEntry("SetEntityDesignerNameOverride", {})
            :Disable(),
        APIEntry.NewEntry("SetFastPassTicketPrice", {})
            :Disable(),
        APIEntry.NewEntry("SetFastPassTicketPriceState", {})
            :Disable(),
        APIEntry.NewEntry("SetFilmGrain", {})
            :Disable(),
        APIEntry.NewEntry("SetFreeFastPass", {})
            :Disable(),
        APIEntry.NewEntry("SetFreeParkEntrance", {})
            :Disable(),
        APIEntry.NewEntry("SetFreePoolPass", {})
            :Disable(),
        APIEntry.NewEntry("SetHotelAttractivenessMultiplier", {})
            :Disable(),
        APIEntry.NewEntry("SetHotelRoomCost_MoveObject", {})
            :Disable(),
        APIEntry.NewEntry("SetHotelRooms_MoveObject", {})
            :Disable(),
        APIEntry.NewEntry("SetHotelRunningCostMultiplier", {})
            :Disable(),
        APIEntry.NewEntry("SetHotelSynced", {})
            :Disable(),
        APIEntry.NewEntry("SetHoveredPlotID", {})
            :Disable(),
        APIEntry.NewEntry("SetLightingEndProp", {})
            :Disable(),
        APIEntry.NewEntry("SetLightingStartProp", {})
            :Disable(),
        APIEntry.NewEntry("SetLightingTimeOfDayUserOverride", {})
            :AsListener(),
        APIEntry.NewEntry("SetLightingTimeOfDayUserOverrideEnabled", {})
            :AsListener(),
        APIEntry.NewEntry("SetLitterClutterDisabled", {})
            :Disable(),
        APIEntry.NewEntry("SetLitterEnabled", {})
            :Disable(),
        APIEntry.NewEntry("SetLitterGenerationMultiplier", {})
            :Disable(),
        APIEntry.NewEntry("SetLockedSceneryContributesToTheming", {})
            :Disable(),
        APIEntry.NewEntry("SetMinTimeBetweenServices", {})
            :Disable(),
        APIEntry.NewEntry("SetObjectRadius", {})
            :Disable(),
        APIEntry.NewEntry("SetObjectToBrush", {})
            :Disable(),
        APIEntry.NewEntry("SetOnlyCheckSameObject", {})
            :Disable(),
        APIEntry.NewEntry("SetOpeningProp", {})
            :Disable(),
        APIEntry.NewEntry("SetParkBoundaryPlotLockForPurchase", {})
            :Disable(),
        APIEntry.NewEntry("SetParkEntranceAdultTicketPrice", {})
            :Disable(),
        APIEntry.NewEntry("SetParkEntrancePriceState", {})
            :Disable(),
        APIEntry.NewEntry("SetParkGeome", {})
            :Disable(),
        APIEntry.NewEntry("SetParkName", {})
            :Disable(),
        APIEntry.NewEntry("SetParkOpenForGuests", {})
            :Disable(),
        APIEntry.NewEntry("SetParkRatingForHotels", {})
            :Disable(),
        APIEntry.NewEntry("SetParkRatingManager", {})
            :Disable(),
        APIEntry.NewEntry("SetParkZoneIcon", {})
            :Disable(),
        APIEntry.NewEntry("SetParkZoneName_DesignOverride", {})
            :Disable(),
        APIEntry.NewEntry("SetParkZoneName_PlayerOverride", {})
            :Disable(),
        APIEntry.NewEntry("SetParkZonesLocked", {})
            :Disable(),
        APIEntry.NewEntry("SetParkZonesVisibility", {})
            :Disable(),
        APIEntry.NewEntry("SetPointsPerPlacement", {})
            :Disable(),
        APIEntry.NewEntry("SetPoolPassPrice", {})
            :Disable(),
        APIEntry.NewEntry("SetPoolPassPriceState", {})
            :Disable(),
        APIEntry.NewEntry("SetPreviewEnabled", {})
            :Disable(),
        APIEntry.NewEntry("SetPriorityPassRequired_MoveObject", {})
            :Disable(),
        APIEntry.NewEntry("SetRandomRotationAll", {})
            :Disable(),
        APIEntry.NewEntry("SetRandomRotationYaw", {})
            :Disable(),
        APIEntry.NewEntry("SetRandomScale", {})
            :AsListener(),
        APIEntry.NewEntry("SetRotateToSurface", {})
            :Disable(),
        APIEntry.NewEntry("SetScaleMax", {})
            :AsListener(),
        APIEntry.NewEntry("SetScaleMin", {})
            :AsListener(),
        APIEntry.NewEntry("SetSecurityFeatureSettings", {})
            :Disable(),
        APIEntry.NewEntry("SetSelectedPlotID", {})
            :Disable(),
        APIEntry.NewEntry("SetShowParkBoundary", {})
            :Disable(),
        APIEntry.NewEntry("SetStaffMoraleFeatureSettings", {})
            :Disable(),
        APIEntry.NewEntry("SetStaffRequireBreaksFeaturesEnabled", {})
            :Disable(),
        APIEntry.NewEntry("SetTicketTypeAvailable", {})
            :Disable(),
        APIEntry.NewEntry("SetTimeOfDayNarrativeOverride", {})
            :Disable(),
        APIEntry.NewEntry("SetTimeOfDayUserOverride", {})
            :Disable(),
        APIEntry.NewEntry("SetTimeToClosing", {})
            :Disable(),
        APIEntry.NewEntry("SetTimeToOpening", {})
            :Disable(),
        APIEntry.NewEntry("SetTooSteepValue", {})
            :Disable(),
        APIEntry.NewEntry("SetTriesBeforeFailure", {})
            :Disable(),
        APIEntry.NewEntry("SetVC_ParkZoneBrushRadius", {})
            :Disable(),
        APIEntry.NewEntry("SetVendingMachineMaintenanceLevel", {})
            :Disable(),
        APIEntry.NewEntry("SetVignette", {})
            :Disable(),
        APIEntry.NewEntry("SetVomitClutterDisabled", {})
            :Disable(),
        APIEntry.NewEntry("SetVoxelTerrainEntityID", {})
            :Disable(),
        APIEntry.NewEntry("ShouldCreatePlotSpatials", {})
            :Disable(),
        APIEntry.NewEntry("ShouldEntityShowCrimeAffecterGuiShapesWhenPlacing", {})
            :Disable(),
        APIEntry.NewEntry("ShowHideAllPlots", {})
            :Disable(),
        APIEntry.NewEntry("ShowSceneryPiece", {})
            :Disable(),
        APIEntry.NewEntry("TakeFallbackParkZoneCompletionToken", {})
            :Disable(),
        APIEntry.NewEntry("TestConvexParkBoundaryForCamera", {})
            :WithCallOriginal():WithReturnValues(true),
        APIEntry.NewEntry("ToggleAllCrimeAffecterGUIShapes", {})
            :Disable(),
        APIEntry.NewEntry("ToggleCrimeAffecterGUIShape", {})
            :Disable(),
        APIEntry.NewEntry("UnlockAllPlots", {})
            :Disable(),
        APIEntry.NewEntry("UnlockParkBoundaryPlot", {})
            :Disable(),
        APIEntry.NewEntry("UpdateAllBrushObjectLists", {})
            :Disable(),
        APIEntry.NewEntry("UpdateCollisionIgnoreFlags", {})
            :Disable(),
        APIEntry.NewEntry("UpdateCurrentBrushMinObjectRadius", {})
            :Disable(),
        APIEntry.NewEntry("UpdateScenarioLocationPoint", {})
            :Disable(),
        APIEntry.NewEntry("UpdateTime", {})
            :Disable(),
    }

    return tEntries
end

return BaseAPI.Validate(NLParkAPI)