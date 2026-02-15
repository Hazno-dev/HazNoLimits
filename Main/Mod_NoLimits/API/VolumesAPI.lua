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

---@class Mod_NoLimits.API.VolumesAPI : Mod_NoLimits.API.Base
local NLVolumesAPI = BaseAPI.NewAPI("VolumesAPI")
local logger = NLVolumesAPI.Logger

NLVolumesAPI.Enabled = true
NLVolumesAPI.CoreAPIName = nil
NLVolumesAPI.WorldAPIName = "volumes"

NLVolumesAPI.Debug_DumpAPI = false

function NLVolumesAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("AddDrawingFlag")
            :AsListener(),
        APIEntry.NewEntry("AddDrawingHeightStick", {"self", "guishape", "vPos"})
            :Disable(),
        APIEntry.NewEntry("AddDrawingLine", {"self", "guishape", "vStart", "vEnd", "lineVisual"})
            :Disable(),
        APIEntry.NewEntry("AddDrawingPoint", {"self", "guishape", "vPos", "pointVisual"})
            :Disable(),
        APIEntry.NewEntry("AllocDrawingID", {"self", "guishape"})
            :Disable(),
        APIEntry.NewEntry("AnyPoolChangesInProgress", {"self"})
            :Disable(),
        APIEntry.NewEntry("AppendBrushHandles", {"self", "Arg2", "nHandleFlags", "vPos", "Arg5", "nBrushHeight", "cSelection"})
            :AsListener(),
        APIEntry.NewEntry("BeginDrawing", {"self", "guishape", "guidrawing"})
            :Disable(),
        APIEntry.NewEntry("BuildFlexiColours", {"self", "Arg2", "Arg3", "bBuildFromDefaults"})
            :AsListener(),
        APIEntry.NewEntry("CalcBestSnappedMoveObjectTransform", {"self", "rayDir", "currentTransform", "changeListHierarchy", "bArg5"}, {"snappedTransform"})
            :Disable(),
        APIEntry.NewEntry("CalcPathCourseControls", {"self", "cControls", "vPrevPos", "vPos", "Arg5", "Arg6", "Arg7", "nSnapAngle", "nSnapLength"}, {"vEndPos"})
            :Disable(),
        APIEntry.NewEntry("CanClearSplineControlPoint", {"self", "volumeMoveObject"})
            :Disable(),
        APIEntry.NewEntry("CanSelectForPipette", {"self", "nSelectedVolume"})
            :Disable(),
        APIEntry.NewEntry("CanSelectPoint", {"self", "volumeID", "i"})
            :AsListener(),
        APIEntry.NewEntry("CanSetSplineControlPoint", {"self", "volumeMoveObject"}, {"bCanSet"})
            :AsListener(),
        APIEntry.NewEntry("Claim", {"self", "nVolumeID"})
            :AsListener(),
        APIEntry.NewEntry("ClearSplineControlPoint", {"self", "volumeMoveObject"})
            :Disable(),
        APIEntry.NewEntry("CreateDrawingShape", {"self"})
            :Disable(),
        APIEntry.NewEntry("CreateGridObject", {"self", "nGridType", "nScale"})
            :Disable(),
        APIEntry.NewEntry("CreateMoveObjectForVolumeOutline", {"self", "compositeObject", "operationHierarchy", "cVolumeOutline", "nClipPriority", "nGroundedRequest"})
            :Disable(),
        APIEntry.NewEntry("CreateMoveObjectForVolumeSpline", {"self", "operationHierarchy", "Arg3", "bStraight", "bClassic", "bArg6", "bStub"}, {"moveObject"})
            :AsListener(),
        APIEntry.NewEntry("CreateMoveObjectHeightStick", {"self", "compositeObject", "operationHierarchy", "vPos"})
            :Disable(),
        APIEntry.NewEntry("CreateMoveObjectPlatformFlumeJoin", {"self", "cChangeListHierarchy", "cJoinGroupIDs", "cStationInfo", "cPlatformInfo"}, {"cMoveObjectPlatformJoin"})
            :Disable(),
        APIEntry.NewEntry("CreateMoveObjectPlatformGateJoin", {"self", "cChangeListHierarchy", "nPathJoinPartGroupID", "cEntranceExitInfo", "bRemoveOldJoin"})
            :Disable(),
        APIEntry.NewEntry("CreateMoveObjectsForControlHandles", {"self", "compositeObject", "operationHierarchy", "cSelection"})
            :Disable(),
        APIEntry.NewEntry("CreateMoveObjectsForSelection", {"self", "compositeObject", "operationHierarchy", "cSelection", "handleType"})
            :Disable(),
        APIEntry.NewEntry("CreateSelectionAfterTranslation", {"self", "cSelection", "transQ"})
            :AsListener(),
        APIEntry.NewEntry("CreateSelectionFromRaycast", {"self", "vStart", "vDir"})
            :AsListener(),
        APIEntry.NewEntry("CreateSelectionWithMovedSitePos", {"self", "cSelection", "site", "Arg4"})
            :AsListener(),
        APIEntry.NewEntry("CreateTrimmedSelection", {"self", "cSelection"})
            :AsListener(),
        APIEntry.NewEntry("DestroyDrawingShape", {"self", "guishape"})
            :Disable(),
        APIEntry.NewEntry("DrawSelection", {"self", "guishape", "cSelection", "bNeighbours"})
            :AsListener(),
        APIEntry.NewEntry("DrawSelectionWithOffset", {"self", "guishape", "cSelection", "vOffset"})
            :AsListener(),
        APIEntry.NewEntry("EndDrawing", {"self", "guishape", "guidrawing"})
            :Disable(),
        APIEntry.NewEntry("EraseDrawing", {"self", "guishape", "guidrawing"})
            :AsListener(),
        APIEntry.NewEntry("ExpandSelectionUsingRaycast", {"self", "cSelection", "vStart", "vDir"})
            :AsListener(),
        APIEntry.NewEntry("FindAndDrawControlHandles", {"self", "Arg2", "nHandleFlags", "vStart", "vDir", "guishape"})
            :Disable(),
        APIEntry.NewEntry("GetAudioMaterialChangeFromControlHandle", {"self", "operationHierarchy", "nControlHandleID"})
            :Disable(),
        APIEntry.NewEntry("GetAudioMaterialFromControlHandle", {"self", "i"})
            :Disable(),
        APIEntry.NewEntry("GetControlHandlesForSelection", {"self", "selection", "nControlHandleType"})
            :Disable(),
        APIEntry.NewEntry("GetEdgeAudioPlacementMaterial")
            :Disable(),
        APIEntry.NewEntry("GetEdgeStyleColour", {"self", "cFlexiColours", "Arg3"})
            :AsListener(),
        APIEntry.NewEntry("GetHasAnyRoundingChangesForAudio", {"self", "operationHierarchy"})
            :Disable(),
        APIEntry.NewEntry("GetNavPartFromRay", {"self", "vRayStart", "vRayDir"}, {"oNavPart", "vGroundedNavPartPosition"})
            :Disable(),
        APIEntry.NewEntry("GetOutlineAudioPlacementMaterial", {"self", "sRenderType"})
            :Disable(),
        APIEntry.NewEntry("GetOutlineStyleColour", {"self", "cFlexiColours", "Arg3"})
            :Disable(),
        APIEntry.NewEntry("GetPlatformGateJoinSuccess", {"self", "cMoveObjectPlatformJoin"})
            :Disable(),
        APIEntry.NewEntry("GetPoolEntityFromVolume", {"self", "nVolumeID"})
            :Disable(),
        APIEntry.NewEntry("GetSelectionLength")
            :Disable(),
        APIEntry.NewEntry("GetSelectionNumPoints", {"self", "cSelection"})
            :AsListener(),
        APIEntry.NewEntry("GetSelectionPositions", {"self", "cInitialSelection"})
            :AsListener(),
        APIEntry.NewEntry("GetSelectionSitePos", {"self", "cSelection", "siteMiddle"})
            :AsListener(),
        APIEntry.NewEntry("GetSelectionWidgets", {"self", "cSelection"})
            :AsListener(),
        APIEntry.NewEntry("GetSplineAudioData", {"self", "volumeMoveObject"})
            :Disable(),
        APIEntry.NewEntry("GetSplineResultData", {"self", "volumeMoveObject"}, {"bCommitCurrent", "vStartPos", "vEndPos", "bShouldContinueBuilding", "vCameraDeltaStraight", "vCameraDeltaContinued", "nCameraDeltaRotation"})
            :AsListener(),
        APIEntry.NewEntry("GetSplineStartData", {"self", "volumeMoveObject"}, {"vStartPos", "vStartDir", "bStartSnapped"})
            :AsListener(),
        APIEntry.NewEntry("GetVCAddBorder", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCAddKerbs", {"self", "eToolPanel"})
            :Disable(),
        APIEntry.NewEntry("GetVCAddPathSpine", {"self", "eToolPanel"})
            :AsListener(),
        APIEntry.NewEntry("GetVCAddRails", {"self", "eToolPanel"})
            :Disable(),
        APIEntry.NewEntry("GetVCAngleSnapActive", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCAngleSnapDegrees", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCBrushHeight", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCBrushRadius", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCCameraFollow", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCCameraFollowCurve", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCDeploySupports", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCDepth")
            :AsListener(),
        APIEntry.NewEntry("GetVCEdgeType")
            :Disable(),
        APIEntry.NewEntry("GetVCGroundedRequest", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCOutlineRenderType")
            :Disable(),
        APIEntry.NewEntry("GetVCOutlineType")
            :Disable(),
        APIEntry.NewEntry("GetVCPriority", {"self"})
            :WithLogOutputs():WithCallOriginal(),
        APIEntry.NewEntry("GetVCRightAngledJoints", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCRoundingRadius", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCSemanticColour")
            :Disable(),
        APIEntry.NewEntry("GetVCSharpCorners")
            :Disable(),
        APIEntry.NewEntry("GetVCSplineCurve", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCSplineHeightSnap", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCSplineHeightSnapActive", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCSplineLengthFixed", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCSplineLengthFixedActive", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCSplineLengthSnap", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCSplineLengthSnapActive", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCSplineRoundedEnds", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCSplineWidth", {"self", "eToolPanel"})
            :Disable(),
        APIEntry.NewEntry("GetVCStampScale", {"self", "eToolPanel"})
            :Disable(),
        APIEntry.NewEntry("GetVCUseStampGrid", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCUseStampSnap", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCUseWorkingPlane", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVCWorkingPlaneHeight", {"self"})
            :Disable(),
        APIEntry.NewEntry("GetVolumeIDFromEntityID", {"self", "nI", "bArg3", "bArg4"})
            :Disable(),
        APIEntry.NewEntry("GetVolumeOutline", {"self", "nSelectedVolume"})
            :AsListener(),
        APIEntry.NewEntry("GetVolumeOutlinesFromMoveObject", {"self", "cMoveObject"})
            :AsListener(),
        APIEntry.NewEntry("GetVolumesWithPreviewChangesForAudio", {"self", "operationHierarchy"})
            :Disable(),
        APIEntry.NewEntry("GridObjectsAreCompatible", {"self", "cGridObject", "cGridObject2"})
            :AsListener(),
        APIEntry.NewEntry("HasPendingPoolEdgeCreations", {"self"})
            :Disable(),
        APIEntry.NewEntry("IsEditable")
            :AsListener(),
        APIEntry.NewEntry("IsPool", {"self", "nVolumeID"})
            :Disable(),
        APIEntry.NewEntry("IsQueue", {"self", "nVolumeID"})
            :Disable(),
        APIEntry.NewEntry("IsStaffPath", {"self", "nVolumeID"})
            :Disable(),
        APIEntry.NewEntry("IsVolumeInsideParkBoundary")
            :Disable(),
        APIEntry.NewEntry("LockUpdateDrawing", {"self", "guishape"})
            :AsListener(),
        APIEntry.NewEntry("Raycast", {"self", "vStart", "vDir"})
            :Disable(),
        APIEntry.NewEntry("Release", {"self", "i"})
            :AsListener(),
        APIEntry.NewEntry("ResetVCSemanticColour")
            :Disable(),
        APIEntry.NewEntry("SaveVolatileConfig")
            :Disable(),
        APIEntry.NewEntry("SendInitialPathAndVolumeMessagesOnLoad", {"self"})
            :Disable(),
        APIEntry.NewEntry("SetDrawingShapeLabelView")
            :Disable(),
        APIEntry.NewEntry("SetFlexiColoursFromOutline", {"self", "cVolumeOutline", "nSelectedEdge"})
            :AsListener(),
        APIEntry.NewEntry("SetModifyVolumesLabelView", {"self", "operationHierarchy", "Arg3", "gLabelColumns", "gLabelRows", "labelsContext"})
            :AsListener(),
        APIEntry.NewEntry("SetPlatformGateJoinRaycastToGround", {"self", "cMoveObjectPlatformJoin", "bArg3"})
            :Disable(),
        APIEntry.NewEntry("SetSplineBorderData", {"self", "volumeMoveObject", "sOutlineType", "sRenderType", "sEdgeType", "nWidth", "nDepth", "nClipPriority", "nGroundedRequest", "bDeploySupports", "vOutlineColour", "vEdgeColour"})
            :AsListener(),
        APIEntry.NewEntry("SetSplineBuildingOptions", {"self", "volumeMoveObject", "Arg3", "Arg4"})
            :Disable(),
        APIEntry.NewEntry("SetSplineControlPoint", {"self", "volumeMoveObject", "Arg3"})
            :AsListener(),
        APIEntry.NewEntry("SetSplinePathData", {"self", "moveObject", "sOutlineType", "sRenderType", "sEdgeType", "nRadius", "nDepth", "nClipPriorityHigh", "nGroundedRequestForceNotOnGround", "bDeploySupports", "vOutlineColour", "vEdgeColour"})
            :AsListener(),
        APIEntry.NewEntry("SetToUseGridObject", {"self", "operationHierarchy", "cGridObject", "cachedTransform"})
            :AsListener(),
        APIEntry.NewEntry("SetVCAddBorder", {"self", "bAddBorder"})
            :Disable(),
        APIEntry.NewEntry("SetVCAddKerbs", {"self", "bAddKerbs", "eToolPanel"})
            :Disable(),
        APIEntry.NewEntry("SetVCAddPathSpine", {"self", "bAddPathSpine", "eToolPanel"})
            :Disable(),
        APIEntry.NewEntry("SetVCAddRails", {"self", "bAddRails", "eToolPanel"})
            :Disable(),
        APIEntry.NewEntry("SetVCAngleSnapActive", {"self", "bAngleSnap"})
            :Disable(),
        APIEntry.NewEntry("SetVCAngleSnapDegrees", {"self", "nAngleSnapDegrees"})
            :Disable(),
        APIEntry.NewEntry("SetVCBrushHeight", {"self", "nBrushHeight"})
            :Disable(),
        APIEntry.NewEntry("SetVCBrushRadius", {"self", "nBrushRadius"})
            :Disable(),
        APIEntry.NewEntry("SetVCCameraFollow", {"self", "bCameraFollow"})
            :Disable(),
        APIEntry.NewEntry("SetVCCameraFollowCurve", {"self", "bCameraFollowCurve"})
            :Disable(),
        APIEntry.NewEntry("SetVCDeploySupports", {"self", "bDeploySupports"})
            :Disable(),
        APIEntry.NewEntry("SetVCDepth", {"self", "nDepth"})
            :AsListener(),
        APIEntry.NewEntry("SetVCEdgeType", {"self", "sEdgeType"})
            :Disable(),
        APIEntry.NewEntry("SetVCGroundedRequest", {"self", "Arg2"})
            :Disable(),
        APIEntry.NewEntry("SetVCOutlineRenderType", {"self", "sRenderType"})
            :Disable(),
        APIEntry.NewEntry("SetVCOutlineType", {"self", "sOutlineType"})
            :Disable(),
        APIEntry.NewEntry("SetVCPriority", {"self", "bPriority"})
            :Disable(),
        APIEntry.NewEntry("SetVCRightAngledJoints", {"self", "bRightAngledJoints"})
            :Disable(),
        APIEntry.NewEntry("SetVCRoundingRadius", {"self", "nRoundingRadius"})
            :Disable(),
        APIEntry.NewEntry("SetVCSemanticColour", {"self", "sSemanticTag", "vColour"})
            :Disable(),
        APIEntry.NewEntry("SetVCSharpCorners")
            :Disable(),
        APIEntry.NewEntry("SetVCSplineCurve", {"self", "bValue"})
            :Disable(),
        APIEntry.NewEntry("SetVCSplineHeightSnap", {"self", "nSplineHeightSnap"})
            :Disable(),
        APIEntry.NewEntry("SetVCSplineHeightSnapActive", {"self", "bSplineHeightSnapActive"})
            :Disable(),
        APIEntry.NewEntry("SetVCSplineLengthFixed", {"self", "nSplineLengthFixed"})
            :Disable(),
        APIEntry.NewEntry("SetVCSplineLengthFixedActive", {"self", "bSplineLengthFixedActive"})
            :Disable(),
        APIEntry.NewEntry("SetVCSplineLengthSnap", {"self", "nSplineLengthSnap"})
            :Disable(),
        APIEntry.NewEntry("SetVCSplineLengthSnapActive", {"self", "bSplineLengthSnapActive"})
            :Disable(),
        APIEntry.NewEntry("SetVCSplineRoundedEnds", {"self", "bSplineRoundedEnds"})
            :Disable(),
        APIEntry.NewEntry("SetVCSplineWidth", {"self", "nSplineWidth", "eToolPanel"})
            :Disable(),
        APIEntry.NewEntry("SetVCStampScale", {"self", "nNewScale", "eToolPanel"})
            :Disable(),
        APIEntry.NewEntry("SetVCUseStampGrid", {"self", "bStampGrid"})
            :Disable(),
        APIEntry.NewEntry("SetVCUseStampSnap", {"self", "bStampSnap"})
            :Disable(),
        APIEntry.NewEntry("SetVCUseWorkingPlane", {"self", "bUseWorkingHeight"})
            :Disable(),
        APIEntry.NewEntry("SetVCWorkingPlaneHeight", {"self", "nWorkingHeight"})
            :Disable(),
        APIEntry.NewEntry("ShouldEntityBeIgnoredBySelect", {"self", "nEntityID"})
            :Disable(),
        APIEntry.NewEntry("SnapPositionToNavPart", {"self", "Arg2"})
            :Disable(),
        APIEntry.NewEntry("SubdivideOutlines", {"self", "cVolumeOutlines"})
            :Disable(),
        APIEntry.NewEntry("UnlockUpdateDrawing", {"self", "guishape"})
            :AsListener(),
    }

    return tEntries
end

return BaseAPI.Validate(NLVolumesAPI)