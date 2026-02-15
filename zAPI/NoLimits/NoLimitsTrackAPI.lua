---@diagnostic disable: missing-return, duplicate-set-field
---@meta NoTrackLimitsManager


---@class (partial) GameDatabase
local GameDatabase = {}

---Returns the global config table of NoTrackLimits.
---@see NoTrackLimitsManager.Global
---@return table tGlobal Global table.
GameDatabase.NoLimits_GetGlobalConfig = function() end

-- Get Rides --
---Gets all tracked ride IDs found in the `RideData` table.
---@return table tTrackedRides List of tracked ride IDs.
GameDatabase.NoLimits_GetAllTrackedRides = function() end

---Gets a list of all non-transport and non-kart ride IDs.
---@see GameDatabase.NoLimits_GetAllTrackedRides
---@return table tNonTransportRides List of non-transport and non-kart ride IDs.
GameDatabase.NoLimits_GetAllNonTransportRides = function() end

---Gets a list of non-transport, non-kart and non-water slide tracked ride IDs.
---@return table tNonSlideRides List of ride IDs
GameDatabase.NoLimits_GetAllNonSlideRides = function() end

---Gets a list of all non-kart train names found in the `Trains` table.
---@return table tTrains List of all non-kart train IDs.
GameDatabase.NoLimits_GetAllTrains = function() end

---Gets all interchangable train names for a tracked ride.
---@param _sRide string Ride ID
GameDatabase.NoLimits_GetAllRideTrains_ExtraOfRide = function(_sRide) end


-- Append Elements --
---Appends a track element ID to all tracked rides
---@see GameDatabase.NoLimits_UpdateElementToRide
---@param _sElementName string Track Element ID
GameDatabase.NoLimits_UpdateElementToRides = function(_sElementName) end

---Appends a track element ID to a tracked ride. If it already exists, it is skipped.
---@param _sRide any
---@param _sElementName any
GameDatabase.NoLimits_UpdateElementToRide = function(_sRide, _sElementName) end


-- Track Length --
---Sets all track element and ride's `LengthRangeMeters` value
---@param _fMin number Minimum Length in Meters
---@param _fMax number Maximum Length in Meters
---@param _fStep number Step value in Meters
GameDatabase.NoLimits_UpdateTrackLength = function(_fMin, _fMax, _fStep) end

---Sets all track element's `LengthRangeMetres` minimum length.
---@param _fMin number Minimum Length in Meters
GameDatabase.NoLimits_UpdateMinTrackLength = function(_fMin) end
---Sets all track element's `LengthRangeMeters` maximum length.
---@param _fMax number Maximum Length in Meters
GameDatabase.NoLimits_UpdateMaxTrackLength = function(_fMax) end
---Sets all track element's `LengthRangeMeters` step value.
---@param _fStep number Step value in Meters
GameDatabase.NoLimits_UpdateStepTrackLength = function(_fStep) end
-- Rides --
---Sets the tracked ride's Minimum Track Length.
---@param _sRide string Tracked Ride ID
---@param _fMin number Minimum length in meters.
GameDatabase.NoLimits_UpdateRideMinTrackLength = function(_sRide, _fMin) end
---Sets the tracked ride's Maximum Track Length.
---@param _sRide string Tracked Ride ID
---@param _fMax number Maximum length in meters.
GameDatabase.NoLimits_UpdateRideMaxTrackLength = function(_sRide, _fMax) end
---Sets the tracked ride's Track Length step value.
---@param _sRide string Tracked Ride ID
---@param _fMax number Step value in meters.
GameDatabase.NoLimits_UpdateRideStepTrackLength = function(_sRide, _fMax) end

-- Elements --
---Sets the track element's Minimum Track Length.
---@param _sElement string Track Element ID
---@param _fMin number Minimum length in meters.
GameDatabase.NoLimits_UpdateElementMinTrackLength = function(_sElement, _fMin) end
---Sets the track element's Maximum Track Length.
---@param _sElement string Track Element ID
---@param _fMax number Maximum length in meters.
GameDatabase.NoLimits_UpdateElementMaxTrackLength = function(_sElement, _fMax) end

---Sets the track element's length step value.
---@param _sElement string Track Element ID
---@param _fStep number Step value in meters.
GameDatabase.NoLimits_UpdateElementStepTrackLength = function(_sElement, _fStep) end


---Sets all tracked ride's maximum track height from sea level.
---@param _iHeight number Max height in feet.
GameDatabase.NoLimits_SetMaxTrackHeight = function(_iHeight) end

-- Slope Range --
-- Rides --
---Sets all tracked rides' `SlopeRangeDegrees` values.
---This controls how steep a ride can be set.
---@param _fMin number Minimum value in degrees, `-50000` is uncapped
---@param _fMax number Maximum value in degrees, `50000` is uncapped
GameDatabase.NoLimits_UpdateRidesSlopeRangeDegrees = function(_fMin, _fMax) end

---Sets all tracked ride's Minimum `SlopeRangeDegrees` value.
---@param _fMin number Minimum slope value in degrees, `-50000` is uncapped
GameDatabase.NoLimits_UpdateRidesMinSlopeRangeDegrees = function(_fMin) end

---Sets all tracked ride's Maximum `SlopeRangeDegrees` value.
---@param _fMax number Maximum slope value in degrees, `50000` is uncapped
GameDatabase.NoLimits_UpdateRidesMaxSlopeRangeDegrees = function(_fMax) end

---Sets a tracked ride's Minimum `SlopeRangeDegrees` value.
---@param _sRide string Ride ID
---@param _fMin number Minimum slope value in degrees, `-50000` is uncapped
GameDatabase.NoLimits_UpdateRideMinSlopeRangeDegrees = function(_sRide, _fMin) end

---Sets a tracked ride's Maximum `SlopeRangeDegrees` value.
---@param _sRide string Ride ID
---@param _fMax number Maximum slope value in degrees, `50000` is uncapped
GameDatabase.NoLimits_UpdateRideMaxSlopeRangeDegrees = function(_sRide, _fMax) end

-- Elements --
---Sets all track elements' `SlopeRangeDegrees` values.
---This controls how steep a track element can be set.
---@param _fMin number Minimum slope value in degrees, `-50000` is uncapped
---@param _fMax number Maximum slope value in degrees, `50000` is uncapped
GameDatabase.NoLimits_UpdateElementsSlopeRangeDegrees = function(_fMin, _fMax) end

---Sets all track element's Minimum `SlopeRangeDegrees` value.
---@param _fMin number Minimum slope value in degrees, `-50000` is uncapped
GameDatabase.NoLimits_UpdateElementsMinSlopeRangeDegrees = function(_fMin) end

---Sets all track element's Maximum `SlopeRangeDegrees` value.
---@param _fMax number Maximum slope value in degrees, `50000` is uncapped
GameDatabase.NoLimits_UpdateElementsMaxSlopeRangeDegrees = function(_fMax) end

---Sets the track element's Minimum `SlopeRangeDegrees` value.
---@param _sElement string Track element ID
---@param _fMin number Minimum slope value in degrees, `-50000` is uncapped
GameDatabase.NoLimits_UpdateElementMinSlopeRangeDegrees = function(_sElement, _fMin) end

---Sets the track element's Maximum `SlopeRangeDegrees` value.
---@param _sElement string Track element ID
---@param _fMax number Maximum slope value in degrees, `50000` is uncapped
GameDatabase.NoLimits_UpdateElementMaxSlopeRangeDegrees = function(_sElement, _fMax) end


-- Slope Delta --
---Updates all tracked ride's Maximum slope delta. <br/> This changes how steep a singular track piece can go.
---@param _fMax number Maximum delta in degrees.
GameDatabase.NoLimits_UpdateRidesMaxSlopeDeltaDegrees = function(_fMax) end

---Updates a tracked ride's Maximum slope delta. <br/> This changes how steep a singular track piece can go.
---@param _sRide string Ride ID
---@param _fMax number Maximum delta in degrees.
GameDatabase.NoLimits_UpdateRideMaxSlopeDeltaDegrees = function(_sRide, _fMax) end


-- Banking Range --
---Sets all track rides and element's `BankingRangeDegrees` value.
---@param _fMin number Minimum bank in degrees.
---@param _fMax number Maximum bank in degrees.
GameDatabase.NoLimits_UpdateBankingRangeDegrees = function(_fMin, _fMax) end

-- Elements --
---Sets all elements' Minimum `BankingRangeDegrees` value.
---@param _fMin number Minimum bank in degrees.
GameDatabase.NoLimits_UpdateElementsMinBankingRangeDegrees = function(_fMin) end
---Sets all elements' Maximum `BankingRangeDegrees` value.
---@param _fMax number Maximum bank in degrees.
GameDatabase.NoLimits_UpdateElementsMaxBankingRangeDegrees = function(_fMax) end

---Sets a track element's Minimum `BankingRangeDegrees` value.
---@param _sElement string Track element ID
---@param _fMin number Minimum bank in degrees.
GameDatabase.NoLimits_UpdateElementMinBankingRangeDegrees = function(_sElement, _fMin) end
---Sets a track element's Maximum `BankingRangeDegrees` value.
---@param _sElement string Track element ID
---@param _fMax number Maximum bank in degrees.
GameDatabase.NoLimits_UpdateElementMaxBankingRangeDegrees = function(_sElement, _fMax) end


-- Rides --
---Sets all tracked rides' Minimum `BankingRangeDegrees` value.
---@param _fMin number Minimum bank in degrees.
GameDatabase.NoLimits_UpdateRidesMinBankingRangeDegrees = function(_fMin) end
---Sets all tracked rides' Maximum `BankingRangeDegrees` value.
---@param _fMax number Maximum bank in degrees.
GameDatabase.NoLimits_UpdateRidesMaxBankingRangeDegrees = function(_fMax) end

---Sets a tracked ride's Minimum `BankingRangeDegrees` value.
---@param _sRide string Ride ID
---@param _fMin number Minimum bank in degrees.
GameDatabase.NoLimits_UpdateRideMinBankingRangeDegrees = function(_sRide, _fMin) end
---Sets a tracked ride's Maximum `BankingRangeDegrees` value.
---@param _sRide string Ride ID
---@param _fMax number Maximum bank in degrees.
GameDatabase.NoLimits_UpdateRideMaxBankingRangeDegrees = function(_sRide, _fMax) end


-- Banking Offset Range --
---Sets all track rides and track element's Banking Offset range.<br/>
---This changes how far the track rotates around. Also known as a Heartline value.
---@param _fMin number Minimum offset in meters.
---@param _fMax number Maximum offset in meters.
GameDatabase.NoLimits_UpdateBankPivotRange = function(_fMin, _fMax) end

-- Elements --
---Sets all track element's Minimum Banking Offset value.
---@see GameDatabase.NoLimits_UpdateBankPivotRange
---@param _fMin number Minimum offset in meters.
GameDatabase.NoLimits_UpdateElementsMinBankPivotRange = function(_fMin) end
---Sets all track element's Maximum Banking Offset value.
---@see GameDatabase.NoLimits_UpdateBankPivotRange
---@param _fMax number Maximum offset in meters.
GameDatabase.NoLimits_UpdateElementsMaxBankPivotRange = function(_fMax) end
---Sets a track element's Minimum Banking Offset value.
---@see GameDatabase.NoLimits_UpdateBankPivotRange
---@param _sElement string Track element ID
---@param _fMin number Minimum offset in meters.
GameDatabase.NoLimits_UpdateElementMinBankPivotRange = function(_sElement, _fMin) end
---Sets a track element's Maximum Banking Offset value.
---@see GameDatabase.NoLimits_UpdateBankPivotRange
---@param _sElement string Track Element ID
---@param _fMax number Maximum offset in meters.
GameDatabase.NoLimits_UpdateElementMaxBankPivotRange = function(_sElement, _fMax) end

-- Rides --
---Sets all tracked ride's Minimum Banking Offset value.
---@see GameDatabase.NoLimits_UpdateBankPivotRange
---@param _fMin number Minimum offset in meters.
GameDatabase.NoLimits_UpdateRidesMinBankPivotRange = function(_fMin) end
---Sets all tracked ride's Maximum Banking Offset value.
---@see GameDatabase.NoLimits_UpdateBankPivotRange
---@param _fMax number Maximum offset in meters.
GameDatabase.NoLimits_UpdateRidesMaxBankPivotRange = function(_fMax) end
---Sets a tracked ride's Minimum Banking Offset value.
---@param _sRide string Ride ID
---@param _fMin number Minimum offset in meters.
GameDatabase.NoLimits_UpdateRidesMinBankPivotRange = function(_sRide, _fMin) end
---Sets a tracked ride's Maximum Banking Offset value.
---@param _sRide string Ride ID
---@param _fMax number Maximum offset in meters.
GameDatabase.NoLimits_UpdateRideMaxBankPivotRange = function(_sRide, _fMax) end


-- Curve Range --
---Sets all tracked rides and track elements' `CurveRangeDegrees` values.
---@param _fMin number Minimum value in degrees.
---@param _fMax number Maximum value in degrees.
GameDatabase.NoLimits_UpdateCurveRangeDegrees = function(_fMin, _fMax) end

-- Elements --
---Sets all track elements' Minimum `CurveRangeDegrees` value.
---@param _fMin number Minimum value in degrees.
GameDatabase.NoLimits_UpdateElementsMinCurveRangeDegrees = function(_fMin) end
---Sets all track elements' Maximum `CurveRangeDegrees` value.
---@param _fMax number Maximum value in degrees.
GameDatabase.NoLimits_UpdateElementsMaxCurveRangeDegrees = function(_fMax) end
---Sets a track element's Minimum `CurveRangeDegrees` value.
---@param _sElement string Track Element ID
---@param _fMin number Minimum value in degrees.
GameDatabase.NoLimits_UpdateElementMinCurveRangeDegrees = function(_sElement, _fMin) end
---Sets a track element's Maximum `CurveRangeDegrees` value.
---@param _sElement string Track Element ID
---@param _fMax number Maximum value in degrees.
GameDatabase.NoLimits_UpdateElementMaxCurveRangeDegrees = function(_sElement, _fMax) end

-- Rides --
---Sets all tracked rides' Minimum `CurveRangeDegrees` value.
---@param _fMin number Minimum value in degrees.
GameDatabase.NoLimits_UpdateRidesMinCurveRangeDegrees = function(_fMin) end
---Sets all tracked rides' Maximum `CurveRangeDegrees` value.
---@param _fMax number Maximum value in degrees.
GameDatabase.NoLimits_UpdateRidesMaxCurveRangeDegrees = function(_fMax) end
---Sets a tracked ride's Minimum `CurveRangeDegrees` value.
---@param _sRide string Ride ID
---@param _fMin number Minimum value in degrees.
GameDatabase.NoLimits_UpdateRideMinCurveRangeDegrees = function(_sRide, _fMin) end
---Sets a tracked ride's Maximum `CurveRangeDegrees` value.
---@param _sRide string Ride ID
---@param _fMax number Maximum value in degrees.
GameDatabase.NoLimits_UpdateRideMaxCurveRangeDegrees = function(_sRide, _fMax) end



-- Scale Range --
---comment
---@param _fMin any
---@param _fMax any
GameDatabase.NoLimits_UpdateScaleRange = function(_fMin, _fMax)end
---comment
---@param _fMin any
GameDatabase.NoLimits_UpdateElementsMinScaleRange = function(_fMin) end
---comment
---@param _fMax any
GameDatabase.NoLimits_UpdateElementsMaxScaleRange = function(_fMax) end
---comment
---@param _sElement any
---@param _fMin any
GameDatabase.NoLimits_UpdateElementMinScaleRange = function(_sElement, _fMin) end
---comment
---@param _sElement any
---@param _fMax any
GameDatabase.NoLimits_UpdateElementMaxScaleRange = function(_sElement, _fMax) end


-- Booster --
-- Acceleration --
-- Regular --
--- Sets all track elements' booster acceleration speed value.
---@param _fMin number Minimum acceleration in meters per second.
---@param _fMax number Maximum acceleration in meters per second.
GameDatabase.NoLimits_SetBoosterAcceleration = function(_fMin, _fMax) end

--- Sets all track element's minimum booster acceleration speed.
---@param _fMin number Minimum acceleration in meters per second.
GameDatabase.NoLimits_UpdateElementsMinBoosterAcceleration= function(_fMin) end
--- Sets all track element's maximum booster acceleration speed.
---@param _fMax any
GameDatabase.NoLimits_UpdateElementsMaxBoosterAcceleration= function(_fMax) end

---comment
---@param _sElement any
---@param _fMin any
GameDatabase.NoLimits_UpdateElementMinBoosterAcceleration = function(_sElement, _fMin) end
---comment
---@param _sElement any
---@param _fMax any
GameDatabase.NoLimits_UpdateElementMaxBoosterAcceleration = function(_sElement, _fMax) end

GameDatabase.NoLimits_UpdateElementsMinBoosterMaxSpeed = function(_fMin) end
GameDatabase.NoLimits_UpdateElementsMaxBoosterMaxSpeed = function(_fMax) end
--- Alternate (F25) --

GameDatabase.NoLimits_UpdateRidesMinHydraulicAcceleration = function(_fMin) end
GameDatabase.NoLimits_UpdateRidesMaxHydraulicAcceleration = function(_fMax) end
GameDatabase.NoLimits_UpdateElementsMinHydraulicAcceleration = function(_fMin) end
GameDatabase.NoLimits_UpdateElementsMaxHydraulicAcceleration = function(_fMax) end
GameDatabase.NoLimits_SetBoosterMaxSpeed = function(_fMin, _fMax) end
GameDatabase.NoLimits_SetAltBoosterMaxSpeed = function(_fMin, _fMax) end

-- Alternate (F25) --
---comment
---@param _fMin any
---@param _fMax any
GameDatabase.NoLimits_SetAltBoosterAcceleration = function(_fMin, _fMax) end

GameDatabase.NoLimits_UpdateElementsMinAltBoosterMaxSpeed = function(_fMin) end
GameDatabase.NoLimits_UpdateElementsMaxAltBoosterMaxSpeed = function(_fMax) end
---
---@param _fMin any
GameDatabase.NoLimits_UpdateElementsMinAltBoosterAcceleration = function (_fMin) end
---comment
---@param _fMax any
GameDatabase.NoLimits_UpdateElementsMaxAltBoosterAcceleration = function(_fMax)end
---comment
---@param _sElement any
---@param _fMin any
GameDatabase.NoLimits_UpdateElementMinAltBoosterAcceleration = function(_sElement, _fMin)end
---comment
---@param _sElement any
---@param _fMax any
GameDatabase.NoLimits_UpdateElementMaxAltBoosterAcceleration = function (_sElement, _fMax)end

GameDatabase.NoLimits_UpdateAllTrainsToRide_Extras = function(_sRide) end
GameDatabase.NoLimits_AppendElementParamaterToElement = function(_sElement, _sParam, _dMin, _dMax, _dInitial, _dStep, _labelOverride, _valueLabelSetName) end

GameDatabase.NoLimits_UpdateElementsMinHydraulicSpeed = function(_fMin)end
GameDatabase.NoLimits_UpdateElementMinHydraulicSpeed = function(_sElement, _fMin)end
GameDatabase.NoLimits_UpdateElementsMaxHydraulicSpeed = function(_fMax)end
GameDatabase.NoLimits_UpdateElementMaxHydraulicSpeed = function(_sElement, _fMax)end
-- Rides
GameDatabase.NoLimits_UpdateRidesMinHydraulicSpeed = function(_fMin)end
GameDatabase.NoLimits_UpdateRideMinHydraulicSpeed = function(_sRide, _fMin)end
GameDatabase.NoLimits_UpdateRidesMaxHydraulicSpeed = function(_fMax)end
GameDatabase.NoLimits_UpdateRideMaxHydraulicSpeed = function(_sRide, _fMax)end
-- Hydraulic Return Speed
GameDatabase.NoLimits_SetHydraulicReturnSpeed = function(_fMin, _fMax)end
-- Elements
GameDatabase.NoLimits_UpdateElementsMinHydraulicReturnSpeed = function(_fMin)end
GameDatabase.NoLimits_UpdateElementMinHydraulicReturnSpeed = function(_sElement, _fMin)end
GameDatabase.NoLimits_UpdateElementsMaxHydraulicReturnSpeed = function(_fMax)end
GameDatabase.NoLimits_UpdateElementMaxHydraulicReturnSpeed = function(_sElement, _fMax)end
-- Rides
GameDatabase.NoLimits_UpdateRidesMinHydraulicReturnSpeed = function(_fMin)end
GameDatabase.NoLimits_UpdateRideMinHydraulicReturnSpeed = function(_sRide, _fMin)end
GameDatabase.NoLimits_UpdateRidesMaxHydraulicReturnSpeed = function(_fMax)end
GameDatabase.NoLimits_UpdateRideMaxHydraulicReturnSpeed = function(_sRide, _fMax) end
GameDatabase.NoLimits_SetHoldingStopLocation = function(_fMin, _fMax)end
GameDatabase.NoLimits_UpdateElementsMinHoldingStopLocation = function(_fMin)end
GameDatabase.NoLimits_UpdateElementMinHoldingStopLocation = function(_sElement, _fMin)end
GameDatabase.NoLimits_UpdateElementsMaxHoldingStopLocation = function(_fMax)end
GameDatabase.NoLimits_UpdateElementMaxHoldingStopLocation = function(_sElement, _fMax)end
GameDatabase.NoLimits_SetHoldingReleaseSpeed = function(_fMin, _fMax)end
GameDatabase.NoLimits_UpdateElementsMinHoldingReleaseSpeed = function(_fMin)end
GameDatabase.NoLimits_UpdateElementMinHoldingReleaseSpeed = function(_sElement, _fMin)end
GameDatabase.NoLimits_UpdateElementsMaxHoldingReleaseSpeed = function(_fMax)end
GameDatabase.NoLimits_UpdateElementMaxHoldingReleaseSpeed = function(_sElement, _fMax)end
GameDatabase.NoLimits_SetHoldingReleaseAcceleration = function(_fMin, _fMax)end
GameDatabase.NoLimits_UpdateElementsMinHoldingReleaseAcceleration = function(_fMin)end
GameDatabase.NoLimits_UpdateElementMinHoldingReleaseAcceleration = function(_sElement, _fMin)end
GameDatabase.NoLimits_UpdateElementsMaxHoldingReleaseAcceleration = function(_fMax)end
GameDatabase.NoLimits_UpdateElementMaxHoldingReleaseAcceleration = function(_sElement, _fMax)end
GameDatabase.NoLimits_SetAnimatedTrackPostDepartureDelay = function(_fMin, _fMax)end

GameDatabase.NoLimits_SetBrakeMinSpeed = function(_fMin, _fMax)end
GameDatabase.NoLimits_UpdateElementsMinBrakeMinSpeed = function(_fMin)end
GameDatabase.NoLimits_UpdateElementMinBrakeMinSpeed = function(_sElement, _fMin)end
GameDatabase.NoLimits_UpdateElementsMaxBrakeMinSpeed = function(_fMax)end
GameDatabase.NoLimits_UpdateElementMaxBrakeMinSpeed = function(_sElement, _fMax)end
GameDatabase.NoLimits_SetBrakeDeceleration = function(_fMin, _fMax)end
GameDatabase.NoLimits_UpdateElementsMinBrakeDeceleration = function(_fMin)end
GameDatabase.NoLimits_UpdateElementMinBrakeDeceleration = function(_sElement, _fMin)end
GameDatabase.NoLimits_UpdateElementsMaxBrakeDeceleration = function(_fMax)end
GameDatabase.NoLimits_UpdateElementMaxBrakeDeceleration = function(_sElement, _fMax)end
GameDatabase.NoLimits_SetChainLiftSpeed = function(_fMin, _fMax)end
GameDatabase.NoLimits_UpdateElementsMinChainLiftSpeed = function(_fMin)end
GameDatabase.NoLimits_UpdateElementMinChainLiftSpeed = function(_sElement, _fMin)end
GameDatabase.NoLimits_UpdateElementsMaxChainLiftSpeed = function(_fMax)end
GameDatabase.NoLimits_UpdateElementMaxChainLiftSpeed = function(_sElement, _fMax)end
GameDatabase.NoLimits_SetChainLiftDropLocation = function(_fMin, _fMax)end
GameDatabase.NoLimits_UpdateElementsMinChainLiftDropLocation = function(_fMin)end
GameDatabase.NoLimits_UpdateElementMinChainLiftDropLocation = function(_sElement, _fMin)end
GameDatabase.NoLimits_UpdateElementsMaxChainLiftDropLocation = function(_fMax)end
GameDatabase.NoLimits_UpdateElementMaxChainLiftDropLocation = function(_sElement, _fMax)end
GameDatabase.NoLimits_SetChainLiftsSwapOnSlopeDown = function(_value) end
GameDatabase.NoLimits_SetChainLiftSwapOnSlopeDown = function(_element, _value) end

GameDatabase.NoLimits_SetCarsCount = function(_iMinCars, _iMaxCars)end
GameDatabase.NoLimits_SetMinCarsCount = function(_iMinCars)end
GameDatabase.NoLimits_SetMaxCarsCount = function(_iMaxCars)end
GameDatabase.NoLimits_SetMaxTrainCount = function(_iMaxTrain)end
GameDatabase.NoLimits_SetPoweredMinSpeed = function(_sTrain, _dPoweredMinSpeed)end
GameDatabase.NoLimits_SetPoweredMaxSpeed = function(_sTrain, _dPoweredMaxSpeed)end
GameDatabase.NoLimits_SetPoweredCarSpeed = function(_dPoweredMinSpeed, _dPoweredMaxSpeed)end
GameDatabase.NoLimits_SetPassesThroughStation = function(_dMinPasses, _dMaxPasses)end
GameDatabase.NoLimits_SetMinPassesThroughStation = function(_sRide, _dMinPasses)end
GameDatabase.NoLimits_SetMaxPassesThroughStation = function(_sRide, _dMaxPasses)end

GameDatabase.NoLimits_UpdateDisabledText = function(_sText)end
GameDatabase.NoLimits_UpdateExcitementRating = function(_excitementRating)end