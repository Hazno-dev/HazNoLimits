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
local tostring      = global.tostring
local pairs         = global.pairs
local ipairs        = global.ipairs
local math          = global.math
local tryrequire    = global.tryrequire
local package       = global.package
local type          = global.type
local debug         = global.debug
local HazNoLibrary  = api.HazNoLibrary
local database      = api.database
local nlApi         = api.nlApi
local Vector3       = require("Vector3")

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local GuestUtils    = require("Utility.Mod_NoLimits.GuestUtils")                ---@type Mod_NoLimits.GuestUtils
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")          ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")      ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.GuestAPI : Mod_NoLimits.API.Base
local NLGuestAPI = BaseAPI.NewAPI("GuestAPI")
local logger = NLGuestAPI.Logger

NLGuestAPI.Enabled = true
NLGuestAPI.CoreAPIName = nil
NLGuestAPI.WorldAPIName = "guests"

NLGuestAPI.Debug_DumpAPI = false

--NLGuestAPI.SetGuestData = nil
--NLGuestAPI.SetGroupData = nil

function NLGuestAPI.GetOverrides(apiProvider)
    --if NLGuestAPI.SetGuestData == nil then
    --    NLGuestAPI.SetGuestData = package.loadlib(".\\Win64\\ovldata\\Mod_NoLimits\\NoLimitsLib", 'Lua_SetGuestData')
    --    NLGuestAPI.SetGroupData = package.loadlib(".\\Win64\\ovldata\\Mod_NoLimits\\NoLimitsLib", 'Lua_SetGroupData')
    --    if NLGuestAPI.SetGuestData == nil then
    --        logger:Error("Failed to load NoLimitsLib")
    --    else
    --        logger:Info("NoLimitsLib loaded successfully")
    --    end
    --end

    local tEntries = {
        APIEntry.NewEntry("AllocateGroup")
            :AsListener(),
        APIEntry.NewEntry("CalculateAndGetRatioOfGuestsWithMood", {"self", "bArg2", "moodDesperate"})
            :Disable(),
        APIEntry.NewEntry("CalculateAndGetRatioOfGuestsWithSunburn", {"self", "bArg2"})
            :Disable(),
        APIEntry.NewEntry("CanSuspendGroup", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("CompleteMiscreantSystemWorldSerialisationLoad", {"self"})
            :Disable(),
        APIEntry.NewEntry("CompleteSerialisationAfterEntitiesCreated", {"self"})
            :Disable(),
        APIEntry.NewEntry("CompleteWorldSerialisationLoad", {"self"})
            :Disable(),
        APIEntry.NewEntry("DebugRequestDespawnGroup")
            :Disable(),
        APIEntry.NewEntry("EjectGuestsFromPark", {"self", "nGroupID", "ejectedFromParkReasonByPlayer"})
            :AsListener(),
        APIEntry.NewEntry("GenerateNewUIName", {"self", "guestsGenderFemale"})
            :Disable(),
        APIEntry.NewEntry("GetActiveMoodReasons")
            :Disable(),
        APIEntry.NewEntry("GetAllGuestNeedTypesAsString", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetAllPossibleMoodReasons")
            :Disable(),
        APIEntry.NewEntry("GetAllThoughtVariantUIStrings")
            :Disable(),
        APIEntry.NewEntry("GetAreInitialDecisionsMade", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetAverageGuestSceneryScore", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetBaseGroupSpawnWeights", {"self"})
            :AsListener(),
        APIEntry.NewEntry("GetChildGroupsWeightedRatio", {"self"})
            :AsListener(),
        APIEntry.NewEntry("GetDebugTrivia", {"self", "guestID"})
            :Disable(),
        APIEntry.NewEntry("GetDestinationEntrance")
            :Disable(),
        APIEntry.NewEntry("GetDestinationType", {"self", "nEntityID"})
            :Disable(),
        APIEntry.NewEntry("GetEntertainmentRateMultiplier")
            :Disable(),
        APIEntry.NewEntry("GetFirstGuestInGroup", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("GetGlobalAverageNeeds", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetGlobalThoughtSummary", {"self", "nCNThoughtsToGenerate", "nEntityID", "nMinProp"})
            :Disable(),
        APIEntry.NewEntry("GetGlobalThoughtsDebug")
            :AsListener(),
        APIEntry.NewEntry("GetGroupCash", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("GetGroupDecisionState", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("GetGroupFavouriteBrand", {"self", "nGroupID"})
            :AsListener(),
        APIEntry.NewEntry("GetGroupFavouriteRide", {"self", "nGroupID"})
            :AsListener(),
        APIEntry.NewEntry("GetGroupFavouriteRideType", {"self", "nGroupID"})
            :AsListener(),
        APIEntry.NewEntry("GetGroupFavouriteTheme", {"self", "nGroupID"})
            :AsListener(),
        APIEntry.NewEntry("GetGroupFoodRestrictions", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("GetGroupGenderSpawnRules", {"self"})
            :AsListener(),
        APIEntry.NewEntry("GetGroupNeeds")
            :Disable(),
        APIEntry.NewEntry("GetGroupParkStayLength", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("GetGroupRideExperience", {"self", "nGroupID"})
            :AsListener(),
        APIEntry.NewEntry("GetGroupRideTolerances", {"self", "nGroupID"})
            :AsListener(),
        APIEntry.NewEntry("GetGroupSpawnWeightModifiers", {"self"})
            :AsListener(),
        APIEntry.NewEntry("GetGroupSuccessfulRideHistory", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("GetGroupTimeInPark", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("GetGroupTypeName", {"self", "i"})
            :Disable(),
        APIEntry.NewEntry("GetGroupWaterAttractionType", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestAilments", {"self", "nGuestID", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestAilmentsToString")
            :Disable(),
        APIEntry.NewEntry("GetGuestBrainStats", {"self"})
            :AsListener(),
        APIEntry.NewEntry("GetGuestCurrentComplex", {"self", "nGuestID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestData", {"self", "nGuestID"})
            :WithLogOutputs():WithCallDelegate(NLGuestAPI.GetGuestData),
        APIEntry.NewEntry("GetGuestDemographicData", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetGuestDestinationNeedSatisfaction")
            :Disable(),
        APIEntry.NewEntry("GetGuestHasMoodReason")
            :Disable(),
        APIEntry.NewEntry("GetGuestInventory", {"self", "nGuestID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestMood", {"self", "nGuestID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestMoodQualitiesAsTable")
            :Disable(),
        APIEntry.NewEntry("GetGuestMoodTypesAsTable")
            :Disable(),
        APIEntry.NewEntry("GetGuestNeeds", {"self", "nGuestID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestNeedsCriticalThreshold", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetGuestNeedsGoodThreshold")
            :Disable(),
        APIEntry.NewEntry("GetGuestNeedsPressingThreshold", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetGuestRideTolerances")
            :AsListener(),
        APIEntry.NewEntry("GetGuestStatusForPhysicsState", {"self", "nGuestID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestThoughts", {"self", "nGuestID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestUIName", {"self", "nGuestID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestVisualEntityID", {"self", "targetEntityID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestsDefaultGroupOffsets", {"self", "nGroupID"})
            :AsListener(),
        APIEntry.NewEntry("GetGuestsEjectedFromParkReason", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestsInGroup", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("GetGuestsNeedStatesPortions")
            :Disable(),
        APIEntry.NewEntry("GetHavePendingCrowdParticlesLoadedFromSave", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetHighestPriorityReasonOnGuest")
            :Disable(),
        APIEntry.NewEntry("GetMaxPossibleTolerances", {"self"})
            :AsListener(),
        APIEntry.NewEntry("GetMoodExperience", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetMoodReasonLocString", {"self", "nHighestPriMoodReason"})
            :Disable(),
        APIEntry.NewEntry("GetNeedUIThresholds", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetNextTrappedGuest", {"self", "nLastLostGuestEntity"})
            :Disable(),
        APIEntry.NewEntry("GetNumGuests", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetNumGuestsEnteredParkPerDay")
            :Disable(),
        APIEntry.NewEntry("GetNumGuestsInsidePark", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetNumTheftVictims", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetNumTheftVictimsLastMonth")
            :Disable(),
        APIEntry.NewEntry("GetNumTheftVictimsThisMonth")
            :Disable(),
        APIEntry.NewEntry("GetNumberOfGuestsWatchingFireworks")
            :Disable(),
        APIEntry.NewEntry("GetOverallGuestExperience", {"self", "bArg2"})
            :Disable(),
        APIEntry.NewEntry("GetPoolAreaProportionCoveredByLifeguardPosts", {"self", "poolID"})
            :Disable(),
        APIEntry.NewEntry("GetSceneryIdealWeight", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetSpecificGuestExperiences", {"self", "nGuestID"})
            :Disable(),
        APIEntry.NewEntry("GetThoughtExperience", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetTotalAreaProportionCoveredByLifeguardPosts")
            :Disable(),
        APIEntry.NewEntry("GetTrappedGuestCount", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetUmbrellaCount")
            :Disable(),
        APIEntry.NewEntry("GetVomitChanceThresholdMultiplier")
            :Disable(),
        APIEntry.NewEntry("GetVomitProbabilityPerSecondMultiplier")
            :Disable(),
        APIEntry.NewEntry("GetWaterPanicMultiplier")
            :Disable(),
        APIEntry.NewEntry("GetWetnessState", {"self", "nGuestID"})
            :Disable(),
        APIEntry.NewEntry("GiveBalloonsCheat")
            :AsListener(),
        APIEntry.NewEntry("GroupHasGoodPoolEntrance")
            :Disable(),
        APIEntry.NewEntry("HideThoughtIcons", {"self"})
            :Disable(),
        APIEntry.NewEntry("InstantiateRandomGroup")
            :AsListener(),
        APIEntry.NewEntry("IsCreatingWanderPointsFromLoad", {"self"})
            :Disable(),
        APIEntry.NewEntry("IsGroupInsidePark", {"self", "nGroupID"})
            :WithReturnValues(true),
        APIEntry.NewEntry("IsGuestTrapped", {"self", "nEntityID"})
            :Disable(),
        APIEntry.NewEntry("IsMiscreant")
            :Disable(),
        APIEntry.NewEntry("IsValidGroup", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("MakeGuestPanicInWater", {"self"})
            :Disable(),
        APIEntry.NewEntry("MiscreantLeaveParkNow")
            :Disable(),
        APIEntry.NewEntry("OnRideReactions_GetDebugString")
            :Disable(),
        APIEntry.NewEntry("OnRideReactions_RideInputOverride")
            :Disable(),
        APIEntry.NewEntry("ParkReset", {"self", "bKeepGuests"})
            :Disable(),
        APIEntry.NewEntry("ProgressGuestExperienceDay", {"self"})
            :Disable(),
        APIEntry.NewEntry("ReGenerateAllGuestPreferences", {"self"})
            :AsListener(),
        APIEntry.NewEntry("ReleaseBalloonsCheat")
            :Disable(),
        APIEntry.NewEntry("RequestParkClothes")
            :AsListener(),
        APIEntry.NewEntry("RequestSuspendGroup", {"self", "nGroupID"})
            :Disable(),
        APIEntry.NewEntry("RequestSwimClothes")
            :AsListener(),
        APIEntry.NewEntry("SetAllPreferenceWeights", {"self", "nArg2"})
            :Disable(),
        APIEntry.NewEntry("SetBaseGroupSpawnWeights", {"self", "cBaseGroupSpawnRates"})
            :Disable(),
        APIEntry.NewEntry("SetBoostSunburnThoughts", {"self", "nBoostValue"})
            :Disable(),
        APIEntry.NewEntry("SetEntertainmentRateMultiplier", {"self", "Arg2"})
            :Disable(),
        APIEntry.NewEntry("SetGroupCanBecomeVandalChance", {"self", "nSecurityGroupCanBecomeVandalChance"})
            :Disable(),
        APIEntry.NewEntry("SetGroupGenderSpawnRules", {"self", "cGroupGenderSpawnRules"})
            :Disable(),
        APIEntry.NewEntry("SetGroupPreferenceSpawners", {"self", "cPreferenceSpawners"})
            :AsListener(),
        APIEntry.NewEntry("SetGroupPreferenceWeights", {"self", "cPreferenceWeights"})
            :AsListener(),
        APIEntry.NewEntry("SetGroupSpawnWeightModifiers", {"self", "cSpawnWeightModifiers"})
            :Disable(),
        APIEntry.NewEntry("SetGuestHatVisual")
            :Disable(),
        APIEntry.NewEntry("SetGuestLuxuryNeed")
            :Disable(),
        APIEntry.NewEntry("SetGuestMoodsEnabled", {"self", "bEnabledMoods"})
            :Disable(),
        APIEntry.NewEntry("SetGuestNeed", {"self", "guestID", "nArg3", "Arg4"})
            :AsListener(),
        APIEntry.NewEntry("SetGuestNeedAlwaysSatisfied", {"self", "needHunger", "Arg3"})
            :Disable(),
        APIEntry.NewEntry("SetGuestNeedSandboxMultiplier", {"self", "needHunger", "nHungerMultiplier"})
            :Disable(),
        APIEntry.NewEntry("SetGuestRefundMultiplier", {"self", "Arg2"})
            :Disable(),
        APIEntry.NewEntry("SetGuestSpawnData", {"self", "nIdealNumberOfGuests", "nSpawnRate", "nCappedGuestStayLength", "Arg5"})
            :Disable(),
        APIEntry.NewEntry("SetGuestUIName", {"self", "guestID", "arg"})
            :Disable(),
        APIEntry.NewEntry("SetGuestWeatherEffectsEnabled", {"self", "bEnabledWeatherEffects"})
            :Disable(),
        APIEntry.NewEntry("SetMiscreantSpawnData", {"self", "cPickpocketSpawnData"})
            :Disable(),
        APIEntry.NewEntry("SetMiscreantSpawnLimits", {"self", "nSecurityNumGuestsPerPickpocketSpawn", "nSecurityMinGuestsBeforePickpocketSpawn", "nSecurityMaxPickpocketsInPark"})
            :Disable(),
        APIEntry.NewEntry("SetParkClothesHidden")
            :Disable(),
        APIEntry.NewEntry("SetPeepHeadHidden", {"self", "guestEntityID", "bArg3", "bArg4"})
            :Disable(),
        APIEntry.NewEntry("SetPeepHidden", {"self", "i", "bArg3", "bArg4"})
            :Disable(),
        APIEntry.NewEntry("SetPreferenceCountWeights", {"self", "cPreferenceCounts"})
            :Disable(),
        APIEntry.NewEntry("SetPreferenceEffectMultiplier", {"self", "nPreferenceMultiplier"})
            :Disable(),
        APIEntry.NewEntry("SetSunburnEnabled", {"self", "bEnabledSunburn"})
            :Disable(),
        APIEntry.NewEntry("SetSunburnMultiplier", {"self", "nSunburnMultiplier"})
            :Disable(),
        APIEntry.NewEntry("SetSwimClothesHidden")
            :Disable(),
        APIEntry.NewEntry("SetTutorialOverrideIconForGuest", {"self", "nNullEntityID", "guestThoughtTypeDrowning"})
            :Disable(),
        APIEntry.NewEntry("SetVomitChanceThresholdMultiplier", {"self", "nVomitChanceThresholdMultiplier"})
            :Disable(),
        APIEntry.NewEntry("SetVomitEnabled", {"self", "bEnabledVomit"})
            :Disable(),
        APIEntry.NewEntry("SetVomitProbabilityPerSecondMultiplier", {"self", "nVomitProbabilityPerSecondMultiplier"})
            :Disable(),
        APIEntry.NewEntry("SetWaterPanicMultiplier", {"self", "nGuestsWaterPanicMultiplier"})
            :Disable(),
        APIEntry.NewEntry("ShowThoughtIconsForDestination", {"self", "nRideID", "Arg3"})
            :Disable(),
        APIEntry.NewEntry("ShowThoughtIconsForGuest", {"self", "nGuestID", "view"})
            :Disable(),
        APIEntry.NewEntry("ShowThoughtIconsForStaff", {"self", "entityID", "Arg3"})
            :Disable(),
        APIEntry.NewEntry("StartUnsuspendGroup", {"self", "nGroupID", "nPoolEntityID"})
            :Disable(),
        APIEntry.NewEntry("SwitchToExternallyHandled")
            :AsListener(),
        APIEntry.NewEntry("TryGetGuestGroupID", {"self", "nGuestID"})
            :Disable(),
    }

    return tEntries
end

function NLGuestAPI.GetGuestData(rawApi, self, nGuestID)
    logger:Info("GetGuestData() for nGuestID=" .. nGuestID)
    logger:Info("GetGuestData() for nGuestID=" .. tostring(self) .. tostring(rawApi))

    DebugUtils.LogFunctionInfo("GetGuestData", rawApi.GetGuestData)
    DebugUtils.Trace("GuestData traceback: ")

    DebugUtils.LogMetatableFull("GuestsAPI", api.world.GetWorldAPIs().guests)
    DebugUtils.LogMetatableFull("GuestsAPI", rawApi)
    DebugUtils.LogMetatableFull("GuestsAPI", self)

    global.debug.debug()

    local test = package.loaded["game::luascript::api::guests"];

    local userdata = nil;
    for k, v in pairs(package.loaded) do
        if v.GetGuestsInGroup ~= nil then
            logger:Info("  Loaded module key=" .. tostring(k) .. " value=" .. tostring(v))

            if type(k) =="userdata" then
                userdata = k;
                break;
            end
        end
    end

    NLGuestAPI.Target.GetMaxPossibleTolerances(self)

    rawApi.GetGuestData(self, nGuestID)

    logger:Info("Calling MyGetGuestDataRaw. Found data - UserDataRef=" .. tostring(NLGuestAPI.UserDataRef) .. " userdata(Module)=" .. tostring(userdata) .. " nGuestID=" .. tostring(nGuestID) .. " self=" .. tostring(self))

    local test = HazNoLibrary.API.Guests:SetGuestData(nGuestID)
    logger:Info("MyGetGuestDataRaw returned: " .. tostring(test))



    --GuestUtils.ModifyGuest(nGuestID)

    local groupID = rawApi.TryGetGuestGroupID(NLGuestAPI.Target, nGuestID)
    logger:Info("GetGuestData() for groupID=" .. groupID)

    if groupID == nil then
        logger:Error("GetGuestData() could not find groupID for nGuestID=" .. nGuestID)
        return rawApi.GetGuestData(self, nGuestID)
    end

    HazNoLibrary.API.Guests:SetGroupData(groupID)

    local tol = rawApi.GetGuestRideTolerances(self, nGuestID)
    logger:Info("GetGuestRideTolerances() returned: " .. tostring(tol))
    DebugUtils.LogTable("GetGuestRideTolerances", tol)

    logger:Info("Requesting swim clothes for guest and group")
    rawApi.RequestSwimClothes(NLGuestAPI.Target, groupID)

    logger:Info("Requesting swim clothes for guest and group")
    rawApi.RequestSwimClothes(NLGuestAPI.Target, nGuestID)

    logger:Info("Hiding park clothes for guest and group")
    rawApi.SetParkClothesHidden(NLGuestAPI.Target, groupID, true)
    logger:Info("Hiding park clothes for guest and group")
    rawApi.SetParkClothesHidden(NLGuestAPI.Target, nGuestID, true)
    logger:Info("Hiding park clothes for guest and group")
    rawApi.SetParkClothesHidden(NLGuestAPI.Target, nGuestID, true, true)


    logger:Info("Making guest panic in water")
    rawApi.MakeGuestPanicInWater(NLGuestAPI.Target, nGuestID)


    logger:Info("Giving balloons cheat to group")
    rawApi.GiveBalloonsCheat(NLGuestAPI.Target, groupID)

    logger:Info("Triggering nausea for guest")
    --apiProvider.cheats:TriggerGuestNausea(nGuestID)

    logger:Info("Triggering nausea")
    --apiProvider.cheats:TriggerGuestNausea()

    nlApi.World.cheats:IgnoreFearAndNausea()

    logger:Info("Adding speed boost racing cheat to guest")
    nlApi.World.cheats:AddGuestForSpeedBoostRacingCheat(nGuestID)

    --local stats = boundAPI:GetGuestBrainStats(nGuestID)
    --logger:Info("GetGuestData() GuestBrainStats: " .. tostring(stats))

    return rawApi.GetGuestData(self, nGuestID)
end

return BaseAPI.Validate(NLGuestAPI)