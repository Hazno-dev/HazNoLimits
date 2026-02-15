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

---@class Mod_NoLimits.API.RidesAPI : Mod_NoLimits.API.Base
local NLRidesAPI = BaseAPI.NewAPI("RidesAPI")
local logger = NLRidesAPI.Logger

NLRidesAPI.Enabled = true
NLRidesAPI.CoreAPIName = nil
NLRidesAPI.WorldAPIName = "rides"

NLRidesAPI.Debug_DumpAPI = false

function NLRidesAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("AddCar")
            :AsListener(),
        APIEntry.NewEntry("AddRideObjectiveLinkID")
            :Disable(),
        APIEntry.NewEntry("AddSeat")
            :AsListener(),
        APIEntry.NewEntry("AssignRideSequentialID")
            :Disable(),
        APIEntry.NewEntry("BuildQueuesOnLoad")
            :Disable(),
        APIEntry.NewEntry("CanBeOpened")
            :AsListener(),
        APIEntry.NewEntry("CanBeTested")
            :WithReturnValues(true):Disable(),
        APIEntry.NewEntry("ClearPendingBreakdowns")
            :Disable(),
        APIEntry.NewEntry("CloseRide")
            :AsListener(),
        APIEntry.NewEntry("CompleteWorldSerialisationLoad")
            :Disable(),
        APIEntry.NewEntry("ComputeParkRatingData")
            :Disable(),
        APIEntry.NewEntry("GetAllRides")
            :Disable(),
        APIEntry.NewEntry("GetCarByIndex")
            :AsListener(),
        APIEntry.NewEntry("GetCarByLayout")
            :AsListener(),
        APIEntry.NewEntry("GetCarForSeat")
            :Disable(),
        APIEntry.NewEntry("GetCarIndex")
            :AsListener(),
        APIEntry.NewEntry("GetCarInfo")
            :AsListener(),
        APIEntry.NewEntry("GetCarLayout")
            :AsListener(),
        APIEntry.NewEntry("GetCarShowName")
            :Disable(),
        APIEntry.NewEntry("GetCarStatus")
            :AsListener(),
        APIEntry.NewEntry("GetCarType")
            :Disable(),
        APIEntry.NewEntry("GetCarsForRide")
            :AsListener(),
        APIEntry.NewEntry("GetCarsForTrain")
            :AsListener(),
        APIEntry.NewEntry("GetDayOpened")
            :Disable(),
        APIEntry.NewEntry("GetDummyInSeat")
            :Disable(),
        APIEntry.NewEntry("GetDummyLocation")
            :Disable(),
        APIEntry.NewEntry("GetFlumeFrictionEnabled")
            :Disable(),
        APIEntry.NewEntry("GetGuestInSeat")
            :Disable(),
        APIEntry.NewEntry("GetGuestLocation")
            :Disable(),
        APIEntry.NewEntry("GetGuestsInCar")
            :Disable(),
        APIEntry.NewEntry("GetGuestsInRow")
            :Disable(),
        APIEntry.NewEntry("GetGuestsOnRide")
            :Disable(),
        APIEntry.NewEntry("GetGuestsOnTrain")
            :Disable(),
        APIEntry.NewEntry("GetIsNameable")
            :Disable(),
        APIEntry.NewEntry("GetLifecyclePopularityMultiplier")
            :Disable(),
        APIEntry.NewEntry("GetLifecycleStageUIString")
            :Disable(),
        APIEntry.NewEntry("GetMaxAndTotalRideStationPrestige")
            :Disable(),
        APIEntry.NewEntry("GetMostPopularRideLastMonth")
            :Disable(),
        APIEntry.NewEntry("GetMostProfitableRideLastMonth")
            :Disable(),
        APIEntry.NewEntry("GetNumberOfFlatRides")
            :Disable(),
        APIEntry.NewEntry("GetNumberOfRidesOfName")
            :Disable(),
        APIEntry.NewEntry("GetNumberOfUniqueRides")
            :Disable(),
        APIEntry.NewEntry("GetNumberOfUniqueRidesOfTypes")
            :Disable(),
        APIEntry.NewEntry("GetObjectiveLinkIDsFromRideID")
            :Disable(),
        APIEntry.NewEntry("GetPrestigeDeclineNodesUI")
            :Disable(),
        APIEntry.NewEntry("GetPrestigeDeclineProgressProp")
            :Disable(),
        APIEntry.NewEntry("GetPurchasePrice")
            :Disable(),
        APIEntry.NewEntry("GetRebrandCost")
            :Disable(),
        APIEntry.NewEntry("GetRequiredDLC")
            :Disable(),
        APIEntry.NewEntry("GetRequiredLevel")
            :Disable(),
        APIEntry.NewEntry("GetResalePrice")
            :Disable(),
        APIEntry.NewEntry("GetRideForCar")
            :Disable(),
        APIEntry.NewEntry("GetRideForSeat")
            :Disable(),
        APIEntry.NewEntry("GetRideForStation")
            :Disable(),
        APIEntry.NewEntry("GetRideForTrain")
            :Disable(),
        APIEntry.NewEntry("GetRideFrictionEnabled")
            :Disable(),
        APIEntry.NewEntry("GetRideIDFromObjectiveLinkID")
            :Disable(),
        APIEntry.NewEntry("GetRideIcon")
            :Disable(),
        APIEntry.NewEntry("GetRideInfo")
            :Disable(),
        APIEntry.NewEntry("GetRideKey")
            :Disable(),
        APIEntry.NewEntry("GetRideManufacturer")
            :Disable(),
        APIEntry.NewEntry("GetRideName")
            :Disable(),
        APIEntry.NewEntry("GetRidePrestigeVisibleValue")
            :Disable(),
        APIEntry.NewEntry("GetRideSimID")
            :Disable(),
        APIEntry.NewEntry("GetRideStairsFromPhysics")
            :AsListener(),
        APIEntry.NewEntry("GetRideStairsLocalGrid")
            :Disable(),
        APIEntry.NewEntry("GetRideType")
            :Disable(),
        APIEntry.NewEntry("GetRideTypeCounts")
            :Disable(),
        APIEntry.NewEntry("GetRideTypeName")
            :Disable(),
        APIEntry.NewEntry("GetRideTypesAsString")
            :Disable(),
        APIEntry.NewEntry("GetSeatByIndex")
            :Disable(),
        APIEntry.NewEntry("GetSeatByLayout")
            :Disable(),
        APIEntry.NewEntry("GetSeatIndex")
            :Disable(),
        APIEntry.NewEntry("GetSeatInfo")
            :Disable(),
        APIEntry.NewEntry("GetSeatLayout")
            :Disable(),
        APIEntry.NewEntry("GetSeatRow")
            :Disable(),
        APIEntry.NewEntry("GetSeatSituation")
            :Disable(),
        APIEntry.NewEntry("GetSeatStatus")
            :AsListener(),
        APIEntry.NewEntry("GetSeatsForCar")
            :Disable(),
        APIEntry.NewEntry("GetSeatsForRide")
            :Disable(),
        APIEntry.NewEntry("GetSeatsForRow")
            :Disable(),
        APIEntry.NewEntry("GetSeatsForTrain")
            :AsListener(),
        APIEntry.NewEntry("GetStationLoadRules")
            :Disable(),
        APIEntry.NewEntry("GetStationMergeRules")
            :Disable(),
        APIEntry.NewEntry("GetStationTrain")
            :Disable(),
        APIEntry.NewEntry("GetStationsForRide")
            :Disable(),
        APIEntry.NewEntry("GetThemingMaximums")
            :Disable(),
        APIEntry.NewEntry("GetTrainByIndex")
            :Disable(),
        APIEntry.NewEntry("GetTrainForCar")
            :Disable(),
        APIEntry.NewEntry("GetTrainForSeat")
            :Disable(),
        APIEntry.NewEntry("GetTrainIndex")
            :Disable(),
        APIEntry.NewEntry("GetTrainInfo")
            :Disable(),
        APIEntry.NewEntry("GetTrainStation")
            :Disable(),
        APIEntry.NewEntry("GetTrainStatus")
            :Disable(),
        APIEntry.NewEntry("GetTrainsForRide")
            :AsListener(),
        APIEntry.NewEntry("GuestsAreOnRide")
            :Disable(),
        APIEntry.NewEntry("HasPrestigeDeclineComponent")
            :Disable(),
        APIEntry.NewEntry("HasRequiredStaff")
            :Disable(),
        APIEntry.NewEntry("IsClosed")
            :Disable(),
        APIEntry.NewEntry("IsEditable")
            :WithReturnValues(true),
        APIEntry.NewEntry("IsFlatRide")
            :Disable(),
        APIEntry.NewEntry("IsOpen")
            :Disable(),
        APIEntry.NewEntry("IsPrestigeClassic")
            :Disable(),
        APIEntry.NewEntry("IsRide")
            :Disable(),
        APIEntry.NewEntry("IsRideGate")
            :Disable(),
        APIEntry.NewEntry("IsRideStairs")
            :Disable(),
        APIEntry.NewEntry("IsRideStairsPhysics")
            :Disable(),
        APIEntry.NewEntry("IsRideStairsSpatial")
            :Disable(),
        APIEntry.NewEntry("IsTested")
            :Disable(),
        APIEntry.NewEntry("IsTesting")
            :Disable(),
        APIEntry.NewEntry("IsTrackedRide")
            :Disable(),
        APIEntry.NewEntry("IsTransportRide")
            :Disable(),
        APIEntry.NewEntry("IsTransportRideNavGraphOutOfDate")
            :Disable(),
        APIEntry.NewEntry("OpenRide")
            :AsListener(),
        APIEntry.NewEntry("ParkReset")
            :Disable(),
        APIEntry.NewEntry("PurgeAllRideGuests")
            :Disable(),
        APIEntry.NewEntry("Rebrand")
            :AsListener(),
        APIEntry.NewEntry("RemoveCar")
            :AsListener(),
        APIEntry.NewEntry("RemoveGuests")
            :Disable(),
        APIEntry.NewEntry("RemoveRide")
            :Disable(),
        APIEntry.NewEntry("RemoveRideObjectiveLinkID")
            :Disable(),
        APIEntry.NewEntry("RemoveSeat")
            :AsListener(),
        APIEntry.NewEntry("RequiresEndLoops")
            :Disable(),
        APIEntry.NewEntry("SetAllRidesEditable")
            :Disable(),
        APIEntry.NewEntry("SetBreakdownChanceMultiplier")
            :Disable(),
        APIEntry.NewEntry("SetBreakdownRateMultiplier")
            :Disable(),
        APIEntry.NewEntry("SetCarRotatable")
            :AsListener(),
        APIEntry.NewEntry("SetCarShowName")
            :Disable(),
        APIEntry.NewEntry("SetDarkRideVolumeEnabled")
            :AsListener(),
        APIEntry.NewEntry("SetDummyInSeat")
            :AsListener(),
        APIEntry.NewEntry("SetEditable")
            :Disable(),
        APIEntry.NewEntry("SetEditingRideID")
            :WithLogCall(),
        APIEntry.NewEntry("SetGlobalFlumeFrictionMultiplier")
            :Disable(),
        APIEntry.NewEntry("SetGlobalRideFrictionMultiplier")
            :Disable(),
        APIEntry.NewEntry("SetPeepInSeat")
            :AsListener(),
        APIEntry.NewEntry("SetPrestigeEnabled")
            :Disable(),
        APIEntry.NewEntry("SetStationLoadRules")
            :AsListener(),
        APIEntry.NewEntry("SetStationMergeRules")
            :AsListener(),
        APIEntry.NewEntry("StoreRidesNotEligibleForAchievements")
            :Disable(),
        APIEntry.NewEntry("TestRide")
            :AsListener(),
    }
    return tEntries
end

function NLRidesAPI.CanCommitPreview(rawApi)
end

return BaseAPI.Validate(NLRidesAPI)