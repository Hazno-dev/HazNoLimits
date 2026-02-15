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

---@class Mod_NoLimits.API.RideStationAPI : Mod_NoLimits.API.Base
local NLRideStationAPI = BaseAPI.NewAPI("RideStationAPI")
local logger = NLRideStationAPI.Logger

NLRideStationAPI.Enabled = true
NLRideStationAPI.CoreAPIName = nil
NLRideStationAPI.WorldAPIName = "ridestation"

NLRideStationAPI.Debug_DumpAPI = false

function NLRideStationAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("AddEntranceExit")
            :Disable(),
        APIEntry.NewEntry("CheckRideExitConnectedToParkEntrance")
            :Disable(),
        APIEntry.NewEntry("CompleteWorldSerialisationLoad")
            :Disable(),
        APIEntry.NewEntry("CreateEntranceExitEditToken")
            :Disable(),
        APIEntry.NewEntry("CreateSetTicketPriceEditOperation")
            :Disable(),
        APIEntry.NewEntry("DoesRideExitHaveSomePath")
            :Disable(),
        APIEntry.NewEntry("GetAllRidePriceOptionsAsString")
            :Disable(),
        APIEntry.NewEntry("GetAllRideStationEditTokens")
            :Disable(),
        APIEntry.NewEntry("GetBreakdownsDisabled")
            :Disable(),
        APIEntry.NewEntry("GetBreakdownsDisabledForRideStation")
            :Disable(),
        APIEntry.NewEntry("GetEntranceExitEditToken")
            :Disable(),
        APIEntry.NewEntry("GetEntranceExitIDForToken")
            :Disable(),
        APIEntry.NewEntry("GetFlumeEntranceAndRunoutLaneStations")
            :Disable(),
        APIEntry.NewEntry("GetFlumeExitPool")
            :Disable(),
        APIEntry.NewEntry("GetIdealTicketPrice")
            :Disable(),
        APIEntry.NewEntry("GetLastBreakdownDate")
            :Disable(),
        APIEntry.NewEntry("GetMaintenanceLevel")
            :Disable(),
        APIEntry.NewEntry("GetMaximumGroupSize")
            :Disable(),
        APIEntry.NewEntry("GetPathJoinPartGroupIDForToken")
            :Disable(),
        APIEntry.NewEntry("GetPlatformMaterialFlexicolour")
            :Disable(),
        APIEntry.NewEntry("GetPoolEntryTransformForFlume")
            :Disable(),
        APIEntry.NewEntry("GetPriceSyncEnabled")
            :Disable(),
        APIEntry.NewEntry("GetRefurbishmentCost")
            :Disable(),
        APIEntry.NewEntry("GetRideAttendantForRideStation")
            :Disable(),
        APIEntry.NewEntry("GetRideCategoryForStation")
            :Disable(),
        APIEntry.NewEntry("GetRideEntityIDFromStationEntityID")
            :Disable(),
        APIEntry.NewEntry("GetRideEntranceExitInfoPrefabName")
            :Disable(),
        APIEntry.NewEntry("GetRideGateEntity")
            :Disable(),
        APIEntry.NewEntry("GetRidePlatformEntranceAndExitWidth")
            :Disable(),
        APIEntry.NewEntry("GetRidePriceOptionAsString")
            :Disable(),
        APIEntry.NewEntry("GetRideStationEditToken", {"self", "nStationID"}, {"cEditToken"})
            :Disable(),
        APIEntry.NewEntry("GetRideStationEntityIDFromEditToken")
            :Disable(),
        APIEntry.NewEntry("GetRunoutLaneExitTransform")
            :Disable(),
        APIEntry.NewEntry("GetSelectedTicketType")
            :Disable(),
        APIEntry.NewEntry("GetServiceInterval")
            :Disable(),
        APIEntry.NewEntry("GetStationDesignerOverrideName")
            :Disable(),
        APIEntry.NewEntry("GetStationName")
            :Disable(),
        APIEntry.NewEntry("GetStationPremiumTargetTime")
            :Disable(),
        APIEntry.NewEntry("GetStationPriceOfTicketType")
            :Disable(),
        APIEntry.NewEntry("GetStationTicketTypeAvailable")
            :Disable(),
        APIEntry.NewEntry("GetStationType")
            :Disable(),
        APIEntry.NewEntry("GetSumFairPrice")
            :Disable(),
        APIEntry.NewEntry("GetSupportsChildGuests")
            :Disable(),
        APIEntry.NewEntry("GetTicketCustomData")
            :Disable(),
        APIEntry.NewEntry("GetTicketPrice")
            :Disable(),
        APIEntry.NewEntry("GetTicketPriceLockReason")
            :Disable(),
        APIEntry.NewEntry("GetTicketPriceLocked")
            :Disable(),
        APIEntry.NewEntry("GetTimePropBrokenDown")
            :Disable(),
        APIEntry.NewEntry("GetTimeSinceRefurbishment")
            :Disable(),
        APIEntry.NewEntry("GetTimeUntilServiceOverdue")
            :Disable(),
        APIEntry.NewEntry("GetTrainLeavingTrackVelocity")
            :Disable(),
        APIEntry.NewEntry("GetWear")
            :Disable(),
        APIEntry.NewEntry("GetWearHighLowReliabilityThresholds")
            :Disable(),
        APIEntry.NewEntry("HasBullWheel")
            :Disable(),
        APIEntry.NewEntry("HasConnectedQueue")
            :Disable(),
        APIEntry.NewEntry("HasDriveStation")
            :Disable(),
        APIEntry.NewEntry("HasPathOnExitGate")
            :Disable(),
        APIEntry.NewEntry("HasRefurbishBeenRequested")
            :Disable(),
        APIEntry.NewEntry("HasRepairBeenRequested")
            :Disable(),
        APIEntry.NewEntry("HasRideGate")
            :Disable(),
        APIEntry.NewEntry("HasServiceBeenRequested")
            :Disable(),
        APIEntry.NewEntry("IsBrokenDown")
            :Disable(),
        APIEntry.NewEntry("IsEndLoopedComplete")
            :Disable(),
        APIEntry.NewEntry("IsEntranceGateAccessType")
            :Disable(),
        APIEntry.NewEntry("IsFlumeEntranceStation")
            :Disable(),
        APIEntry.NewEntry("IsGateConnectedToParkEntrance")
            :Disable(),
        APIEntry.NewEntry("IsRideStation")
            :Disable(),
        APIEntry.NewEntry("IsTrackedRide")
            :Disable(),
        APIEntry.NewEntry("IsWaterSlide")
            :Disable(),
        APIEntry.NewEntry("MoveEntranceExit")
            :Disable(),
        APIEntry.NewEntry("RemoveEntranceExit")
            :Disable(),
        APIEntry.NewEntry("RequestBreakdown")
            :Disable(),
        APIEntry.NewEntry("RequestCancelRefurbish")
            :Disable(),
        APIEntry.NewEntry("RequestCancelService")
            :Disable(),
        APIEntry.NewEntry("RequestRefurbishment")
            :Disable(),
        APIEntry.NewEntry("RequestRepair")
            :Disable(),
        APIEntry.NewEntry("RequestService")
            :Disable(),
        APIEntry.NewEntry("SetAllCurrentRidesPriceLock")
            :Disable(),
        APIEntry.NewEntry("SetBreakdownsDisabled")
            :Disable(),
        APIEntry.NewEntry("SetBreakdownsDisabledForRideStation")
            :Disable(),
        APIEntry.NewEntry("SetMaintenanceLevel")
            :Disable(),
        APIEntry.NewEntry("SetPlatformMaterialFlexicolourForSemanticTag")
            :Disable(),
        APIEntry.NewEntry("SetPriceSyncEnabled")
            :Disable(),
        APIEntry.NewEntry("SetSelectedTicketType")
            :Disable(),
        APIEntry.NewEntry("SetServiceAndMaintenanceTickDisabled")
            :Disable(),
        APIEntry.NewEntry("SetServiceIntervalDisabled")
            :Disable(),
        APIEntry.NewEntry("SetStationDesignerOverrideName")
            :Disable(),
        APIEntry.NewEntry("SetStationName")
            :Disable(),
        APIEntry.NewEntry("SetTicketCustomMaxPrice")
            :Disable(),
        APIEntry.NewEntry("SetTicketCustomMaxQueue")
            :Disable(),
        APIEntry.NewEntry("SetTicketCustomMinPrice")
            :Disable(),
        APIEntry.NewEntry("SetTicketCustomMinQueue")
            :Disable(),
        APIEntry.NewEntry("SetTicketPrice")
            :Disable(),
        APIEntry.NewEntry("SetTicketPriceAndStateLocked")
            :Disable(),
        APIEntry.NewEntry("SetTicketPriceLockReason")
            :Disable(),
        APIEntry.NewEntry("SetTicketPriceLocked")
            :Disable(),
        APIEntry.NewEntry("TicketPriceLockReasonToString")
            :Disable(),
        APIEntry.NewEntry("TriggerBreakdown")
            :Disable(),
    }

    return tEntries
end

return BaseAPI.Validate(NLRideStationAPI)