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
local HazNoLibrary  = api.HazNoLibrary
local Vector3       = require("Vector3")

local ScenarioNarrativeManagerEventsHelper = require("Helpers.ScenarioNarrativeManagerEventsHelper")

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local EditorUtils   = require("Utility.Mod_NoLimits.EditorUtils")               ---@type Mod_NoLimits.EditorUtils
local MathUtils     = require("Utility.Mod_NoLimits.MathUtils")                 ---@type Mod_NoLimits.MathUtils
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")          ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")      ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.RideStatsAPI : Mod_NoLimits.API.Base
local NLRideStatsAPI = BaseAPI.NewAPI("RideStatsAPI")
local logger = NLRideStatsAPI.Logger

NLRideStatsAPI.Enabled = true
NLRideStatsAPI.CoreAPIName = nil
NLRideStatsAPI.WorldAPIName = "ridestats"

NLRideStatsAPI.Debug_DumpAPI = false

function NLRideStatsAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("GetArrivalsDepartures")
            :AsListener(),
        APIEntry.NewEntry("GetEFN")
            :AsListener(),
        APIEntry.NewEntry("GetNumGuestRidesCompletedPerDay")
            :Disable(),
        APIEntry.NewEntry("GetNumGuestRidesTypeCompleteOnDay")
            :Disable(),
        APIEntry.NewEntry("GetParkWideStats")
            :Disable(),
        APIEntry.NewEntry("GetPrestigeAndDeteriorationMultiplier")
            :Disable(),
        APIEntry.NewEntry("GetQueueTime")
            :AsListener(),
        APIEntry.NewEntry("GetRideStats", {"self", "nRideEntityID"}, {"tRideStats"})
            :WithCallDelegate(NLRideStatsAPI.GetRideStats):SetEnabled(true),
        APIEntry.NewEntry("GetRideTriggerShowStats")
            :Disable(),
        APIEntry.NewEntry("GetStationStats", {"self", "nStationID"}, {"tStationStats"})
            :WithCallDelegate(NLRideStatsAPI.GetStationStats):SetEnabled(Config.Get("tRides.bFakeEFN", false)),
        APIEntry.NewEntry("GetStationStatsLastOnly", {"self", "nStationID"}, {"tStationStats"})
            :AsListener():WithCallDelegate(NLRideStatsAPI.GetStationStatsLastOnly):SetEnabled(true),
        APIEntry.NewEntry("ParkReset")
            :AsListener(),
        APIEntry.NewEntry("SetYesterdaysSumChildRideAvailability")
            :Disable(),
        APIEntry.NewEntry("SetYesterdaysSumRideAvailability")
            :Disable(),
    }
    return tEntries
end

function NLRideStatsAPI.GetRideStats(rawApi, self, nRideEntityID)
    local ret = rawApi.GetRideStats(self, nRideEntityID)
    if ret == nil then
        return nil
    end

    --logger:Info("Attempting to get EFN for ride")
    --local test = rawApi.GetEFN(self, nRideEntityID)
    --if test == nil then
    --    logger:Info("GetEFN returned nil with input: " .. tostring(nRideEntityID))
    --else
    --    DebugUtils.LogTableDeep("GetEFN", test)
    --    if test.Excitement == 0.0 and test.Fear == 0.0 and test.Nausea == 0.0 then
    --        return ret
    --    end
    --end
    --
    --if ScenarioNarrativeManagerEventsHelper == nil then
    --    logger:Warn("No ScenarioNarrativeManagerEventsHelper")
    --else
    --
    --    local events = nlApi.World.ScenarioNarrativeManager.scenarioNarrativeEventHelper:GetEvents()
    --    if events == nil then
    --        logger:Warn("No events in ScenarioNarrativeManagerEventsHelper")
    --        return ret
    --    end
    --
    --    DebugUtils.LogTable("ScenarioNarrativeManagerEventsHelper Events", events)
    --
    --    local EFN = Vector3:new(20, 3, 3)
    --
    --    logger:Info("Setting EFN for stationID " .. tostring(nRideEntityID) .. " to " .. tostring(EFN))
    --    nlApi.World.ScenarioNarrativeManager.scenarioNarrativeEventHelper:_SetEFNValues(nRideEntityID, EFN)
    --
    --    --logger:Info("Attempting to get ObjectiveLinkIDs for ride")
    --    --local wrld = api.world.GetWorldAPIs()
    --    --local objLIDs = nlApi.World:GetObjectiveLinkIDsFromRideID(nRideEntityID)
    --    --logger:Info("Found " .. tostring(#objLIDs) .. " ObjectiveLinkIDs for rideID " .. tostring(nRideEntityID))
    --    --DebugUtils.LogTable("ObjectiveLinkIDs for stationID " .. tostring(nRideEntityID), objLIDs)
    --
    --
    --
    --    --DebugUtils.LogTable("ScenarioNarrativeManagerEventsHelper", ScenarioNarrativeManagerEventsHelper)
    --end

    --logger:Info("Attempting to get EFN for ride")
    --local test = rawApi.GetEFN(self, nRideEntityID)
    --if test == nil then
    --    logger:Info("GetEFN returned nil with input: " .. tostring(nRideEntityID))
    --else
    --    DebugUtils.LogTableDeep("GetEFN", test)
    --end

    return ret
end

function NLRideStatsAPI.GetStationStats(rawApi, self, nStationID)
    local ret = rawApi.GetStationStats(self, nStationID)
    if ret == nil then
        return nil
    end

    ret.last = NLRideStatsAPI.YassifyStats(ret.last)
    ret.average = NLRideStatsAPI.YassifyStats(ret.average)
    return ret
end

function NLRideStatsAPI.GetStationStatsLastOnly(rawApi, self, nStationID)
    local ret = rawApi.GetStationStatsLastOnly(self, nStationID)

    if ret == nil then
        return nil
    end

    DebugUtils.LogFunctionInfo(HazNoLibrary.API.RideStats.GetStationStatsLastOnly)

    if HazNoLibrary == nil then
        logger:Warn("HazNoLibrary is nil!")
        return ret
    end

    if HazNoLibrary.API == nil then
        logger:Warn("HazNoLibrary.API is nil!")
        return ret
    end

    if HazNoLibrary.API.RideStats == nil then
        logger:Warn("HazNoLibrary.API.RideStats is nil!")
        return ret
    end

    if HazNoLibrary.API.RideStats.SetStationStats == nil then
        logger:Warn("HazNoLibrary.API.RideStats.SetStationStats is nil!")
        return ret
    end

    HazNoLibrary.API.RideStats:SetStationStats(nStationID)
    return rawApi.GetStationStatsLastOnly(self, nStationID)

    --logger:Info("Attempting to get EFN for ride")
    --local test = rawApi.GetEFN(self, nStationID)
    --if test == nil then
    --    logger:Info("GetEFN returned nil with input: " .. tostring(nStationID))
    --else
    --    DebugUtils.LogTableDeep("GetEFN", test)
    --end

    --return NLRideStatsAPI.YassifyStats(ret)
end

function NLRideStatsAPI.YassifyStats(tStats)
    if tStats == nil or tStats.Excitement == nil or tStats.EFNScore == nil then
        return tStats
    end

    tStats.MaxFear              = MathUtils.Clamp(tStats.Fear, 0.0, 4.0)
    tStats.AverageFear          = MathUtils.Clamp(tStats.AverageFear, 0.0, 4.0)
    tStats.Fear                 = MathUtils.Clamp(tStats.Fear, 0.0, 4.0)

    tStats.MaxNausea            = MathUtils.Clamp(tStats.Nausea, 0.0, 3.0)
    tStats.AverageNausea        = MathUtils.Clamp(tStats.AverageNausea, 0.0, 2.0)
    tStats.Nausea               = MathUtils.Clamp(tStats.Nausea, 0.0, 3.0)

    tStats.MaxExcitement        = MathUtils.Clamp(tStats.Excitement, tStats.Fear, 999999)
    tStats.AverageExcitement    = MathUtils.Clamp(tStats.Excitement, tStats.Fear, 999999)
    tStats.Excitement           = MathUtils.Clamp(tStats.Excitement, tStats.Fear, 999999)

    tStats.GForcePenalty        = 0.0
    tStats.InvertedPenalty      = 0.0
    tStats.LatPenalty           = 0.0

    tStats.EFNScore             = MathUtils.Clamp(tStats.EFNScore, 0.0, 400)

    tStats.MaxLateralG          = MathUtils.Clamp(tStats.MaxLateralG, 0.0, 5.0)
    tStats.MaxPosVertG          = MathUtils.Clamp(tStats.MaxPosVertG, 0.0, 5.0)
    tStats.MaxNegVertG          = MathUtils.Clamp(tStats.MaxNegVertG, -5.0, 0.0)
    tStats.MaxPosLongG          = MathUtils.Clamp(tStats.MaxPosLongG, 0.0, 5.0)
    tStats.MaxNegLongG          = MathUtils.Clamp(tStats.MaxNegLongG, -5.0, 0.0)

    tStats.AverageSpeed         = MathUtils.Clamp(tStats.MaxNegLongG, -200.0, 200.0)
    tStats.MaxSpeed             = MathUtils.Clamp(tStats.MaxNegLongG, -250.0, 250.0)

    tStats.VertPenalty          = 0.0
    tStats.GForcePenalty        = 0.0
    tStats.LatPenalty           = 0.0
    tStats.LongPenalty          = 0.0
    tStats.InvertedPenalty      = 0.0

    return tStats
end

return BaseAPI.Validate(NLRideStatsAPI)