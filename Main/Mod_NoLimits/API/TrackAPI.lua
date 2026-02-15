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

---@class Mod_NoLimits.API.TrackAPI : Mod_NoLimits.API.Base
local NLTrackAPI = BaseAPI.NewAPI("TrackAPI")
local logger = NLTrackAPI.Logger
local playerInteractionHandlerOpenTrackEditMode = nil

NLTrackAPI.Enabled = true
NLTrackAPI.CoreAPIName = "track"
NLTrackAPI.WorldAPIName = nil

NLTrackAPI.Debug_DumpAPI = false

function NLTrackAPI:OverrideWorldAPI(worldAPI)
    api.nlApi.World.PlayerInteractionHandler.OpenTrackEditMode = NLTrackAPI.PlayerInteractionHandlerOpenTrackEditMode
end

function NLTrackAPI.GetOverrides(apiProvider)
    DebugUtils.LogTable("apiprovider", api.nlApi.World)

    local tEntries = {
        APIEntry.NewEntry("AddAndMoveTrack")
            :Disable(),
        APIEntry.NewEntry("AddGatesToEmptyStations")
            :Disable(),
        APIEntry.NewEntry("AddHolder")
            :Disable(),
        APIEntry.NewEntry("AddRideAndRecursiveSequenceItemsToMultiSelection")
            :Disable(),
        APIEntry.NewEntry("AddRideConnectedTargetsToMultiSelection")
            :Disable(),
        APIEntry.NewEntry("AddSelection")
            :Disable(),
        APIEntry.NewEntry("AddSelectionImmeditate")
            :Disable(),
        APIEntry.NewEntry("AreEntitiesStable")
            :Disable(),
        APIEntry.NewEntry("CalcSectionLength")
            :Disable(),
        APIEntry.NewEntry("CanPerformConstrainableAction")
            :Disable(),
        APIEntry.NewEntry("CanRemoveSection")
            :Disable(),
        APIEntry.NewEntry("CancelActiveTrackDirectionArrows")
            :Disable(),
        APIEntry.NewEntry("ClearAllTrackEditConstraints")
            :Disable(),
        APIEntry.NewEntry("ClearGUIShapeHighlightCurrentEditingTrack")
            :Disable(),
        APIEntry.NewEntry("ClearGUIShapeSelectionHighlight")
            :Disable(),
        APIEntry.NewEntry("ClearTrackElementCache")
            :Disable(),
        APIEntry.NewEntry("CombineSelection")
            :Disable(),
        APIEntry.NewEntry("CombineSelectionShortest")
            :Disable(),
        APIEntry.NewEntry("CompleteWorldSerialisationLoad")
            :Disable(),
        APIEntry.NewEntry("ComputeApproxLocalAABB")
            :Disable(),
        APIEntry.NewEntry("CountTrackEvents")
            :Disable(),
        APIEntry.NewEntry("CreateAutoComplete")
            :Disable(),
        APIEntry.NewEntry("CreateAutoCompleteParams")
            :Disable(),
        APIEntry.NewEntry("CreateHolder")
            :Disable(),
        APIEntry.NewEntry("CreateJoinPoint")
            :AsListener(),
        APIEntry.NewEntry("CreateModifiedBankSelection")
            :Disable(),
        APIEntry.NewEntry("CreateModifiedStartSelection")
            :Disable(),
        APIEntry.NewEntry("CreateModifiedStation")
            :Disable(),
        APIEntry.NewEntry("CreateModifiedTypeSelection")
            :Disable(),
        APIEntry.NewEntry("CreatePerJoinTranslatedSelection")
            :Disable(),
        APIEntry.NewEntry("CreateRescaledSelection")
            :Disable(),
        APIEntry.NewEntry("CreateSectionTriggerOperation")
            :Disable(),
        APIEntry.NewEntry("CreateSelection")
            :Disable(),
        APIEntry.NewEntry("CreateSelectionOfSingleSection")
            :Disable(),
        APIEntry.NewEntry("CreateSelectionOfWholeTrack")
            :Disable(),
        APIEntry.NewEntry("CreateSelectionOfWholeTrack_CommittedOnly")
            :Disable(),
        APIEntry.NewEntry("CreateSelectionOfWholeTrack_VisibleOnly")
            :Disable(),
        APIEntry.NewEntry("CreateSelectionsOfLogicallyConnectedTrack_CommittedOnly")
            :Disable(),
        APIEntry.NewEntry("CreateSmoothedSelection")
            :Disable(),
        APIEntry.NewEntry("CreateSpecial", {"track", "joinPoints", "elementName", "elementTransform", "cSpecialTrackParams", "cFlexiColours", "nStartPointIndex", "cLocalFlexicolour"}, {"newSelection"})
            :AsListener(),
        APIEntry.NewEntry("CreateStation")
            :Disable(),
        APIEntry.NewEntry("CreateTrackTriggerLocation")
            :Disable(),
        APIEntry.NewEntry("CreateTranslatedSelection")
            :Disable(),
        APIEntry.NewEntry("DebugDrawImGuiGraph")
            :Disable(),
        APIEntry.NewEntry("DebugExportSelection")
            :Disable(),
        APIEntry.NewEntry("DebugGetRailDataForSection")
            :AsListener(),
        APIEntry.NewEntry("DebugRender")
            :Disable(),
        APIEntry.NewEntry("Debug_TrackEditConstraintToString")
            :Disable(),
        APIEntry.NewEntry("DoesTrackContainElementType")
            :Disable(),
        APIEntry.NewEntry("FindJoinDirection", {"cSelection", "bIgnoreConnectivity"}, {"nJoinDirection"})
            :Disable(),
        APIEntry.NewEntry("FindJoinDirectionForIndexOnSection")
            :Disable(),
        APIEntry.NewEntry("FindStation")
            :Disable(),
        APIEntry.NewEntry("FinishedEditing")
            :WithLogCall(),
        APIEntry.NewEntry("ForceSetTrackedRideOperationMode")
            :Disable(),
        APIEntry.NewEntry("GetElementJoinDirection", {"track", "sElementName", "nIndex"}, {"joinDir"})
            :AsListener():WithCallDelegate(NLTrackAPI.GetElementJoinDirection):Disable(),
        APIEntry.NewEntry("GetElementJoinPointsForTransform", {"track", "sElementName", "transQ", "cTrackParams"}, {"tJoinPoints"})
            :AsListener():WithCallDelegate(NLTrackAPI.GetElementJoinPointsForTransform),
        APIEntry.NewEntry("GetElementJoinTypes")
            :Disable(),
        APIEntry.NewEntry("GetElementName")
            :Disable(),
        APIEntry.NewEntry("GetElementNumRails")
            :AsListener(),
        APIEntry.NewEntry("GetElementRailJoinPriorities")
            :Disable(),
        APIEntry.NewEntry("GetElementTransformToMatchPoint")
            :AsListener(),
        APIEntry.NewEntry("GetEntityForEntranceExitPlacement")
            :Disable(),
        APIEntry.NewEntry("GetFreeEnds")
            :Disable(),
        APIEntry.NewEntry("GetFrictionMultiplier")
            :Disable(),
        APIEntry.NewEntry("GetHeatmapLive")
            :Disable(),
        APIEntry.NewEntry("GetHeatmapPass")
            :Disable(),
        APIEntry.NewEntry("GetHeightSamples")
            :Disable(),
        APIEntry.NewEntry("GetIsNonStop")
            :Disable(),
        APIEntry.NewEntry("GetIsRacing")
            :Disable(),
        APIEntry.NewEntry("GetIsWaterSlide")
            :Disable(),
        APIEntry.NewEntry("GetLogicalID")
            :Disable(),
        APIEntry.NewEntry("GetMassOfAllCars")
            :AsListener(),
        APIEntry.NewEntry("GetMaterialFlexiColourForCars")
            :Disable(),
        APIEntry.NewEntry("GetMaterialFlexiColourForTrack")
            :Disable(),
        APIEntry.NewEntry("GetMaxNumberOfPassesThroughStation")
            :Disable(),
        APIEntry.NewEntry("GetMaxTrains_BlockSectioned")
            :Disable(),
        APIEntry.NewEntry("GetMinAllowedUseableStationLength")
            :Disable(),
        APIEntry.NewEntry("GetMinMaxCarsPerTrain")
            :WithCallOriginal():WithReturnValues(APIEntry.Returns.IGNORE, APIEntry.Returns.IGNORE, 99999),
        APIEntry.NewEntry("GetMinMaxTrains")
            :WithReturnValues(1, 9999, 9999),
        APIEntry.NewEntry("GetMinNumberOfPassesThroughStation")
            :Disable(),
        APIEntry.NewEntry("GetNumCarsPerTrain")
            :AsListener(),
        APIEntry.NewEntry("GetNumTrains")
            :Disable(),
        APIEntry.NewEntry("GetNumberOfPassesThroughStation")
            :Disable(),
        APIEntry.NewEntry("GetOperators")
            :Disable(),
        APIEntry.NewEntry("GetOtherEnd")
            :Disable(),
        APIEntry.NewEntry("GetPlayerTrainTriggersOnly")
            :Disable(),
        APIEntry.NewEntry("GetPoweredTrainsSpeed_Current_Min_Max")
            :Disable(),
        APIEntry.NewEntry("GetPoweredTrainsTypeAndCanChange")
            :Disable(),
        APIEntry.NewEntry("GetRailLocation")
            :Disable(),
        APIEntry.NewEntry("GetRawTrackEditConstraint")
            :Disable(),
        APIEntry.NewEntry("GetRideMusic")
            :Disable(),
        APIEntry.NewEntry("GetRideType")
            :Disable(),
        APIEntry.NewEntry("GetSelectionByRayCast")
            :Disable(),
        APIEntry.NewEntry("GetSelectionBySphereSweep")
            :Disable(),
        APIEntry.NewEntry("GetSelectionMaterialCustomisationData")
            :Disable(),
        APIEntry.NewEntry("GetShownHeatmap")
            :Disable(),
        APIEntry.NewEntry("GetSpotSamples")
            :Disable(),
        APIEntry.NewEntry("GetStationEntityForSection")
            :Disable(),
        APIEntry.NewEntry("GetStationIDs")
            :Disable(),
        APIEntry.NewEntry("GetStationJoinPointsForExtend")
            :Disable(),
        APIEntry.NewEntry("GetStationLocalGrid")
            :Disable(),
        APIEntry.NewEntry("GetTrackAndStationLengths")
            :Disable(),
        APIEntry.NewEntry("GetTrackEntity")
            :Disable(),
        APIEntry.NewEntry("GetTrackHolder")
            :Disable(),
        APIEntry.NewEntry("GetTrackHolderFromSection")
            :Disable(),
        APIEntry.NewEntry("GetTrackLocationFromRailLocation")
            :Disable(),
        APIEntry.NewEntry("GetTrackLocationFromSection")
            :Disable(),
        APIEntry.NewEntry("GetTrackParams")
            :Disable(),
        APIEntry.NewEntry("GetTrackSectionBaseEntity")
            :Disable(),
        APIEntry.NewEntry("GetTrackTransform")
            :Disable(),
        APIEntry.NewEntry("GetTrackTriggerLocation")
            :Disable(),
        APIEntry.NewEntry("GetTrackTriggerLocations")
            :Disable(),
        APIEntry.NewEntry("GetTrackedRideOperationMode")
            :Disable(),
        APIEntry.NewEntry("GetTrainType")
            :Disable(),
        APIEntry.NewEntry("GetUseFlumePhysics")
            :Disable(),
        APIEntry.NewEntry("GetUseableStationLength")
            :WithReturnValues(9999),
        APIEntry.NewEntry("HasAnyPreviewTrackSections")
            :Disable(),
        APIEntry.NewEntry("HasAnyUnfinishedRequiredTrack")
            :Disable(),
        APIEntry.NewEntry("HasRotatableCars")
            :Disable(),
        APIEntry.NewEntry("IsAllowedForAutoComplete")
            :Disable(),
        APIEntry.NewEntry("IsBullWheelElement")
            :Disable(),
        APIEntry.NewEntry("IsDriveStationElement")
            :Disable(),
        APIEntry.NewEntry("IsFlexibleElement")
            :WithCallDelegate(NLTrackAPI.IsFlexibleElement),
        APIEntry.NewEntry("IsLoaded")
            :Disable(),
        APIEntry.NewEntry("IsPointToPointElement")
            :AsListener(),
        APIEntry.NewEntry("IsRideLayoutValid")
            :Disable(),
        APIEntry.NewEntry("IsSectionStateVisible")
            :Disable(),
        APIEntry.NewEntry("IsStationElement")
            :Disable(),
        APIEntry.NewEntry("IsStationEndCapElement")
            :Disable(),
        APIEntry.NewEntry("IsStationLoadOnlyElement")
            :Disable(),
        APIEntry.NewEntry("IsStationUnloadOnly")
            :Disable(),
        APIEntry.NewEntry("IsStationUnloadOnlyElement")
            :Disable(),
        APIEntry.NewEntry("IsTrackEmpty")
            :Disable(),
        APIEntry.NewEntry("IsTrackSection")
            :Disable(),
        APIEntry.NewEntry("MakeTrackSelectionFromLocation")
            :Disable(),
        APIEntry.NewEntry("MoveTrack")
            :Disable(),
        APIEntry.NewEntry("NewSelection")
            :Disable(),
        APIEntry.NewEntry("ParkReset")
            :Disable(),
        APIEntry.NewEntry("RemoveHolder")
            :Disable(),
        APIEntry.NewEntry("RemoveSelection")
            :Disable(),
        APIEntry.NewEntry("ReplaceSelection")
            :Disable(),
        APIEntry.NewEntry("RetrieveBlueprintTracks")
            :Disable(),
        APIEntry.NewEntry("ReverseSelection")
            :Disable(),
        APIEntry.NewEntry("RideEdited")
            :AsListener(),
        APIEntry.NewEntry("SelectContiguousWithElement")
            :Disable(),
        APIEntry.NewEntry("SelectContiguousWithParam")
            :Disable(),
        APIEntry.NewEntry("SendEditTriggerMessage")
            :AsListener(),
        APIEntry.NewEntry("SendTrackLoadedMessage")
            :Disable(),
        APIEntry.NewEntry("SetActiveShootingMinigameTrain")
            :Disable(),
        APIEntry.NewEntry("SetAllPreExistingLogicalIDThresholds")
            :Disable(),
        APIEntry.NewEntry("SetColourPickers")
            :Disable(),
        APIEntry.NewEntry("SetFrictionMultiplier")
            :Disable(),
        APIEntry.NewEntry("SetGUIShapeHighlightCurrentEditingTrack")
            :Disable(),
        APIEntry.NewEntry("SetGUIShapeSelectionHighlight")
            :Disable(),
        APIEntry.NewEntry("SetHeatmapLive")
            :Disable(),
        APIEntry.NewEntry("SetHeatmapPass")
            :Disable(),
        APIEntry.NewEntry("SetHighlighted")
            :Disable(),
        APIEntry.NewEntry("SetMaterialFlexiColourForTrack")
            :Disable(),
        APIEntry.NewEntry("SetNewCarsToDefaultColours")
            :Disable(),
        APIEntry.NewEntry("SetNumCarsPerTrain")
            :AsListener(),
        APIEntry.NewEntry("SetNumTrains")
            :AsListener(),
        APIEntry.NewEntry("SetNumberOfPassesThroughStation")
            :Disable(),
        APIEntry.NewEntry("SetPlayerTrainTriggersOnly")
            :Disable(),
        APIEntry.NewEntry("SetPoweredTrainsBehaviour")
            :Disable(),
        APIEntry.NewEntry("SetPoweredTrainsSpeed")
            :Disable(),
        APIEntry.NewEntry("SetPoweredTrainsSpeed_Current")
            :Disable(),
        APIEntry.NewEntry("SetRideDesignerOverride")
            :Disable(),
        APIEntry.NewEntry("SetRideMusic")
            :Disable(),
        APIEntry.NewEntry("SetRideName")
            :Disable(),
        APIEntry.NewEntry("SetRideVolume")
            :Disable(),
        APIEntry.NewEntry("SetSelectionMaterialColourForSemanticTag")
            :Disable(),
        APIEntry.NewEntry("SetTrackEditConstraint")
            :Disable(),
        APIEntry.NewEntry("SetTrackFrictionMultiplier")
            :Disable(),
        APIEntry.NewEntry("SetTrackedRideOperationMode")
            :Disable(),
        APIEntry.NewEntry("SetTrainType")
            :AsListener(),
        APIEntry.NewEntry("SetUseFlumePhysics")
            :Disable(),
        APIEntry.NewEntry("SetUseLooseFlumeRestrictions")
            :Disable(),
        APIEntry.NewEntry("SetUseLooseTrackRestrictions")
            :Disable(),
        APIEntry.NewEntry("SetVoxelTerrainForTrackEditor")
            :Disable(),
        APIEntry.NewEntry("ShowHeatmap")
            :Disable(),
        APIEntry.NewEntry("StaticBestTwist")
            :Disable(),
        APIEntry.NewEntry("StationCount")
            :Disable(),
        APIEntry.NewEntry("UpdateActiveTrackDirectionArrows")
            :Disable(),
        APIEntry.NewEntry("UpdateAllTrackDirectionArrows")
            :Disable(),
        APIEntry.NewEntry("UseLooseFlumeRestrictions")
            :Disable(),
        APIEntry.NewEntry("UseLooseTrackRestrictions")
            :Disable(),
    }

    return tEntries
end

function NLTrackAPI.IsFlexibleElement(rawApi, track, sElementName)
    local ret = rawApi.IsFlexibleElement(track, sElementName)
--[[    if ret == true or ret == nil then
        return ret
    end

    if sElementName ~= nil then
        if sElementName == "TK_501_CombinedLiftDropReverse" then
            return true
        end
    end]]

    return ret
end

--[[function NLTrackAPI.CreateSpecial(rawApi, track, joinPoints, elementName, elementTransform, cSpecialTrackParams, cFlexiColours, nStartPointIndex, cLocalFlexicolour)
    if cSpecialTrackParams == nil or joinPoints == nil then
        return rawApi.CreateSpecial(track, joinPoints, elementName, elementTransform, cSpecialTrackParams, cFlexiColours, nStartPointIndex, cLocalFlexicolour)
    end

    local targetBanking = cSpecialTrackParams[api.track.TrackParam_BankingRange]
    local targetSlopeRange = cSpecialTrackParams[api.track.TrackParam_SlopeRange]
    if targetBanking == nil and targetSlopeRange == nil then
        return rawApi.CreateSpecial(track, joinPoints, elementName, elementTransform, cSpecialTrackParams, cFlexiColours, nStartPointIndex, cLocalFlexicolour)
    end

    local targetJoin = joinPoints[nStartPointIndex]
    if targetJoin == nil then
        logger:Warn("Join point is nil, skipping...")
        return rawApi.CreateSpecial(track, joinPoints, elementName, elementTransform, cSpecialTrackParams, cFlexiColours, nStartPointIndex, cLocalFlexicolour)
    end

    TrackEditInput

    local bankOffset = targetJoin:GetBank()
    local slopeOffset = targetJoin:GetSlope()

    bankOffset

    DebugUtils.LogTable("GetElementJoinPointsForTransform() Output Premutation", joinPoints)

    local ret = rawApi.CreateSpecial(track, joinPoints, elementName, elementTransform, cSpecialTrackParams, cFlexiColours, nStartPointIndex, cLocalFlexicolour)


end]]

---i hate maths so much like why the hell was this so difficult
function NLTrackAPI.GetElementJoinPointsForTransform(rawApi, track, sElementName, transQ, cTrackParams)
    local ret = rawApi.GetElementJoinPointsForTransform(track, sElementName, transQ, cTrackParams)
    if TrackEditInput == nil or TrackEditInput.trackEditMode == nil then
        return ret
    end

    if (rawApi.IsStationElement(track, sElementName) == true) then
        return ret
    end

    local nStartPointIndex = TrackEditInput.trackEditMode:WhichEndToJoin(sElementName, (TrackEditInput.trackEditMode.tActiveData).selection)
    if nStartPointIndex == nil then
        logger:Warn("nStartPointIndex is nil, skipping...")
        return ret
    end

    local targetJoin = ret[nStartPointIndex]
    if targetJoin == nil then
        logger:Warn("Join point is nil, skipping...")
        return ret
    end

    local joinDir = rawApi.GetElementJoinDirection(track, sElementName, nStartPointIndex)
    logger:Info("GetElementJoinPointsForTransform() Join Dir: " .. tostring(joinDir) .. ", Start Point Index: " .. tostring(nStartPointIndex) .. ", Element: " .. tostring(sElementName))

    local jp = TrackEditInput.trackEditMode.tActiveData.selection:GetJoinPoint(1, false)

    --nStartPointIndex % 2 == 0
    if joinDir == api.track.TrackDirection_In or joinDir == api.track.TrackDirection_Out or joinDir == api.track.TrackDirection_Both then
        jp = jp:Reversed()
    end

    local targetTransQ = rawApi.GetElementTransformToMatchPoint(track, sElementName, nStartPointIndex, jp, cTrackParams)
    targetTransQ = targetTransQ:WithPos(transQ:GetPos())

    --DebugUtils.LogTable("GetElementJoinPointsForTransform() Output Premutation", ret)
    ret = rawApi.GetElementJoinPointsForTransform(track, sElementName, targetTransQ, cTrackParams)

    --if TrackEditInput.trackEditMode.CanSelectElement ~= NLTrackAPI.CanSelectElement then
    --    TECanSelectElement = rawApi.CanSelectElement
    --    TrackEditInput.trackEditMode.CanSelectElement = NLTrackAPI.CanSelectElement
    --    logger:Info("Hooked CanSelectElement")
    --end

    --for sElement,tData in pairs(TrackEditInput.trackEditMode.tElementData) do
    --    ---@diagnostic disable-next-line: need-check-nil
    --    DebugUtils.LogTable("Element Data", tData)
    --    tData.bEnabled = true
    --    local context = api.ui2.GetDataStoreContext("trackEditor", "elements", sElement)
    --    ---@diagnostic disable-next-line: param-type-not-match
    --    api.ui2.SetDataStoreElement(context, "enabled", true)
    --end

    return ret
end

function NLTrackAPI.GetElementJoinDirection(rawApi, track, sElementName, nIndex)
    return rawApi.GetElementJoinDirection(track, sElementName, nIndex)
    --if joinDir == nil or joinDir == api.track.TrackDirection_Both or joinDir == api.track.TrackDirection_None then
    --    return joinDir
    --end
    --
    --return api.track.TrackDirection_Both
end

--function NLTrackAPI.CanSelectElement(self, _sElement)
--    logger:Info("CanSelectElement: " .. tostring(_sElement) .. " to true")
--
--    if TECanSelectElement ~= nil then
--        local _orig = TECanSelectElement(self, _sElement)
--        logger:Info("Original CanSelectElement: " .. tostring(_sElement) .. " to " .. tostring(_orig))
--
--        if _orig == false then
--            return true
--        end
--    end
--
--    return true
--end

function NLTrackAPI.PlayerInteractionHandlerOpenTrackEditMode(self, _nEntityID)
    logger:Info("PlayerInteractionHandlerOpenTrackEditMode: " .. tostring(_nEntityID))

    local oTrackHolder, oTrackSelection = nil, nil
    if api.track.IsTrackSection(_nEntityID) ~= true then
        logger:Warn("Entity is not a track section, cannot open track editor")
        return false
    end

    local oTrackSelection = api.track.CreateSelectionOfSingleSection(_nEntityID)
    if oTrackSelection == nil then
        logger:Warn("Track selection is nil, cannot open track editor")
        return false
    end

    oTrackHolder = oTrackSelection:GetTrack()
    if oTrackHolder == nil then
        oTrackHolder = api.track.GetTrackHolder(_nEntityID)

        if oTrackHolder == nil then
            logger:Warn("Track holder is nil, cannot open track editor")
            return false
        end
    end

    logger:Info("Opening track editor for entity: " .. tostring(_nEntityID) .. ", Track: " .. tostring(oTrackHolder) .. ", Selection: " .. tostring(oTrackSelection))
    local mcr = ModeChangeRequestGamefaceTrackUI:new()
    mcr:SetTrackAndSelection(oTrackHolder, oTrackSelection)
    mcr:PerformModeChange()
    do return true end
end

return BaseAPI.Validate(NLTrackAPI)