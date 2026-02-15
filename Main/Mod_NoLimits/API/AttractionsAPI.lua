---@diagnostic disable: undefined-field, unnecessary-if
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
local coroutine     = global.coroutine
local pairs         = global.pairs
local ipairs        = global.ipairs
local math          = global.math
local tryrequire    = global.tryrequire
local tostring      = global.tostring
local database      = api.database
local nlApi         = api.nlApi
local Vector3       = require("Vector3")
local TransformQ    = require("TransformQ")

local TrackedRideUtils = require("Helpers.TrackedRideUtils")

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local EditorUtils   = require("Utility.Mod_NoLimits.EditorUtils")               ---@type Mod_NoLimits.EditorUtils
local DebugUIAPI    = require("Mod_NoLimits.API.DebugUIAPI")         ---@type Mod_NoLimits.API.DebugUIAPI
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")          ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")      ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.AttractionsAPI : Mod_NoLimits.API.Base
local NLAttractionsAPI = BaseAPI.NewAPI("AttractionsAPI")
local logger = NLAttractionsAPI.Logger

NLAttractionsAPI.Enabled = true
NLAttractionsAPI.CoreAPIName = nil
NLAttractionsAPI.WorldAPIName = "attractions"

NLAttractionsAPI.Debug_DumpAPI = false

function NLAttractionsAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("AddNoGuestsReason", {"self", "stationID"})
            :AsListener(),
        APIEntry.NewEntry("AddNoOpenReason", {"self", "stationID", "attractionsOpenStateReasonInvalidRide"})
            :AsListener(),
        APIEntry.NewEntry("AddNoTestingReason")
            :AsListener(),
        APIEntry.NewEntry("CanBeOpened", {"self", "stationID"})
            :AsListener(),
        APIEntry.NewEntry("CanBeTested", {"self", "stationID"})
            :WithReturnValues(true):Disable(),
        APIEntry.NewEntry("CloseAttraction", {"self", "stationID"})
            :AsListener(),
        APIEntry.NewEntry("CountVacantBenches")
            :Disable(),
        APIEntry.NewEntry("GetPlayerRequestedOpenState")
            :AsListener(),
        APIEntry.NewEntry("GetRestaurantMonitorData")
            :Disable(),
        APIEntry.NewEntry("HasEverOpened", {"self", "nSubStationID"})
            :Disable(),
        APIEntry.NewEntry("HasNoOpenReason", {"self", "nStationID", "attractionsOpenStateReasonIncompleteFlume"})
            :Disable(),
        APIEntry.NewEntry("IsClosed", {"self", "stationID"})
            :Disable(),
        APIEntry.NewEntry("IsOpen", {"self", "stationID"})
            :Disable(),
        APIEntry.NewEntry("IsTesting", {"self", "stationID"})
            :Disable(),
        APIEntry.NewEntry("OpenAttraction", {"self", "stationID"})
            :AsListener(),
            --:WithCallDelegate(NLAttractionsAPI.OpenAttraction):WithLogOutputs():Disable(),
        APIEntry.NewEntry("RemoveNoGuestsReason", {"self", "stationID"})
            :AsListener(),
        APIEntry.NewEntry("RemoveNoOpenReason", {"self", "stationID", "attractionsOpenStateReasonInvalidRide"})
            :AsListener(),
        APIEntry.NewEntry("RemoveNoTestingReason")
            :AsListener(),
        APIEntry.NewEntry("SetShouldAutoHire")
            :Disable(),
        APIEntry.NewEntry("ShouldAutoHire")
            :Disable(),
        APIEntry.NewEntry("TestAttraction", {"self", "stationID"})
            :WithCallDelegate(NLAttractionsAPI.TestAttraction):WithLogOutputs(),
    }

    return tEntries
end

local THEME   = "Theme_PlanetCoaster"
local BRAND   = "chiefbeef"
local RIDETYPE= "CC_BigTimber"
local WATERT  = "pool"
local SHOW    = ""


local groupPrefWeights = {
    SubCategories = {
        [1] = {"chiefbeef","chiefbeef","chiefbeef","chiefbeef","chiefbeef","chiefbeef","chiefbeef","chiefbeef","chiefbeef",},
        [2] = {"Theme_PlanetCoaster","Theme_PlanetCoaster","Theme_PlanetCoaster","Theme_PlanetCoaster","Theme_PlanetCoaster","Theme_PlanetCoaster","Theme_PlanetCoaster","Theme_PlanetCoaster","Theme_PlanetCoaster",},
        [3] = {1,0,0,0,0,0,0,0,0,},
        [4] = {1,0,0,0,0,0,0,0,0,},
        [5] = {1,0,0,0,0,0,0,0,0,},
        [6] = {1,0,0,0,0,0,0,0,0,},
        [7] = {1,0,0,0,0,0,0,0,0,},
        [9]  = {"CC_BigTimber","CC_BigTimber","CC_BigTimber","CC_BigTimber","CC_BigTimber","CC_BigTimber","CC_BigTimber","CC_BigTimber","CC_BigTimber",},                -- RideType (strings)
        [10] = {"Inversion","Inversion","Inversion","Inversion","Inversion","Inversion","Inversion","Inversion","Inversion",},                       -- RideExperience (special numeric)
        [11] = {"pool","pool","pool","pool","pool","pool","pool","pool","pool",},                 -- WaterAttractionType (strings)
    },
    RepeatRide = 0,
    FavouriteRide = 0,
}

local prefCWeights = {
    [1] = 9999,
    [2] = 9999,
    [3] = 9999,
    [4] = 9999,
    [5] = 9999,
    [6] = 9999,
    [7] = 9999,
    [8] = 9999,
    [0] = 9999,
}
local prefCWeights2 = { 0, 0, 254, 254, 254, 254, 254 }

local Pref = {
  FavouriteBrand=1, FavouriteTheme=2, RideType=9,
  RideHeight=3, RideSpeed=4, RideLength=5, Intensity=6, Nausea=7,
  RideExperience=10, WaterAttractionType=11, ShowType=12,
}

local prefS = {
  [3] = {
    [1] = 1, -- group weight
    [2] = {
      { Pref.FavouriteBrand, "chiefbeef" },
      { Pref.FavouriteTheme, "PlanetCoaster" },
      { Pref.RideHeight, 254 },
      { Pref.RideSpeed, 254 },
      { Pref.RideLength, 254 },
      { Pref.Intensity, 254 },
      { Pref.Nausea, 254 },
--[[      { Pref.RideType, "Coaster" },  -- bare ids (no prefixes)
      { Pref.WaterAttractionType, "pool" },
      { Pref.ShowType, "Fireworks" },
      { Pref.RideExperience, 254 },]]
    },
  },
}

        --{ Pref.FavouriteBrand, "chiefbeef" },
        --    { Pref.FavouriteTheme, "Theme_Viking" },
        --    { Pref.RideHeight,     254 },
        --    { Pref.RideSpeed,      254 },
        --    { Pref.RideLength,     254 },
        --    { Pref.Intensity,      254 },
        --    { Pref.Nausea,         254 },

local test2 = {
    [1] = { },
    [2] = { },
    [3] = {
        --[1] = 254,
        [1] = 1,
        [2] = {
            { Pref.FavouriteBrand, "chiefbeef" },
            { Pref.FavouriteTheme, "Theme_Viking" },
            { Pref.RideHeight,     2 },
            { Pref.RideSpeed,      2 },
            { Pref.RideLength,     2 },
            { Pref.Intensity,      4 },
            { Pref.Nausea,         5 },
        },
    },
    [4] = { },
    [5] = { },
    [6] = { },
    [7] = { },
    [8] = { },
    [0] = { },
}

---GuestPreference_FavouriteRide integer = 0
---GuestPreference_FavouriteBrand integer = 1
---GuestPreference_FavouriteTheme integer = 2
---GuestPreference_RideHeight integer = 3
---GuestPreference_RideSpeed integer = 4
---GuestPreference_RideLength integer = 5
---GuestPreference_Intensity integer = 6
---GuestPreference_Nausea integer = 7
---GuestPreference_RepeatRide integer = 8
---GuestPreference_RideType integer = 9
---GuestPreference_RideExperience integer = 10
---GuestPreference_WaterAttractionType integer = 11
---GuestPreference_ShowType integer = 12

local guestPrefWeights = {
    SubCategories = {
        [1]     = {     ---FavouriteBrand
            --chiefbeef = 100,
        },
        [2]     = {     ---FavouriteTheme //parkAPI:GetAllThemes()
            --Theme_Viking = 100,
        },
        [3]     = {     ---RideHeight //3?
            --[0] = 100,
        },
        [4]     = {     ---RideSpeed //3?
            --[0] = 100,
        },
        [5]     = {     ---RideLength //0?
            --[0] = 100,
        },
        [6]     = {     ---Intensity //2-4?
            [0] = 999,
            [1] = 0,
            [2] = 0,
            [3] = 0,
            [4] = 0,
            TestIntensity1 = 999,
        },
        [7]     = {     ---Nausea //2-5?
            --[5] = 100,
        },
        [9]     = {     ---RideType
            Coaster = 100,
            FlatRide = 0,
            PoweredTrackRide = 0,
        },
        [10]    = {     ---RideExperience
            --[1] = 100,
        },
        [11]    = {     ---WaterAttractionType
            --Pool = 100,
        },
    },
    RepeatRide = 0,
    FavouriteRide = 0
}

local genderSpawns = {
    [1] = {bAllowFemales = true, bAllowMales = true},
    [2] = {bAllowFemales = true, bAllowMales = true},
    [3] = {bAllowFemales = false, bAllowMales = true},
    [4] = {bAllowFemales = true, bAllowMales = true},
    [5] = {bAllowFemales = true, bAllowMales = true},
    [6] = {bAllowFemales = true, bAllowMales = true},
    [7] = {bAllowFemales = true, bAllowMales = true},
    [8] = {bAllowFemales = true, bAllowMales = true},
    [0] = {bAllowFemales = true, bAllowMales = true},
}

local gSpawns = {
    [1] = 0.0,
    [2] = 0.0,
    [3] = 999.0,
    [4] = 0.0,
    [5] = 0.0,
    [6] = 0.0,
    [7] = 0.0,
    [8] = 0.0,
    [0] = 0.0,
}

local gSpawnWeights = {
    [1] = 40,
    [2] = 40,
    [3] = 999,
    [4] = 40,
    [5] = 40,
    [6] = 23,
    [7] = 23,
    [8] = 23,
    [0] = 40,
}

local sub = {
  -- each subtable is just numbers; use 0..maxIndex
  [3] = { 3, 3, 3 },  -- RideHeight: 0..3
  [4] = { 3, 3, 3 },  -- RideSpeed:  0..3
  [5] = { 2, 2, 2 },  -- RideLength: 0..2
  [6] = { 4, 4, 4 },  -- Intensity:  0..4
  [7] = { 5, 5, 5 },  -- Nausea:     0..5
  -- keep brand/theme/rideType/water either absent or as strings in *their* slots
}

function NLAttractionsAPI.TestAttraction(rawApi, self, stationID)
    logger:Info("TestAttraction() setting group preference weights")

    local difficulty = nlApi.World.park:GetDifficultySettingsAsTable()
    difficulty.GuestTolerances.nValue = 1
    nlApi.World.park:SetDifficultySettingsFromTable(difficulty)

    --nlApi.World.guests:ReGenerateAllGuestPreferences()

    nlApi.World.cheats:IgnoreFearAndNausea()

    nlApi.World.park:SetTooSteepValue(1)
    nlApi.World.park:SetCheckForCollisions(false)
    nlApi.World.park:SetCanPlaceOnSteep(true)
    nlApi.World.park:GetDebugSettings()

    --nlApi.World.guests:SetAllPreferenceWeights(999)
    nlApi.World.guests:SetAllPreferenceWeights(0)
    --nlApi.World.guests:SetPreferenceEffectMultiplier(9999)
    nlApi.World.guests:SetPreferenceCountWeights(prefCWeights2)

    nlApi.World.guests:SetGroupPreferenceWeights(guestPrefWeights)
    --apiProvider.guests:SetGroupPreferenceSpawners(test2)

    nlApi.World.guests:SetGroupGenderSpawnRules(genderSpawns)
    --apiProvider.guests:GetGroupGenderSpawnRules()

    nlApi.World.guests:SetBaseGroupSpawnWeights(gSpawnWeights)
    --apiProvider.guests:GetBaseGroupSpawnWeights()

    nlApi.World.guests:SetGroupSpawnWeightModifiers(gSpawns)
    --apiProvider.guests:GetGroupSpawnWeightModifiers()

    nlApi.World.guests:SetGuestSpawnData(9999, 999, 999999999, 999999999)

    --logger:Info("Max snow" .. nlApi.World.weather:GetMaxSnowAmount())
    nlApi.World.weather:SetMinSnowAmount(100)
    nlApi.World.weather:SetMaxSnowAmount(1000)
    nlApi.World.weather:SetMinDustAmount(100)
    nlApi.World.weather:SetMaxDustAmount(1000)
    --nlApi.World.weather:SetMinWaterAmount(100)
    --nlApi.World.weather:GetMaxWaterAmount(1000)
    --nlApi.World.weather:SetSeasonAvailability(true, 9999999, false, 0,  false, 0,  false, 0,  true)
    --nlApi.World.weather:SetSeasonTemperatures(-9999999, 0, 0, 0,  true)

    nlApi.World.weather:RegenerateWeather()

    local scenarioManager = nlApi.World.environment:RequireInterface("Interfaces.IScenarioManager")
    if scenarioManager then
        scenarioManager:SetEditCapacity(true)
        scenarioManager:SetCanPlayerSetSecurityFeaturesEnabled(true)
        scenarioManager:SetEditOpeningTimes(true)

        scenarioManager.IsScenarioEditMode = function(_self)
            return true
        end
    end

    api.debug.RunShellCommand("SetTweakable \"Camera.DebugDraw\" true")
    api.debug.RunShellCommand("SetTweakable \"ParkRating.GuestEffects.MaxGuestSpawnRate\" 50.0")
    api.debug.RunShellCommand("SetTweakable \"ParkRating.MaxParkRating\" 20")
    api.debug.RunShellCommand("SetTweakable \"ParkRating.EnableDebugDraw\" true")
    api.debug.RunShellCommand("SetTweakable \"Guests.History.EnableDebugDraw\" true")
    api.debug.RunShellCommand("SetTweakable \"Guests.ShowVisualOnSelect\" true")
    api.debug.RunShellCommand("SetTweakable \"Guests.ShowLogicalOnSelect\" true")
    api.debug.RunShellCommand("SetTweakable \"Lakes.ShowLava\" true")
    api.debug.RunShellCommand("SetTweakable \"Highlight.LiveEdit.Override_Invalid\" true")
    api.debug.RunShellCommand("SetTweakable \"Editors.EnforceBlueprintLimit\" false")
    api.debug.RunShellCommand("SetTweakable \"Input.DebugRenderKeyInput\" true")
    api.debug.RunShellCommand("SetTweakable \"Editors.ModesDebugDraw\" true")
    --api.debug.RunShellCommand("SetTweakable \"Notifications.DebugDraw\" true")

    api.debug.RunShellCommand("SetFanfaresEnabled true")
    api.debug.RunShellCommand("EditGUI TUTB")
    api.debug.RunShellCommand("DebugQueueNotification")
    api.debug.RunShellCommand("ScenarioEditGUI TUTB")
    api.debug.RunShellCommand("GetScenarioCode")
    api.debug.RunShellCommand("SupressTrace true")

    --EditorUtils.DumpHelperComponent()
    DebugUIAPI.TryShowWindow("Track Inspector")
    DebugUIAPI.TryShowWindow("InputManager")
    DebugUIAPI.TryShowWindow("Camera Mode Manager")
    DebugUIAPI.TryShowWindow("Scenario Selector")
    DebugUIAPI.TryShowWindow("Geographic Link")
    DebugUIAPI.TryShowWindow("Rivals And Support Facilities")
    DebugUIAPI.TryShowWindow("Objective Link Manager")
    DebugUIAPI.TryShowWindow("InfoPopup Debug")
    DebugUIAPI.TryShowWindow("Scenario Location Points")

    --DebugUtils.LogTable("AcseDebug", api.acsecomponentmanager)
    --DebugUtils.LogTable("Acse", api.acse)

    --DebugUtils.DebugDumpInterface("Interfaces.IGuestBucketManager", 4)

    local rideStations = nlApi.World.ridestation
    local rides = nlApi.World.rides

    if rideStations == nil or rides == nil then
        logger:Warn("No ridestations or rides interface")
        return rawApi.TestAttraction(self, stationID)
    end

    logger:Info("TestAttraction() attempting to obtain rideID from stationID: " .. tostring(stationID))
    local nRideID = rideStations:GetRideEntityIDFromStationEntityID(stationID)
    if nRideID == nil then
        logger:Warn("No ride for stationID " .. tostring(stationID))
        return rawApi.TestAttraction(self, stationID)
    end

    local sRideString = "rides"
    local tRideInfo = rides:GetRideInfo(nRideID)
    DebugUtils.LogTable("GetRideInfo()", tRideInfo)
    if tRideInfo.isTransport then
        sRideString = "trackRidesMultipleStations"
    else
        if not tRideInfo.isCoaster and rides:IsTrackedRide(nRideID) then
            sRideString = "trackedRides"
        end
    end

    if tRideInfo.type == 'tracked' then
        logger:Info("Starting to add fake guests")
        local trains = nlApi.World.trackedrides:GetAllTrainsOnTrackedRide(nRideID)

        if trains ~= nil then
            for _, train in pairs(trains) do
                local seats = nlApi.World.rides:GetSeatsForTrain(train)
                for _, seat in pairs(seats) do
                    local info = nlApi.World.rides:GetSeatInfo(seat)
                    DebugUtils.LogTable(tostring(seat), info)

                    local situation = nlApi.World.rides:GetSeatSituation(seat)
                    logger:Info("Seat situation: " .. tostring(situation))

                    local existingGuest = nlApi.World.rides:GetGuestInSeat(seat)
                    if existingGuest == nil then
                        existingGuest = nlApi.World.rides:GetDummyInSeat(seat)
                    end

                    logger:Info("Existing guest " .. tostring(existingGuest))
                    if existingGuest == nil then
                        local completionToken = api.entity.CreateRequestCompletionToken()
                        local _, prop = api.multipart2.GenerateRandom("AF", nil)
                        existingGuest = api.entity.InstantiatePrefab("Peep_AF", "GuestOnRide_AF_1", completionToken, TransformQ.Identity, nil, true, prop)
                    end

                    nlApi.World.rides:SetPeepInSeat(seat, existingGuest)
                    nlApi.World.rides:SetDummyInSeat(seat, existingGuest)
                end
            end

            logger:Info("Placing in seat")

            --nlApi.World.rides:OpenRide(nRideID)

            --nlApi.World.rides:SetPeepInSeat(seats[1], entity)
            --nlApi.World.rides:SetDummyInSeat(seats[2])

            logger:Info("Random instantiate test")
            --nlApi.World.guests:InstantiateRandomGroup(-1)

            --local WaitFor = function()
            --  -- function num : 0_0 , upvalues : api, coroutine
            --  while not api.entity.HaveRequestsCompleted(completionToken) do
            --
            --  end
            --end
            --
            --logger:Info("Waiting for request")
            --WaitFor()
            --logger:Info("Successfuly completed request")

            --local age = nlApi.World.guests.Guests_Age_Adult
            --local nGender = nlApi.World.guests.Guests_Gender_Female

            --local test = nlApi.World.RideSeat:GetReservationDataForRide(trains[1])
            --DebugUtils.LogTable("GetReservationDataForRide", test)
            --
            --
            --logger:Info("Addingfake guests")
            --TrackedRideUtils.AddFakeGuestsToTrain(trains[1])
            return
        end
    end

    logger:Info("TestAttraction() found rideID: " .. tostring(nRideID) .. " for stationID: " .. tostring(stationID))
    if rides:IsTested(nRideID) == false then
        logger:Info("TestAttraction() rideID " .. tostring(nRideID) .. " is not tested")
        return rawApi.TestAttraction(self, stationID)
    end

    if not Config.Get("tRides.bFakeEFN", false) then
        return rawApi.TestAttraction(self, stationID)
    end

    local rideContext = api.ui2.GetDataStoreContext(sRideString, "ride" .. nRideID)
    api.ui2.SetDataStoreElement(rideContext, "optionalExcitementResult", 20)
    api.ui2.SetDataStoreElement(rideContext, "optionalFearResult", 4)
    api.ui2.SetDataStoreElement(rideContext, "optionalNauseaResult", 1)
    api.ui2.SetDataStoreElement(rideContext, "excitementResult", 20)
    api.ui2.SetDataStoreElement(rideContext, "fearResult", 4)
    api.ui2.SetDataStoreElement(rideContext, "nauseaResult", 1)
    api.ui2.SetDataStoreElement(rideContext, "warningTooExtreme", 0)

    local trackedRideDataStoreComp = nlApi.World.TrackedRideDataStoreComponent
    if not trackedRideDataStoreComp then
        logger:Warn("No TrackedRideDataStoreComponent")
        return rawApi.TestAttraction(self, stationID)
    end

    if trackedRideDataStoreComp.tEntities == nil then
        logger:Warn("No trackedRideDataStoreComp.tEntities")
        return rawApi.TestAttraction(self, stationID)
    end

    local tComponentData = trackedRideDataStoreComp.tEntities[nRideID]
    if tComponentData == nil then
        logger:Warn("No trackedRide for rideID " .. tostring(nRideID))
        return rawApi.TestAttraction(self, stationID)
    end

    DebugUtils.LogTable("trackedRide", tComponentData)
    tComponentData.bCanBeOpened = true;
    local context = tComponentData.oEntityContext

    ---@diagnostic disable-next-line: param-type-not-match
    api.ui2.SetDataStoreElement(context, "openEnabled", true)

    return rawApi.TestAttraction(self, stationID)
end

function NLAttractionsAPI.OpenAttraction(rawApi, self, stationID)
    local removeAttractionNoOpenReason = function(stationID, reason)
        if rawApi.HasNoOpenReason(self, stationID, reason) then
            logger:Info("Removing NoOpenReason " .. tostring(reason) .. " from attraction")
            rawApi.RemoveNoOpenReason(self, stationID, reason)
        end

        return
    end

    api.debug.RunShellCommand("SetFanfaresEnabled true")
    api.debug.RunShellCommand("EditGUI")
    api.debug.RunShellCommand("DebugQueueNotification")
    api.debug.RunShellCommand("ScenarioEditGUI TUTB")
    api.debug.RunShellCommand("GetScenarioCode")

    --api.debug.RunShellCommand("PlayDebugCinematic")
    --api.debug.RunShellCommand("Help")
    --api.debug.RunShellCommand("ListTweakables")
    --api.debug.RunShellCommand("SetRideLocked true")
    --api.debug.RunShellCommand("WriteParkSettingsDataToFile \"F:\\PlancoModding\\parksettings.lua\"")


    --if nlApi.World.environment then
    --    DebugUtils.LogTable("!!!Environment interfaces", nlApi.World.environment.tInterfaces)
    --    DebugUtils.LogTable("!!!Environment managers", nlApi.World.environment.tManagers)
    --end
    --
    --DebugUtils.DebugDumpInterface("Interfaces.IUIManager")
    --DebugUtils.DebugDumpInterface("Interfaces.IParkLoadSaveManager")
    --DebugUtils.DebugDumpInterface("Interfaces.INextWorldDataManager")
    --DebugUtils.DebugDumpInterface("Interfaces.IGameIntentManager")
    --DebugUtils.DebugDumpInterface("Interfaces.ICoasterLabelsUIManager")
    --DebugUtils.DebugDumpInterface("Interfaces.IButtonPromptsManager")
    --DebugUtils.DebugDumpInterface("Interfaces.IGuestBucketManager")
    --DebugUtils.DebugDumpInterface("Interfaces.IBrowserDataManager")
    --DebugUtils.DebugDumpInterface("Interfaces.ISandboxSettingsManager")
    --local scenarioManager = DebugUtils.DebugDumpInterface("Interfaces.IScenarioManager")
    --
    --if scenarioManager ~= nil then
    --    DebugUtils.LogTable("Sandbox Data", scenarioManager:GetSandboxData())
    --    DebugUtils.LogTable("Preference Counts Data", scenarioManager:GetPreferenceCounts())
    --    DebugUtils.LogTable("Scenario Events", scenarioManager:GetScenarioEvents())
    --end

    removeAttractionNoOpenReason(stationID, nlApi.World.attractions.AttractionsOpenStateReason_NotCreated)
    removeAttractionNoOpenReason(stationID, nlApi.World.attractions.AttractionsOpenStateReason_Moving)
    removeAttractionNoOpenReason(stationID, nlApi.World.attractions.AttractionsOpenStateReason_NoQueue)
    removeAttractionNoOpenReason(stationID, nlApi.World.attractions.AttractionsOpenStateReason_IncompleteFlume)
    removeAttractionNoOpenReason(stationID, nlApi.World.attractions.AttractionsOpenStateReason_Maintenance)
    removeAttractionNoOpenReason(stationID, nlApi.World.attractions.AttractionsOpenStateReason_InvalidRide)
    removeAttractionNoOpenReason(stationID, nlApi.World.attractions.AttractionsOpenStateReason_NoPower)
    removeAttractionNoOpenReason(stationID, nlApi.World.attractions.AttractionsOpenStateReason_TooExtreme)
    return rawApi.OpenAttraction(self, stationID)
end

function NLAttractionsAPI.UpdateOpenState(self, _tRides)

end

return BaseAPI.Validate(NLAttractionsAPI)