---@diagnostic disable: access-invisible
---@diagnostic disable-next-line: undefined-global
-----------------------------------------------------------------------
-- @file    Components.NoLimitsComponent.lua
-- @author  Inaki
--
-- @brief   ACSEDebug as a component would allow us to have the console
--          available regardless the world environment.
--
-- @see     https://github.com/OpenNaja/ACSE
-- @version 1.1
-- @require ACSE >= 0.641 to work.
--
--
-- Note: https://code.tutsplus.com/tutorials/quick-introduction-flash-text-input-and-text-area-components--active-5601
-- Note: This file has been created automatically with CobraModdingTool
-----------------------------------------------------------------------

local global        = _G

local api           = global.api
local require       = global.require
local tostring      = global.tostring
local pairs         = global.pairs
local string        = global.string
local tryrequire    = global.tryrequire
local coroutine     = global.coroutine
local getmetatable  = global.getmetatable
local setmetatable  = global.setmetatable
local unpack        = global.unpack
local pcall         = global.pcall
local type          = global.type
local table         = require("Common.tableplus")
local Object        = require("Common.object")
local Base          = require("LuaComponentManagerBase")
local Vector3       = require("Vector3")
local Vector2       = require("Vector2")
local Quaternion    = require("Quaternion")
local TransformQ    = require("TransformQ")
local Rotation      = require("Rotation")
local Transform     = require("Transform")
local BaseEditMode  = require("Editors.Shared.BaseEditMode")
local GameDatabase  = require("Database.GameDatabase")                  ---@class (partial) GameDatabase

local UIElementsDebug   = require("Mod_NoLimits.UI.Debug.UIElementsDebug")
local DebugUtils        = require("Utility.Mod_NoLimits.DebugUtils")                        ---@class (partial) Mod_NoLimits.DebugUtils
local MathUtils         = require("Utility.Mod_NoLimits.MathUtils")                         ---@type Mod_NoLimits.MathUtils
local Utils             = require("Utility.Mod_NoLimits.Utils")                             ---@type Mod_NoLimits.Utils
local TweakableUtils    = require("Utility.Mod_NoLimits.TweakableUtils")                    ---@type Mod_NoLimits.TweakableUtils
local NlApi             = require("Mod_NoLimits.API.Core.NLAPI")                 ---@type Mod_NoLimits.API.NLAPI

local logger        = require("forgeutils.logger").Get("NoLimits::Components::NoLimitsComponent")

---@package Components
---@class NoLimitsComponent
local NoLimitsComponent = module(..., Object.subclass(Base))

NoLimitsComponent.tAPI = {}

--
-- @brief Called to initalize the component on environment start
-- @param _tWorldAPIs (table) table of api methods available from the current environment.
--
NoLimitsComponent.Init = function(self, _tWorldAPIs)
    logger:Info("Init()")
    self.tWorldAPIs = _tWorldAPIs

    if NlApi:CreateAPI() == false then
        return
    end

    UIElementsDebug:Init()
    --UIElementsDebug:Init()
end

NoLimitsComponent.Configure = function(self)
    api.debug.Trace("Configure()")
end

--
-- @brief called when the world has been activated
--
NoLimitsComponent.OnWorldActivation = function(self)
    logger:Info("OnWorldActivation()")

    --self:DisableCameraLimits()
    self:MutateMiscTweakables()
end

--
-- @brief called when the world has been deactivated
--
NoLimitsComponent.OnWorldDeactivation = function(self)
    logger:Info("OnWorldDeactivation()")

    NlApi:DestroyAPI()
end

NoLimitsComponent.Advance = function(self, _nDeltaTime, _nUnscaledDeltaTime) end
NoLimitsComponent.AddComponentsToEntities = function(self, _tArrayOfEntityIDAndParams) return true end
NoLimitsComponent.RemoveComponentFromEntities = function(self, _tEntitiesArray) end

--
-- @brief Called to clean up the component on environment shutdown
--
NoLimitsComponent.Shutdown = function(self)
    logger:Info("Shutting down")
end

NoLimitsComponent.TryDumpAPI = function()
    local tryDump = function(title, incomingApi)
        if type(incomingApi) ~= "table" then
            logger:Info("[" .. title .. "] is not a table")
            return
        end

        logger:Info("[" .. title .. "] Existing methods:")
        for k, v in pairs(incomingApi) do
            logger:Info("  " .. tostring(k) .. ": " .. tostring(v))
        end

        local ok, existing = pcall(getmetatable, incomingApi)
        if not ok or existing == nil then
            logger:Info("[" .. title .. "] No metatable")
            return
        end

        if type(existing) ~= "table" then
            logger:Info("[" .. title .. "] Metatable is not a table")
            return
        end

        logger:Info("[" .. title .. "] Existing Metatable:")
        for k, v in pairs(existing) do
            logger:Info("  " .. tostring(k) .. ": " .. tostring(v))
        end

        if existing.__index then
            logger:Info("[" .. title .. "] Existing __index methods:")
            for k, v in pairs(existing.__index) do
                logger:Info("  " .. tostring(k) .. ": " .. tostring(v))
            end

            local indexok, existingIndex = pcall(getmetatable, existing.__index)
            if not indexok or existingIndex == nil then
                logger:Info("[" .. title .. "] No index metatable")
                return
            end

            if type(existingIndex) ~= "table" then
                logger:Info("[" .. title .. "] Index Metatable is not a table")
                return
            end

            logger:Info("[" .. title .. "] Existing __index meta:")
            for k, v in pairs(existingIndex) do
                logger:Info("  " .. tostring(k) .. ": " .. tostring(v))
            end
        end
    end

    logger:Info("Attempting to dump API")
    tryDump("api", api)
    tryDump("api.debug", api.debug)
    tryDump("api.debugui", api.debugui)
    tryDump("api.game", api.game)
    tryDump("api.world", api.world)
    tryDump("api.track", api.track)
    local worldapis = api.world.GetWorldAPIs()
    tryDump("worldapis", worldapis)
    tryDump("worldapis.park", worldapis.park)
    tryDump("worldapis.rides", worldapis.rides)
    tryDump("worldapis.ridestats", worldapis.ridestats)
    tryDump("worldapis.trackedrides", worldapis.trackedrides)
    tryDump("worldapis.attractions", worldapis.attractions)
    tryDump("worldapis.scenery", worldapis.scenery)
    tryDump("worldapis.ridestation", worldapis.ridestation)
    tryDump("worldapis.cheats", worldapis.cheats)
    tryDump("worldapis.editors", worldapis.editors)
    tryDump("worldapis.gamevolatileconfig", worldapis.gamevolatileconfig)
    tryDump("worldapis.trackedridedatabase", worldapis.trackedridedatabase)
    tryDump("worldapis.TrackedRideDataStoreComponent", worldapis.TrackedRideDataStoreComponent)
    tryDump("worldapis.debugprefabtools", worldapis.debugprefabtools)

    local alltweakables = api.debug.GetAllDebugTweakables()
    if alltweakables ~= nil and type(alltweakables) == "table" then
        logger:Info("All Tweakables:")
        for k, v in pairs(alltweakables) do
            logger:Info("  " .. tostring(k) .. ": " .. tostring(v))
        end
    end
end

NoLimitsComponent.Api_GetWorldAPIs = function(self, _raw)
    -- logger:Info("Attempting to GetWorldAPIs()")
    local apis = _raw.GetWorldAPIs()

    if api.nlApi then
        return apis
    end

    logger:Info("Initializing GetWorldAPIs() result hooks")


    --
    -- This is how to edit api.world.GetWorldAPIs().*  e.g. api.world.GetWorldAPIs().rides
    --
    self:SetParkMetatable(apis)
    self:SetRidesMetatable(apis)
    self:SetRideStatsMetatable(apis)
    self:SetTrackedRidesMetatable(apis)
    self:SetAttractionsMetatable(apis)
    self:SetSceneryMetatable(apis)
    self:SetGuestsMetatable(apis)
    self:SetVolumesMetatable(apis)
    self:SetInfrastructureMetatable(apis)
    --self:SetVoxelTerrainMetatable(apis)

    return apis
end

NoLimitsComponent.SetUndoMetatable = function(self)
    local undoraw = api.undo
    api.undo = setmetatable(
        {
            CanCommitPreview = function(...)
                local arg = {...}
                local ret = undoraw.CanCommitPreview(unpack(arg))

                if ret ~= nil then
                    return true
                end

                logger:Info("CanCommitPreview() - IsBusy" .. tostring(undoraw.IsBusy()) .. " IsPreviewingChangeList " .. tostring(undoraw.IsPreviewingChangeList()))

                return ret
            end,
            CanCommitPreviewApprox = function(...)
                local arg = {...}
                local ret = undoraw.CanCommitPreviewApprox(unpack(arg))
                --logger:Info("CanCommitPreviewApprox() - " .. tostring(ret))
                return true
            end,
            CommitPreview = function(...)
                local arg = {...}
                local ret = undoraw.CommitPreview(unpack(arg))
                logger:Info("Undo:CommitPreview()")
                return ret
            end,
        },
        {
            __index = undoraw
        }
    )
end

NoLimitsComponent.SetTrackMetatable = function(self)
    local trackraw = api.track
    api.track = setmetatable(
        {
            GetMinMaxCarsPerTrain = function(...)
                return 1, 9999, 9999
            end,
            GetMinMaxTrains = function(...)
                return 1, 9999, 9999
            end,
            GetUseableStationLength = function(...)
                return 9999
            end,
    --[[        GetMaxNumberOfPassesThroughStation = function(...)
                return 9999
            end,
            GetMinAllowedUseableStationLength = function(...)
                return 25
            end,
            GetPoweredTrainsSpeed_Current_Min_Max = function(...)
                local arg = {...}
                local nSpeed, _nSpeedMin, _nSpeedMax = trackraw.GetPoweredTrainsSpeed_Current_Min_Max(unpack(arg))
                return nSpeed, 1, 9999
            end,]]
        },
        {
            __index = trackraw
        }
    )
end

NoLimitsComponent.SetUI2Metatable = function(self)
    local ui2raw = api.ui2
    api.ui2 = setmetatable(
        {
            SetDataStoreElement = function(cContext, sElementName, nName)
                --DebugUtils.LogEntries("UI2:SetDataStoreElement()", cContext, sElementName, nName)
                if sElementName == "fearResult" then
                    nName = MathUtils.Clamp(nName, 0.0, 5.0)
                end
                if sElementName == "nauseaResult" then
                    nName = MathUtils.Clamp(nName, 0.0, 3.0)
                end
                if sElementName == "warningTooExtreme" then
                    if nName ~= nil and nName == true then
                        logger:Info("Overriding " .. sElementName .. " to false")
                        nName = false
                    end
                end
                ui2raw.SetDataStoreElement(cContext, sElementName, nName)
                return
            end,
            SetDataStoreElementSet = function(cContext, cElements)
                --DebugUtils.LogEntries("UI2:SetDataStoreElementSet()", cContext, cElements)

                if cElements ~= nil then
                    if cElements.fear ~= nil then
                        cElements.fear = MathUtils.Clamp(cElements.fear, 0.0, 5.0)
                        cElements.nausea = MathUtils.Clamp(cElements.nausea, 0.0, 3.0)
                        cElements.verticalG = MathUtils.Clamp(cElements.verticalG, -5.0, 5.0)
                        cElements.forwardG = MathUtils.Clamp(cElements.forwardG, -5.0, 5.0)
                        cElements.lateralG = MathUtils.Clamp(cElements.lateralG, -5.0, 5.0)
                    end
                end

                ui2raw.SetDataStoreElementSet(cContext, cElements)
                return
            end
        },
        {
            __index = ui2raw
        }
    )
end

NoLimitsComponent.SetDebugMetatable = function(self)
    local debugraw = api.debug
    api.debug = setmetatable(
        {
            IsMobiusAllowed = function()
                return true
            end,
           --[[ IsDebugAllowed = function()
                return true
            end,]]
        },
        {
            __index = debugraw
        }
    )
end

NoLimitsComponent.SetCrowdSimulationMetatable = function(self)
    local crowdsimulationraw = api.crowdsimulation
    api.crowdsimulation = setmetatable(
        {
            IsPointOnPath = function(...)
                local arg = {...}
                local bIsPointValid, dummy, bIsStaffPath = crowdsimulationraw.IsPointOnPath(unpack(arg))
                return true, dummy, bIsStaffPath
            end,
            IsEntityConnectedToSpawnPoint = function(...)
                local arg = {...}
                local ret = crowdsimulationraw.IsEntityConnectedToSpawnPoint(unpack(arg))
                return true
            end,
            CanBeReachedFromSpawnPoint = function(...)
                local arg = {...}
                local ret = crowdsimulationraw.CanBeReachedFromSpawnPoint(unpack(arg))
                return true
            end,
        },
        {
            __index = crowdsimulationraw
        }
    )
end

NoLimitsComponent.SetParkMetatable = function(self, _apis)
    local parksraw = _apis.park
    _apis.park = setmetatable(
        {
            IsPositionWithinParkBoundary = function(...)
                local arg = {...}
                local ret = parksraw.IsPositionWithinParkBoundary(unpack(arg))
                logger:Info("World:Park:IsPositionWithinParkBoundary()")
                return ret
            end,
            CanEditEntityAgainstParkBoundary = function(...)
                local arg = {...}
                local ret = parksraw.CanEditEntityAgainstParkBoundary(unpack(arg))
                return true
            end,
            GetParkBoundaryPlotUIData = function(...)
                local arg = {...}
                local ret = parksraw.GetParkBoundaryPlotUIData(unpack(arg))
                logger:Info("World:Park:GetParkBoundaryPlotUIData()")
                return ret
            end,
            HasCommittedData = function(...)
                local arg = {...}
                local ret = parksraw.HasCommittedData(unpack(arg))
                logger:Info("World:Park:HasCommittedData()")
                return ret
            end,
            TestConvexParkBoundaryForCamera = function(self, vNewCameraPos, bArg3)
                local ret = parksraw.TestConvexParkBoundaryForCamera(parksraw, vNewCameraPos, bArg3)
                --logger:Info("World:Park:TestConvexParkBoundaryForCamera()")
                return true, vNewCameraPos
            end,
            -- IsPositionWithinParkBoundary = function(self, nRideID)
            --     local ret = parksraw:IsPositionWithinParkBoundary(nRideID)
            --     logger:Info("IsPositionWithinParkBoundary " .. table.tostring(nRideID))
            --     return ret
            -- end,

        },
        {
            __index = parksraw
        }
    )
end

NoLimitsComponent.SetRidesMetatable = function(self, _apis)
    local ridesraw = _apis.rides
    _apis.rides = setmetatable(
        {
           --[[IsEditable = function(...)
                local arg = {...}
                local ret = ridesraw.IsEditable(unpack(arg))
                return true
            end,]]
            --[[
            IsTested = function(...)
                return true
            end,]]
            CanBeTested = function(...)
                return true
            end,
            CanBeOpened = function(...)
                return true
            end,
            GetRideInfo = function(...)
                local arg = {...}
                local ret = ridesraw.GetRideInfo(unpack(arg))
                DebugUtils.LogTable("World:Rides:GetRideInfo()", ret)
                return ret
            end
        },
        {
            __index = ridesraw
        }
    )
end

NoLimitsComponent.SetRideStatsMetatable = function(self, _apis)
    local mutateStats = function(tStats)
        if tStats.Excitement == nil or tStats.Fear == nil or tStats.Nausea == nil then
            return tStats
        end

        tStats.Fear                 = MathUtils.Clamp(tStats.Fear, 0.0, 5.0)
        tStats.AverageFear          = MathUtils.Clamp(tStats.AverageFear, 0.0, 5.0)

        tStats.Nausea               = MathUtils.Clamp(tStats.Nausea, 0.0, 3.0)
        tStats.AverageNausea        = MathUtils.Clamp(tStats.AverageNausea, 0.0, 3.0)

        tStats.Excitement           = MathUtils.Clamp(tStats.Excitement, tStats.Fear, 999999)
        tStats.AverageExcitement    = MathUtils.Clamp(tStats.AverageExcitement, tStats.Fear, 999999)

        tStats.MaxLateralG          = MathUtils.Clamp(tStats.MaxLateralG, 0.0, 5.0)
        tStats.MaxPosVertG          = MathUtils.Clamp(tStats.MaxPosVertG, 0.0, 5.0)
        tStats.MaxNegVertG          = MathUtils.Clamp(tStats.MaxNegVertG, -5.0, 0.0)
        tStats.MaxPosLongG          = MathUtils.Clamp(tStats.MaxPosLongG, 0.0, 5.0)
        tStats.MaxNegLongG          = MathUtils.Clamp(tStats.MaxNegLongG, -5.0, 0.0)

        tStats.GForcePenalty        = 0.0
        tStats.InvertedPenalty      = 0.0
        tStats.LatPenalty           = 0.0
        return tStats
    end

    local ridestatsraw = _apis.ridestats
    _apis.ridestats = setmetatable(
        {
            --[[GetRideStats = function(...)
                local arg = {...}
                local tRideStats = ridestatsraw.GetRideStats(unpack(arg))
                if tRideStats == nil then
                    return tRideStats
                end

                DebugUtils.LogTable("World:RideStats:GetRideStats()", tRideStats)

                if tRideStats.last ~= nil then
                    DebugUtils.LogTable("World:RideStats:GetRideStats() - last", tRideStats.last)
                    --tRideStats.last = mutateStats(tRideStats.last)
                end

                if tRideStats.average ~= nil then
                    --tRideStats.average = mutateStats(tRideStats.average)
                end

                return tRideStats
            end,]]
            GetStationStats = function(...)
                local arg = {...}
                local tRideStats = ridestatsraw.GetStationStats(unpack(arg))
                if tRideStats == nil then
                    return tRideStats
                end

                if tRideStats.last ~= nil then
                    tRideStats.last = mutateStats(tRideStats.last)
                end

                if tRideStats.average ~= nil then
                    tRideStats.average = mutateStats(tRideStats.average)
                end

                return tRideStats
            end,
            GetStationStatsLastOnly = function(...)
                local arg = {...}
                local tRideStats = ridestatsraw.GetStationStatsLastOnly(unpack(arg))
                if tRideStats == nil then
                    return tRideStats
                end

                tRideStats = mutateStats(tRideStats)
                return tRideStats
            end,
        },
        {
            __index = ridestatsraw
        }
    )

    logger:Info("Existing RideStats methods:")
    local existing = getmetatable(_apis.ridestats)
    for k, v in pairs(existing.__index) do
        logger:Info("  " .. tostring(k) .. ": " .. tostring(v))
    end
end

NoLimitsComponent.SetTrackedRidesMetatable = function(self, _apis)
    local trackedridesraw = _apis.trackedrides
    _apis.trackedrides = setmetatable(
        {
            LimitNumberOfCarsByTrainLength = function(self, sTrainType, numCars, nStationLength)
                local ret = trackedridesraw:LimitNumberOfCarsByTrainLength(sTrainType, numCars, nStationLength)
                if numCars == nil or ret == nil then
                    return ret
                end

                logger:Info("World:TrackedRides:LimitNumberOfCarsByTrainLength() NumCars: " .. tostring(numCars) .. " Result: " .. tostring(ret))

                if ret < numCars then
                    logger:Info("Skipping limitation of train length from " .. tostring(ret) .. " to " .. tostring(numCars))
                    ret = numCars
                end

                return ret
            end,
            GetCarLocalGForce = function(...)
                local arg = {...}
                local ret = trackedridesraw.GetCarLocalGForce(unpack(arg))
                if ret == nil then
                    return ret
                end

                --logger:Info("World:TrackedRides:GetCarLocalGForce()")

                return Vector3:new(MathUtils.Clamp(ret:X(), -5.0, 5.0),
                    MathUtils.Clamp(ret:Y(), -5.0, 5.0),
                    MathUtils.Clamp(ret:Z(), -5.0, 5.0))
            end,
            GetCarEFN = function(...)
                local arg = {...}
                local ret = trackedridesraw.GetCarEFN(unpack(arg))
                if ret == nil then
                    return ret
                end

                --logger:Info("World:TrackedRides:GetCarEFN()")

                return Vector3:new(MathUtils.Clamp(ret:X(), ret:Y(), 999999),
                                    MathUtils.Clamp(ret:Y(), 0.0, 5.0),
                                    MathUtils.Clamp(ret:Z(), 0.0, 3.0))
            end,
        },
        {
            __index = trackedridesraw
        }
    )
end

NoLimitsComponent.SetAttractionsMetatable = function(self, _apis)
    local attractionsraw = _apis.attractions
    local removeAttractionNoOpenReason = function(nStationID, reason)
        if attractionsraw:HasNoOpenReason(nStationID, reason) then
            logger:Info("Removing NoOpenReason " .. tostring(reason) .. " from attraction")
            attractionsraw:RemoveNoOpenReason(nStationID, reason)
        end

        return
    end

    _apis.attractions = setmetatable(
        {
            AddNoGuestsReason = function(self, stationID)
                return
            end,
            AddNoOpenReason = function(self, stationID, attractionsOpenStateReason)
                return
            end,
            RemoveNoGuestsReason = function(self, stationID)
                return
            end,
            RemoveNoOpenReason = function(self, stationID, attractionsOpenStateReason)
                return
            end,
            HasNoOpenReason = function(...)
                return false
            end,
            CanBeTested = function(...)
                return true
            end,
            CanBeOpened = function(...)
                return true
            end,
            OpenAttraction = function(self, nStationID)
                logger:Info("Opening attraction and removing NoOpen")
                --attractionsraw:RemoveNoGuestsReason(nStationID)
                removeAttractionNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_NotCreated)
                removeAttractionNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_Moving)
                removeAttractionNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_NoQueue)
                removeAttractionNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_IncompleteFlume)
                removeAttractionNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_Maintenance)
                removeAttractionNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_InvalidRide)
                removeAttractionNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_NoPower)
                removeAttractionNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_TooExtreme)
                attractionsraw:OpenAttraction(nStationID)

                local openreq = attractionsraw:GetPlayerRequestedOpenState()
                logger:Info("GetPlayerRequestedOpenState() = " .. tostring(openreq))

                local debugsettings = _apis.park:GetDebugSettings()
                DebugUtils.LogTable("Park:GetDebugSettings()", debugsettings)

                _apis.guests:SetAllPreferenceWeights(9999)
                _apis.guests:SetGuestSpawnData(9999, 999, 999999999, 999999999)
                _apis.guests:SetVomitProbabilityPerSecondMultiplier(99)
                _apis.guests:SetVomitEnabled(true)

                local difficulty = _apis.park:GetDifficultySettingsAsTable()
                difficulty.GuestTolerances.nValue = 10
                difficulty.GuestPreferences.nValue = 10
                difficulty.GuestRideExpectations.nValue = 10
                _apis.park:SetDifficultySettingsFromTable(difficulty)
                local newdifficulty = _apis.park:GetDifficultySettingsAsTable()
                DebugUtils.LogTableDeep("Park:GetDifficultySettingsAsTable() After", newdifficulty)

                if _apis.cheats.IgnoreFearAndNausea then
                    logger:Info("IgnoreFearAndNausea exists, enabling")
                    _apis.cheats:IgnoreFearAndNausea(true)
                    DebugUtils.LogMetatable("Cheats", _apis.cheats)
                else
                    logger:Info("IgnoreFearAndNausea does not exist")
                    DebugUtils.LogMetatable("Cheats", _apis.cheats)
                end

                --[[
                attractionsraw:RemoveNoGuestsReason(nStationID)
                attractionsraw:RemoveNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_NotCreated)
                attractionsraw:RemoveNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_Moving)
                attractionsraw:RemoveNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_NoQueue)
                attractionsraw:RemoveNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_IncompleteFlume)
                attractionsraw:RemoveNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_Maintenance)
                attractionsraw:RemoveNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_InvalidRide)
                attractionsraw:RemoveNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_NoPower)
                attractionsraw:RemoveNoOpenReason(nStationID, attractionsraw.AttractionsOpenStateReason_TooExtreme)
                attractionsraw:RemoveNoGuestsReason(nStationID)]]


                --NoLimitsComponent.TryDumpAPI()
                return
            end,
        },
        {
            __index = attractionsraw
        }
    )
end

NoLimitsComponent.SetSceneryMetatable = function(self, _apis)
    local sceneryraw = _apis.scenery
    _apis.scenery = setmetatable(
        {
            IsEditable = function(...)
                local arg = {...}
                local ret = sceneryraw.IsPartEditable(unpack(arg))
                logger:Info("World:Scenery:IsPartEditable() - " .. tostring(ret))
                return true
            end,
            GetMinMaxScale = function(...)
                return 0.01, 9999
            end,
        },
        {
            __index = sceneryraw
        }
    )
end

NoLimitsComponent.SetGuestsMetatable = function(self, _apis)
    local guestsraw = _apis.guests
    _apis.guests = setmetatable(
        {
            SetAllPreferenceWeights = function(self, nArg2)
                logger:Info("World:Guests:SetAllPreferenceWeights() - " .. tostring(nArg2))
                guestsraw:SetAllPreferenceWeights(nArg2)
                return
            end,
            SetPreferenceEffectMultiplier = function(self, nPreferenceMultiplier)
                logger:Info("World:Guests:SetPreferenceEffectMultiplier() - " .. tostring(nPreferenceMultiplier))
                guestsraw:SetPreferenceEffectMultiplier(nPreferenceMultiplier)
                return
            end,
            SetGroupPreferenceSpawners = function(self, cPreferenceSpawners)
                DebugUtils.LogTable("World:Guests:SetGroupPreferenceSpawners()", cPreferenceSpawners)
                guestsraw:SetGroupPreferenceSpawners(cPreferenceSpawners)
                return
            end,
            SetGroupPreferenceWeights = function(self, cPreferenceWeights)
                DebugUtils.LogTable("World:Guests:SetGroupPreferenceSpawners()", cPreferenceWeights)
                guestsraw:SetGroupPreferenceWeights(cPreferenceWeights)
                return
            end,
            SetPreferenceCountWeights = function(self, cPreferenceCounts)
                DebugUtils.LogTable("World:Guests:SetPreferenceCountWeights()", cPreferenceCounts)
                guestsraw:SetPreferenceCountWeights(cPreferenceCounts)
                return
            end,
            GetGroupRideExperience = function(self, nGroupID)
                local ret = guestsraw:GetGroupRideExperience(nGroupID)
                 logger:Info("World:Guests:GetGroupRideExperience() - " .. tostring(ret))
                return ret
            end,
            GetGroupRideTolerances = function(self, nGroupID)
                local ret = guestsraw:GetGroupRideTolerances(nGroupID)
                DebugUtils.LogTable("World:Guests:GetGroupRideTolerances()", ret)

                local weights = guestsraw:GetGroupSpawnWeightModifiers()
                for k, v in pairs(weights) do
                    weights[k] = 9999
                end
                DebugUtils.LogTable("World:Guests:GetGroupSpawnWeightModifiers()", weights)
                guestsraw:SetGroupSpawnWeightModifiers(weights)

                local gweights = guestsraw:GetBaseGroupSpawnWeights()
                for k, v in pairs(gweights) do
                    gweights[k] = 9999
                end

                DebugUtils.LogTable("World:Guests:GetBaseGroupSpawnWeights()", gweights)
                guestsraw:SetBaseGroupSpawnWeights(gweights)

                logger:Info("Trying to get first guest in group")
                local first = guestsraw:GetFirstGuestInGroup(nGroupID)

                if first ~= nil then
                    logger:Info("Hiding first guest in group")
                    guestsraw:SetPeepHidden(first, true, true)
                    _apis.cheats:IgnoreFearAndNausea(first, true)
                end

                return ret
            end,
            IsGroupInsidePark = function(self, nGroupID)
                local ret = guestsraw:IsGroupInsidePark(nGroupID)
                logger:Info("World:Guests:IsGroupInsidePark() - " .. tostring(ret))
                return true
            end,
            GetGuestData = function(self, nGuestID)
                local ret = guestsraw:GetGuestData(nGuestID)
                if ret == nil then
                    return ret
                end

                DebugUtils.LogTable("World:Guests:GetGuestData()", ret)
                local info = _apis.InfoPopUpComponent:GetOpenPopUp()
                if info == nil or info:GetEntityID() ~= nGuestID then
                    return ret
                end

                guestsraw:SetPeepHeadHidden(nGuestID, true, true)
                return ret
            end,
            --[[CanSuspendGroup = function(self, nGroupID)
                local _ret = guestsraw:CanSuspendGroup(nGroupID)
                return guestsraw.SuspendGroupResult_Success
            end,]]
        },
        {
            __index = guestsraw
        }
    )
end

NoLimitsComponent.SetInfrastructureMetatable = function(self, _apis)
    local infrastructureraw = _apis.infrastructure
    _apis.infrastructure = setmetatable(
        {
            CanBeOpened = function(...)
                return true
            end,
        },
        {
            __index = infrastructureraw
        }
    )
end

NoLimitsComponent.SetVoxelTerrainMetatable = function(self, _apis)
    local voxelterrainraw = _apis.voxelterrain
    _apis.voxelterrain = setmetatable(
        {
            GetWorldBounds = function(...)
                local arg = {...}
                local vMin, vMax = voxelterrainraw.GetWorldBounds(unpack(arg))
                logger:Info("World:Scenery:IsPartEditable() - Min:" .. tostring(vMin:X()) .. "," .. tostring(vMin:Y()) .. "," .. tostring(vMin:Z()) .. " Max:" .. tostring(vMax:X()) .. "," .. tostring(vMax:Y()) .. "," .. tostring(vMax:Z()))
                return Vector3:new(-9999999, -9999999, -9999999), Vector3:new(9999999, 9999999, 9999999)
            end,
        },
        {
            __index = voxelterrainraw
        }
    )
end

NoLimitsComponent.SetVolumesMetatable = function(self, _apis)
    local volumesraw = _apis.volumes
    _apis.volumes = setmetatable(
        {
            DrawSelection = function(...)
                local arg = {...}
                local ret = volumesraw.DrawSelection(unpack(arg))
                logger:Info("World:Volumes:DrawSelection()")
                return ret
            end,
            DrawSelectionWithOffset = function(...)
                local arg = {...}
                local ret = volumesraw.DrawSelectionWithOffset(unpack(arg))
                logger:Info("World:Volumes:DrawSelectionWithOffset()")
                return ret
            end,
            EndDrawing = function(...)
                local arg = {...}
                local ret = volumesraw.EndDrawing(unpack(arg))
                logger:Info("World:Volumes:EndDrawing()")
                return ret
            end,
            EraseDrawing = function(...)
                local arg = {...}
                local ret = volumesraw.EraseDrawing(unpack(arg))
                logger:Info("World:Volumes:EraseDrawing()")
                return ret
            end,
            CreateMoveObjectsForSelection = function(...)
                local arg = {...}
                local ret = volumesraw.CreateMoveObjectsForSelection(unpack(arg))
                logger:Info("World:Volumes:CreateMoveObjectsForSelection()")
                return ret
            end,
            CreateSelectionFromRaycast = function(...)
                local arg = {...}
                local ret = volumesraw.CreateSelectionFromRaycast(unpack(arg))
                logger:Info("World:Volumes:CreateSelectionFromRaycast()")
                return ret
            end,
            CalcPathCourseControls = function(...)
                local arg = {...}
                local ret = volumesraw.CalcPathCourseControls(unpack(arg))
                logger:Info("World:Volumes:CalcPathCourseControls()")
                return ret
            end,
            CreateMoveObjectForVolumeSpline = function(...)
                local arg = {...}
                local ret = volumesraw.CreateMoveObjectForVolumeSpline(unpack(arg))
                logger:Info("World:Volumes:CreateMoveObjectForVolumeSpline()")
                return ret
            end,
            CreateSelectionWithMovedSitePos = function(...)
                local arg = {...}
                local ret = volumesraw.CreateSelectionWithMovedSitePos(unpack(arg))
                logger:Info("World:Volumes:CreateSelectionWithMovedSitePos()")
                return ret
            end,
            GridObjectsAreCompatible = function(...)
                local arg = {...}
                local ret = volumesraw.GridObjectsAreCompatible(unpack(arg))
                logger:Info("World:Volumes:GridObjectsAreCompatible()")
                return ret
            end,
            GetSelectionPositions = function(...)
                local arg = {...}
                local ret = volumesraw.GetSelectionPositions(unpack(arg))
                logger:Info("World:Volumes:GetSelectionPositions()")
                return ret
            end,
            CalcBestSnappedMoveObjectTransform = function(...)
                local arg = {...}
                local ret = volumesraw.CalcBestSnappedMoveObjectTransform(unpack(arg))
                return ret
            end,
            SubdivideOutlines = function(...)
                local arg = {...}
                local ret = volumesraw.SubdivideOutlines(unpack(arg))
                logger:Info("World:Volumes:SubdivideOutlines()")
                return ret
            end,
            GetEdgeStyleColour = function(...)
                local arg = {...}
                local ret = volumesraw.GetEdgeStyleColour(unpack(arg))
                logger:Info("World:Volumes:GetEdgeStyleColour()")
                return ret
            end,
            GetControlHandlesForSelection = function(...)
                local arg = {...}
                local ret = volumesraw.GetControlHandlesForSelection(unpack(arg))
                logger:Info("World:Volumes:GetControlHandlesForSelection()")
                return ret
            end,
            ExpandSelectionUsingRaycast = function(...)
                local arg = {...}
                local ret = volumesraw.ExpandSelectionUsingRaycast(unpack(arg))
                logger:Info("World:Volumes:ExpandSelectionUsingRaycast()")
                return ret
            end,
            GetVolumeOutlinesFromMoveObject = function(...)
                local arg = {...}
                local ret = volumesraw.GetVolumeOutlinesFromMoveObject(unpack(arg))
                logger:Info("World:Volumes:GetVolumeOutlinesFromMoveObject()")
                return ret
            end,
            SetToUseGridObject = function(...)
                local arg = {...}
                local ret = volumesraw.SetToUseGridObject(unpack(arg))
                logger:Info("World:Volumes:SetToUseGridObject()")
                return ret
            end,
            GetVolumeOutline = function(...)
                local arg = {...}
                local ret = volumesraw.GetVolumeOutline(unpack(arg))
                logger:Info("World:Volumes:GetVolumeOutline()")
                return ret
            end,
            GetSelectionNumPoints = function(...)
                local arg = {...}
                local oNavPart, vGroundedNavPartPosition = volumesraw.GetSelectionNumPoints(unpack(arg))
                logger:Info("World:Volumes:GetSelectionNumPoints()")
                return oNavPart, vGroundedNavPartPosition
            end,
            FindAndDrawControlHandles = function(...)
                local arg = {...}
                local tHandles, vHitPos = volumesraw.FindAndDrawControlHandles(unpack(arg))
                logger:Info("World:Volumes:FindAndDrawControlHandles()")
                return tHandles, vHitPos
            end,
            GetSelectionSitePos = function(...)
                local arg = {...}
                local vMidPos, vMidDir = volumesraw.GetSelectionSitePos(unpack(arg))
                logger:Info("World:Volumes:GetSelectionSitePos() - MidPos:" .. tostring(vMidPos:X()) .. "," .. tostring(vMidPos:Y()) .. "," .. tostring(vMidPos:Z()) .. " MidDir:" .. tostring(vMidDir:X()) .. "," .. tostring(vMidDir:Y()) .. "," .. tostring(vMidDir:Z()))
                return vMidPos, vMidDir
            end,
            GetSplineResultData = function(...)
                local arg = {...}
                local bCommitCurrent, vStartPos, vEndPos, bShouldContinueBuilding, vCameraDeltaStraight, vCameraDeltaContinued, nCameraDeltaRotation = volumesraw.GetSplineResultData(unpack(arg))
                logger:Info("World:Volumes:GetSplineResultData() - Commit?" .. tostring(bCommitCurrent) .. "Start:" .. tostring(vStartPos:X()) .. "," .. tostring(vStartPos:Y()) .. "," .. tostring(vStartPos:Z()) .. " End:" .. tostring(vEndPos:X()) .. "," .. tostring(vEndPos:Y()) .. "," .. tostring(vEndPos:Z()) .. " Continue:" .. tostring(bShouldContinueBuilding) .. " CamDeltaStraight:" .. tostring(vCameraDeltaStraight:X()) .. "," .. tostring(vCameraDeltaStraight:Y()) .. "," .. tostring(vCameraDeltaStraight:Z()) .. " CamDeltaContinued:" .. tostring(vCameraDeltaContinued:X()) .. "," .. tostring(vCameraDeltaContinued:Y()) .. "," .. tostring(vCameraDeltaContinued:Z()) .. " CamDeltaRotation:" .. tostring(nCameraDeltaRotation))
                return bCommitCurrent, vStartPos, vEndPos, bShouldContinueBuilding, vCameraDeltaStraight, vCameraDeltaContinued, nCameraDeltaRotation
            end,
            GetSplineStartData = function(...)
                local arg = {...}
                local vStartPos, vStartDir, bStartSnapped = volumesraw.GetSplineStartData(unpack(arg))
                logger:Info("World:Volumes:GetSplineStartData() - Start:" .. tostring(vStartPos:X()) .. "," .. tostring(vStartPos:Y()) .. "," .. tostring(vStartPos:Z()) .. " Dir:" .. tostring(vStartDir:X()) .. "," .. tostring(vStartDir:Y()) .. "," .. tostring(vStartDir:Z()) .. " Snapped:" .. tostring(bStartSnapped))
                return vStartPos, vStartDir, bStartSnapped
            end,
            SetSplinePathData = function(self, moveObject, sOutlineType, sRenderType, sEdgeType, nRadius, nDepth, nClipPriorityHigh, nGroundedRequestForceNotOnGround, bDeploySupports, vOutlineColour, vEdgeColour)
                local ret = volumesraw:SetSplinePathData(moveObject, sOutlineType, sRenderType, sEdgeType, nRadius, nDepth, 0, nGroundedRequestForceNotOnGround, bDeploySupports, vOutlineColour, vEdgeColour)
                logger:Info("World:Volumes:SetSplinePathData() - OutlineType:" .. tostring(sOutlineType) ..  "Radius:" .. tostring(nRadius) .. " Depth:" .. tostring(nDepth) .. " ClipPriority:" .. tostring(nClipPriorityHigh) .. " GroundedRequest:" .. tostring(nGroundedRequestForceNotOnGround))
                return ret
            end,
            SetSplineBorderData = function(self, moveObject, sOutlineType, sRenderType, sEdgeType, nRadius, nDepth, nClipPriorityHigh, nGroundedRequestForceNotOnGround, bDeploySupports, vOutlineColour, vEdgeColour)
                local ret = volumesraw:SetSplineBorderData(moveObject, sOutlineType, sRenderType, sEdgeType, nRadius, nDepth, nClipPriorityHigh, nGroundedRequestForceNotOnGround, bDeploySupports, vOutlineColour, vEdgeColour)
                logger:Info("World:Volumes:SetSplineBorderData() - OutlineType:" .. tostring(sOutlineType) ..  "Radius:" .. tostring(nRadius) .. " Depth:" .. tostring(nDepth) .. " ClipPriority:" .. tostring(nClipPriorityHigh) .. " GroundedRequest:" .. tostring(nGroundedRequestForceNotOnGround))
                return ret
            end,
            -- Raycast = function(self, vStart, vDir)
            --     local nDist, nVolume, nEdge = volumesraw:Raycast(vStart, vDir)
            --     logger:Info("World:Volumes:Raycast() - Start:" .. tostring(vStart:X()) .. "," .. tostring(vStart:Y()) .. "," .. tostring(vStart:Z()) .. " Dir:" .. tostring(vDir:X()) .. "," .. tostring(vDir:Y()) .. "," .. tostring(vDir:Z()) .. " Dist:" .. tostring(nDist) .. " Volume:" .. tostring(nVolume) .. " Edge:" .. tostring(nEdge))
            --     return nDist, nVolume, nEdge
            -- end,
        },
        {
            __index = volumesraw
        }
    )
end

--local tweakableKeepCameraInsideParkBoundary = api.debug.CreateDebugTweakable(api.debug.Tweakable_Bool, "Camera.KeepInsideParkBoundary", true)
--local tweakableKeepCameraInsideVoxelBounds = api.debug.CreateDebugTweakable(api.debug.Tweakable_Bool, "Camera.Limits.KeepInsideVoxelBounds", true)
local trackautocompleteshowdebug = api.debug.CreateDebugTweakable(api.debug.Tweakable_Bool, "Track.AutoComplete.ShowDebugDraw", false)
local terraineditordev = api.debug.CreateDebugTweakable(api.debug.Tweakable_Bool, "terraineditor.enabledevbrushsizes", false)
local parkratingdev = api.debug.CreateDebugTweakable(api.debug.Tweakable_Bool, "parkrating.enabledebugdraw", false)
local pinteractiondev = api.debug.CreateDebugTweakable(api.debug.Tweakable_Bool, "input.playerinteractionhandler.debugdraw", false)
local submodedev = api.debug.CreateDebugTweakable(api.debug.Tweakable_Bool, "editors.submodedebugdraw", false)
local gamemodedev = api.debug.CreateDebugTweakable(api.debug.Tweakable_Bool, "gamemode.debugdraw", false)
local editorsinfopopupdebug = api.debug.CreateDebugTweakable(api.debug.Tweakable_Bool, "editors.infopopupdebug", false)

--[[NoLimitsComponent.DisableCameraLimits = function(self)
    if tweakableKeepCameraInsideVoxelBounds:GetValue() then
        logger:Info("Camera.Limits.KeepInsideVoxelBounds is ON - Disabling")
        tweakableKeepCameraInsideVoxelBounds:SetValue(false)
    else
        logger:Info("Camera.Limits.KeepInsideVoxelBounds is OFF")
    end

    if tweakableKeepCameraInsideParkBoundary:GetValue() then
        logger:Info("Camera.KeepInsideParkBoundary is ON - Disabling")
        tweakableKeepCameraInsideParkBoundary:SetValue(false)
    else
        logger:Info("Camera.KeepInsideParkBoundary is OFF")
    end
end]]

NoLimitsComponent.MutateMiscTweakables = function(self)
    if not trackautocompleteshowdebug:GetValue() then
        logger:Info("Track.AutoComplete.ShowDebugDraw is OFF - Enabling")
        trackautocompleteshowdebug:SetValue(true)
    else
        logger:Info("Track.AutoComplete.ShowDebugDraw is ON")
    end

    if not terraineditordev:GetValue() then
        logger:Info("terraineditor.enabledevbrushsizes is OFF - Enabling")
        terraineditordev:SetValue(true)
    else
        logger:Info("terraineditor.enabledevbrushsizes is ON")
    end

--[[    if not parkratingdev:GetValue() then
        logger:Info("parkrating.enabledebugdraw is OFF - Enabling")
        parkratingdev:SetValue(true)
    else
        logger:Info("parkrating.enabledebugdraw is ON")
    end]]

    if not pinteractiondev:GetValue() then
        logger:Info("input.playerinteractionhandler.debugdraw is OFF - Enabling")
        pinteractiondev:SetValue(true)
    else
        logger:Info("input.playerinteractionhandler.debugdraw is ON")
    end

    if not submodedev:GetValue() then
        logger:Info("editors.submodedebugdraw is OFF - Enabling")
        submodedev:SetValue(true)
    else
        logger:Info("editors.submodedebugdraw is ON")
    end

    if not gamemodedev:GetValue() then
        logger:Info("gamemode.debugdraw is OFF - Enabling")
        gamemodedev:SetValue(true)
    else
        logger:Info("gamemode.debugdraw is ON")
    end

    if not editorsinfopopupdebug:GetValue() then
        logger:Info("editors.infopopupdebug is OFF - Enabling")
        editorsinfopopupdebug:SetValue(true)
    else
        logger:Info("editors.infopopupdebug is ON")
    end

    TweakableUtils.SetTweakableBool("Lakes.ShowLava", true)
    TweakableUtils.SetTweakableBool("TerrainEditor.EnableDevBrushSizes", true)

    TweakableUtils.SetTweakableBool("Editors.AdvancedMove.DistanceSnapDebugDraw", true)
    TweakableUtils.SetTweakableFloat("Editors.AdvancedMove.SelectedAxisScale", 1.3, 0.1, 5, 0.1)

    TweakableUtils.SetTweakableBool("Editors.TrackEdit.AllowSingleSelectionEdit", true)
    TweakableUtils.SetTweakableBool("Editors.TrackEdit.DebugDrawSelection", true)
    TweakableUtils.SetTweakableBool("Editors.TrackEdit.DebugDrawEditValues", true)
    TweakableUtils.SetTweakableBool("Editors.TrackEdit.Alignment.DebugDraw", true)

    TweakableUtils.SetTweakableBool("VolumeLib.Editor.Drawing.DebugDrawPoints", true)
    TweakableUtils.SetTweakableFloat("VolumeLib.Editor.Drawing.MaxLength", 1000, 1, 2000, 1)
    TweakableUtils.SetTweakableFloat("VolumeLib.Editor.Drawing.TooCloseDistance", 0, 0, 10, 0.1)

    TweakableUtils.SetTweakableFloat("Ride.Pricing.ExpensiveOverFairMultiplier", 0.5, 0, 1, 0.01)
    TweakableUtils.SetTweakableFloat("Ride.Pricing.veryExpensiveOverFairMultiplier", 1, 0, 1, 0.01)

    TweakableUtils.SetTweakableBool("Flumes.ShowPlatformsInBrowser", true)

end

--[[
local function Hook_Listen(raw, name, label)
    local func = raw[name]  -- respects __index lookup
    assert(type(func) == "function", ("no such function: %s"):format(tostring(name)))
    label = label or name
    return function(_, ...) logger:Info(label .. "()"); return func(raw, ...) end
end]]
