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
local string        = global.string
local tostring      = global.tostring
local database      = api.database
local time          = api.time
local nlApi         = api.nlApi

local Vector3           = require("Vector3")
local Rotation          = require("Rotation")
local Quaternion        = require("Quaternion")
local TransformQ        = require("TransformQ")
local Transform         = require("Transform")
local AngleUtils        = require("Common.angleUtils")
local TrackEditInput    = require("Editors.Track.TrackEditInput")
local ModeChangeRequestGamefaceTrackUI = require("Editors.Gameface.ModeChangeRequestGamefaceTrackUI")

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local MathUtils     = require("Utility.Mod_NoLimits.MathUtils")                 ---@type Mod_NoLimits.MathUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local EditorUtils   = require("Utility.Mod_NoLimits.EditorUtils")               ---@type Mod_NoLimits.EditorUtils
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")          ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")      ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.TrackedRidesAPI : Mod_NoLimits.API.Base
local NLTrackedRidesAPI = BaseAPI.NewAPI("TrackedRidesAPI")
local logger = NLTrackedRidesAPI.Logger

NLTrackedRidesAPI.Enabled = true
NLTrackedRidesAPI.CoreAPIName = nil
NLTrackedRidesAPI.WorldAPIName = "trackedrides"

NLTrackedRidesAPI.Debug_DumpAPI = false

function NLTrackedRidesAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("AddToDuel")
            :Disable(),
        APIEntry.NewEntry("AreAllCarsOnTrack")
            :AsListener(),
        APIEntry.NewEntry("AttachShootableTargetHighlightRequest")
            :Disable(),
        APIEntry.NewEntry("CanShootTarget")
            :Disable(),
        APIEntry.NewEntry("CommitTrainManager")
            :AsListener(),
        APIEntry.NewEntry("CompleteBlueprintSerialisationLoad")
            :Disable(),
        APIEntry.NewEntry("CompleteTrainWorldSerialisationLoad")
            :Disable(),
        APIEntry.NewEntry("CompleteWorldSerialisationLoad")
            :Disable(),
        APIEntry.NewEntry("CreateShootableTargetHighlightRequest")
            :Disable(),
        APIEntry.NewEntry("CreateTrainOnTrack")
            :AsListener(),
        APIEntry.NewEntry("DetachShootableTargetHighlightRequest")
            :Disable(),
        APIEntry.NewEntry("DoesTrackStartAndEndAtStation")
            :Disable(),
        APIEntry.NewEntry("GetAllTrackedRides")
            :Disable(),
        APIEntry.NewEntry("GetAllTrackedRidesInDuel")
            :Disable(),
        APIEntry.NewEntry("GetAllTrainsOnTrackedRide")
            :AsListener(),
        APIEntry.NewEntry("GetAmmoLimit")
            :Disable(),
        APIEntry.NewEntry("GetCarDistanceFromStation")
            :AsListener(),
        APIEntry.NewEntry("GetCarEFN")
            :Disable(),
        APIEntry.NewEntry("GetCarFrontTrackLocation_Display")
            :Disable(),
        APIEntry.NewEntry("GetCarIsOnTrack")
            :Disable(),
        APIEntry.NewEntry("GetCarLocalAcceleration")
            :Disable(),
        APIEntry.NewEntry("GetCarLocalGForce")
            :Disable(),
        APIEntry.NewEntry("GetCarState")
            :AsListener(),
        APIEntry.NewEntry("GetCarTrackSpeed")
            :Disable(),
        APIEntry.NewEntry("GetCarTriggers")
            :AsListener(),
        APIEntry.NewEntry("GetCarsInTrain")
            :AsListener(),
        APIEntry.NewEntry("GetConnectedShootableTargetCount")
            :Disable(),
        APIEntry.NewEntry("GetConnectedShootableTargetParts")
            :Disable(),
        APIEntry.NewEntry("GetIsAmmoInfinite")
            :Disable(),
        APIEntry.NewEntry("GetNextTrainToLeaveStation")
            :Disable(),
        APIEntry.NewEntry("GetNumPointsForTarget")
            :Disable(),
        APIEntry.NewEntry("GetNumShootableTargetsMax")
            :Disable(),
        APIEntry.NewEntry("GetRidesConnectedToTarget")
            :Disable(),
        APIEntry.NewEntry("GetShootingFreeCamEnabled")
            :Disable(),
        APIEntry.NewEntry("GetShootingMultiplier")
            :Disable(),
        APIEntry.NewEntry("GetShootingSceneryPiercing")
            :Disable(),
        APIEntry.NewEntry("GetShootingScores")
            :Disable(),
        APIEntry.NewEntry("GetStationBehindTrain")
            :AsListener(),
        APIEntry.NewEntry("GetStationTimeLeft")
            :Disable(),
        APIEntry.NewEntry("GetTargetForwardShootVector")
            :Disable(),
        APIEntry.NewEntry("GetTargetPartRideConnected")
            :Disable(),
        APIEntry.NewEntry("GetTrackedRideOperationMode")
            :Disable(),
        APIEntry.NewEntry("GetTrainAtStation")
            :Disable(),
        APIEntry.NewEntry("GetTrainContainingCar")
            :AsListener(),
        APIEntry.NewEntry("GetTrainTypeForTrackedRide")
            :Disable(),
        APIEntry.NewEntry("IsLoadedTrackedRide")
            :Disable(),
        APIEntry.NewEntry("IsShootableTarget")
            :Disable(),
        APIEntry.NewEntry("IsShootingMinigameEnabled")
            :Disable(),
        APIEntry.NewEntry("IsShuttleLaunchCoaster")
            :Disable(),
        APIEntry.NewEntry("IsSubtrainOnStation")
            :AsListener(),
        APIEntry.NewEntry("IsSubtrainStoppedAtStation")
            :Disable(),
        APIEntry.NewEntry("IsUnconnectedStation")
            :Disable(),
        APIEntry.NewEntry("LimitNumberOfCarsByTrainLength")
            :AsListener(),
        APIEntry.NewEntry("NotifyTrackedRideOfTrackEdit")
            :WithLogCall(),
        APIEntry.NewEntry("RemoveFromDuel")
            :Disable(),
        APIEntry.NewEntry("RemoveTarget")
            :Disable(),
        APIEntry.NewEntry("RequestRemoveNormalTrainsOnTrackedRide")
            :AsListener(),
        APIEntry.NewEntry("RequestRemoveNormalTrainsOnTrackedRide_IsPending")
            :Disable(),
        APIEntry.NewEntry("SetAmmoLimit")
            :Disable(),
        APIEntry.NewEntry("SetConnectedTargetParts")
            :Disable(),
        APIEntry.NewEntry("SetGuestGunsVisible")
            :Disable(),
        APIEntry.NewEntry("SetGuestsCanShoot")
            :Disable(),
        APIEntry.NewEntry("SetIsAmmoInfinite")
            :Disable(),
        APIEntry.NewEntry("SetShootingFreeCamEnabled")
            :Disable(),
        APIEntry.NewEntry("SetShootingSceneryPiercing")
            :Disable(),
        APIEntry.NewEntry("SetSubTrainIsUserControlled")
            :Disable(),
        APIEntry.NewEntry("SetSubTrainUserInput")
            :Disable(),
        APIEntry.NewEntry("SetTrainTypeForTrackedRide")
            :Disable(),
        APIEntry.NewEntry("ShootTarget")
            :Disable(),
        APIEntry.NewEntry("ShowDebugEFNDisplayForCarIfEnabled")
            :AsListener(),
        APIEntry.NewEntry("SubmitShootingScore")
            :Disable(),
    }

    return tEntries
end

function NLTrackedRidesAPI.EmptyFunc(rawApi, track, sElementName)
end

return BaseAPI.Validate(NLTrackedRidesAPI)