-----------------------------------------------------------------------
--/  @file   Database.ACSEDebugLuaDatabase.lua
--/  @author Hazno
--/
--/  @brief  Handles ACSEDebug loading and database creation
--/  @see    https://github.com/OpenNaja/ACSE
-----------------------------------------------------------------------

local global        = _G
local api           = global.api
local table         = global.table
local tostring      = global.tostring
local loadfile      = global.loadfile
local pairs         = global.pairs
local ipairs        = global.ipairs
local math          = global.math
local tryrequire    = global.tryrequire
local database      = api.database
local Vector3       = require("Vector3")

local TrackEditInput    = require("Editors.Track.TrackEditInput")
local RideUIUtils       = require("Helpers.RideUIUtils")
local rideStoreComp     = require("Components.UI.DataStore.TrackedRideDataStoreComponent")
local SaveMetadataBuild = require("Helpers.SaveMetadataBuilder")

local GameDatabase  = require("Database.GameDatabase")                  ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")    ---@class (partial) Mod_NoLimits.DatabaseUtils
local Config        = require("Database.Mod_NoLimits.Config")           ---@class (partial) Mod_NoLimits.Config
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")        ---@type Mod_NoLimits.DebugUtils

local logger        = require("forgeutils.logger").Get("NoLimits::TrackDatabase")

---@class (partial) NLTDatabase
---@field DBName string?
---@field PSName string?
---@field DebugQueries boolean
---@field DBFunctions table
---@field tRides table
---@field tNonSlideRides table
---@field tNonKartTrains table
---@field _Init fun()
---@field _PreApply fun()
---@field _Apply fun(_fnAdd:fun(), _tLuaPrefabNames:table, _tLuaPrefabs:table)
local _NLTDatabase  = {}
_NLTDatabase.logger = logger

local trackEditInputInit = TrackEditInput.Init
local trackEditModeSelec = nil
local trackEditModeCanAuto = nil
local trackEditSelecFindBestJoin = nil
local trackEditSelecDirJoin = nil
local saveMetadataBuildSetRS = SaveMetadataBuild.SetRideStats
local rideUIUtilsChangeRideStatus = RideUIUtils.ChangeRideStatus
local rideUIUtilsBuildEFNTestRatings = RideUIUtils.BuildEFNTestRatings

function _NLTDatabase._Init()
    _NLTDatabase.DBName = "TrackedRides"
    _NLTDatabase.PSName = "Mod_NoLimits_TrackedRides"
    _NLTDatabase.DebugQueries = false

    _NLTDatabase.tRides = {}
    _NLTDatabase.tNonSlideRides = {}
    _NLTDatabase.tNonKartTrains = {}
end

function _NLTDatabase._PreApply()
     local _tRides = GameDatabase.NoLimits_GetAllTrackedRides()
     _NLTDatabase.tRides = {}
     for _, row in ipairs(_tRides) do
         table.insert(_NLTDatabase.tRides, row[1])
     end

     local _tNonSlideRides = GameDatabase.NoLimits_GetAllNonSlideRides()
     _NLTDatabase.tNonSlideRides = {} -- to prevent duplicates
     for _, row in ipairs(_tNonSlideRides) do
         table.insert(_NLTDatabase.tNonSlideRides, row[1])
     end

     local _tTrains = GameDatabase.NoLimits_GetAllTrains()
     for _, row in ipairs(_tTrains) do
         table.insert(_NLTDatabase.tNonKartTrains, row[1])
     end
     for _, _sRide in pairs(_NLTDatabase.tNonSlideRides) do
         GameDatabase.NoLimits_UpdateAllTrainsToRide_Extras(_sRide)
     end

     TrackEditInput.Init = _NLTDatabase.TrackEditInputInit
     RideUIUtils.ChangeRideStatus = _NLTDatabase.RideUIUtilsChangeRideStatus
     RideUIUtils.BuildEFNTestRatings = _NLTDatabase.RideUIUtilsBuildEFNTestRatings
     --SaveMetadataBuild.SetRideStats = _NLTDatabase.SaveMetadataBuilderSetRideStats
end

function _NLTDatabase._Apply(_fnAdd, _tLuaPrefabNames, _tLuaPrefabs)
    logger:Info("Applying NoLimits Track Configurations")

    local appendedBase = Config.GetList("tRides.tAppendedElements")
    for _, element in ipairs(appendedBase) do
        logger:DebugQuery("Iterating")
        logger:DebugQuery("Appending element: " .. element)
        GameDatabase.NoLimits_UpdateElementToRides(element)
    end

    logger:Info("Finished appendedElements")

    for _sRide, _tRideElements in pairs(Config.GetList("tRides.tAppendedElementsToRide")) do
        for _, element in ipairs(_tRideElements) do
            logger:DebugQuery("Appending element: " .. element .. "to ride: " .. _sRide)
            GameDatabase.NoLimits_UpdateElementToRide(_sRide, element)
        end
    end

    GameDatabase.NoLimits_UpdateTrackLength(Config.Get("tRides.tTrackLength.min", nil),
        Config.Get("tRides.tTrackLength.max", nil), Config.Get("tRides.tTrackLength.step", nil))

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_SetMaxTrackHeight, "tRides.tMaxTrackHeight", _NLTDatabase)

    local appendSlopeRangeMin, appendSlopeRangeMax = Config.Get("tRides.tSlopeRange.min", 0), Config.Get("tRides.tSlopeRange.max", 0)
    for _, value in pairs(Config.GetList("tRides.tSlopeRange.tAppendToElements")) do
        if value ~= "tAppendedElements" then
            GameDatabase.NoLimits_AppendElementParamaterToElement(value, "SlopeRangeDegrees",
            appendSlopeRangeMin, appendSlopeRangeMax,0, 0, nil, nil)
        else
            for _, element in ipairs(appendedBase) do
                GameDatabase.NoLimits_AppendElementParamaterToElement(element, "SlopeRangeDegrees",
                appendSlopeRangeMin, appendSlopeRangeMax,0, 0, nil, nil)
            end
        end
    end

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMinSlopeRangeDegrees, "tRides.tSlopeRange.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMaxSlopeRangeDegrees, "tRides.tSlopeRange.max", _NLTDatabase)

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateRidesMaxSlopeDeltaDegrees, "tRides.tSlopeRange.maxDelta", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateRidesMinSlopeRangeDegrees, "tRides.tRideSlopeRange.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateRidesMaxSlopeRangeDegrees, "tRides.tRideSlopeRange.max", _NLTDatabase)

    local appendBankingRangeMin, appendBankingRangeMax = Config.Get("tRides.tBankingRange.min", 0), Config.Get("tRides.tBankingRange.max", 0)
    for _, value in pairs(Config.GetList("tRides.tBankingRange.tAppendToElements")) do
        if value ~= "tAppendedElements" then
            GameDatabase.NoLimits_AppendElementParamaterToElement(value, "BankingRangeDegrees",
            appendBankingRangeMin, appendBankingRangeMax,0, 0, nil, nil)
        else
            for _, element in ipairs(appendedBase) do
                GameDatabase.NoLimits_AppendElementParamaterToElement(element, "BankingRangeDegrees",
                appendBankingRangeMin, appendBankingRangeMax,0, 0, nil, nil)
            end
        end
    end

    GameDatabase.NoLimits_UpdateBankingRangeDegrees(Config.Get("tRides.tBankingRange.min", nil),
        Config.Get("tRides.tBankingRange.max", nil))

    local appendBankPivotMin, appendBankPivotMax, appendBankPivotStep = Config.Get("tRides.tBankPivotRange.min", 0),
        Config.Get("tRides.tBankPivotRange.max", 0), Config.Get("tRides.tBankPivotRange.step", 0)
    for _, value in pairs(Config.GetList("tRides.tBankingRange.tAppendToElements")) do
        if value ~= "tAppendedElements" then
            GameDatabase.NoLimits_AppendElementParamaterToElement(value, "BankPivotRange",
            appendBankPivotMin, appendBankPivotMax,0, appendBankPivotStep, nil, nil)
        else
            for _, element in ipairs(appendedBase) do
                GameDatabase.NoLimits_AppendElementParamaterToElement(element, "BankPivotRange",
                appendBankPivotMin, appendBankPivotMax,0, appendBankPivotStep, nil, nil)
            end
        end
    end

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMinBankPivotRange, "tRides.tBankPivotRange.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMaxBankPivotRange, "tRides.tBankPivotRange.max", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateRidesMinBankPivotRange, "tRides.tBankPivotRange.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateRidesMaxBankPivotRange, "tRides.tBankPivotRange.max", _NLTDatabase)

    local appendCurveRangeMin, appendCurveRangeMax = Config.Get("tRides.tCurveRange.min", 0), Config.Get("tRides.tCurveRange.max", 0)
    for _, value in pairs(Config.GetList("tRides.tCurveRange.tAppendToElements")) do
        if value ~= "tAppendedElements" then
            GameDatabase.NoLimits_AppendElementParamaterToElement(value, "CurveRangeDegrees",
            appendCurveRangeMin, appendCurveRangeMax,0, 0, nil, nil)
        else
            for _, element in ipairs(appendedBase) do
                GameDatabase.NoLimits_AppendElementParamaterToElement(element, "CurveRangeDegrees",
                appendCurveRangeMin, appendCurveRangeMax,0, 0, nil, nil)
            end
        end
    end

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMinCurveRangeDegrees, "tRides.tCurveRange.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMaxCurveRangeDegrees, "tRides.tCurveRange.max", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateRidesMinCurveRangeDegrees, "tRides.tCurveRange.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateRidesMaxCurveRangeDegrees, "tRides.tCurveRange.max", _NLTDatabase)

    GameDatabase.NoLimits_SetBoosterAcceleration(Config.Get("tRides.tBooster.tAcceleration.min", nil),
        Config.Get("tRides.tBooster.tAcceleration.max", nil))
    GameDatabase.NoLimits_SetAltBoosterAcceleration(Config.Get("tRides.tBooster.tAcceleration.min", nil),
        Config.Get("tRides.tBooster.tAcceleration.max", nil))

    GameDatabase.NoLimits_SetBoosterMaxSpeed(Config.Get("tRides.tBooster.tSpeed.min", nil),
        Config.Get("tRides.tBooster.tSpeed.max", nil))
    GameDatabase.NoLimits_SetAltBoosterMaxSpeed(Config.Get("tRides.tBooster.tSpeed.min", nil),
        Config.Get("tRides.tBooster.tSpeed.max", nil))

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateRidesMinHydraulicAcceleration, "tRides.tHydraulicLaunch.tAcceleration.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateRidesMaxHydraulicAcceleration, "tRides.tHydraulicLaunch.tAcceleration.max", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMinHydraulicAcceleration, "tRides.tHydraulicLaunch.tAcceleration.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMaxHydraulicAcceleration, "tRides.tHydraulicLaunch.tAcceleration.max", _NLTDatabase)

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMinHydraulicSpeed, "tRides.tHydraulicLaunch.tSpeed.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMaxHydraulicSpeed, "tRides.tHydraulicLaunch.tSpeed.max", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateRidesMinHydraulicSpeed, "tRides.tHydraulicLaunch.tSpeed.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateRidesMaxHydraulicSpeed, "tRides.tHydraulicLaunch.tSpeed.max", _NLTDatabase)

    GameDatabase.NoLimits_SetHydraulicReturnSpeed(Config.Get("tRides.tHydraulicLaunch.tReturnSpeed.min", nil),
    Config.Get("tRides.tHydraulicLaunch.tReturnSpeed.max", nil))

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMinHoldingStopLocation, "tRides.tHoldingSection.tStopLocation.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMaxHoldingStopLocation, "tRides.tHoldingSection.tStopLocation.max", _NLTDatabase)

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMinHoldingReleaseSpeed, "tRides.tHoldingSection.tReleaseSpeed.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMaxHoldingReleaseSpeed, "tRides.tHoldingSection.tReleaseSpeed.max", _NLTDatabase)

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMinBrakeMinSpeed, "tRides.tBrakes.tMinSpeed.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMaxBrakeMinSpeed, "tRides.tBrakes.tMinSpeed.max", _NLTDatabase)

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMinBrakeDeceleration, "tRides.tBrakes.tDeceleration.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMaxBrakeDeceleration, "tRides.tBrakes.tDeceleration.max", _NLTDatabase)

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMinChainLiftSpeed, "tRides.tChainLift.tSpeed.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMaxChainLiftSpeed, "tRides.tChainLift.tSpeed.max", _NLTDatabase)

    if Config.Get("tRides.tChainLift.bSwapToDefaultWhenSlopedDown", true) then
        GameDatabase.NoLimits_SetChainLiftsSwapOnSlopeDown(0)
    end

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMinChainLiftDropLocation, "tRides.tChainLift.tBoomerangDropLocation.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_UpdateElementsMaxChainLiftDropLocation, "tRides.tChainLift.tBoomerangDropLocation.max", _NLTDatabase)

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_SetMinCarsCount, "tRides.tCarCount.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_SetMaxCarsCount, "tRides.tCarCount.max", _NLTDatabase)

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_SetMaxTrainCount, "tRides.tTrainCount.max", _NLTDatabase)

    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_SetPoweredMinSpeed, "tRides.tPoweredCars.tSpeed.min", _NLTDatabase)
    DatabaseUtils.TryMutateDatabase(GameDatabase.NoLimits_SetPoweredMaxSpeed, "tRides.tPoweredCars.tSpeed.max", _NLTDatabase)

    GameDatabase.NoLimits_SetMaxPassesThroughStation(Config.Get("tRides.tPassesThroughStation.min", nil),
        Config.Get("tRides.tPassesThroughStation.max", nil))

    rideStoreComp.s_nMinCoasterFriction = Config.Get("tRides.tFriction.min", rideStoreComp.s_nMinCoasterFriction)
    rideStoreComp.s_nMaxCoasterFriction = Config.Get("tRides.tFriction.max", rideStoreComp.s_nMaxCoasterFriction)

    --GameDatabase.NoLimits_UpdateDisabledText("TrackElementDisabled_CannotPlace")
    GameDatabase.NoLimits_UpdateExcitementRating(20)
end

_NLTDatabase.DBFunctions = {
    -- All Rides (Non-Transport)
    NoLimits_GetAllTrackedRides = function()
        return DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_GetAllTrackedRides")
    end,
    NoLimits_GetAllNonTransportRides = function()
        return DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_GetNonTransportRides")
    end,
    NoLimits_GetAllNonSlideRides = function()
        return DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_GetNonTransportNonFlumeRides")
    end,
    NoLimits_GetAllTrains = function()
        return DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_GetAllTrains")
    end,
    NoLimits_GetAllRideTrains_ExtraOfRide = function(_sRide)
        return DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_GetAllRideTrains_ExtraOfRide", _sRide)
    end,
    -- Elements
    NoLimits_UpdateElementToRides = function(_sElementName)
        for _, _sRide in ipairs(_NLTDatabase.tRides) do
            DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementToElementLists", _sRide, _sElementName)
        end
    end,
    NoLimits_UpdateElementToRide = function(_sRide, _sElementName)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementToElementLists", _sRide, _sElementName)
    end,
    -- Track Length
    NoLimits_UpdateTrackLength = function(_fMin, _fMax, _fStep)
        DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_SetElementsParameterValues", "LengthRangeMetres", _fMin, _fMax, _fStep)
        DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_UpdateRideTrackLength", _fMin, _fMax, _fStep)
    end,
    NoLimits_UpdateMinTrackLength = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_SetElementsParameterValues", "LengthRangeMetres", _fMin, nil, nil)
        DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_UpdateRidesMinTrackLength", _fMin)
    end,
    NoLimits_UpdateMaxTrackLength = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_SetElementsParameterValues", "LengthRangeMetres", nil, _fMax, nil)
        DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_UpdateRidesMaxTrackLength", _fMax)
    end,
    NoLimits_UpdateStepTrackLength = function(_fStep)
        DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_SetElementsParameterValues", "LengthRangeMetres", nil, nil, _fStep)
        DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_UpdateRidesStepTrackLength", _fStep)
    end,
    -- Ride
    NoLimits_UpdateRideMinTrackLength = function(_sRide, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_UpdateRideMinTrackLength", _sRide, _fMin)
    end,
    NoLimits_UpdateRideMaxTrackLength = function(_sRide, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_UpdateRideMaxTrackLength", _sRide, _fMax)
    end,
    NoLimits_UpdateRideStepTrackLength = function(_sRide, _fStep)
        DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_UpdateRideStepTrackLength", _sRide, _fStep)
    end,
    -- -- Element
    NoLimits_UpdateElementMinTrackLength = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementParameterValues", "LengthRangeMetres", _sElement, _fMin, nil, nil)
    end,
    NoLimits_UpdateElementMaxTrackLength = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementParameterValues", "LengthRangeMetres", _sElement, nil, _fMax, nil)
    end,
    NoLimits_UpdateElementStepTrackLength = function(_sElement, _fStep)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementParameterValues", "LengthRangeMetres", _sElement, _fStep, nil, nil)
    end,

    -- Ride Height
    NoLimits_SetMaxTrackHeight = function(_iHeight)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetMaxTrackHeight", _iHeight)
    end,
    -- SlopeRangeDegrees
    NoLimits_UpdateElementsSlopeRangeDegrees = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementsParameterValues", "SlopeRangeDegrees", _fMin, _fMax, nil)
    end,
    NoLimits_UpdateRidesSlopeRangeDegrees = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesSlopeRangeDegrees", _fMin, _fMax)
    end,
    -- -- Ride
    NoLimits_UpdateRideMinSlopeRangeDegrees = function(_sRide, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMinSlopeRangeDegrees", _sRide, _fMin)
    end,
    NoLimits_UpdateRidesMinSlopeRangeDegrees = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMinSlopeRangeDegrees", _fMin)
    end,
    NoLimits_UpdateRideMaxSlopeRangeDegrees = function(_sRide, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMaxSlopeRangeDegrees", _sRide, _fMax)
    end,
    NoLimits_UpdateRidesMaxSlopeRangeDegrees = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMaxSlopeRangeDegrees", _fMax)
    end,
    -- -- Element
    NoLimits_UpdateElementMinSlopeRangeDegrees = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementParameterValues", "SlopeRangeDegrees", _sElement, _fMin, nil, nil)
    end,
    NoLimits_UpdateElementMaxSlopeRangeDegrees = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementParameterValues", _sElement, nil, _fMax, nil)
    end,
    -- Delta
    NoLimits_UpdateRidesMaxSlopeDeltaDegrees = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMaxSlopeDeltaDegrees", _fMax)
    end,
    NoLimits_UpdateRideMaxSlopeDeltaDegrees = function(_sRide, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMaxSlopeDeltaDegrees", _sRide, _fMax)
    end,
    -- BankingRangeDegrees
    NoLimits_UpdateBankingRangeDegrees = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementsParameterValues", "BankingRangeDegrees", _fMin, _fMax, nil)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesBankingRangeDegrees", _fMin, _fMax)
    end,
    -- Element
    NoLimits_UpdateElementsMinBankingRangeDegrees = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinBankingRangeDegrees", _fMin)
    end,
    NoLimits_UpdateElementMinBankingRangeDegrees = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinBankingRangeDegrees", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxBankingRangeDegrees = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxBankingRangeDegrees", _fMax)
    end,
    NoLimits_UpdateElementMaxBankingRangeDegrees = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxBankingRangeDegrees", _sElement, _fMax)
    end,
    -- Rides
    NoLimits_UpdateRideMinBankingRangeDegrees = function(_sRide, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMinBankingRangeDegrees", _sRide, _fMin)
    end,
    NoLimits_UpdateRidesMinBankingRangeDegrees = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMinBankingRangeDegrees", _fMin)
    end,
    NoLimits_UpdateRideMaxBankingRangeDegrees = function(_sRide, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMaxBankingRangeDegrees", _sRide, _fMax)
    end,
    NoLimits_UpdateRidesMaxBankingRangeDegrees = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMaxBankingRangeDegrees", _fMax)
    end,
    -- Bank Pivot Range
    NoLimits_UpdateBankPivotRange = function(_fMin, _fMax, _fStep)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementsParameterValues", "BankPivotRange", _fMin, _fMax, _fStep)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesBankPivotRange", _fMin, _fMax, _fStep)
    end,
    -- -- Elements
    NoLimits_UpdateElementsMinBankPivotRange = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementsParameterValues", "BankPivotRange", _fMin, nil, nil)
    end,
    NoLimits_UpdateElementMinBankPivotRange = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinBankPivotRange", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxBankPivotRange = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxBankPivotRange", _fMax)
    end,
    NoLimits_UpdateElementMaxBankPivotRange = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxBankPivotRange", _sElement, _fMax)
    end,


    -- -- Rides
    NoLimits_UpdateRideMinBankPivotRange = function(_sRide, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMinBankPivotRange", _sRide, _fMin)
    end,
    NoLimits_UpdateRidesMinBankPivotRange = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMinBankPivotRange", _fMin)
    end,
    NoLimits_UpdateRideMaxBankPivotRange = function(_sRide, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMaxBankPivotRange", _sRide, _fMax)
    end,
    NoLimits_UpdateRidesMaxBankPivotRange = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMaxBankPivotRange", _fMax)
    end,

    -- Curve Range
    NoLimits_UpdateCurveRangeDegrees = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsCurveRangeDegrees", _fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesCurveRangeDegrees", _fMin, _fMax)
    end,
    -- -- Elements
    NoLimits_UpdateElementsMinCurveRangeDegrees = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinCurveRangeDegrees", _fMin)
    end,
    NoLimits_UpdateElementMinCurveRangeDegrees = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinCurveRangeDegrees", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxCurveRangeDegrees = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxCurveRangeDegrees", _fMax)
    end,
    NoLimits_UpdateElementMaxCurveRangeDegrees = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxCurveRangeDegrees", _sElement, _fMax)
    end,
    -- -- Rides
    NoLimits_UpdateRideMinCurveRangeDegrees = function(_sRide, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMinCurveRangeDegrees", _sRide, _fMin)
    end,
    NoLimits_UpdateRidesMinCurveRangeDegrees = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMinCurveRangeDegrees", _fMin)
    end,
    NoLimits_UpdateRideMaxCurveRangeDegrees = function(_sRide, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMaxCurveRangeDegrees", _sRide, _fMax)
    end,
    NoLimits_UpdateRidesMaxCurveRangeDegrees = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMaxCurveRangeDegrees", _fMax)
    end,

    -- Scale Range
    NoLimits_UpdateScaleRange = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsScaleRange", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinScaleRange = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinScaleRange", _fMin)
    end,
    NoLimits_UpdateElementMinScaleRange = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinScaleRange", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxScaleRange = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxScaleRange", _fMax)
    end,
    NoLimits_UpdateElementMaxScaleRange = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxScaleRange", _sElement, _fMax)
    end,
    -- Booster Acceleration
    NoLimits_SetBoosterAcceleration = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetBoosterAcceleration", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinBoosterAcceleration = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinBoosterAcceleration", _fMin)
    end,
    NoLimits_UpdateElementMinBoosterAcceleration = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinBoosterAcceleration", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxBoosterAcceleration = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxBoosterAcceleration", _fMax)
    end,
    NoLimits_UpdateElementMaxBoosterAcceleration = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxBoosterAcceleration", _sElement, _fMax)
    end,
    -- Alt Booster Acceleration (for F25)
    NoLimits_SetAltBoosterAcceleration = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetAltBoosterAcceleration", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinAltBoosterAcceleration = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinAltBoosterAcceleration", _fMin)
    end,
    NoLimits_UpdateElementMinAltBoosterAcceleration = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinAltBoosterAcceleration", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxAltBoosterAcceleration = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxAltBoosterAcceleration", _fMax)
    end,
    NoLimits_UpdateElementMaxAltBoosterAcceleration = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxAltBoosterAcceleration", _sElement, _fMax)
    end,
    -- BoosterMaxSpeed
    NoLimits_SetBoosterMaxSpeed = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetBoosterMaxSpeed", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinBoosterMaxSpeed = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinBoosterMaxSpeed", _fMin)
    end,
    NoLimits_UpdateElementMinBoosterMaxSpeed = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinBoosterMaxSpeed", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxBoosterMaxSpeed = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxBoosterMaxSpeed", _fMax)
    end,
    NoLimits_UpdateElementMaxBoosterMaxSpeed = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxBoosterMaxSpeed", _sElement, _fMax)
    end,
    -- AltBoosterMaxSpeed (F25)
    NoLimits_SetAltBoosterMaxSpeed = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetAltBoosterMaxSpeed", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinAltBoosterMaxSpeed = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinAltBoosterMaxSpeed", _fMin)
    end,
    NoLimits_UpdateElementMinAltBoosterMaxSpeed = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinAltBoosterMaxSpeed", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxAltBoosterMaxSpeed = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxAltBoosterMaxSpeed", _fMax)
    end,
    NoLimits_UpdateElementMaxAltBoosterMaxSpeed = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxAltBoosterMaxSpeed", _sElement, _fMax)
    end,
    -- Hydraulic Acceleration
    NoLimits_SetHydraulicAcceleration = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementsHydraulicAcceleration", _fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetRidesHydraulicAcceleration", _fMin, _fMax)
    end,
    -- Elements
    NoLimits_UpdateElementsMinHydraulicAcceleration = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinHydraulicAcceleration", _fMin)
    end,
    NoLimits_UpdateElementMinHydraulicAcceleration = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinHydraulicAcceleration", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxHydraulicAcceleration = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxHydraulicAcceleration", _fMax)
    end,
    NoLimits_UpdateElementMaxHydraulicAcceleration = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxHydraulicAcceleration", _sElement, _fMax)
    end,
    -- Rides
    NoLimits_UpdateRidesMinHydraulicAcceleration = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMinHydraulicAcceleration", _fMin)
    end,
    NoLimits_UpdateRideMinHydraulicAcceleration = function(_sRide, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMinHydraulicAcceleration", _sRide, _fMin)
    end,
    NoLimits_UpdateRidesMaxHydraulicAcceleration = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMaxHydraulicAcceleration", _fMax)
    end,
    NoLimits_UpdateRideMaxHydraulicAcceleration = function(_sRide, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMaxHydraulicAcceleration", _sRide, _fMax)
    end,
    -- Hydraulic Speed
    NoLimits_SetHydraulicSpeed = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementsHydraulicSpeed", _fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetRidesHydraulicSpeed", _fMin, _fMax)
    end,
    -- Elements
    NoLimits_UpdateElementsMinHydraulicSpeed = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinHydraulicSpeed", _fMin)
    end,
    NoLimits_UpdateElementMinHydraulicSpeed = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinHydraulicSpeed", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxHydraulicSpeed = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxHydraulicSpeed", _fMax)
    end,
    NoLimits_UpdateElementMaxHydraulicSpeed = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxHydraulicSpeed", _sElement, _fMax)
    end,
    -- Rides
    NoLimits_UpdateRidesMinHydraulicSpeed = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMinHydraulicSpeed", _fMin)
    end,
    NoLimits_UpdateRideMinHydraulicSpeed = function(_sRide, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMinHydraulicSpeed", _sRide, _fMin)
    end,
    NoLimits_UpdateRidesMaxHydraulicSpeed = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMaxHydraulicSpeed", _fMax)
    end,
    NoLimits_UpdateRideMaxHydraulicSpeed = function(_sRide, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMaxHydraulicSpeed", _sRide, _fMax)
    end,
    -- Hydraulic Return Speed
    NoLimits_SetHydraulicReturnSpeed = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementsHydraulicReturnSpeed", _fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetRidesHydraulicReturnSpeed", _fMin, _fMax)
    end,
    -- Elements
    NoLimits_UpdateElementsMinHydraulicReturnSpeed = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinHydraulicReturnSpeed", _fMin)
    end,
    NoLimits_UpdateElementMinHydraulicReturnSpeed = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinHydraulicReturnSpeed", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxHydraulicReturnSpeed = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxHydraulicReturnSpeed", _fMax)
    end,
    NoLimits_UpdateElementMaxHydraulicReturnSpeed = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxHydraulicReturnSpeed", _sElement, _fMax)
    end,
    -- Rides
    NoLimits_UpdateRidesMinHydraulicReturnSpeed = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMinHydraulicReturnSpeed", _fMin)
    end,
    NoLimits_UpdateRideMinHydraulicReturnSpeed = function(_sRide, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMinHydraulicReturnSpeed", _sRide, _fMin)
    end,
    NoLimits_UpdateRidesMaxHydraulicReturnSpeed = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRidesMaxHydraulicReturnSpeed", _fMax)
    end,
    NoLimits_UpdateRideMaxHydraulicReturnSpeed = function(_sRide, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateRideMaxHydraulicReturnSpeed", _sRide, _fMax)
    end,
    -- Holding Stop Location
    NoLimits_SetHoldingStopLocation = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementsHoldingStopLocation", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinHoldingStopLocation = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinHoldingStopLocation", _fMin)
    end,
    NoLimits_UpdateElementMinHoldingStopLocation = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinHoldingStopLocation", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxHoldingStopLocation = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxHoldingStopLocation", _fMax)
    end,
    NoLimits_UpdateElementMaxHoldingStopLocation = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxHoldingStopLocation", _sElement, _fMax)
    end,
    -- Holding Release Speed
    NoLimits_SetHoldingReleaseSpeed = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetHoldingReleaseSpeed", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinHoldingReleaseSpeed = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinHoldingReleaseSpeed", _fMin)
    end,
    NoLimits_UpdateElementMinHoldingReleaseSpeed = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinHoldingReleaseSpeed", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxHoldingReleaseSpeed = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxHoldingReleaseSpeed", _fMax)
    end,
    NoLimits_UpdateElementMaxHoldingReleaseSpeed = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxHoldingReleaseSpeed", _sElement, _fMax)
    end,
    -- Holding Release Acceleration
    NoLimits_SetHoldingReleaseAcceleration = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetHoldingReleaseAcceleration", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinHoldingReleaseAcceleration = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinHoldingReleaseAcceleration", _fMin)
    end,
    NoLimits_UpdateElementMinHoldingReleaseAcceleration = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinHoldingReleaseAcceleration", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxHoldingReleaseAcceleration = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxHoldingReleaseAcceleration", _fMax)
    end,
    NoLimits_UpdateElementMaxHoldingReleaseAcceleration = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxHoldingReleaseAcceleration", _sElement, _fMax)
    end,
    NoLimits_SetAnimatedTrackPostDepartureDelay = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetAnimatedTrackPostDepartureDelay", _fMin, _fMax)
    end,
    -- Brake Min Speed
    NoLimits_SetBrakeMinSpeed = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementsBrakeMinSpeed", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinBrakeMinSpeed = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinBrakeMinSpeed", _fMin)
    end,
    NoLimits_UpdateElementMinBrakeMinSpeed = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinBrakeMinSpeed", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxBrakeMinSpeed = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxBrakeMinSpeed", _fMax)
    end,
    NoLimits_UpdateElementMaxBrakeMinSpeed = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxBrakeMinSpeed", _sElement, _fMax)
    end,
    -- Brake Deceleration
    NoLimits_SetBrakeDeceleration = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementsBrakeDeceleration", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinBrakeDeceleration = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinBrakeDeceleration", _fMin)
    end,
    NoLimits_UpdateElementMinBrakeDeceleration = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinBrakeDeceleration", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxBrakeDeceleration = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxBrakeDeceleration", _fMax)
    end,
    NoLimits_UpdateElementMaxBrakeDeceleration = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxBrakeDeceleration", _sElement, _fMax)
    end,
    -- Chain Lift Speed
    NoLimits_SetChainLiftSpeed = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetChainLiftSpeed", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinChainLiftSpeed = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinChainLiftSpeed", _fMin)
    end,
    NoLimits_UpdateElementMinChainLiftSpeed = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinChainLiftSpeed", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxChainLiftSpeed = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxChainLiftSpeed", _fMax)
    end,
    NoLimits_UpdateElementMaxChainLiftSpeed = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxChainLiftSpeed", _sElement, _fMax)
    end,
    -- Boomerang Drop Location
    NoLimits_SetChainLiftDropLocation = function(_fMin, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetChainLiftDropLocation", _fMin, _fMax)
    end,
    NoLimits_UpdateElementsMinChainLiftDropLocation = function(_fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMinChainLiftDropLocation", _fMin)
    end,
    NoLimits_UpdateElementMinChainLiftDropLocation = function(_sElement, _fMin)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMinChainLiftDropLocation", _sElement, _fMin)
    end,
    NoLimits_UpdateElementsMaxChainLiftDropLocation = function(_fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementsMaxChainLiftDropLocation", _fMax)
    end,
    NoLimits_UpdateElementMaxChainLiftDropLocation = function(_sElement, _fMax)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateElementMaxChainLiftDropLocation", _sElement, _fMax)
    end,
    -- Element allowed on water
    NoLimits_SetElementsAllowedOnWater = function(_value)
        if _value ~= 0 and _value ~= 1 then
            logger:Error("ERROR: value is not a 0 or 1.")
            return
        end
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementsAllowedOnWater", _value)
    end,
    NoLimits_SetElementAllowedOnWater = function(_element, _value)
        if _value ~= 0 and _value ~= 1 then
            logger:Error("ERROR: value is not a 0 or 1.")
            return
        end
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetElementAllowedOnWater", _element, _value)
    end,
    -- if chain lift swaps to default track when being sloped downwards
    NoLimits_SetChainLiftsSwapOnSlopeDown = function(_value)
        if _value ~= 0 and _value ~= 1 then
            logger:Error("ERROR: value is not a 0 or 1.")
            return
        end
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetChainLiftsSwapOnSlopeDown", _value)
    end,
    NoLimits_SetChainLiftSwapOnSlopeDown = function(_element, _value)
        if _value ~= 0 and _value ~= 1 then
            logger:Error("ERROR: value is not a 0 or 1.")
            return
        end
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetChainLiftSwapOnSlopeDown", _element, _value)
    end,
    NoLimits_UpdateAllTrainsToRide_Extras = function(_sRide)
        local _iSort = 0
        local _trainDBList = DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_GetAllRideTrains_ExtraOfRide", _sRide)
        -- Some coasters / flat rides don't even have their own trains
        -- So we need to account for that
        if _trainDBList == nil or #_trainDBList == 0 then
            _iSort = 10
            for _, _train in pairs(_NLTDatabase.tNonKartTrains) do
                DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_UpdateTrainToRideExtra", _sRide, _train, _iSort)
                _iSort = _iSort + 10
            end
            return
        end
        local _trainList = {}
        local _sortList = {}
        for _, _j in pairs(_trainDBList) do
            -- dbgTrace(tableplus.tostring(_train, nil, nil, nil, true))
            table.insert(_trainList, _j[1])
            table.insert(_sortList, _j[2])
        end

        for _, _train in pairs(_NLTDatabase.tNonKartTrains) do
            if DatabaseUtils.TableContains(_trainList, _train) then -- Skipping all trains that were already added to the table
                goto continue
            end
            if _iSort == 0 then
                _iSort = math.max(table.unpack(_sortList)) + 10
                logger:DebugQuery("Set sort number to " .. _iSort)
            end
            -- dbgTrace("Appending train: " .. _train .. " to ride: " .. _sRide .. " using sort id ".._iSort)
            DatabaseUtils.ExecuteQuery(_NLTDatabase,"NoLimits_UpdateTrainToRideExtra", _sRide, _train, _iSort)
            table.insert(_trainList, _train)
            _iSort = _iSort + 10
            ::continue::
        end
    end,
    -- Car Count
    NoLimits_SetCarsCount = function(_iMinCars, _iMaxCars)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetNumCars",_iMinCars, _iMaxCars)
    end,
    NoLimits_SetMinCarsCount = function(_iMinCars)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateMinNumCars",_iMinCars)
    end,
    NoLimits_SetMaxCarsCount = function(_iMaxCars)
       DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateMaxNumCars",_iMaxCars)
    end,
    NoLimits_SetMaxTrainCount = function(_iMaxTrain)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateMaxNumTrain",_iMaxTrain)
    end,
    -- Powered Cars
    NoLimits_SetPoweredMinSpeed = function(_sTrain, _dPoweredMinSpeed)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetPoweredCarMinSpeed", _sTrain, _dPoweredMinSpeed)
    end,
    NoLimits_SetPoweredMaxSpeed = function(_sTrain, _dPoweredMaxSpeed)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetPoweredCarMaxSpeed", _sTrain, _dPoweredMaxSpeed)
    end,
    NoLimits_SetPoweredCarSpeed = function(_dPoweredMinSpeed, _dPoweredMaxSpeed)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetPoweredCarSpeed", _dPoweredMinSpeed, _dPoweredMaxSpeed)
    end,
    NoLimits_SetPassesThroughStation = function(_dMinPasses, _dMaxPasses)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetPassesThroughStation", _dMinPasses, _dMaxPasses)
    end,
    NoLimits_SetMinPassesThroughStation = function(_sRide, _dMinPasses)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetMinPassesThroughStation", _sRide, _dMinPasses)
    end,
    NoLimits_SetMaxPassesThroughStation = function(_sRide, _dMaxPasses)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_SetMaxPassesThroughStation", _sRide, _dMaxPasses)
    end,

    NoLimits_AppendElementParamaterToElement = function(_sElement, _sParam, _dMin, _dMax, _dInitial, _dStep, _labelOverride, _valueLabelSetName)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_AppendElementParamaterToElement",
        _sElement, _sParam, _dMin, _dMax, _dInitial, _dStep, _labelOverride,_valueLabelSetName)
    end,

    NoLimits_UpdateDisabledText = function(_sText)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateDisabledText", _sText)
    end,

    NoLimits_UpdateExcitementRating = function(_excitementRating)
        DatabaseUtils.ExecuteQuery(_NLTDatabase, "NoLimits_UpdateExcitementRating", _excitementRating)
    end,
}
function _NLTDatabase.TrackEditInputInit(self, _trackEntityID, _trackEditMode, _nPhysicsWorld, _trackHandles, _tActiveData)
    logger:Info("TrackEditInputInit() - Hooking Start")

    if _trackEditMode ~= nil then
        if _trackEditMode.CanSelectElement ~= _NLTDatabase.TrackEditCanSelectElement then
            trackEditModeSelec = _trackEditMode.CanSelectElement
            _trackEditMode.CanSelectElement = _NLTDatabase.TrackEditCanSelectElement
            logger:Info("TrackEditInputInit() - Hooking CanSelectElement")
        end

        if _trackEditMode.CanAttemptAutocomplete ~= _NLTDatabase.TrackEditCanAttemptAutocomplete then
            trackEditModeCanAuto = _trackEditMode.CanAttemptAutocomplete
            _trackEditMode.CanAttemptAutocomplete = _NLTDatabase.TrackEditCanAttemptAutocomplete
            logger:Info("TrackEditInputInit() - Hooking CanAttemptAutocomplete")
        end

        if _tActiveData.FindBestTargetJoinSelection ~= _NLTDatabase.TrackEditSelectionFindBestTargetJoinSelection then
            trackEditSelecFindBestJoin = _tActiveData.FindBestTargetJoinSelection
            _tActiveData.FindBestTargetJoinSelection = _NLTDatabase.TrackEditSelectionFindBestTargetJoinSelection
            logger:Info("TrackEditInputInit() - Hooking FindBestTargetJoinSelection")
        end

     --[[   if _tActiveData.DirectionsCanJoin ~= _NLTDatabase.TrackEditSelectionDirectionsCanJoin then
            trackEditSelecDirJoin = _tActiveData.DirectionsCanJoin
            _tActiveData.DirectionsCanJoin = _NLTDatabase.TrackEditSelectionDirectionsCanJoin
            logger:Info("TrackEditInputInit() - Hooking DirectionsCanJoin")
        end]]
    end
    trackEditInputInit(self, _trackEntityID, _trackEditMode, _nPhysicsWorld, _trackHandles, _tActiveData)
end

function _NLTDatabase.TrackEditCanSelectElement(self, _sElement)
    if trackEditModeSelec ~= nil then
        local _orig = trackEditModeSelec(self, _sElement)
        logger:DebugQuery("Original CanSelectElement: " .. tostring(_sElement) .. " is " .. tostring(_orig))
    end

    return true
end

function _NLTDatabase.TrackEditCanAttemptAutocomplete(self)
    if trackEditModeCanAuto ~= nil then
        --logger:Info("CanAttemptAutocomplete() called")
        return trackEditModeCanAuto(self)
    end

    return true

--[[    if trackEditModeCanAuto == nil then
        return true
    end

    if self.tActiveData == nil then
        logger:Warn("tActiveData is nil! Cannot fully hook CanAttemptAutocomplete()")
        return trackEditModeCanAuto(self)
    end

    if trackEditSelecDirJoin ~= nil then
        local _threadOrig = trackEditModeCanAuto(self)
        if _NLTDatabase.DebugQueries then
            logger:Info("Original CanAttemptAutocomplete: " .. tostring(_threadOrig))
        end
        return _threadOrig
    end

    trackEditSelecDirJoin = self.tActiveData.DirectionsCanJoin
    self.tActiveData.DirectionsCanJoin = _NLTDatabase.TrackEditSelectionDirectionsCanJoin
    local _orig = trackEditModeCanAuto(self)
    self.tActiveData.DirectionsCanJoin = trackEditSelecDirJoin

    local _orig = trackEditModeCanAuto(self)
    if _NLTDatabase.DebugQueries then
        logger:Info("Original CanAttemptAutocomplete: " .. tostring(_orig))
    end

    return _orig]]
end

function _NLTDatabase.TrackEditSelectionFindBestTargetJoinSelection(self)
    --logger:Info("FindBestTargetJoinSelection() called")
    if trackEditSelecFindBestJoin == nil then
        logger:Warn("trackEditSelecFindBestJoin is nil! Cannot fully hook FindBestTargetJoinSelection()")
        return true
    end

    if trackEditSelecDirJoin ~= nil then
        --logger:Info("FindBestTargetJoinSelection() - trackEditSelecDirJoin is not nil, using it")

        local _threadOrig = trackEditSelecFindBestJoin(self)
        if _NLTDatabase.DebugQueries then
            logger:Info("Original FindBestTargetJoinSelection: " .. tostring(_threadOrig))
        end
        return _threadOrig
    end

    --logger:Info("FindBestTargetJoinSelection() - trackEditSelecDirJoin is nil, hooking it")
    trackEditSelecDirJoin = self.DirectionsCanJoin
    self.DirectionsCanJoin = _NLTDatabase.TrackEditSelectionDirectionsCanJoin
    local _orig = trackEditSelecFindBestJoin(self)
    self.DirectionsCanJoin = trackEditSelecDirJoin
    trackEditSelecDirJoin = nil

    if _NLTDatabase.DebugQueries then
        logger:Info("Original FindBestTargetJoinSelection: " .. tostring(_orig))
    end

    return _orig
end

function _NLTDatabase.TrackEditSelectionDirectionsCanJoin(self, a, b)
    if trackEditSelecDirJoin ~= nil then
        local _orig = trackEditSelecDirJoin(self, a, b)
        if _NLTDatabase.DebugQueries then
            logger:Info("Original DirectionsCanJoin: " .. tostring(a) .. " and " .. tostring(b) .. " is " .. tostring(_orig))
        end
    end

    return true
end

function _NLTDatabase.SaveMetadataBuilderSetRideStats(self, _tRideStats)
    if saveMetadataBuildSetRS == nil then
        logger:Warn("SaveMetadataBuilder.SetRideStats() is nil! Cannot fully hook SaveMetadataBuilderSetRideStats()")
        return
    end

    _tRideStats.Excitement = 20
    _tRideStats.Fear = 3
    _tRideStats.Nausea = 2

    logger:Info("Overriding ride stats to Excitement: " .. tostring(_tRideStats.Excitement) .. ", Fear: " .. tostring(_tRideStats.Fear) .. ", Nausea: " .. tostring(_tRideStats.Nausea))
    saveMetadataBuildSetRS(self, _tRideStats)
end
function _NLTDatabase.RideUIUtilsChangeRideStatus(_nStationID, _sStatus, _bIsManagementScreen, _fnOnClose, _fnStopTriggerSequence, _tWorldAPIs)
    logger:Info("ChangeRideStatus() called - StationID: " .. tostring(_nStationID) .. ", Status: " .. tostring(_sStatus)
    .. ", IsManagementScreen: " .. tostring(_bIsManagementScreen) .. ", fnOnClose: " .. tostring(_fnOnClose) .. ", fnStopTriggerSequence: " .. tostring(_fnStopTriggerSequence)
    .. ", tWorldAPIs: " .. tostring(_tWorldAPIs))
    return rideUIUtilsChangeRideStatus(_nStationID, _sStatus, _bIsManagementScreen, _fnOnClose, _fnStopTriggerSequence, _tWorldAPIs)
end

function _NLTDatabase.RideUIUtilsBuildEFNTestRatings(_nExcitement, _nFear, _nNausea, _bUseAlternateRatingsLabel, _gForcePenalty)
    logger:Info("BuildEFNTestRatings() called - Excitement: " .. tostring(_nExcitement) .. ", Fear: " .. tostring(_nFear) .. ", Nausea: " .. tostring(_nNausea)
    .. ", UseAlternateRatingsLabel: " .. tostring(_bUseAlternateRatingsLabel) .. ", GForcePenalty: " .. tostring(_gForcePenalty))

    local result = rideUIUtilsBuildEFNTestRatings(_nExcitement, _nFear, _nNausea, _bUseAlternateRatingsLabel, _gForcePenalty)
    DebugUtils.LogTable("BuildEFNTestRatings()", result)
    return result
end

return _NLTDatabase