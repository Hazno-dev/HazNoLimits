---@meta

---@class (partial) IRC
local IRC = {}

---@class (partial) audio
local audio = {}

---@class (partial) camera
local camera = {}

---@class (partial) componentmanager
local componentmanager = {}

---@class (partial) content
local content = {}

---@class (partial) crowdsimulation
local crowdsimulation = {}

---@class (partial) cursor
local cursor = {}

---@class (partial) database
local database = {}

---@class (partial) debug
local debug = {}

---@class (partial) debugui
local debugui = {}

---@class (partial) entity
local entity = {}

---@class (partial) franchise
local franchise = {}

---@class (partial) game
local game = {}

---@class (partial) gameRender
local gameRender = {}

---@class (partial) gamedatastore
local gamedatastore = {}

---@class (partial) globe
local globe = {}

---@class (partial) http
local http = {}

---@class (partial) input
local input = {}

---@class (partial) json
local json = {}

---@class (partial) lighting
local lighting = {}

---@class (partial) loc
local loc = {}

---@class (partial) localisation
local localisation = {}

---@class (partial) math
local math = {}

---@class (partial) messaging
local messaging = {}

---@class (partial) model
local model = {}

---@class (partial) motiongraph
local motiongraph = {}

---@class (partial) movie
local movie = {}

---@class (partial) multipart2
local multipart2 = {}

---@class (partial) online
local online = {}

---@class (partial) particles
local particles = {}

---@class (partial) physics
local physics = {}

---@class (partial) platform
local platform = {}

---@class (partial) player
local player = {}

---@class (partial) presence
local presence = {}

---@class (partial) random
local random = {}

---@class (partial) render
local render = {}

---@class (partial) save
local save = {}

---@class (partial) spatial
local spatial = {}

---@class (partial) task
local task = {}

---@class (partial) telemetry
local telemetry = {}

---@class (partial) time
local time = {}

---@class (partial) track
local track = {}

---@class (partial) transform
local transform = {}

---@class (partial) ui
local ui = {}

---@class (partial) ui2
local ui2 = {}

---@class (partial) uioptions
local uioptions = {}

---@class (partial) undo
local undo = {}

---@class (partial) usercontent
local usercontent = {}

---@class (partial) world
local world = {}

---@class (partial) xmlconfig
local xmlconfig = {}

---@class (partial) WorldAPIs_CameraAttachPoint
local WorldAPIs_CameraAttachPoint = {}

---@class (partial) WorldAPIs_CameraModeManager
local WorldAPIs_CameraModeManager = {}

---@class (partial) WorldAPIs_ChallengeManager
local WorldAPIs_ChallengeManager = {}

---@class (partial) WorldAPIs_ConversationManager
local WorldAPIs_ConversationManager = {}

---@class (partial) WorldAPIs_FacilityDatastoreComponent
local WorldAPIs_FacilityDatastoreComponent = {}

---@class (partial) WorldAPIs_FanfareManager
local WorldAPIs_FanfareManager = {}

---@class (partial) WorldAPIs_FlatRideDataStoreComponent
local WorldAPIs_FlatRideDataStoreComponent = {}

---@class (partial) WorldAPIs_FlumePlatformDataStoreComponent
local WorldAPIs_FlumePlatformDataStoreComponent = {}

---@class (partial) WorldAPIs_GameModeHelperComponent
local WorldAPIs_GameModeHelperComponent = {}

---@class (partial) WorldAPIs_HUDPopUpManager
local WorldAPIs_HUDPopUpManager = {}

---@class (partial) WorldAPIs_HotelDataStoreComponent
local WorldAPIs_HotelDataStoreComponent = {}

---@class (partial) WorldAPIs_InfoPopUpComponent
local WorldAPIs_InfoPopUpComponent = {}

---@class (partial) WorldAPIs_InputManager
local WorldAPIs_InputManager = {}

---@class (partial) WorldAPIs_Manager
local WorldAPIs_Manager = {}

---@class (partial) WorldAPIs_ModeHelperComponent
local WorldAPIs_ModeHelperComponent = {}

---@class (partial) WorldAPIs_MotionBlurManager
local WorldAPIs_MotionBlurManager = {}

---@class (partial) WorldAPIs_ObjectiveManager
local WorldAPIs_ObjectiveManager = {}

---@class (partial) WorldAPIs_PaperDesignToolManager
local WorldAPIs_PaperDesignToolManager = {}

---@class (partial) WorldAPIs_ParkZoneDatastoreComponent
local WorldAPIs_ParkZoneDatastoreComponent = {}

---@class (partial) WorldAPIs_PlayerInteractionHandler
local WorldAPIs_PlayerInteractionHandler = {}

---@class (partial) WorldAPIs_PoolsDatastoreComponent
local WorldAPIs_PoolsDatastoreComponent = {}

---@class (partial) WorldAPIs_RenderParametersComponent
local WorldAPIs_RenderParametersComponent = {}

---@class (partial) WorldAPIs_RideSeat
local WorldAPIs_RideSeat = {}

---@class (partial) WorldAPIs_ScenarioNarrativeManager
local WorldAPIs_ScenarioNarrativeManager = {}

---@class (partial) WorldAPIs_ScenarioRivalsManager
local WorldAPIs_ScenarioRivalsManager = {}

---@class (partial) WorldAPIs_SceneryBrowserFilterManager
local WorldAPIs_SceneryBrowserFilterManager = {}

---@class (partial) WorldAPIs_SelectAndEditComponent
local WorldAPIs_SelectAndEditComponent = {}

---@class (partial) WorldAPIs_StaffBuildingDatastoreComponent
local WorldAPIs_StaffBuildingDatastoreComponent = {}

---@class (partial) WorldAPIs_StaffDataStoreComponent
local WorldAPIs_StaffDataStoreComponent = {}

---@class (partial) WorldAPIs_StaffPoolDataStoreComponent
local WorldAPIs_StaffPoolDataStoreComponent = {}

---@class (partial) WorldAPIs_StandaloneScenerySerialisation
local WorldAPIs_StandaloneScenerySerialisation = {}

---@class (partial) WorldAPIs_TargetsDatastoreComponent
local WorldAPIs_TargetsDatastoreComponent = {}

---@class (partial) WorldAPIs_TrackedRideDataStoreComponent
local WorldAPIs_TrackedRideDataStoreComponent = {}

---@class (partial) WorldAPIs_UIModeHelperComponent
local WorldAPIs_UIModeHelperComponent = {}

---@class (partial) WorldAPIs_UniqueNameComponent
local WorldAPIs_UniqueNameComponent = {}

---@class (partial) WorldAPIs_UtilityDatastoreComponent
local WorldAPIs_UtilityDatastoreComponent = {}

---@class (partial) WorldAPIs_WorkshopDatastoreComponent
local WorldAPIs_WorkshopDatastoreComponent = {}

---@class (partial) WorldAPIs_WorldBasedGUIProvider
local WorldAPIs_WorldBasedGUIProvider = {}

---@class (partial) WorldAPIs_animation
local WorldAPIs_animation = {}

---@class (partial) WorldAPIs_attractions
local WorldAPIs_attractions = {}

---@class (partial) WorldAPIs_avatarcapture
local WorldAPIs_avatarcapture = {}

---@class (partial) WorldAPIs_avatarpatterncontrols
local WorldAPIs_avatarpatterncontrols = {}

---@class (partial) WorldAPIs_billboardwidgets
local WorldAPIs_billboardwidgets = {}

---@class (partial) WorldAPIs_boundary
local WorldAPIs_boundary = {}

---@class (partial) WorldAPIs_cameraconfig
local WorldAPIs_cameraconfig = {}

---@class (partial) WorldAPIs_cheats
local WorldAPIs_cheats = {}

---@class (partial) WorldAPIs_cinematics
local WorldAPIs_cinematics = {}

---@class (partial) WorldAPIs_complex
local WorldAPIs_complex = {}

---@class (partial) WorldAPIs_controlsconfig
local WorldAPIs_controlsconfig = {}

---@class (partial) WorldAPIs_debugimgui
local WorldAPIs_debugimgui = {}

---@class (partial) WorldAPIs_editors
local WorldAPIs_editors = {}

---@class (partial) WorldAPIs_environment
local WorldAPIs_environment = {}

---@class (partial) WorldAPIs_facilities
local WorldAPIs_facilities = {}

---@class (partial) WorldAPIs_flatrides
local WorldAPIs_flatrides = {}

---@class (partial) WorldAPIs_flumes
local WorldAPIs_flumes = {}

---@class (partial) WorldAPIs_gameaudio
local WorldAPIs_gameaudio = {}

---@class (partial) WorldAPIs_gameaudiodepreciated
local WorldAPIs_gameaudiodepreciated = {}

---@class (partial) WorldAPIs_gameterrain
local WorldAPIs_gameterrain = {}

---@class (partial) WorldAPIs_gamevolatileconfig
local WorldAPIs_gamevolatileconfig = {}

---@class (partial) WorldAPIs_guests
local WorldAPIs_guests = {}

---@class (partial) WorldAPIs_infrastructure
local WorldAPIs_infrastructure = {}

---@class (partial) WorldAPIs_lighting
local WorldAPIs_lighting = {}

---@class (partial) WorldAPIs_money
local WorldAPIs_money = {}

---@class (partial) WorldAPIs_park
local WorldAPIs_park = {}

---@class (partial) WorldAPIs_placement
local WorldAPIs_placement = {}

---@class (partial) WorldAPIs_pools
local WorldAPIs_pools = {}

---@class (partial) WorldAPIs_renderparameters
local WorldAPIs_renderparameters = {}

---@class (partial) WorldAPIs_rides
local WorldAPIs_rides = {}

---@class (partial) WorldAPIs_ridestation
local WorldAPIs_ridestation = {}

---@class (partial) WorldAPIs_ridestats
local WorldAPIs_ridestats = {}

---@class (partial) WorldAPIs_scenegraph
local WorldAPIs_scenegraph = {}

---@class (partial) WorldAPIs_scenery
local WorldAPIs_scenery = {}

---@class (partial) WorldAPIs_scenery_belonging
local WorldAPIs_scenery_belonging = {}

---@class (partial) WorldAPIs_scenery_editconstraint
local WorldAPIs_scenery_editconstraint = {}

---@class (partial) WorldAPIs_scenery_flexicolour
local WorldAPIs_scenery_flexicolour = {}

---@class (partial) WorldAPIs_scenery_grid
local WorldAPIs_scenery_grid = {}

---@class (partial) WorldAPIs_scenery_group
local WorldAPIs_scenery_group = {}

---@class (partial) WorldAPIs_scenery_platforms
local WorldAPIs_scenery_platforms = {}

---@class (partial) WorldAPIs_scenery_puppets
local WorldAPIs_scenery_puppets = {}

---@class (partial) WorldAPIs_scenery_signage
local WorldAPIs_scenery_signage = {}

---@class (partial) WorldAPIs_scenery_volumeextras
local WorldAPIs_scenery_volumeextras = {}

---@class (partial) WorldAPIs_sequence
local WorldAPIs_sequence = {}

---@class (partial) WorldAPIs_staff
local WorldAPIs_staff = {}

---@class (partial) WorldAPIs_techtree
local WorldAPIs_techtree = {}

---@class (partial) WorldAPIs_trackedridedatabase
local WorldAPIs_trackedridedatabase = {}

---@class (partial) WorldAPIs_trackedrides
local WorldAPIs_trackedrides = {}

---@class (partial) WorldAPIs_transform
local WorldAPIs_transform = {}

---@class (partial) WorldAPIs_vehicles
local WorldAPIs_vehicles = {}

---@class (partial) WorldAPIs_visualsConfig
local WorldAPIs_visualsConfig = {}

---@class (partial) WorldAPIs_volumes
local WorldAPIs_volumes = {}

---@class (partial) WorldAPIs_voxelterrain
local WorldAPIs_voxelterrain = {}

---@class (partial) WorldAPIs_weather
local WorldAPIs_weather = {}

---@class (partial) WorldAPIs_whiteworldui
local WorldAPIs_whiteworldui = {}

---@class (partial) WorldAPIs_worldserialisation
local WorldAPIs_worldserialisation = {}

---@class (partial) WorldAPIs
---@field CameraAttachPoint WorldAPIs_CameraAttachPoint
---@field CameraModeManager WorldAPIs_CameraModeManager
---@field ChallengeManager WorldAPIs_ChallengeManager
---@field ConversationManager WorldAPIs_ConversationManager
---@field FacilityDatastoreComponent WorldAPIs_FacilityDatastoreComponent
---@field FanfareManager WorldAPIs_FanfareManager
---@field FlatRideDataStoreComponent WorldAPIs_FlatRideDataStoreComponent
---@field FlumePlatformDataStoreComponent WorldAPIs_FlumePlatformDataStoreComponent
---@field GameModeHelperComponent WorldAPIs_GameModeHelperComponent
---@field HUDPopUpManager WorldAPIs_HUDPopUpManager
---@field HotelDataStoreComponent WorldAPIs_HotelDataStoreComponent
---@field InfoPopUpComponent WorldAPIs_InfoPopUpComponent
---@field InputManager WorldAPIs_InputManager
---@field Manager WorldAPIs_Manager
---@field ModeHelperComponent WorldAPIs_ModeHelperComponent
---@field MotionBlurManager WorldAPIs_MotionBlurManager
---@field ObjectiveManager WorldAPIs_ObjectiveManager
---@field PaperDesignToolManager WorldAPIs_PaperDesignToolManager
---@field ParkZoneDatastoreComponent WorldAPIs_ParkZoneDatastoreComponent
---@field PlayerInteractionHandler WorldAPIs_PlayerInteractionHandler
---@field PoolsDatastoreComponent WorldAPIs_PoolsDatastoreComponent
---@field RenderParametersComponent WorldAPIs_RenderParametersComponent
---@field RideSeat WorldAPIs_RideSeat
---@field ScenarioNarrativeManager WorldAPIs_ScenarioNarrativeManager
---@field ScenarioRivalsManager WorldAPIs_ScenarioRivalsManager
---@field SceneryBrowserFilterManager WorldAPIs_SceneryBrowserFilterManager
---@field SelectAndEditComponent WorldAPIs_SelectAndEditComponent
---@field StaffBuildingDatastoreComponent WorldAPIs_StaffBuildingDatastoreComponent
---@field StaffDataStoreComponent WorldAPIs_StaffDataStoreComponent
---@field StaffPoolDataStoreComponent WorldAPIs_StaffPoolDataStoreComponent
---@field StandaloneScenerySerialisation WorldAPIs_StandaloneScenerySerialisation
---@field TargetsDatastoreComponent WorldAPIs_TargetsDatastoreComponent
---@field TrackedRideDataStoreComponent WorldAPIs_TrackedRideDataStoreComponent
---@field UIModeHelperComponent WorldAPIs_UIModeHelperComponent
---@field UniqueNameComponent WorldAPIs_UniqueNameComponent
---@field UtilityDatastoreComponent WorldAPIs_UtilityDatastoreComponent
---@field WorkshopDatastoreComponent WorldAPIs_WorkshopDatastoreComponent
---@field WorldBasedGUIProvider WorldAPIs_WorldBasedGUIProvider
---@field animation WorldAPIs_animation
---@field attractions WorldAPIs_attractions
---@field avatarcapture WorldAPIs_avatarcapture
---@field avatarpatterncontrols WorldAPIs_avatarpatterncontrols
---@field billboardwidgets WorldAPIs_billboardwidgets
---@field boundary WorldAPIs_boundary
---@field cameraconfig WorldAPIs_cameraconfig
---@field cheats WorldAPIs_cheats
---@field cinematics WorldAPIs_cinematics
---@field complex WorldAPIs_complex
---@field controlsconfig WorldAPIs_controlsconfig
---@field debugimgui WorldAPIs_debugimgui
---@field editors WorldAPIs_editors
---@field environment WorldAPIs_environment
---@field facilities WorldAPIs_facilities
---@field flatrides WorldAPIs_flatrides
---@field flumes WorldAPIs_flumes
---@field gameaudio WorldAPIs_gameaudio
---@field gameaudiodepreciated WorldAPIs_gameaudiodepreciated
---@field gameterrain WorldAPIs_gameterrain
---@field gamevolatileconfig WorldAPIs_gamevolatileconfig
---@field guests WorldAPIs_guests
---@field infrastructure WorldAPIs_infrastructure
---@field lighting WorldAPIs_lighting
---@field money WorldAPIs_money
---@field park WorldAPIs_park
---@field placement WorldAPIs_placement
---@field pools WorldAPIs_pools
---@field renderparameters WorldAPIs_renderparameters
---@field rides WorldAPIs_rides
---@field ridestation WorldAPIs_ridestation
---@field ridestats WorldAPIs_ridestats
---@field scenegraph WorldAPIs_scenegraph
---@field scenery WorldAPIs_scenery
---@field scenery_belonging WorldAPIs_scenery_belonging
---@field scenery_editconstraint WorldAPIs_scenery_editconstraint
---@field scenery_flexicolour WorldAPIs_scenery_flexicolour
---@field scenery_grid WorldAPIs_scenery_grid
---@field scenery_group WorldAPIs_scenery_group
---@field scenery_platforms WorldAPIs_scenery_platforms
---@field scenery_puppets WorldAPIs_scenery_puppets
---@field scenery_signage WorldAPIs_scenery_signage
---@field scenery_volumeextras WorldAPIs_scenery_volumeextras
---@field sequence WorldAPIs_sequence
---@field staff WorldAPIs_staff
---@field techtree WorldAPIs_techtree
---@field trackedridedatabase WorldAPIs_trackedridedatabase
---@field trackedrides WorldAPIs_trackedrides
---@field transform WorldAPIs_transform
---@field vehicles WorldAPIs_vehicles
---@field visualsConfig WorldAPIs_visualsConfig
---@field volumes WorldAPIs_volumes
---@field voxelterrain WorldAPIs_voxelterrain
---@field weather WorldAPIs_weather
---@field whiteworldui WorldAPIs_whiteworldui
---@field worldserialisation WorldAPIs_worldserialisation
local WorldAPIs = {}

---@param notifFranchiseParkDeleted any
---@param Arg2 any
function IRC.AddIRCNotificationListener(notifFranchiseParkDeleted, Arg2) end

---@param v any
function IRC.RemoveIRCNotificationListener(v) end


---@param audioGlobalState any
---@return any audioGlobalState
function audio.DropGlobalState(audioGlobalState) end

---@return number nListener
function audio.GetNonDiegeticPlayerDialogueEntityID() end

---@param sArg1 string
function audio.PostGuiEvent(sArg1) end

---@param sArg1 string
---@return any audioGlobalState
function audio.RequestGlobalState(sArg1) end

---@param sAudio string
---@param vOLock any
---@return number nEventWaitingForCallback
function audio.RequestVOHighPriority(sAudio, vOLock) end

---@param sArg1 string
function audio.SendGUIEvent(sArg1) end

---@param bArg1 boolean
function audio.SetControllerUnplugged(bArg1) end

---@param sArg1 string
---@param nMovementSpeed number
function audio.SetGuiRTPC(sArg1, nMovementSpeed) end

function audio.StopCurrentVO() end

---@param cTrigger table
---@param cParticipants table
---@param cSequence table
---@param nRequestID number
function audio.SubmitDialogueSequence(cTrigger, cParticipants, cSequence, nRequestID) end


---@param cameraID any
---@param vLocation vector
---@return vector vScreenUV
function camera.GetBottomUpScreenUVFromWorldPosition(cameraID, vLocation) end

---@param Arg1 any
---@param nCameraFOV number
---@return vector vFOV
function camera.GetFOV(Arg1, nCameraFOV) end

---@return number nCamEntity
function camera.GetMainCameraID() end

---@param v2TopDownScreenUV any
---@return any entity
---@return vector vRayStart
---@return vector vRayDir
function camera.GetRayFromTopDownScreenUV(v2TopDownScreenUV) end

---@param nCameraEntityID number
---@param vWorldPos vector
---@return vector vScreenUV
function camera.GetTopDownScreenUVFromWorldPosition(nCameraEntityID, vWorldPos) end

---@param nCamEntity number
---@param nArg2 number
---@param bArg3 boolean
function camera.SetAspectRatio(nCamEntity, nArg2, bArg3) end

---@param bArg1 boolean
function camera.SetDropCameraEnabled(bArg1) end

---@param transformQ any
function camera.SetDropCameraTransform(transformQ) end

---@param targetID any
---@param nFOVY number
function camera.SetFOVY(targetID, nFOVY) end

---@param mainCameraEntityID any
function camera.SetMainCameraID(mainCameraEntityID) end

---@param nCamEntity number
---@param Arg2 Vector2
---@param Arg3 Vector2
function camera.SetViewport(nCamEntity, Arg2, Arg3) end


---@param nComponentManagerID number
---@param nEntityID number
---@param nFeatureID number
function componentmanager.ActivateFeatureForEntity(nComponentManagerID, nEntityID, nFeatureID) end

---@param nComponentManagerID number
---@param sFeature string
---@param cOptions table
function componentmanager.Configure_AddFeatureProvided(nComponentManagerID, sFeature, cOptions) end

---@param nComponentManagerID number
---@param sFeature string
---@param cOptions table
function componentmanager.Configure_AddFeatureRequired(nComponentManagerID, sFeature, cOptions) end

---@param nComponentManagerID number
---@param sFeature string
---@param cOptions table
function componentmanager.Configure_AddFeatureRequiredOnAnotherEntity(nComponentManagerID, sFeature, cOptions) end

---@param nComponentManagerID number
---@param sFeature string
---@param cOptions table
function componentmanager.Configure_AddFeatureRequiredOptional(nComponentManagerID, sFeature, cOptions) end

---@param sArg1 string
---@return number nGuestOnRideReactionsComponentID
function componentmanager.LookupComponentManagerID(sArg1) end

---@param sArg1 string
---@return number nMotiongraphFeature
function componentmanager.LookupFeatureID(sArg1) end


---@param allProducts any
---@return number nDLCToShow
function content.FilterAvailable(allProducts) end

---@param nBit number
---@return string sProductName
function content.GetDLCName(nBit) end

---@param nBaseGame number
---@return any destination
function content.GetDLCProductIDForDLCID(nBaseGame) end

---@param nProductId number
---@return boolean bProductValid
function content.GetIsValidSingleProductID(nProductId) end

---@return any langCode
function content.GetLanguageCode() end

---@return any systemLanguage
function content.GetLanguageName() end

---@return table tLoadedPackNames
function content.GetLoadedContentPackDebugNames() end

---@param nRequiredDLC number
---@return number nMissingDLC
function content.GetUnownedMask(nRequiredDLC) end

---@return boolean bCondition
function content.HasContentLoaded() end

---@param packID any
---@return boolean bHasSteamID
---@return number nSteamID
function content.IsContentPackUploaded(packID) end

---@param nRequiredDLC number
---@return boolean bDLCOwned
function content.IsDLCOwned(nRequiredDLC) end

---@return boolean bHasLocalModifications
function content.IsGameModded() end

function content.IsOwnershipEstablished() end

---@param sDLCID string
---@param nDLCAppID number?
function content.OpenDLCStorePage(sDLCID, nDLCAppID) end

function content.OpenDefaultGameStorePage() end

function content.RequestContentLoad() end

function content.SetAllOwnedDLCActiveInGame() end

function content.StreamingCalculateStable() end


function crowdsimulation.ArePathSectionsPending() end

---@param facilityID any
---@return boolean bValidConnection
function crowdsimulation.CanBeReachedFromSpawnPoint(facilityID) end

function crowdsimulation.CompleteCrowdGoalPoolWorldSerialisationLoad() end

function crowdsimulation.CreateBakedDijkstraGraphsOnLoad() end

function crowdsimulation.CreatePropagationGraphsOnLoad() end

function crowdsimulation.GetParticlesStillAwaitingInitialAnim() end

---@param nQueueCrowdGoalEntity number
---@return boolean bCanPathTo
function crowdsimulation.IsEntityConnectedToSpawnPoint(nQueueCrowdGoalEntity) end

---@param vV3PathPos vector
---@param bArg2 boolean
---@return boolean bIsPointValid
---@return any dummy
---@return boolean bIsStaffPath
function crowdsimulation.IsPointOnPath(vV3PathPos, bArg2) end

function crowdsimulation.ParkEntranceExists() end

---@param bArg1 boolean
function crowdsimulation.SetUpdateFlowWhileInactive(bArg1) end

---@param voxelTerrainEntityID any
function crowdsimulation.SetVoxelTerrain(voxelTerrainEntityID) end


---@param priorityEditor any
---@param sArg2 string
---@return any cursorRequest
function cursor.CaptureCursor(priorityEditor, sArg2) end

---@param priorityEditor any
---@param sArg2 string
---@return table tHideCursorRequest
function cursor.HideCursor(priorityEditor, sArg2) end

function cursor.IsCursorInsideGameWindow() end

---@param priorityEditor any
---@param sCursor string
---@param nAME any
---@return any cursorHandle
function cursor.RequestCursor(priorityEditor, sCursor, nAME) end


---@param cStatement table
function database.BindComplete(cStatement) end

---@param cStatement table
---@param nArgToBind number
---@param sResourceName string
function database.BindParameter(cStatement, nArgToBind, sResourceName) end

---@param sName string
---@param sStatementSymbol string
---@return boolean bSuccess
function database.BindPreparedStatement(sName, sStatementSymbol) end

---@param sName string
---@param sStatementCollectionSymbol string
---@return boolean bSuccess
function database.BindPreparedStatementCollection(sName, sStatementCollectionSymbol) end

function database.CompactHeap() end

---@param sName string
---@return boolean bSuccess
function database.CreateEmptyNamedDatabase(sName) end

---@param sSymbol string
function database.DiscardDatabaseResources(sSymbol) end

---@param cPsTags table
---@param bArg2 boolean?
---@param nArg3 number?
---@return table tAllTags
function database.GetAllResults(cPsTags, bArg2, nArg3) end

---@param instanceHandle any
function database.GetAsyncDispatchStatus(instanceHandle) end

---@param sDatabaseName string
---@param sPreparedStatement string
---@param bArg3 boolean?
---@return table cPSInstance
function database.GetPreparedStatementInstance(sDatabaseName, sPreparedStatement, bArg3) end

---@param statement any
---@return table tManufacturerResult
function database.GetResult(statement) end

---@param cStatement table
---@param nArg2 number
---@return string sDatabaseResult
function database.GetResultColumn(cStatement, nArg2) end

---@param cPSInstance table
function database.GetResultColumnCount(cPSInstance) end

---@param cStatement table
---@return boolean bCondition
function database.IsReadyForResult(cStatement) end

---@param sSymbol string
---@param sName string
---@return boolean bSuccess
function database.LoadAndNameDatabase(sSymbol, sName) end

---@param sMainName string
---@param sContentName string
---@param sMergeRule string
---@return boolean bSuccess
function database.MergeChildDatabase(sMainName, sContentName, sMergeRule) end

---@param sName string
---@return boolean bAllDatabasesReady
function database.NamedDatabaseExists(sName) end

---@param instanceHandle any
function database.ReadyForStep(instanceHandle) end

---@param psSceneryTags any
function database.Reset(psSceneryTags) end

---@param sName string
---@param bArg2 boolean
function database.SetReadOnly(sName, bArg2) end

---@param cStatement table
function database.Step(cStatement) end

---@param sName string
---@param sStatementSymbol string
---@return boolean bSuccess
function database.UnbindPreparedStatement(sName, sStatementSymbol) end

---@param sName string
---@param sStatementCollectionSymbol string
---@return boolean bSuccess
function database.UnbindPreparedStatementCollection(sName, sStatementCollectionSymbol) end

---@param sContentName string
---@return boolean bSuccess
function database.UnloadNamedDatabase(sContentName) end


---@param bCondition boolean
---@param sErrMsg string?
---@param sRideName string?
---@param sArg4 string?
---@param nMaxObjectScale number?
function debug.Assert(bCondition, sErrMsg, sRideName, sArg4, nMaxObjectScale) end

---@param tweakableFloat any
---@param sArg2 string
---@param cNSoftGuestCap any
---@param nArg4 number?
---@param nCNHardGuestCap number?
---@param nArg6 number?
---@return DebugTweakable tweakable
function debug.CreateDebugTweakable(tweakableFloat, sArg2, cNSoftGuestCap, nArg4, nCNHardGuestCap, nArg6) end

function debug.DbgBreak() end

---@param vStartPos vector
---@param vDirStart vector
---@param sArg3 string
function debug.DrawAxis(vStartPos, vDirStart, sArg3) end

---@param baseTrans any
---@param nAxisSize number
function debug.DrawAxisXYZ(baseTrans, nAxisSize) end

---@param boxTrans any
---@param vHalfSize vector
---@param sArg3 string
function debug.DrawBox(boxTrans, vHalfSize, sArg3) end

---@param Arg1 any
---@param Arg2 any
---@param vTarget vector
---@param sArg4 string
function debug.DrawCircle(Arg1, Arg2, vTarget, sArg4) end

---@param Arg1 any
---@param Arg2 any
---@param sArg3 string
function debug.DrawCircle2D(Arg1, Arg2, sArg3) end

---@param Arg1 any
---@param nArg2 number
---@param sCentreColour string
function debug.DrawCross(Arg1, nArg2, sCentreColour) end

---@param vMin vector
---@param vMax vector
---@param sArg3 string
---@param nArg4 number
function debug.DrawFilledAABB(vMin, vMax, sArg3, nArg4) end

---@param vPos vector
---@param Arg2 any
---@param sArg3 string
function debug.DrawFilledArrow(vPos, Arg2, sArg3) end

---@param Arg1 any
---@param startRot any
---@param cNRadius any
---@param nSectorWidth number
---@param sColour string
function debug.DrawFilledCircleSector(Arg1, startRot, cNRadius, nSectorWidth, sColour) end

---@param vTopLeft vector
---@param vTopRight vector
---@param vBottomRight vector
---@param vBottomLeft vector
---@param sColour string
function debug.DrawFilledQuad(vTopLeft, vTopRight, vBottomRight, vBottomLeft, sColour) end

---@param vWorldCentrePosWithDeltas vector
---@param vBottomRight vector
---@param sColour string
---@param sDeltaColourDark string?
function debug.DrawLine(vWorldCentrePosWithDeltas, vBottomRight, sColour, sDeltaColourDark) end

---@param nArg1 number
---@param vProjectionPos vector
---@param vEndPos vector
---@param sArg4 string
function debug.DrawLineCapsule(nArg1, vProjectionPos, vEndPos, sArg4) end

---@param Arg1 any
---@param Arg2 any
---@param sArg3 string
function debug.DrawRectangle2D(Arg1, Arg2, sArg3) end

---@param vPos vector
---@param nDeltaSize number
---@param sCentreColour string
function debug.DrawSphere(vPos, nDeltaSize, sCentreColour) end

---@param sName string
---@param Arg2 any
---@param sTextColour string
---@param nArg4 number?
function debug.DrawText(sName, Arg2, sTextColour, nArg4) end

---@param sArg1 string
---@param vEndPos vector
---@param nSnapHeight number
---@param sColour string?
---@param nArg5 number?
function debug.DrawTextFlag(sArg1, vEndPos, nSnapHeight, sColour, nArg5) end

---@param sTimerName string
---@param nArg2 number?
function debug.EndTimer(sTimerName, nArg2) end

---@param sSaveTokenOrError string
---@param nAME any?
---@param sArg3 string?
function debug.Error(sSaveTokenOrError, nAME, sArg3) end

---@return any _
function debug.GetAllValidWorlds() end

---@param sI string
---@param sDir string
---@return table tPrkFiles
function debug.GetFilesOfType(sI, sDir) end

---@return table tLoadedModuleNames
function debug.GetListOfLoadedModuleNames() end

---@param cCandidateFiles table
---@return string sMostRecentFile
function debug.GetMostRecentlyModifiedFile(cCandidateFiles) end

---@param sFullDir string
---@return table tSubFolders
function debug.GetSubFolders(sFullDir) end

---@return boolean bDebug
function debug.IsDebugAllowed() end

---@param sWorldName string
function debug.IsWorldValid(sWorldName) end

---@param sNotificationString string
---@param sCentreColour string?
---@param sMessage string?
---@param sColour string?
---@param bArg5 boolean?
function debug.Print(sNotificationString, sCentreColour, sMessage, sColour, bArg5) end

---@param sFileName string
---@return boolean bSuccess
---@return string sSettings
function debug.ReadStringFromFile(sFileName) end

---@param fCommandFunc any
---@param sCommand string
---@param sCommandHelp string
---@return table tShellCommands[_sCommand]
function debug.RegisterShellCommand(fCommandFunc, sCommand, sCommandHelp) end

---@param Arg1 any
---@return boolean bOk
---@return string sErrorMessage
function debug.ReloadModule(Arg1) end

---@param sArg1 string
function debug.RunShellCommand(sArg1) end

---@param sArg1 string
function debug.SetGameDebugModule(sArg1) end

---@param bWasZBuffered boolean
---@return boolean bWasZBuffered
function debug.SetZBuffered(bWasZBuffered) end

---@param sTimerName string
---@param nArg2 number?
function debug.StartTimer(sTimerName, nArg2) end

---@param sErr string
---@param sArg2 string?
---@param sTable1 string?
---@param sArg4 string?
---@param table2 any?
---@param sArg6 string?
---@param sTableLevel string?
---@param key any?
---@param sArg9 string?
---@param value any?
---@param sArg11 string?
---@param key2 any?
---@param sArg13 string?
function debug.Trace(sErr, sArg2, sTable1, sArg4, table2, sArg6, sTableLevel, key, sArg9, value, sArg11, key2, sArg13) end

---@param cCommand table
function debug.UnregisterShellCommand(cCommand) end

---@param sMessage string
function debug.Warning(sMessage) end

---@param output any
---@param sOutput string
function debug.WriteLine(output, sOutput) end

---@param sFileString string
---@param sFileName string
---@param bArg3 boolean?
---@return boolean bAppendSuccess
---@return string sAppendError
function debug.WriteStringToFile(sFileString, sFileName, bArg3) end


---@param sArg1 string
---@param sArg2 string
---@param sArg3 string
---@param self any
---@param debugWindowAdvance any
---@param debugWindowSetup any?
---@return table cDebugWindow
function debugui.CreateMethodWindow(sArg1, sArg2, sArg3, self, debugWindowAdvance, debugWindowSetup) end

---@param cDebugWindow table
function debugui.DestroyWindow(cDebugWindow) end

---@return any ImGui
function debugui.GetImGui() end

---@return any origin
function debugui.GetMainViewportPos() end


---@param entityID any
---@param cArg2 table
---@param Arg3 any
function entity.AddComponentsToEntity(entityID, cArg2, Arg3) end

---@return table oCompletionToken
function entity.CreateRequestCompletionToken() end

---@param nCrowdDiscomfortObject number
function entity.DestroyEntity(nCrowdDiscomfortObject) end

---@param nEntityID number
---@param sParentType string
---@param nArg3 number?
---@param nArg4 number?
---@return number nHitEntityID
function entity.FindAncestorEntityProvidingFeature(nEntityID, sParentType, nArg3, nArg4) end

---@param sArg1 string
---@param nAnimatedEntityID number
---@return number nHeadID
function entity.FindByName(sArg1, nAnimatedEntityID) end

---@param sCEntityName string
---@param nAnimatedEntityID number?
---@return number nPhysicsWorldEntity
function entity.FindEntityByName(sCEntityName, nAnimatedEntityID) end

---@param nEntityID number?
---@return any Init
function entity.GetEntityDebugName(nEntityID) end

function entity.HasPendingRequests() end

---@param cCompletionToken table
---@return boolean _
function entity.HaveRequestsCompleted(cCompletionToken) end

---@param sArg1 string
---@param completionToken any
function entity.InstantiateDesc(sArg1, completionToken) end

---@param sPrefab string
---@param sName string?
---@param nCompletionToken number?
---@param cIdentity table?
---@param nGuestVisualEntityID number?
---@param bLocalSpace boolean?
---@param cProperties table?
---@param entityID any?
---@return number nEntityID
function entity.InstantiatePrefab(sPrefab, sName, nCompletionToken, cIdentity, nGuestVisualEntityID, bLocalSpace, cProperties, entityID) end

---@param nGuestID number
function entity.OpenEntityInfoWindow(nGuestID) end


function franchise.CancelInFlightRequests() end

---@param fnCallback function
---@param sStringToCheck string
function franchise.CheckProfanity(fnCallback, sStringToCheck) end

---@param nImageID number
function franchise.ClearImage(nImageID) end

function franchise.DisconnectIRC() end

---@param fnOnComplete function
---@param sParkFileUrl string
function franchise.DownloadPark(fnOnComplete, sParkFileUrl) end

---@return boolean bIsCrossplayEnabled
function franchise.GetCrossPlayEnabled() end

---@return number nFranchiseID
function franchise.GetCurrentFranchise() end

---@return number nSavedParkID
function franchise.GetCurrentParkID() end

---@return number nSignedInUserID
---@return string sSignedInUserName
function franchise.GetCurrentUser() end

---@return table tFranchiseMap
function franchise.GetDefaultFranchiseMap() end

---@param nValue number
---@return any tFranchiseTags[key]
function franchise.GetFranchiseTagLocString(nValue) end

---@return table tTagCollections
function franchise.GetFranchiseTags() end

---@param hairModelName any
---@return any hatHairModelName
function franchise.GetHatHairForAvatarHairModel(hairModelName) end

---@return table tParkTagDefinitions
function franchise.GetParkTagDefinitions() end

---@return table tParkTagValueDefinitions
function franchise.GetParkTagValueDefinitions() end

---@return table tServerConfig
function franchise.GetServerConfig() end

---@return number nCurrentSeconds
function franchise.GetTime() end

---@param sFileName string
---@return boolean bOK
function franchise.LoadOnlineParkFromFile(sFileName) end

---@param sParkName string
---@param cMetadata table
---@return table cSaveToken
function franchise.SaveCachedPark(sParkName, cMetadata) end

---@param bEnableCrossplay boolean
function franchise.SetCrossPlayEnabled(bEnableCrossplay) end

---@param nParkID number?
function franchise.SetCurrentParkID(nParkID) end

---@param bSubscribedToNewsletter boolean
function franchise.SetSignedUpForNewsletter(bSubscribedToNewsletter) end

---@param nFranchiseID number
function franchise.SignInFranchise(nFranchiseID) end

---@param nFranchiseID number
function franchise.SignOutFranchise(nFranchiseID) end

---@param fnUpdate function
---@param Arg2 any
---@param cTokenFull table
---@param cTokenHead table
function franchise.UpdateAvatar(fnUpdate, Arg2, cTokenFull, cTokenHead) end

---@param fnCallback function
---@param Arg2 any
---@return boolean bCreateRequestResult
function franchise.sAPIMethod(fnCallback, Arg2) end


function game.EnsureGameDatabase() end

function game.GetRawVersionString() end

---@param sArg1 string
---@return string sModule
function game.GetCommandLineArgument(sArg1) end

---@return number nCurrentComplexity
function game.GetCurrentGameComplexityPercentage() end

---@param bArg1 boolean
function game.GetCurrentGameComplexityPercentageUnclamped(bArg1) end

---@param bArg1 boolean?
---@return any SetParkComplexity
function game.GetCurrentGameComplexityScoreClamped(bArg1) end

---@return string sLocale
function game.GetCurrentLocale() end

---@return table tEnvironment
function game.GetEnvironment() end

function game.GetGameName() end

---@return number nSensitivityLevel
function game.GetPlatformSensitivityLevel() end

---@return string sPublisherRegion
function game.GetPublisherRegion() end

function game.GetStartLevelName() end

---@return string sModNotificationVersion
function game.GetVersionString() end

---@param sArg1 string
---@return boolean bSkipComms
function game.HasCommandLineArgument(sArg1) end

---@return boolean _
function game.IsBuildServer() end

---@return boolean bHeadless
function game.IsHeadless() end

---@param playerID any
---@param nUserCreatedContentPlatformResponse number
function game.OpenErrorDialog(playerID, nUserCreatedContentPlatformResponse) end

---@param playerID any
---@param sysMessageUGCRestriction any
function game.OpenSystemMessageDialog(playerID, sysMessageUGCRestriction) end

---@param sLink string
---@param nPlayerID number
---@param bActive boolean?
---@param bMinimise boolean?
function game.OpenURLInBrowser(sLink, nPlayerID, bActive, bMinimise) end

---@param bArg1 boolean
function game.Quit(bArg1) end

function game.RequestReturnToStart() end

---@param sWorldName string?
function game.RequestTransition(sWorldName) end

---@param bArg1 boolean
function game.SetSlowLoaderEnabled(bArg1) end


function gameRender.DisableBillboardMedia() end

function gameRender.EnableBillboardMedia() end

---@return table tPatternNames
function gameRender.GetPatternTextureList() end

---@return number nPresentInterval
function gameRender.GetPresentInterval() end

---@param Arg1 any
function gameRender.SetPresentInterval(Arg1) end


---@param cActiveTags table
---@return table tObjectsToAdd
function gamedatastore.GetItemsForTags(cActiveTags) end


---@param nLat number
---@param nLong number
---@param nGlobeEntityID number
function globe.AddSpinGlobeTweenFromLatLongDegrees(nLat, nLong, nGlobeEntityID) end

---@param nLatitude number
---@param nLongitude number
function globe.BringToFront(nLatitude, nLongitude) end

---@return table tConnectionEntities[nConnection]
function globe.CreateGlobeConnectionShape() end

---@param nGlobeEntityID number
function globe.EndDrag(nGlobeEntityID) end

---@param nGlobeEntityID number
function globe.EndTween(nGlobeEntityID) end

---@param nGlobeEntityID number
function globe.FreePins(nGlobeEntityID) end

---@param nGlobeEntityID number
---@return vector vPos
function globe.GetCurrentLatLongDegrees(nGlobeEntityID) end

---@param Arg1 any
---@param Arg2 any
---@param nLatitude number
---@param nLongitude number
---@param nGlobeEntityID number
function globe.GetHaversineDistanceFromLatLong(Arg1, Arg2, nLatitude, nLongitude, nGlobeEntityID) end

---@param rayStart any
---@param rayDir any
---@return boolean bHitGlobe
---@return vector vCursorLatLong
function globe.GetLatLongDegreesFromRayCast(rayStart, rayDir) end

---@param nLatitude number
---@param nLongitude number
---@return vector vPosition
function globe.GetPositionFromLatLongDegrees(nLatitude, nLongitude) end

---@param nLatitude number
---@param nLongitude number
---@param nGlobeEntityID number
---@return table tScreenPos
---@return boolean bOnFarSideShallow
---@return boolean bOnFarSideDeep
function globe.GetScreenPosition(nLatitude, nLongitude, nGlobeEntityID) end

---@param nConnectionIter number
function globe.HideGlobeConnection(nConnectionIter) end

---@param cGlobePins table
---@param nGlobeEntityID number
function globe.SetPins(cGlobePins, nGlobeEntityID) end

---@param nLat number
---@param nLong number
---@param nGlobeEntityID number
function globe.SetPositionFromLatLongDegrees(nLat, nLong, nGlobeEntityID) end

---@param cGlobeWidgets table
---@param nGlobeEntityID number
function globe.SetWidgets(cGlobeWidgets, nGlobeEntityID) end

---@param nConnectionIter number
function globe.ShowGlobeConnection(nConnectionIter) end

---@param rayStart any
---@param rayDir any
---@param nGlobeEntityID number
---@return boolean bDragging
function globe.StartDrag(rayStart, rayDir, nGlobeEntityID) end

---@param nGlobeEntityID number
---@return boolean _
function globe.TweenInProgress(nGlobeEntityID) end

---@param rayStart any
---@param rayDir any
---@param nGlobeEntityID number
---@return boolean bIsOnGlobe
function globe.UpdateDrag(rayStart, rayDir, nGlobeEntityID) end

---@param cConnection table
---@param vStart vector
---@param vEnd vector
function globe.UpdateGlobeConnection(cConnection, vStart, vEnd) end


---@param sTitle string
---@return string sSearchQuery
function http.URLEncode(sTitle) end


---@param playerID any
---@param nMaxButtons number?
function input.BeginButtonRebindPlayer(playerID, nMaxButtons) end

---@return any _
function input.ButtonRebindInProgress() end

function input.CancelButtonRebind() end

---@param sArg1 string
---@param nArg2 number
---@return table oControlContext
function input.CreateDebugControlContext(sArg1, nArg2) end

---@param sArg1 string
---@param nArg2 number
---@return table oControlContext
function input.CreateGlobalControlContext(sArg1, nArg2) end

---@param sContextID string
---@param cPlayerID table
---@param nArg3 number
---@return table oControlContext
function input.CreatePlayerControlContext(sContextID, cPlayerID, nArg3) end

---@return any contextFactory
function input.Debug_GetContextFactory() end

---@return boolean bGameHasFocus
function input.GameHasFocus() end

---@return boolean _
function input.GetAnyButtonRebound() end

---@return any kvswap
function input.GetLastBindSwaps() end

---@param sDebugWindowControlNameInput string
---@return boolean _
function input.GetLogicalButtonRebound(sDebugWindowControlNameInput) end

---@return vector vMouseUV
function input.GetMousePositionUV() end

---@return vector vMouseUV
function input.GetMousePositionUVUnclamped() end

---@return table cEntity
---@return vector vRayStart
---@return vector vRayDir
function input.GetMouseRay() end

---@param sValue string
---@return table tButtonDescriptors[sControl]
function input.GetTextDescriptionForLogicalAxis(sValue) end

---@param sButton string
---@return table tButtonDescriptors[sControl]
function input.GetTextDescriptionForLogicalButton(sButton) end

---@param sValue string
---@return table tButtonDescriptors[sControl]
function input.GetTextDescriptionForLogicalPosition(sValue) end

---@param sValue string
---@return table tButtonDescriptors[sControl]
function input.GetTextDescriptionForLogicalValue(sValue) end

function input.LuaHasMouseFocus() end

---@param sControl string
---@param Arg2 any
---@param bDoSwap boolean
---@return number nRebindResult
function input.RebindLogicalButton(sControl, Arg2, bDoSwap) end

function input.ResetAllLogicalButtonRebinds() end

---@param sControl string
---@param bDoSwap boolean
---@return number nRebindResult
function input.RevertLogicalButtonRebind(sControl, bDoSwap) end

function input.SaveRebinds() end

---@param inputDeviceKeyboardAndMouse any
function input.SetRebindDevice(inputDeviceKeyboardAndMouse) end

---@param playerId any
---@param triggerHapticsIndexR any
---@param triggerActivationPoint any
---@param strength any
function input.SetTriggerHapticsFeedback(playerId, triggerHapticsIndexR, triggerActivationPoint, strength) end

---@param playerId any
---@param triggerHapticsIndexR any
function input.SetTriggerHapticsOff(playerId, triggerHapticsIndexR) end


---@return any _
function json.GetArrayMetatable() end

---@param sFileData string
---@return boolean bSuccess
function json.Parse(sFileData) end

---@param cCameras table
---@param bArg2 boolean
---@return boolean bSuccess
---@return string sFileData
function json.Stringify(cCameras, bArg2) end


---@param sunLight any
---@param vSunLightColour vector
---@param bUseLinearColours boolean
---@param nSunLightIntensity number
function lighting.SetColour(sunLight, vSunLightColour, bUseLinearColours, nSunLightIntensity) end

---@param primary any
---@param nMoonFade number
function lighting.SetDirectionalFade(primary, nMoonFade) end

---@param primary any
---@param sun any
function lighting.SetDirectionalUsage(primary, sun) end

---@param nEntityID number
---@param nArg2 number
function lighting.SetIntensity(nEntityID, nArg2) end


---@param sTextSymbol string
---@return boolean bCondition
function loc.DoesTextSymbolExist(sTextSymbol) end

---@param sLabel string
---@return string sScenarioName
function loc.GetLocalisedText(sLabel) end

---@param sLine string
---@return string sSentiment
function loc.GetTextSentiment(sLine) end

---@return boolean _
function loc.IsCommunityTranslationActive() end

---@param sNewName string
---@return boolean _
function loc.IsProfane(sNewName) end


---@param sArg1 string
---@return string sCustomName
function localisation.GetLocalisedText(sArg1) end


---@param vBodyStart vector
---@param vBodyEnd vector
---@param vTailStart vector
---@param vTailEnd vector
---@return any p
---@return any q
function math.ClosestPointOnSegmentToSegment(vBodyStart, vBodyEnd, vTailStart, vTailEnd) end


---@param nMessageType number
---@param fnReceiver function?
function messaging.RegisterGlobalReceiver(nMessageType, fnReceiver) end

---@param nMessageType number
---@param fnReceiver function
function messaging.RegisterReceiver(nMessageType, fnReceiver) end

---@param msgTypeWorldTransitionMessage any
---@param cSave table
---@param sNewWorld string
---@param bArg4 boolean?
function messaging.SubmitGlobalMessage(msgTypeWorldTransitionMessage, cSave, sNewWorld, bArg4) end

---@param msgTypeTutorialEventMessage any
---@param nRenameType number?
---@param bNewName boolean?
---@param nRideID number?
---@param nArg5 number?
function messaging.SubmitMessage(msgTypeTutorialEventMessage, nRenameType, bNewName, nRideID, nArg5) end

---@param nMessageType number
---@param fnReceiver function?
function messaging.UnregisterGlobalReceiver(nMessageType, fnReceiver) end

---@param nMessageType number
---@param fnReceiver function?
function messaging.UnregisterReceiver(nMessageType, fnReceiver) end


---@param nEEditorGizmo number
---@param bHideGizmo boolean
function model.SetHidden(nEEditorGizmo, bHideGizmo) end

---@param channel any
---@param behaviour any
function model.SetHighlightBehaviour(channel, behaviour) end

---@param channel any
---@param edgeColour any
---@param edgeAlpha any
function model.SetHighlightEdgeColour(channel, edgeColour, edgeAlpha) end

---@param channel any
---@param fillColour any
---@param fillAlpha any
function model.SetHighlightFillColour(channel, fillColour, fillAlpha) end

---@param nFeatureEntity number
---@param highlightChannelSelection any
---@param bHighlight boolean
---@param bArg4 boolean?
function model.SetHighlighted(nFeatureEntity, highlightChannelSelection, bHighlight, bArg4) end


---@param nAnimatedEntityID number
---@param sArg2 string
function motiongraph.ClearActionQueue(nAnimatedEntityID, sArg2) end

---@param nAnimatedEntityID number
---@param sArg2 string
---@param sState string
function motiongraph.EnqueueLoopAction(nAnimatedEntityID, sArg2, sState) end

---@param nAnimatedEntityID number
---@param sArg2 string
---@param sOneShot string
function motiongraph.EnqueueOneShotAction(nAnimatedEntityID, sArg2, sOneShot) end

---@param nAnimatedEntityID number
---@param sArg2 string
---@return table oCurrentActionFence
function motiongraph.GetCurrentActionFence(nAnimatedEntityID, sArg2) end

---@param nAnimatedEntityID number
---@param sArg2 string
---@return table oCurrentLoopActionFence
function motiongraph.GetCurrentActionLoopFence(nAnimatedEntityID, sArg2) end

---@param nAnimatedEntityID number
---@param sDataStreamName string
---@param sDataStreamType string
---@return number nDataStreamValue
function motiongraph.GetDataStreamValue(nAnimatedEntityID, sDataStreamName, sDataStreamType) end

---@param nAnimatedEntityID number
---@param cCurrentLoopActionFence table
function motiongraph.HasActionFencePassed(nAnimatedEntityID, cCurrentLoopActionFence) end

---@param nAnimatedEntityID number
---@param sArg2 string
---@param sArg3 string
---@return boolean bScaleValue
function motiongraph.IsDataStreamPlaying(nAnimatedEntityID, sArg2, sArg3) end

---@param nAnimatedEntityID number
---@param sArg2 string
---@param Arg3 any
---@param Arg4 any?
function motiongraph.SetVariable(nAnimatedEntityID, sArg2, Arg3, Arg4) end


---@param sIdentMovie string
function movie.EndFreezeOnFinish(sIdentMovie) end

function movie.GetState() end

---@param sMovieName string
---@param bArg2 boolean
---@param bArg3 boolean
---@param bArg4 boolean
function movie.Play(sMovieName, bArg2, bArg3, bArg4) end

function movie.Stop() end


---@param sType string
---@param variantType any
---@return any _
---@return table tProps
function multipart2.GenerateRandom(sType, variantType) end

---@return any s_tDatabase
function multipart2.GetDatabase() end

---@param cCharacter table
---@return string sPrefab
---@return table tProps
function multipart2.GetProperties(cCharacter) end


---@param playerID any
function online.ClearKeplerUser(playerID) end

---@param gameOwner any
---@param sArg2 string
function online.CompletePresenceActivity(gameOwner, sArg2) end

---@param nPlayerID number
---@return table cRequestHandle
function online.CreateCrossPlatformPermissionRequest(nPlayerID) end

---@param Arg1 any
---@return table cRequestHandle
function online.CreateDataRequest(Arg1) end

---@param Arg1 any
---@return table cRequestHandle
function online.CreateIDRequest(Arg1) end

---@param nPlayerID number
---@return table cRequest
function online.CreateKeplerAcceptEulaRequest(nPlayerID) end

---@param nPlayerID number
---@return table cRequest
function online.CreateKeplerCheckPasswordQualityRequest(nPlayerID) end

---@param nPlayerID number
---@return table cRequest
function online.CreateKeplerConfirmAccountRequest(nPlayerID) end

---@param nPlayerID number
---@return table cRequest
function online.CreateKeplerCreateAccountRequest(nPlayerID) end

---@param nPlayerID number
---@return table cRequest
function online.CreateKeplerLinkAccountRequest(nPlayerID) end

---@param Arg1 any
---@return table cImageRequestHandle
function online.CreateKeplerNewsfeedDownloadImageRequest(Arg1) end

---@param Arg1 any
---@return table cRequestHandle
function online.CreateKeplerNewsfeedRequest(Arg1) end

---@param nGameOwner number
---@return table cRequestHandle
function online.CreateKeplerNewsletterSignUpRequest(nGameOwner) end

---@param Arg1 any
---@return table cFollowRequest
function online.CreateKeplerProfileFollowRequest(Arg1) end

---@param Arg1 any
---@return table cFollowedProfilesRequestHandle
function online.CreateKeplerProfileIDRequest(Arg1) end

---@param Arg1 any
---@return table cRequestHandle
function online.CreateKeplerProfilePagedListRequest(Arg1) end

---@param Arg1 any
---@return table cRequestHandle
function online.CreateKeplerSetDisplayNameRequest(Arg1) end

---@param nPlayerID number
---@return table cRequest
function online.CreateKeplerUserRequest(nPlayerID) end

---@return string sForcType
function online.GetForcType() end

---@return string sEndpoint
function online.GetKeplerEndpointName() end

---@return boolean bHasKeplerUser
---@return any _
---@return any _
---@return string sKeplerDisplayName
---@return any _
function online.GetKeplerUser() end

function online.IsKeplerAvailable() end

---@param playerID any
function online.IsKeplerUser(playerID) end

---@param Arg1 any
---@return string sUserId
function online.KeplerProfileIDToString(Arg1) end

---@param sId string
---@return number nOnlineProfileId
function online.OnlineProfileIDFromString(sId) end

---@param nID number
---@return string sProfileId
function online.OnlineProfileIDToString(nID) end

---@param nPlayerID number
---@param nDisplayedGameNetworkUserId number
function online.OpenViewProfileDialog(nPlayerID, nDisplayedGameNetworkUserId) end

---@param cRequestHandle table
---@return boolean bSuccess
---@return table cErrorOrResult
function online.RunKeplerRequest(cRequestHandle) end

---@param cRequestHandle table
---@return boolean bSuccess
function online.RunRequest(cRequestHandle) end

---@param gameOwner any
---@param sArg2 string
function online.StartPresenceActivity(gameOwner, sArg2) end

function online.UpdateViewProfileDialog() end


---@param nParticleEntity number
function particles.StartEmitting(nParticleEntity) end

---@param nParticleEntity number
function particles.StopEmitting(nParticleEntity) end


---@param sI string
---@return any gizmoHitcheckFlags
function physics.GetFlagValueFromName(sI) end

---@param physicsWorldEntityID any
---@param vCameraPos vector
---@param nRadius number
---@param nTrackPhysicFlag number
---@return any sphereTest
function physics.IntersectSphere(physicsWorldEntityID, vCameraPos, nRadius, nTrackPhysicFlag) end

---@param nPhysicsWorldEntity number
---@param vRayStart vector
---@param vEnd vector
---@param nPhysicsFlags number
---@param nNumResults number?
---@return table tHits
function physics.RayCast(nPhysicsWorldEntity, vRayStart, vEnd, nPhysicsFlags, nNumResults) end

---@param base any
---@param Arg2 any
function physics.SetCollisionEnabled(base, Arg2) end

---@param base any
---@param nScale number
function physics.SetScale(base, nScale) end

---@param base any
---@param Arg2 any
function physics.SetSpatialEnabled(base, Arg2) end

---@param physicsWorldEntityID any
---@param vCameraPos vector
---@param vTargetPos vector
---@param nRadius number
---@param nPhysicsFlags number
---@param nNumResults number?
---@return table tResults
function physics.SphereSweep(physicsWorldEntityID, vCameraPos, vTargetPos, nRadius, nPhysicsFlags, nNumResults) end


---@param avatarSizeMedium any
---@return table cSteamAvatar
function platform.GetMyAvatarImage(avatarSizeMedium) end

---@return boolean _
function platform.IsAvailable() end

function platform.IsOnSteamDeck() end


---@return number nPlayerID
function player.AddDebugGameOwner() end

---@param cProfilePlayerSource table
---@return any playerID
function player.AddGameOwner(cProfilePlayerSource) end

---@param nPlayerID number
---@param cNewController table
function player.AddInputSourceForPlayer(nPlayerID, cNewController) end

---@param cProfilePlayerSource table
---@return any player
function player.AddPlayer(cProfilePlayerSource) end

---@param cPlayerID table
---@return any format
function player.Debug_GetName(cPlayerID) end

function player.DisableAchievementHandling() end

function player.EnableAchievementHandling() end

---@param playerID any
---@param Arg2 any
function player.GetAgeGroup(playerID, Arg2) end

---@return number nPlayerID
function player.GetGameOwner() end

---@return table cPlayerSourceID
function player.GetJoinRequest() end

---@param nGameOwnerID number
---@return any EscapeString
function player.GetPlayerName(nGameOwnerID) end

---@param nPlayerID number
---@param userCreatedContent any
---@param fnGetCrossplayPrivilegeCallback function
---@param bAttemptResolve boolean
function player.GetPrivilege(nPlayerID, userCreatedContent, fnGetCrossplayPrivilegeCallback, bAttemptResolve) end

---@param nPlayerID number
function player.HasController(nPlayerID) end

---@return boolean bCondition
function player.HasGameOwner() end

---@param nPlayerID number
---@return boolean bPlayerHasProfile
function player.HasProfile(nPlayerID) end

---@param cPlayerID table
function player.InitialiseAchievements(cPlayerID) end

---@param cPlayerID table
---@return boolean _
function player.IsGameOwner(cPlayerID) end

---@return boolean _
function player.IsSimpleUserTrackingEnabled() end

---@param nPlayerID number
---@return boolean bCondition
function player.IsValid(nPlayerID) end

---@param Arg1 any
---@return number nGameOwnerChangeCallbackToken
function player.RegisterGameOwnerChangeCallback(Arg1) end

---@param Arg1 any
---@return table cInputChangeCallbackToken
function player.RegisterInputChangeCallback(Arg1) end

---@param Arg1 any
---@return number nPlayerChangeCallbackToken
function player.RegisterPlayerChangeCallback(Arg1) end

---@param playerID any
function player.RemovePlayer(playerID) end

---@param nPlayerID number
---@return boolean bDone
function player.RequestReconnectController(nPlayerID) end

---@param playerSourceDefault any?
---@param bArg2 boolean?
---@return boolean bDone
function player.RequestSignIn(playerSourceDefault, bArg2) end

---@param playerID any
---@return boolean bDone
---@return boolean bSignedIn
---@return boolean bSwitchedUser
---@return table cPlayerSource
function player.RequestSwitchUser(playerID) end

function player.StartListeningForPlayerSources() end

function player.StopListeningForPlayerSources() end

---@param Arg1 any
---@param sArg2 string
function player.UnlockReward(Arg1, sArg2) end

---@param nGameOwnerChangeCallbackToken number
function player.UnregisterGameOwnerChangeCallback(nGameOwnerChangeCallbackToken) end

---@param cInputChangeCallbackToken table
function player.UnregisterInputChangeCallback(cInputChangeCallbackToken) end

---@param nPlayerChangeCallbackToken number
function player.UnregisterPlayerChangeCallback(nPlayerChangeCallbackToken) end

---@param playerID any
---@param sArg2 string
---@param nNewRating number
function player.UpdateStat(playerID, sArg2, nNewRating) end


---@param Arg1 any
---@param sPresenceID string
function presence.AbandonRichPresence(Arg1, sPresenceID) end

---@param Arg1 any
---@return table cNotifyIntentToken
function presence.RegisterNotifyIntentCallback(Arg1) end

---@param Arg1 any
---@param sPresenceID string
function presence.StartRichPresence(Arg1, sPresenceID) end

---@param cNotifyIntentToken table
function presence.UnregisterNotifyIntentCallback(cNotifyIntentToken) end


---@return any token
function random.Create() end

---@param token any
---@param nArg2 number
---@return any which
function random.Get(token, nArg2) end

---@param token any
function random.Seed(token) end


function render.AllowAnselActivation() end

function render.ClearCalibrationTiles() end

function render.ClearCaptures() end

function render.DisableRenderingGameFrames() end

function render.DisallowAnselActivation() end

function render.DismissPlatformSplashScreen() end

function render.EnableRenderingGameFrames() end

---@param self render?
---@return vector vScreenSize
function render.GetBackBufferDimensions(self) end

---@return table cToken
function render.GetCaptureToken() end

---@return table tDisplayAdapters
function render.GetDisplayAdapterInfo() end

---@return table tSettings
function render.GetDisplayCalibrationSettings() end

---@return table tDisplaySettings
function render.GetDisplaySettings() end

---@return table tEffectSettings
function render.GetEffectSettings() end

---@return boolean bGUIRender
function render.GetIsRenderingGUI() end

---@return number nColourSpace
function render.GetPrimaryOutputColourSpace() end

function render.InitialiseAnsel() end

function render.IsCaptureSystemReady() end

function render.IsDLSSAvailable() end

function render.IsDLSSFrameGenerationAvailable() end

function render.IsFSR3Available() end

---@return boolean bHasUIHDR
function render.IsPrimaryOutputInHDRMode() end

---@return boolean bRaytracingAvailable
function render.IsRaytracingAvailable() end

function render.IsReflexAvailable() end

---@param cSettings table
function render.RequestDisplayCalibrationChange(cSettings) end

---@param cDisplaySettings table
function render.RequestDisplayChange(cDisplaySettings) end

---@param cEffectSettings table
function render.RequestEffectsChange(cEffectSettings) end

function render.ResetDisplayCalibration() end

---@param cToken table
---@param nArg2 number
---@param Arg3 any
---@param bArg4 boolean
---@return any success
function render.SaveCaptureToFile(cToken, nArg2, Arg3, bArg4) end

---@param bArg1 boolean
function render.SetCompositePostProcess(bArg1) end

---@param bArg1 boolean
function render.SetCompositeTransparencyEnabled(bArg1) end

---@param bArg1 boolean
function render.SetShouldRenderGUI(bArg1) end

---@param cScreenshotParams table
---@param cArg2 table?
function render.StartCapture(cScreenshotParams, cArg2) end

---@param cArg1 table
---@param cArg2 table
function render.StartCaptureFromSourceArea(cArg1, cArg2) end

---@param cCalibrationTiles table
function render.UpdateCalibrationTiles(cCalibrationTiles) end


---@param cSaveToken table
function save.ClearBigScreenshotDataFromSaveToken(cSaveToken) end

---@param getExistingSavesSortMostRecentFirst any
---@param cSaves table
---@param cAvailableAutoSaves table
---@return table tCachedSaveTokens
function save.CombineAndSortSaveTokens(getExistingSavesSortMostRecentFirst, cSaves, cAvailableAutoSaves) end

---@return table cAutosaveSuppresion
function save.CreateSaveSuspensionControl() end

---@param cSaveToken table
---@param bArg2 boolean
---@return number nScreenshotID
function save.GetBigScreenshotDataFromSaveToken(cSaveToken, bArg2) end

---@param cPlayerID table
---@param sPlayerSaveIdent string
---@param cEnumInfo table?
---@return boolean bCanEnum
---@return any completeorerr
---@return any existingSaves
function save.GetExistingSaves(cPlayerID, sPlayerSaveIdent, cEnumInfo) end

---@param player any
---@param sArg2 string
---@return number nSingleSaveStatus
function save.GetLocationStatus(player, sArg2) end

---@param cSaveToken table
function save.GetMetadataHasThumbnail(cSaveToken) end

---@param cSaveToken table
---@return table tModified
function save.GetModifiedTimeAsTable(cSaveToken) end

---@param sAutoSaveType string
---@return number nDesiredAutosaveSlots
function save.GetNumAutosaveSlotsForType(sAutoSaveType) end

---@param cSaveToken table
---@return string sCustomName
function save.GetSaveCustomName(cSaveToken) end

---@param cSaveToken table
---@return number nBlueprintID
function save.GetSaveIdentifier(cSaveToken) end

---@param save any
function save.GetSaveLocation(save) end

---@param cSaveToken table
---@return table tMetadata
function save.GetSaveMetadata(cSaveToken) end

---@param cSaveToken table
---@return number nMetadataID
function save.GetSaveMetadataID(cSaveToken) end

---@param cSaveToken table
---@return string sSaveType
function save.GetSaveType(cSaveToken) end

function save.IsBusy() end

---@param cSaveToken table
---@return boolean bCorrupt
function save.IsSaveCorrupt(cSaveToken) end

---@param cSaveTokenOrPlayer table
---@return boolean bCondition
function save.IsSaveToken(cSaveTokenOrPlayer) end

---@param Arg1 any
---@param sArg2 string
---@return any SetDataStoreElement
function save.IsSavingSuspended(Arg1, sArg2) end

---@param cSaveToken table
---@param bigScreenshotLoadBoth any
function save.MarkSaveTokenForBigScreenshotLoad(cSaveToken, bigScreenshotLoadBoth) end

---@param onAutosaveComplete any
---@return table cAutosaveCallbackToken
function save.RegisterAutosaveCallback(onAutosaveComplete) end

---@param Arg1 any
---@return table cExceptionCallbackToken
function save.RegisterExceptionCallback(Arg1) end

---@param Arg1 any
---@param sArg2 string
---@return boolean _
function save.RequestAutosave(Arg1, sArg2) end

---@param cSaveToken table
---@param cSaveToOverwrite table
---@param cSaveInfo table
function save.RequestCopy(cSaveToken, cSaveToOverwrite, cSaveInfo) end

---@param cExistingPlayerSave table
---@param cSaveInfo table
---@return boolean bOk
function save.RequestDelete(cExistingPlayerSave, cSaveInfo) end

---@param cSaveToken table
---@param cArg2 table
function save.RequestLoad(cSaveToken, cArg2) end

---@param player any
---@param cArg2 table
function save.RequestRecreate(player, cArg2) end

---@param cSaveTokenOrPlayer table
---@param cSaveInfo table
---@return boolean bSuccessful
---@return any errorStringOrSaveToken
function save.RequestSave(cSaveTokenOrPlayer, cSaveInfo) end

---@param nPlayerID number
---@return boolean bSuccess
---@return any saveHandleOrErrorString
function save.RequestSavePlayerData(nPlayerID) end

---@param Arg1 any
---@param sArg2 string
function save.ResetAutosaveTimer(Arg1, sArg2) end

---@param nSaveIndex number
---@param cAutosaveInfo table
function save.SetAutosave(nSaveIndex, cAutosaveInfo) end

---@param Arg1 any
---@param sAutoSaveType string
---@param cAutosaveInfo table
function save.SetNewAutosave(Arg1, sAutoSaveType, cAutosaveInfo) end

---@param cAutosaveCallbackToken table
function save.UnregisterAutosaveCallback(cAutosaveCallbackToken) end

---@param cExceptionCallbackToken table
function save.UnregisterExceptionCallback(cExceptionCallbackToken) end

---@param nSaveIndicatorToken number
function save.UnregisterSaveIndicatorCallback(nSaveIndicatorToken) end

---@param Arg1 any
---@param sArg2 string
function save.UnsetAutosave(Arg1, sArg2) end

---@param player any
---@param sErrorCode string
function save.UpdateSaveErrorDialog(player, sErrorCode) end


---@param nEntityID number
---@return vector vMinPart
---@return vector vMaxPart
function spatial.GetShapeAABB(nEntityID) end

---@param rayStart any
---@param rayDir any
---@param nRayQueryFlags number
---@return table tHits
function spatial.RayQuery(rayStart, rayDir, nRayQueryFlags) end

---@param vLastHitPoint vector
---@param brushSize any
---@param nSpatialFlags number
---@return table tResults
function spatial.SphereQuery(vLastHitPoint, brushSize, nSpatialFlags) end


---@param cTaskHandle table
function task.Cancel(cTaskHandle) end

---@param cTaskHandle table
---@return boolean bTaskComplete
---@return boolean tPopulationData
---@return number nResult
function task.JoinAsync(cTaskHandle) end

---@param runQuery any
---@param self any?
---@param nEmail number?
---@param cPassword table?
---@param nTitle number?
---@param cTags table?
---@param sSearchTerm string?
---@param sContextName string?
---@param sCategory string?
---@param bGetAuthorNames boolean?
---@param bAllQuery boolean?
---@param nUserID number?
---@param bArg13 boolean?
---@param nTimestamp number?
---@return table cProfileTaskHandle
function task.Spawn(runQuery, self, nEmail, cPassword, nTitle, cTags, sSearchTerm, sContextName, sCategory, bGetAuthorNames, bAllQuery, nUserID, bArg13, nTimestamp) end

---@return boolean _
function task.YieldFrame() end


---@param originalGame any
---@param sIdent string
---@param cTelemetryData table?
function telemetry.Send(originalGame, sIdent, cTelemetryData) end


---@return any timeScaler
function time.AcquireTimeScaler() end

---@param nNewTime number
---@param nTime number
---@return number nDiff
function time.DiffPerformanceTimers(nNewTime, nTime) end

---@param day any
---@param month any
---@param year any
---@return string sDate
function time.FormatDateString(day, month, year) end

---@param hour any
---@param minute any
---@param second any
---@return string sTime
function time.FormatTimeString(hour, minute, second) end

---@return table tCurrentTime
function time.GetCurrentTimeTable() end

---@return any resume
function time.GetDeltaTime() end

---@return number nDeltaTime
function time.GetDeltaTimeUnscaled() end

---@return number nNewTime
function time.GetPerformanceTimer() end

---@return number nTimeNowInSeconds
function time.GetTimeNowInSeconds() end

---@return number nTime
function time.GetTotalTime() end

---@return number nStartTimestamp
function time.GetTotalTimeUnscaled() end

---@param sCSPauseLevel string
function time.Pause(sCSPauseLevel) end

---@param nDiff number
---@return number nDiffMs
function time.PerformanceTimeToMilliseconds(nDiff) end

---@param timeScaler any
function time.ReleaseTimeScaler(timeScaler) end

---@param timeScaler any
---@param nTimeScaleIndex number
function time.SetTimeScaler(timeScaler, nTimeScaleIndex) end

---@param nArg1 number
function time.SleepUnscaled(nArg1) end

---@param sCSPauseLevel string
function time.Unpause(sCSPauseLevel) end


---@param cChangeListHierarchy table
---@param cPreviewUpdateToken table
---@param cTrack table
function track.AddAndMoveTrack(cChangeListHierarchy, cPreviewUpdateToken, cTrack) end

---@param changeListHierarchy any
---@param track any
---@return any changeNeeded
function track.AddGatesToEmptyStations(changeListHierarchy, track) end

---@param multiSelection any
---@param nRideID number
function track.AddRideAndRecursiveSequenceItemsToMultiSelection(multiSelection, nRideID) end

---@param multiSelection any
---@param nRideID number
function track.AddRideConnectedTargetsToMultiSelection(multiSelection, nRideID) end

---@param changelist any
---@param newSelection any
---@param previewAdd any
---@param bTunnelling boolean
---@param bTunnelling2 boolean
---@param ignoreSelection any?
function track.AddSelection(changelist, newSelection, previewAdd, bTunnelling, bTunnelling2, ignoreSelection) end

---@param cStation table
function track.AddSelectionImmeditate(cStation) end

function track.AreEntitiesStable() end

---@param cTrack table
---@param cSection table
---@return number nLength
function track.CalcSectionLength(cTrack, cSection) end

---@param cTrackHolder table
---@param trackEditConstrainableActionDelete any
---@return boolean bIsMovable
function track.CanPerformConstrainableAction(cTrackHolder, trackEditConstrainableActionDelete) end

---@param prevsection any
function track.CanRemoveSection(prevsection) end

---@param track any
function track.CancelActiveTrackDirectionArrows(track) end

function track.ClearAllTrackEditConstraints() end

function track.ClearGUIShapeHighlightCurrentEditingTrack() end

---@param selectionHighlightTypeSelect any
function track.ClearGUIShapeSelectionHighlight(selectionHighlightTypeSelect) end

---@param cTrackHolder table
function track.ClearTrackElementCache(cTrackHolder) end

---@param newSelection any
---@param selection any
---@return any newSelection
function track.CombineSelection(newSelection, selection) end

---@param extendingFromTrackSelection any
---@param currentSelection any
---@return any combinedSelection
function track.CombineSelectionShortest(extendingFromTrackSelection, currentSelection) end

---@return any trackedRideCompletionToken
function track.CompleteWorldSerialisationLoad() end

---@param cTrackHolder table
---@return vector vLocalMin
---@return vector vLocalMax
function track.ComputeApproxLocalAABB(cTrackHolder) end

---@param cTrack table
---@return number nEvents
function track.CountTrackEvents(cTrack) end

---@param track any
---@return any autoComplete
function track.CreateAutoComplete(track) end

---@return any autoCompleteParams
function track.CreateAutoCompleteParams() end

---@param sRideName string
---@return table cTrack
function track.CreateHolder(sRideName) end

---@param vNewPos vector
---@param vZero vector
---@param nTwist number
---@return any endT
function track.CreateJoinPoint(vNewPos, vZero, nTwist) end

---@param selection any
---@param nBankDelta number
---@param bWeightedToCentre boolean
---@param nAngleSnap number
---@return any newSelection
function track.CreateModifiedBankSelection(selection, nBankDelta, bWeightedToCentre, nAngleSnap) end

---@param selection any
---@param splineStartT any
---@return any replaceSelection
function track.CreateModifiedStartSelection(selection, splineStartT) end

---@param oldSelection any
---@param cJoinPoints table
---@param cLocalFlexicolour table
---@return any newSelection
function track.CreateModifiedStation(oldSelection, cJoinPoints, cLocalFlexicolour) end

---@param baseSelection any
---@param sElementName string
---@param cTrackParams table
---@return any replaceSelection
function track.CreateModifiedTypeSelection(baseSelection, sElementName, cTrackParams) end

---@param oldSelection any
---@param vLocalShift vector
---@param vWorldShift vector
---@param vCentreOfRotation vector
---@param nAngleOfRotation number
---@param bWeightedToCentre boolean
---@return any newSelection
---@return any baseSelection
---@return any replaceSelection
function track.CreatePerJoinTranslatedSelection(oldSelection, vLocalShift, vWorldShift, vCentreOfRotation, nAngleOfRotation, bWeightedToCentre) end

---@param oldSelection any
---@param nNewScale number
---@return any newSelection
---@return any baseSelection
---@return any replaceSelection
function track.CreateRescaledSelection(oldSelection, nNewScale) end

---@param cClh table
---@param Arg2 any
---@return any editOP
function track.CreateSectionTriggerOperation(cClh, Arg2) end

---@param track any
---@param startT any
---@param endT any
---@param sElementName string
---@param cTrackParams table
---@param cFlexiColours table
---@param bReversed boolean
---@param cLocalFlexicolour table?
---@return any newSelection
function track.CreateSelection(track, startT, endT, sElementName, cTrackParams, cFlexiColours, bReversed, cLocalFlexicolour) end

---@param nFirstSection number
---@return table oTrackSelection
function track.CreateSelectionOfSingleSection(nFirstSection) end

---@param cTrackHolder table
---@return table tSelection
function track.CreateSelectionOfWholeTrack(cTrackHolder) end

---@param track any
---@return any wholeTrackSelection
function track.CreateSelectionOfWholeTrack_CommittedOnly(track) end

---@param cTrackHolder table
---@return table oTrackSelection
function track.CreateSelectionOfWholeTrack_VisibleOnly(cTrackHolder) end

---@param cTrackHolder table
---@return table tIslandSelections
function track.CreateSelectionsOfLogicallyConnectedTrack_CommittedOnly(cTrackHolder) end

---@param selection any
---@param smoothType any
---@param nStrength number
---@param nNumPasses number
---@return any newSelection
function track.CreateSmoothedSelection(selection, smoothType, nStrength, nNumPasses) end

---@param track any
---@param joinPoints any
---@param elementName any
---@param elementTransform any
---@param cSpecialTrackParams table
---@param cFlexiColours table
---@param nStartPointIndex number
---@param cLocalFlexicolour table
---@return any newSelection
function track.CreateSpecial(track, joinPoints, elementName, elementTransform, cSpecialTrackParams, cFlexiColours, nStartPointIndex, cLocalFlexicolour) end

---@param cTrack table
---@param startT any
---@param endT any
---@param sElementName string
---@param cStationParams table
---@param cTrackParams table
---@param cFlexiColours table
---@param bReverse boolean?
---@param cLocalFlexicolour table?
---@return table cStation
function track.CreateStation(cTrack, startT, endT, sElementName, cStationParams, cTrackParams, cFlexiColours, bReverse, cLocalFlexicolour) end

---@return table oNewTrackTrigger
function track.CreateTrackTriggerLocation() end

---@param oldSelection any
---@param vWorldShift vector
---@param vCentreOfRotation vector
---@param nAngleOfRotation number
---@return any newSelection
function track.CreateTranslatedSelection(oldSelection, vWorldShift, vCentreOfRotation, nAngleOfRotation) end

---@param nGraphType number
---@param cTrackSelection table
---@param nAngleRangeOffset number
---@param cHighlightSubSelection table
---@param bShowDeltas boolean
---@return table oHoveredSelection
---@return table oClickedSelection
function track.DebugDrawImGuiGraph(nGraphType, cTrackSelection, nAngleRangeOffset, cHighlightSubSelection, bShowDeltas) end

---@param selection any
---@param sName string
---@return string sData
function track.DebugExportSelection(selection, sName) end

---@param nR9PC23 number
---@return any Selectable
function track.Debug_TrackEditConstraintToString(nR9PC23) end

---@param cTrackHolder table
---@param sArg2 string
---@return boolean bTrackHasElementType
function track.DoesTrackContainElementType(cTrackHolder, sArg2) end

---@param cSelection table
---@param bIgnoreConnectivity boolean?
---@return number nJoinDirection
function track.FindJoinDirection(cSelection, bIgnoreConnectivity) end

---@param cTrackHolder table
---@return table oTrackSelection
function track.FindStation(cTrackHolder) end

---@param track any
function track.FinishedEditing(track) end

---@param track any
---@param sElementName string
---@param nIndex number
---@return any joinDir
function track.GetElementJoinDirection(track, sElementName, nIndex) end

---@param track any
---@param sElementName string
---@param transQ any
---@param cTrackParams table
---@return table tJoinPoints
function track.GetElementJoinPointsForTransform(track, sElementName, transQ, cTrackParams) end

---@param track any
---@param sElementName string
---@param nIndex number
---@return any elementStartJoinType
function track.GetElementJoinTypes(track, sElementName, nIndex) end

---@param cSection table
---@return string sElement
function track.GetElementName(cSection) end

---@param track any
---@param sElementName string
---@return any newNumRails
function track.GetElementNumRails(track, sElementName) end

---@param track any
---@param sElementName string
---@param nStartPointIndex number
---@param startOutT any
---@param cTrackParams table
---@return any transQ
function track.GetElementTransformToMatchPoint(track, sElementName, nStartPointIndex, startOutT, cTrackParams) end

---@param nRideID number
---@return number nStationID
---@return number nExitID
function track.GetEntityForEntranceExitPlacement(nRideID) end

---@param cTrackHolder table
---@return table tFreeEnds
function track.GetFreeEnds(cTrackHolder) end

---@param cTrack table
---@return boolean bEnabled
---@return number nValue
function track.GetFrictionMultiplier(cTrack) end

---@param nRideID number
---@return boolean bLive
function track.GetHeatmapLive(nRideID) end

---@param nRideID number
---@return number nPass
function track.GetHeatmapPass(nRideID) end

---@param track any
---@param Arg2 any
---@return table tPositions
function track.GetHeightSamples(track, Arg2) end

---@param cTrackHolder table
---@return boolean bIsNonStop
function track.GetIsNonStop(cTrackHolder) end

---@param cTrackHolder table
---@return boolean bIsRacing
function track.GetIsRacing(cTrackHolder) end

---@param cTrackHolder table
---@return boolean bIsWaterSlide
function track.GetIsWaterSlide(cTrackHolder) end

---@param cRootSection table
---@return number nLogicalID
function track.GetLogicalID(cRootSection) end

---@param cTrackHolder table
---@return number nMassOfAllCars
function track.GetMassOfAllCars(cTrackHolder) end

---@param cTrackHolder table
---@param bArg2 boolean?
---@return table tCarColour
function track.GetMaterialFlexiColourForCars(cTrackHolder, bArg2) end

---@param cTrackHolder table
---@return table tTrackColour
function track.GetMaterialFlexiColourForTrack(cTrackHolder) end

---@param cTrackHolder table
---@return number nMaxPasses
function track.GetMaxNumberOfPassesThroughStation(cTrackHolder) end

---@param track any
---@return any minUseableStationLength
function track.GetMinAllowedUseableStationLength(track) end

---@param cTrackHolder table
---@return number nMinCars
---@return number nMaxCars
---@return number nHardMaxCars
function track.GetMinMaxCarsPerTrain(cTrackHolder) end

---@param cTrackHolder table
---@return number nMinTrains
---@return number nMaxTrains
---@return number nHardMaxTrains
function track.GetMinMaxTrains(cTrackHolder) end

---@param cTrackHolder table
---@return number nMinPasses
function track.GetMinNumberOfPassesThroughStation(cTrackHolder) end

---@param cTrackHolder table
---@return number nNumCars
function track.GetNumCarsPerTrain(cTrackHolder) end

---@param cTrackHolder table
---@return number nNumTrains
function track.GetNumTrains(cTrackHolder) end

---@param cTrackHolder table
---@return number nCurrentPasses
function track.GetNumberOfPassesThroughStation(cTrackHolder) end

---@param nTrackedRideEntityID number
---@return any SetDataStoreElement
function track.GetPlayerTrainTriggersOnly(nTrackedRideEntityID) end

---@param cTrack table
---@return number nSpeed
---@return number nSpeedMin
---@return number nSpeedMax
function track.GetPoweredTrainsSpeed_Current_Min_Max(cTrack) end

---@param section any
---@param sectionLocationStationFront any
---@return any trackRailEntity
---@return any trackRailDistance
function track.GetRailLocation(section, sectionLocationStationFront) end

---@param cTrackHolder table
---@return number nCurrentEditConstraint
function track.GetRawTrackEditConstraint(cTrackHolder) end

---@param cTrackHolder table
---@return string sStoredAudioEventName
function track.GetRideMusic(cTrackHolder) end

---@param cTrackHolder table
---@return string sRideType
function track.GetRideType(cTrackHolder) end

---@param nPhysicsWorldEntity number
---@param vRayStart vector
---@param vRayDir vector
---@param cTriggerSelection table
---@param bDisableMultipleSectionSelection boolean?
---@return table oHitTrackHolder
---@return table oHitTrackSelection
---@return vector vHitPointLS
function track.GetSelectionByRayCast(nPhysicsWorldEntity, vRayStart, vRayDir, cTriggerSelection, bDisableMultipleSectionSelection) end

---@param nPhysicsWorldEntity number
---@param vRayStart vector
---@param vRayDir vector
---@param Arg4 any
---@param currentHover any
---@return any track
function track.GetSelectionBySphereSweep(nPhysicsWorldEntity, vRayStart, vRayDir, Arg4, currentHover) end

---@param selection any
---@return table tFlexiColours
function track.GetSelectionMaterialCustomisationData(selection) end

---@param nRideID number
---@return any selectedHeatMapType
function track.GetShownHeatmap(nRideID) end

---@param rideID any
---@param Arg2 any
---@return table tPositions
---@return table tValues
---@return table tColours
function track.GetSpotSamples(rideID, Arg2) end

---@param nEntityID number
---@return number nStationID
function track.GetStationEntityForSection(nEntityID) end

---@param cTrack table
---@return table tStationsIDs
function track.GetStationIDs(cTrack) end

---@param oldSelection any
---@param nExtend number
---@return table tJoinPoints
function track.GetStationJoinPointsForExtend(oldSelection, nExtend) end

---@param nStationID number
---@param bUsePreviewTransform boolean?
---@return table oTargetGrid
function track.GetStationLocalGrid(nStationID, bUsePreviewTransform) end

---@param cTrack table
---@return number nTotalLength
---@return number nStationLength
function track.GetTrackAndStationLengths(cTrack) end

---@param cTrackHolder table
---@return number nTrackEntityID
function track.GetTrackEntity(cTrackHolder) end

---@param nRideID number
---@return table oTrackHolder
function track.GetTrackHolder(nRideID) end

---@param trackRailEntity any
---@param trackRailDistance any
---@return any trackLocation
function track.GetTrackLocationFromRailLocation(trackRailEntity, trackRailDistance) end

---@param track any
---@param Arg2 any
---@param nArg3 number
---@param nArg4 number
---@return table oTrackHoverLocation
function track.GetTrackLocationFromSection(track, Arg2, nArg3, nArg4) end

---@param section any
---@return table tTrackParams
function track.GetTrackParams(section) end

---@param nStationID number
---@return number nHighlightedStationEntityID
function track.GetTrackSectionBaseEntity(nStationID) end

---@param cTrackHolder table
---@return any trackTransform
function track.GetTrackTransform(cTrackHolder) end

---@param cTrackHolder table
---@param nTargetSequenceID number
---@return table oTrackLocation
function track.GetTrackTriggerLocation(cTrackHolder, nTargetSequenceID) end

---@param cTrackHolder table
---@return table tTrackTriggerLocations
function track.GetTrackTriggerLocations(cTrackHolder) end

---@param cTrackHolder table
---@return number nOperationMode
function track.GetTrackedRideOperationMode(cTrackHolder) end

---@param cTrack table
---@return string sCurrentTrainType
function track.GetTrainType(cTrack) end

---@param cTrack table
function track.GetUseFlumePhysics(cTrack) end

---@param section any
---@return number nStationLength
function track.GetUseableStationLength(section) end

---@param track any
function track.HasAnyPreviewTrackSections(track) end

---@param cTrackHolder table
function track.HasAnyUnfinishedRequiredTrack(cTrackHolder) end

---@param cTrack table
---@return any SetDataStoreElement
function track.HasRotatableCars(cTrack) end

---@param track any
---@param sElementName string
---@return boolean bAllowAutocomplete
function track.IsAllowedForAutoComplete(track, sElementName) end

---@param track any
---@param sElement string
function track.IsBullWheelElement(track, sElement) end

---@param track any
---@param sElement string
function track.IsDriveStationElement(track, sElement) end

---@param track any
---@param sElementName string
---@return boolean bIsFlexible
function track.IsFlexibleElement(track, sElementName) end

---@param track any
---@param sElementName string
function track.IsPointToPointElement(track, sElementName) end

---@param section any
function track.IsSectionStateVisible(section) end

---@param track any
---@param sElementName string
---@return boolean bCondition
function track.IsStationElement(track, sElementName) end

---@param track any
---@param sElement string
function track.IsStationLoadOnlyElement(track, sElement) end

---@param track any
---@param sElement string
function track.IsStationUnloadOnlyElement(track, sElement) end

---@param track any
function track.IsTrackEmpty(track) end

---@param nEntityID number
---@return boolean _
function track.IsTrackSection(nEntityID) end

---@param track any
---@param originalLocation any
---@return any originalLocationSelection
function track.MakeTrackSelectionFromLocation(track, originalLocation) end

---@param cOperationHierarchy table
---@param cCompositeObject table
---@param cTrackHolder table
function track.MoveTrack(cOperationHierarchy, cCompositeObject, cTrackHolder) end

---@param selection any
---@param nIncreaseDir number
---@param nExpand number
---@return any newSelection
function track.NewSelection(selection, nIncreaseDir, nExpand) end

function track.ParkReset() end

---@param changeListHierarchy any
---@param cTrackHolder table
---@param Arg3 any?
function track.RemoveHolder(changeListHierarchy, cTrackHolder, Arg3) end

---@param changelist any
---@param selection any
function track.RemoveSelection(changelist, selection) end

---@param changelist any
---@param baseSelection any
---@param replaceSelection any
---@param previewReplace any
---@param bTunnelling boolean
---@param bArg6 boolean
function track.ReplaceSelection(changelist, baseSelection, replaceSelection, previewReplace, bTunnelling, bArg6) end

function track.ReticulateSplines() end

---@param initialSelection any
---@return any reverseSelection
function track.ReverseSelection(initialSelection) end

---@param replaceSelection any
---@param sElementName string
---@return any SetSelection
function track.SelectContiguousWithElement(replaceSelection, sElementName) end

---@param selection any
---@param nParam number
---@return any baseSelection
function track.SelectContiguousWithParam(selection, nParam) end

---@param cTrackHolder table
function track.SendEditSequenceMessage(cTrackHolder) end

function track.SendTrackLoadedMessage() end

---@param trackHolder any
---@param nTrainEntityID number
function track.SetActiveShootingMinigameTrain(trackHolder, nTrainEntityID) end

function track.SetAllPreExistingLogicalIDThresholds() end

function track.SetColourPickers() end

---@param operationHierarchy any
---@param cTrackHolder table
---@param bArg3 boolean
---@param nValue number
function track.SetFrictionMultiplier(operationHierarchy, cTrackHolder, bArg3, nValue) end

---@param cTrack table
---@param editingTrackHighlightFlagsAll any
function track.SetGUIShapeHighlightCurrentEditingTrack(cTrack, editingTrackHighlightFlagsAll) end

---@param selectionHighlightTypeSelect any
---@param selection any
function track.SetGUIShapeSelectionHighlight(selectionHighlightTypeSelect, selection) end

---@param rideID any
---@param arg any
function track.SetHeatmapLive(rideID, arg) end

---@param rideID any
---@param Arg2 any
function track.SetHeatmapPass(rideID, Arg2) end

---@param cWholeTrackSelection table
---@param highlightChannelSelection any
---@param bHighlight boolean
function track.SetHighlighted(cWholeTrackSelection, highlightChannelSelection, bHighlight) end

---@param operationHierarchy any
---@param cTrackHolder table
---@param sSemanticTag string
---@param vColour vector
function track.SetMaterialFlexiColourForTrack(operationHierarchy, cTrackHolder, sSemanticTag, vColour) end

---@param operationHierarchy any
---@param cTrackHolder table
function track.SetNewCarsToDefaultColours(operationHierarchy, cTrackHolder) end

---@param operationHierarchy any
---@param cTrackHolder table
---@param nOption number
function track.SetNumCarsPerTrain(operationHierarchy, cTrackHolder, nOption) end

---@param operationHierarchy any
---@param cTrackHolder table
---@param nOption number
function track.SetNumTrains(operationHierarchy, cTrackHolder, nOption) end

---@param cTrackHolder table
---@param nCurrentPasses number
function track.SetNumberOfPassesThroughStation(cTrackHolder, nCurrentPasses) end

---@param rideID any
---@param bValue boolean
function track.SetPlayerTrainTriggersOnly(rideID, bValue) end

---@param operationHierarchy any
---@param cTrackHolder table
---@param nSpeed number
function track.SetPoweredTrainsSpeed(operationHierarchy, cTrackHolder, nSpeed) end

---@param cTrack table
---@param nNewSpeed number
function track.SetPoweredTrainsSpeed_Current(cTrack, nNewSpeed) end

---@param trackHolder any
---@param arg any
function track.SetRideDesignerOverride(trackHolder, arg) end

---@param cTrackHolder table
---@param sAudioEvent string
function track.SetRideMusic(cTrackHolder, sAudioEvent) end

---@param cTrackHolder table
---@param sText string
function track.SetRideName(cTrackHolder, sText) end

---@param cTrackHolder table
---@param nValue number
function track.SetRideVolume(cTrackHolder, nValue) end

---@param changelist any
---@param oldSelection any
---@param sSemanticTag string
---@param vColour vector
function track.SetSelectionMaterialColourForSemanticTag(changelist, oldSelection, sSemanticTag, vColour) end

---@param cTrackHolder table
---@param r9PC31 any
function track.SetTrackEditConstraint(cTrackHolder, r9PC31) end

---@param cTrack table
---@param bEnabled boolean
---@param nValue number
function track.SetTrackFrictionMultiplier(cTrack, bEnabled, nValue) end

---@param operationHierarchy any
---@param cTrackHolder table
---@param nMode number
function track.SetTrackedRideOperationMode(operationHierarchy, cTrackHolder, nMode) end

---@param operationHierarchy any
---@param cTrackHolder table
---@param sTrainType string
function track.SetTrainType(operationHierarchy, cTrackHolder, sTrainType) end

---@param cTrackHolder table
---@param bValue boolean
function track.SetUseFlumePhysics(cTrackHolder, bValue) end

---@param bUseExtendedTrackLimits boolean
function track.SetUseLooseTrackRestrictions(bUseExtendedTrackLimits) end

---@param voxelTerrainEntityID any
function track.SetVoxelTerrainForTrackEditor(voxelTerrainEntityID) end

---@param rideID any
---@param heatmapNone any
function track.ShowHeatmap(rideID, heatmapNone) end

---@param startT any
---@param startT2 any
---@return number nBehindTwist
function track.StaticBestTwist(startT, startT2) end

---@param track any
function track.StationCount(track) end

---@param track any
---@param newSelection any
function track.UpdateActiveTrackDirectionArrows(track, newSelection) end

---@param track any
---@param bArg2 boolean
function track.UpdateAllTrackDirectionArrows(track, bArg2) end

---@return boolean bUseLooseTrackRestrictions
function track.UseLooseFlumeRestrictions() end

---@return boolean bUseLooseTrackRestrictions
function track.UseLooseTrackRestrictions() end


---@param nAudioGuestToTrack number
---@return vector vPos
function transform.CalculateWorldPosition(nAudioGuestToTrack) end

---@param nCameraEntityID number
---@return table oTrackTransform
function transform.CalculateWorldTransform(nCameraEntityID) end

---@param nEntityID number
---@return number nEntityID
function transform.GetParent(nEntityID) end

---@param targetID any
---@return table oCamTrans
function transform.GetTransform(targetID) end

---@param nTargetEntityID number
---@return boolean bValidTrans
function transform.HasTransform(nTargetEntityID) end

---@param eTranslateModel any
---@param rotation any
function transform.SetOrientation(eTranslateModel, rotation) end

---@param ringEntityID any
---@param bArg2 boolean
function transform.SetParentToRoot(ringEntityID, bArg2) end

---@param nStaffEntityID number
---@param pos Vector3
function transform.SetPosition(nStaffEntityID, pos) end

---@param nBase number
---@param nScale number
function transform.SetScale(nBase, nScale) end

---@param targetID any
---@param cTransformQ table
function transform.SetTransform(targetID, cTransformQ) end


---@param sMovieSet string
function ui.CreateMovies(sMovieSet) end

---@param sMovieSet string
function ui.DestroyMovies(sMovieSet) end

---@param sCustomName string
function ui.EscapeString(sCustomName) end

---@param arg any
function ui.IsProfane(arg) end


---@param Arg1 any
function ui2.AreResourcesUnmapped(Arg1) end

---@param sLine string
---@param nMaxCharactersPerChunk number
---@param nDuration number
---@return table tPageData
function ui2.BreakAudioSymbolIntoTimedChunks(sLine, nMaxCharactersPerChunk, nDuration) end

---@param cElements table
---@param sContext string
---@param sContextName string?
---@param sName string?
---@param sPart string?
---@param sTagName string?
---@param sID string?
---@return table oContext
function ui2.CreateDataStoreContext(cElements, sContext, sContextName, sName, sPart, sTagName, sID) end

---@param sViewName string
---@param Arg2 any
---@param Arg3 any
---@return any view
function ui2.CreateView(sViewName, Arg2, Arg3) end

---@param cContext table
function ui2.DeleteDataStoreContext(cContext) end

---@param view any
function ui2.DestroyView(view) end

---@param view any
function ui2.DisableViewRenderToScreen(view) end

---@param view any
function ui2.EnableViewRenderToScreen(view) end

---@param Arg1 any
---@return string sName
function ui2.EscapeString(Arg1) end

---@param sContext string
---@param sContextName string?
---@param sName string?
---@param sID string?
---@param sTagName string?
---@param sParam string?
---@param Arg7 any?
---@return table oContext
function ui2.GetDataStoreContext(sContext, sContextName, sName, sID, sTagName, sParam, Arg7) end

---@param cEntityContext table
---@return table tContextKeys
function ui2.GetDataStoreContextElementIDs(cEntityContext) end

---@param cContext table
---@param sSettingName string
---@return string sID
function ui2.GetDataStoreElement(cContext, sSettingName) end

---@param nEntityID number
---@return string sLabel
function ui2.GetEntityName(nEntityID) end

---@param nEntityID number
---@return boolean bIsCustomName
function ui2.HasEntityName(nEntityID) end

---@param Arg1 any
function ui2.IsOverlayLoaded(Arg1) end

---@param Arg1 any
---@param Arg2 any
function ui2.LoadOverlay(Arg1, Arg2) end

---@param sArg1 string
function ui2.MapResources(sArg1) end

---@param view any
---@param Arg2 any
---@param nArg3 number
---@param onReadyCallback any
---@param self any
function ui2.RegisterForEvent(view, Arg2, nArg3, onReadyCallback, self) end

---@param view any
---@param sEventName string
---@param nArgCount number
---@param fnCallback function
---@param cSelf table
---@return any handle
function ui2.RequestRegisterForEvent(view, sEventName, nArgCount, fnCallback, cSelf) end

---@param view any
---@param sEventName string
---@param nArgCount number
---@param fnCallback function
---@param cSelf table
---@return any handle
function ui2.RequestRegisterForEventGlobal(view, sEventName, nArgCount, fnCallback, cSelf) end

---@param view any
---@param listenerHandle any
function ui2.RequestUnregisterFromEvent(view, listenerHandle) end

---@param view any
---@param sViewAddress string
function ui2.RequestViewLoad(view, sViewAddress) end

---@param view any
---@param nWidth number
---@param nHeight number
function ui2.RequestViewResize(view, nWidth, nHeight) end

---@param cContext table
---@param sElementName string
---@param nName number?
function ui2.SetDataStoreElement(cContext, sElementName, nName) end

---@param nID number
function ui2.SetDataStoreElementByID(nID) end

---@param cContext table
---@param cElements table
function ui2.SetDataStoreElementSet(cContext, cElements) end

---@param cElementUpdates table
function ui2.SetDataStoreElementSetByID(cElementUpdates) end

---@param nRoomEntityID number
---@param arg any
function ui2.SetEntityName(nRoomEntityID, arg) end

---@param view any
---@param onLoaded any
---@param self any
function ui2.SetViewReadyForBindingsCallback(view, onLoaded, self) end

---@param view any
---@param sEventName string
---@param Arg3 any
function ui2.TriggerEventAtNextAdvance(view, sEventName, Arg3) end

---@param Arg1 any
function ui2.UnloadOverlay(Arg1) end

---@param sArg1 string
function ui2.UnmapResources(sArg1) end

---@param view any
---@param Arg2 any
function ui2.UpdateViewRenderToScreenDepth(view, Arg2) end

---@param view any
---@param bArg2 boolean
function ui2.UpdateViewRenderToScreenFullScreen(view, bArg2) end

---@param view any
---@param Arg2 any
---@param Arg3 any
function ui2.UpdateViewRenderToScreenPos(view, Arg2, Arg3) end


---@param cChanged table
function uioptions.ApplyNotificationsOptionsChanges(cChanged) end

---@return any r
---@return any g
---@return any b
function uioptions.GetAccentColour() end

---@return number nUserDistanceUnit
function uioptions.GetDistanceUnit() end

---@return boolean bColourBlindEnabled
function uioptions.GetHeatmapColourBlindModeEnabled() end

---@return boolean bHighlightObject
function uioptions.GetHighlightObjectOnHover() end

---@return table tOptions
function uioptions.GetNotificationsOptions() end

---@return number nCachedSafeFrame
function uioptions.GetSafeFrame() end

---@return number nResetSafeFrame
function uioptions.GetSafeFrameDefault() end

---@return number nUserSpeedUnit
function uioptions.GetSpeedUnit() end

---@return number nUserTemperatureUnit
function uioptions.GetTemperatureUnit() end

---@param Arg1 any
function uioptions.SetAccentColourIndex(Arg1) end

---@param appearValue any
function uioptions.SetComplexityAppearValue(appearValue) end

---@param remainOnScreen any
function uioptions.SetComplexityPopupType(remainOnScreen) end

---@param reappearValue any
function uioptions.SetComplexityReappearValue(reappearValue) end

---@param distanceUnit any
function uioptions.SetDistanceUnit(distanceUnit) end

---@param sArg1 string
function uioptions.SetGameClient(sArg1) end

---@param themeIndex any
function uioptions.SetHeatmapColourBlindMode(themeIndex) end

---@param colorblindHeatmaps any
function uioptions.SetHeatmapColourBlindModeEnabled(colorblindHeatmaps) end

---@param hidePlayerName any
function uioptions.SetHidePlayerName(hidePlayerName) end

---@param showNewsOnStartup any
function uioptions.SetNewsEnabled(showNewsOnStartup) end

---@param nCachedSafeFrame number
function uioptions.SetSafeFrame(nCachedSafeFrame) end

---@param scaleValue any
function uioptions.SetScale(scaleValue) end

---@param showAdditionalPrompts any
function uioptions.SetShowAdditionalPrompts(showAdditionalPrompts) end

---@param showParkBoundary any
function uioptions.SetShowParkBoundary(showParkBoundary) end

---@param speedUnit any
function uioptions.SetSpeedUnit(speedUnit) end

---@param temperatureUnit any
function uioptions.SetTemperatureUnit(temperatureUnit) end

---@param themeIndex any
function uioptions.SetThemeIndex(themeIndex) end


---@param previewToken any
---@return boolean bCanCommit
function undo.CanCommitPreview(previewToken) end

---@param previewToken any
---@return boolean bCanPlace
function undo.CanCommitPreviewApprox(previewToken) end

function undo.CanRedo() end

---@return boolean bCondition
function undo.CanUndo() end

---@param previewToken any
---@return any waitToken
function undo.CancelPreview(previewToken) end

---@param cArg1 table
function undo.Checkpoint(cArg1) end

---@param cArg1 table
function undo.ClearHistory(cArg1) end

---@param previewToken any
---@return any waitToken
function undo.CommitPreview(previewToken) end

---@return table tUndoData
function undo.GetCheckpointData() end

---@param previewToken any
---@param bApproximateResults boolean?
---@return table tReasons
---@return any result
function undo.GetCommitFailReasons(previewToken, bApproximateResults) end

---@return number nMostRecentOperation
function undo.GetMostRecentOperation() end

---@return table tUndoData
function undo.GetUndoneCheckpointData() end

---@return boolean _
function undo.IsBusy() end

---@param waitToken any
function undo.IsOperationComplete(waitToken) end

---@return boolean bCondition
function undo.IsPreviewingChangeList() end

---@param changelist any
---@return any waitToken
---@return any previewToken
function undo.PreviewChangeList(changelist) end

---@return any _
function undo.Redo() end

---@return any _
function undo.Undo() end


---@param editToken any
---@param modPlatformSteam any
function usercontent.AddAdditionalPlatform(editToken, modPlatformSteam) end

---@param editToken any
---@param nRequiredDLC number
function usercontent.AddDLCFromMask(editToken, nRequiredDLC) end

---@param nID number
function usercontent.AddItemToFavouritesAsync(nID) end

---@param editToken any
---@param sDlcName string
function usercontent.AddTags(editToken, sDlcName) end

---@param nItemID number
---@param park any
---@return any editToken
function usercontent.BeginEditNewItem(nItemID, park) end

---@param cAuthorLoadedPreviewImageItem table
function usercontent.ClearPreviewImageUITexture(cAuthorLoadedPreviewImageItem) end

---@param iD any
function usercontent.ClearPreviewThumbnailUITexture(iD) end

---@param nFilter number
---@param nSortOrder number
---@param nPage number?
---@return table cQueryHandle
function usercontent.CreateAllQuery(nFilter, nSortOrder, nPage) end

---@param editToken any
---@param cSaveToken table
---@return boolean bCreateItemContentSuccess
---@return number nResultCodeCreateItemContent
function usercontent.CreateItemContent(editToken, cSaveToken) end

---@param nID number
---@return table cQueryHandle
function usercontent.CreateItemDetailsQuery(nID) end

---@return number nResultCode
---@return number nItemID
function usercontent.CreateNewItem() end

---@param userItemListPublished any
---@param userItemListSortOrderCreationOrderDesc any
---@param nPage number
---@param Arg4 any?
---@param Arg5 any?
---@param nUserID number?
---@return table cUploadedItemsQueryHandle
function usercontent.CreateUserQuery(userItemListPublished, userItemListSortOrderCreationOrderDesc, nPage, Arg4, Arg5, nUserID) end

---@param nItemID number
---@return number nResult
function usercontent.DeleteItem(nItemID) end

---@param nID number
function usercontent.DownVoteItemAsync(nID) end

---@return boolean bSuccess
---@return table tItems
function usercontent.GetInstalledBlueprints() end

---@return boolean bSuccess
---@return table tItems
function usercontent.GetInstalledParks() end

---@param nID number
---@return number nAvailability
function usercontent.GetItemAvailability(nID) end

---@param cToken table
---@return number nItemNumber
function usercontent.GetItemID(cToken) end

---@param itemToken any
---@return table tLocalInfo
function usercontent.GetItemInstallInfo(itemToken) end

---@param cItemToken table
---@return table tMetadata
function usercontent.GetItemMetadata(cItemToken) end

---@param itemToken any
function usercontent.GetItemMetadataHasThumbnail(itemToken) end

---@param itemToken any
---@return number nMetadataID
function usercontent.GetItemMetadataID(itemToken) end

function usercontent.GetTotalSpace() end

function usercontent.GetUsedSpace() end

---@param nID number
---@return boolean bSuccess
---@return any voteTableOrErrorCode
function usercontent.GetUserItemVote(nID) end

---@return boolean bWorkshopAPIEnabled
function usercontent.IsEnabled() end

---@param cSaveToken table
---@return boolean bCondition
function usercontent.IsItemToken(cSaveToken) end

---@param sID string
---@return number nID
function usercontent.ModIDFromString(sID) end

---@param nID number
---@return string sItemID
function usercontent.ModIDToString(nID) end

---@return boolean bSuccess
function usercontent.ReleaseLockedItems() end

---@param nID number
function usercontent.RemoveItemFromFavouritesAsync(nID) end

---@param nItemID number
---@param nReason number
---@param sInput string
---@return number nEditResult
function usercontent.ReportItem(nItemID, nReason, sInput) end

---@param cItemToken table
---@param fnOnComplete function
function usercontent.RequestLoadBlueprint(cItemToken, fnOnComplete) end

---@param cSaveToken table
---@param fnOnComplete function
---@return boolean bLoadSuccessful
function usercontent.RequestLoadPark(cSaveToken, fnOnComplete) end

---@param cModItem table
---@return boolean bSuccess
---@return number nTextureIDOrError
function usercontent.RequestPreviewImageAsUITexture(cModItem) end

---@param iD any
---@param thumbnailSizeLandingPage any
---@return boolean bSuccess
---@return number nTextureIDOrError
function usercontent.RequestPreviewThumbnailSizeAsUITexture(iD, thumbnailSizeLandingPage) end

---@param cQueryHandle table
---@return boolean bSuccess
---@return number nCountOrError
---@return table tResults
function usercontent.RunQuery(cQueryHandle) end

---@param editToken any
---@param Arg2 any
function usercontent.SetDescription(editToken, Arg2) end

---@param editToken any
---@param Arg2 any
function usercontent.SetTitle(editToken, Arg2) end

---@param editToken any
---@param simpleMetadata any
---@return boolean bSetUserDataSuccess
function usercontent.SetUserData(editToken, simpleMetadata) end

---@param editToken any
---@param modVisibilityPrivate any
function usercontent.SetVisibility(editToken, modVisibilityPrivate) end

---@param editToken any
---@return number nResultCodeUpload
function usercontent.SubmitItemUpdate(editToken) end

---@param nID number
function usercontent.SubscribeToItemAsync(nID) end

---@param nItemNumber number
function usercontent.UnsubscribeFromItemAsync(nItemNumber) end

---@param nID number
function usercontent.UpVoteItemAsync(nID) end

---@param nID number
function usercontent.UpdateInstalledItem(nID) end


---@param Arg1 any
function world.AbortLoad(Arg1) end

---@param sWorldName string
function world.Activate(sWorldName) end

---@param sCurrentWorldName string
function world.Deactivate(sCurrentWorldName) end

---@return string sWorld
function world.GetActive() end

---@return table tBiomes
function world.GetAllBiomeNames() end

---@param sWorldName string
---@return table tArtSettings
function world.GetArtInitSettings(sWorldName) end

---@param sBiome string
---@return table tBiomeArtSettings
function world.GetBiomeArtInitSettings(sBiome) end

---@param sBiome string
---@return table tDesignSettings
function world.GetBiomeDesignSettings(sBiome) end

---@param sWorldName string
---@return string sBiome
function world.GetBiomeName(sWorldName) end

---@return string sWorldName
function world.GetCurrent() end

---@param sWorldName string
---@return any loadStatus
function world.GetLoadStatus(sWorldName) end

---@param sBiomeName string
---@return table tIconsForPlayerVisibleTerrainLayers
function world.GetPlayerVisibleBiomeTerrainLayerSettings(sBiomeName) end

---@return table tRawRealWorlds
function world.GetRawWorldsToListInDebugMenu() end

---@param sWorldName string
---@return table tWorld
function world.GetScript(sWorldName) end

---@param sWorldName string
---@return vector vWorldSize
function world.GetSize(sWorldName) end

---@param Arg1 any
function world.GetStatus(Arg1) end

---@param sSelectedWorld string
---@return table tMatchingNames
function world.GetValidWorldNames(sSelectedWorld) end

---@return WorldAPIs
function world.GetWorldAPIs() end

---@param sLoadingWorldName string
---@return boolean _
function world.IsActive(sLoadingWorldName) end

---@param sWorldName string
---@return boolean bCondition
function world.IsLoaded(sWorldName) end

---@param sOldWorld string
function world.IsRunning(sOldWorld) end

---@param sNewWorldName string
function world.Load(sNewWorldName) end

---@param sWorldName string
function world.LoadAsync(sWorldName) end

---@param sWorldName string
function world.OverrideLandscapeFromConfig(sWorldName) end

---@param sWorldName string
function world.Start(sWorldName) end

---@param sWorldName string
function world.Stop(sWorldName) end

---@param sWorldName string
function world.Unload(sWorldName) end


function xmlconfig.ResetSaveConfigs() end

---@param playerID any
---@param Arg2 any?
function xmlconfig.SaveAll(playerID, Arg2) end


---@param self WorldAPIs_CameraAttachPoint
---@param nRideID number
---@param sAttachName string?
---@return table tAttachPoints
function WorldAPIs_CameraAttachPoint.GetAllPointData(self, nRideID, sAttachName) end

---@param self WorldAPIs_CameraAttachPoint
---@param rideID any
---@param sArg3 string
---@return table tTargetData
function WorldAPIs_CameraAttachPoint.GetSinglePointData(self, rideID, sArg3) end


function WorldAPIs_CameraModeManager.AddComponentsToEntities() end

---@param self WorldAPIs_CameraModeManager
---@param vDelta vector
function WorldAPIs_CameraModeManager.AddDelta(self, vDelta) end

---@param self WorldAPIs_CameraModeManager
---@return table tCameraData
function WorldAPIs_CameraModeManager.GetCameraDataFinal(self) end

---@param self WorldAPIs_CameraModeManager
function WorldAPIs_CameraModeManager.GetCameraLockedOnAxisDirection(self) end

---@param self WorldAPIs_CameraModeManager
---@return vector vDirection
function WorldAPIs_CameraModeManager.GetCameraLockedOnAxisInWorldSpace(self) end

---@param self WorldAPIs_CameraModeManager
---@return boolean bLockedOnAxis
function WorldAPIs_CameraModeManager.GetCameraLockedOnGivenAxisMode(self) end

---@param self WorldAPIs_CameraModeManager
---@return table tConfig
function WorldAPIs_CameraModeManager.GetConfig(self) end

---@param self WorldAPIs_CameraModeManager
function WorldAPIs_CameraModeManager.GetConstructionModeEnabled(self) end

---@param self WorldAPIs_CameraModeManager
---@return boolean _
function WorldAPIs_CameraModeManager.GetCurrentModeIsDefault(self) end

---@param self WorldAPIs_CameraModeManager
---@param entityID any?
---@return string sCurrentCameraMode
function WorldAPIs_CameraModeManager.GetCurrentModeName(self, entityID) end

---@param self WorldAPIs_CameraModeManager
---@return boolean _
function WorldAPIs_CameraModeManager.GetDebugDraw(self) end

---@param self WorldAPIs_CameraModeManager
---@return boolean _
function WorldAPIs_CameraModeManager.GetDebugDrawSimulatedDeltas(self) end

---@param self WorldAPIs_CameraModeManager
---@param entityID any?
---@return string sCameraMode
function WorldAPIs_CameraModeManager.GetDefaultModeName(self, entityID) end

---@param self WorldAPIs_CameraModeManager
---@return boolean _
function WorldAPIs_CameraModeManager.GetForwardLockModeEnabled(self) end

---@param self WorldAPIs_CameraModeManager
---@return table tDelta
function WorldAPIs_CameraModeManager.GetInitialDelta(self) end

---@param self WorldAPIs_CameraModeManager
---@return table tKeyBindings
function WorldAPIs_CameraModeManager.GetKeyBindings(self) end

---@param self WorldAPIs_CameraModeManager
---@return boolean _
function WorldAPIs_CameraModeManager.GetMouseCaptured(self) end

---@param self WorldAPIs_CameraModeManager
---@return any movementScale
function WorldAPIs_CameraModeManager.GetMovementScale(self) end

function WorldAPIs_CameraModeManager.GetNextModeName() end

---@param self WorldAPIs_CameraModeManager
---@return boolean bNoclipMode
function WorldAPIs_CameraModeManager.GetNoclipMode(self) end

---@param self WorldAPIs_CameraModeManager
---@return vector vFocusPos
function WorldAPIs_CameraModeManager.GetPlacementFocusPos(self) end

---@param self WorldAPIs_CameraModeManager
function WorldAPIs_CameraModeManager.GetPlacementModeEnabled(self) end

---@param self WorldAPIs_CameraModeManager
---@return vector vPos
---@return vector vYPR
---@return number nZoom
function WorldAPIs_CameraModeManager.GetPosYPRZoom(self) end

---@param self WorldAPIs_CameraModeManager
---@return vector vMouseRayStart
function WorldAPIs_CameraModeManager.GetPredictedMouseRay(self) end

---@param self WorldAPIs_CameraModeManager
---@return boolean _
function WorldAPIs_CameraModeManager.GetRightLockModeEnabled(self) end

---@param self WorldAPIs_CameraModeManager
---@return boolean bLockMovementToVertical
function WorldAPIs_CameraModeManager.GetVerticalLockModeEnabled(self) end

---@param self WorldAPIs_CameraModeManager
---@return number nVoxelTerrainID
function WorldAPIs_CameraModeManager.GetVoxelTerrainID(self) end

---@param self WorldAPIs_CameraModeManager
---@return number nWheelDelta
---@return boolean bKeyZoomIn
---@return boolean bKeyZoomOut
---@return number nGamepadZoomIn
---@return number nGamepadZoomOut
function WorldAPIs_CameraModeManager.GetZoomInputValues(self) end

function WorldAPIs_CameraModeManager.Init() end

---@param self WorldAPIs_CameraModeManager
function WorldAPIs_CameraModeManager.IsCameraCollidingWithTerrain(self) end

---@param self WorldAPIs_CameraModeManager
---@return boolean bIsMovementScaled
function WorldAPIs_CameraModeManager.IsMovementScaled(self) end

---@param self WorldAPIs_CameraModeManager
---@return boolean bIsPlayerTryingToMoveCamera
function WorldAPIs_CameraModeManager.IsPlayerTryingToMoveCamera(self) end

---@param self WorldAPIs_CameraModeManager
---@param bArg2 boolean?
---@param cArg3 table?
function WorldAPIs_CameraModeManager.RequestDefaultMode(self, bArg2, cArg3) end

---@param self WorldAPIs_CameraModeManager
---@param sCameraMode string
---@param cInitData table
---@param bArg4 boolean?
---@return boolean _
function WorldAPIs_CameraModeManager.RequestMode(self, sCameraMode, cInitData, bArg4) end

---@param self WorldAPIs_CameraModeManager
function WorldAPIs_CameraModeManager.ResetMovementScale(self) end

---@param self WorldAPIs_CameraModeManager
---@param cArg2 table
function WorldAPIs_CameraModeManager.SetBlockedCameraModes(self, cArg2) end

---@param self WorldAPIs_CameraModeManager
---@param axisForCameraWS any
---@param cameraAxisDirectionForSurfaceMove any?
function WorldAPIs_CameraModeManager.SetCameraLockedOnGivenAxisInWorldSpace(self, axisForCameraWS, cameraAxisDirectionForSurfaceMove) end

---@param self WorldAPIs_CameraModeManager
---@param vLocation vector
---@param vYPR vector
function WorldAPIs_CameraModeManager.SetCameraPos(self, vLocation, vYPR) end

---@param self WorldAPIs_CameraModeManager
function WorldAPIs_CameraModeManager.SetCameraUnlockedOnGivenAxis(self) end

---@param self WorldAPIs_CameraModeManager
---@param bArg2 boolean
function WorldAPIs_CameraModeManager.SetConstructionMode(self, bArg2) end

---@param self WorldAPIs_CameraModeManager
---@param sArg2 string
function WorldAPIs_CameraModeManager.SetDefaultModeType(self, sArg2) end

---@param self WorldAPIs_CameraModeManager
---@param bArg2 boolean
function WorldAPIs_CameraModeManager.SetIgnoreFocus(self, bArg2) end

---@param self WorldAPIs_CameraModeManager
---@param movementScale any
function WorldAPIs_CameraModeManager.SetMovementScale(self, movementScale) end

---@param self WorldAPIs_CameraModeManager
---@param cameraNoClip any
function WorldAPIs_CameraModeManager.SetNoclipMode(self, cameraNoClip) end

---@param self WorldAPIs_CameraModeManager
---@param Arg2 any?
function WorldAPIs_CameraModeManager.SetOverrideFocusLockTimer(self, Arg2) end

---@param self WorldAPIs_CameraModeManager
---@param bArg2 boolean
function WorldAPIs_CameraModeManager.SetPlacementMode(self, bArg2) end

---@param self WorldAPIs_CameraModeManager
---@param vPos vector
---@param Arg3 any
function WorldAPIs_CameraModeManager.SetPosYPR(self, vPos, Arg3) end

---@param self WorldAPIs_CameraModeManager
---@param bArg2 boolean
function WorldAPIs_CameraModeManager.SetVerticalLockMode(self, bArg2) end

---@param self WorldAPIs_CameraModeManager
---@param voxelTerrainEntityID any
function WorldAPIs_CameraModeManager.SetVoxelTerrainID(self, voxelTerrainEntityID) end

---@param self WorldAPIs_CameraModeManager
---@param bToggle boolean
function WorldAPIs_CameraModeManager.ToggleCameraTorch(self, bToggle) end

---@param self WorldAPIs_CameraModeManager
function WorldAPIs_CameraModeManager.UpdateConfig(self) end

---@param self WorldAPIs_CameraModeManager
---@param vControlPoint vector
function WorldAPIs_CameraModeManager.UpdatePlacementFocusPos(self, vControlPoint) end


---@param self WorldAPIs_ChallengeManager
---@param Arg2 any
function WorldAPIs_ChallengeManager.ChallengeClaimReward(self, Arg2) end

---@param self WorldAPIs_ChallengeManager
---@param Arg2 any
function WorldAPIs_ChallengeManager.ChallengeDelete(self, Arg2) end

---@param self WorldAPIs_ChallengeManager
function WorldAPIs_ChallengeManager.ChallengeReset(self) end

---@param self WorldAPIs_ChallengeManager
---@param cEnvironment table
function WorldAPIs_ChallengeManager.CompleteWorldSerialisationLoad(self, cEnvironment) end

---@param self WorldAPIs_ChallengeManager
---@param cObjectiveSettingsData table
---@param bParkReset boolean
function WorldAPIs_ChallengeManager.MergeObjectiveSettingData(self, cObjectiveSettingsData, bParkReset) end

---@param self WorldAPIs_ChallengeManager
---@param cObjectiveSettings table
function WorldAPIs_ChallengeManager.SaveObjectiveSettings(self, cObjectiveSettings) end

---@param self WorldAPIs_ChallengeManager
---@param bChallenge boolean
function WorldAPIs_ChallengeManager.SetEnabled(self, bChallenge) end

---@param self WorldAPIs_ChallengeManager
---@param mainHUD any
function WorldAPIs_ChallengeManager.SetMainHUD(self, mainHUD) end

---@param self WorldAPIs_ChallengeManager
---@param Arg2 any
function WorldAPIs_ChallengeManager.StoryMode_SetAvailableChallenges(self, Arg2) end

---@param self WorldAPIs_ChallengeManager
---@param Arg2 any
function WorldAPIs_ChallengeManager.StoryMode_SetAvailableRewards(self, Arg2) end

---@param self WorldAPIs_ChallengeManager
function WorldAPIs_ChallengeManager.UpdateGUIDataGameface(self) end


---@param self WorldAPIs_ConversationManager
function WorldAPIs_ConversationManager.CancelDialogue(self) end

---@param self WorldAPIs_ConversationManager
function WorldAPIs_ConversationManager.EmptyDialogueRequests(self) end

---@param self WorldAPIs_ConversationManager
function WorldAPIs_ConversationManager.IsDialogueRequested(self) end

---@param self WorldAPIs_ConversationManager
---@param cDialogueLines table
function WorldAPIs_ConversationManager.RequestDialogueLines(self, cDialogueLines) end

---@param self WorldAPIs_ConversationManager
---@param mainHUD any
function WorldAPIs_ConversationManager.SetMainHUD(self, mainHUD) end


---@param self WorldAPIs_FacilityDatastoreComponent
---@param entityID any
---@return number nCategory
function WorldAPIs_FacilityDatastoreComponent.GetBrowserCategoryID(self, entityID) end

---@param self WorldAPIs_FacilityDatastoreComponent
---@param entityID any
---@param partID any
---@param bIsBuildingEditMode boolean
function WorldAPIs_FacilityDatastoreComponent.OnInfoPanelOpened(self, entityID, partID, bIsBuildingEditMode) end

---@param self WorldAPIs_FacilityDatastoreComponent
---@param nEntityID number
---@param bSuppressWarning boolean
function WorldAPIs_FacilityDatastoreComponent.UpdateAssignedStaff(self, nEntityID, bSuppressWarning) end

---@param self WorldAPIs_FacilityDatastoreComponent
---@param cContext table
function WorldAPIs_FacilityDatastoreComponent.UpdateDietarySatisfaction(self, cContext) end


---@param self WorldAPIs_FanfareManager
---@param cData table
---@param sScenarioCode string
---@param continueID any
function WorldAPIs_FanfareManager.AddScenarioLetterFanfare(self, cData, sScenarioCode, continueID) end

---@param self WorldAPIs_FanfareManager
---@return boolean _
function WorldAPIs_FanfareManager.GetAllowFanfares(self) end

---@param self WorldAPIs_FanfareManager
function WorldAPIs_FanfareManager.TryHandleEscape(self) end


---@param self WorldAPIs_FlatRideDataStoreComponent
---@param cContext table
---@param rideID any
---@param nStationID number
function WorldAPIs_FlatRideDataStoreComponent.ApplyRules(self, cContext, rideID, nStationID) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param rideID any
---@param option any
---@return number nMode
function WorldAPIs_FlatRideDataStoreComponent.GetOperationModeFromIndex(self, rideID, option) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param stationID any
---@return any rideID
function WorldAPIs_FlatRideDataStoreComponent.GetRideFromStation(self, stationID) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param uiHUD any
function WorldAPIs_FlatRideDataStoreComponent.OnHUDUIReady(self, uiHUD) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param rideID any
function WorldAPIs_FlatRideDataStoreComponent.SetActiveRideInfoPanel(self, rideID) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param nRideID number
---@param bool any
function WorldAPIs_FlatRideDataStoreComponent.SetEditable(self, nRideID, bool) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param rideID any
---@param nValue number
function WorldAPIs_FlatRideDataStoreComponent.SetFrictionSettings(self, rideID, nValue) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param cRideContext table
---@param rideID any
---@param sDisplayName string
function WorldAPIs_FlatRideDataStoreComponent.SetMusicSongName(self, cRideContext, rideID, sDisplayName) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param cContext table
---@param stationID any
---@param bValue boolean
function WorldAPIs_FlatRideDataStoreComponent.SetPriceSyncEnabled(self, cContext, stationID, bValue) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param cContext table
---@param rideID any
---@param nStationID number
---@param bIsStation boolean
---@param bFastpassEnabled boolean
function WorldAPIs_FlatRideDataStoreComponent.SetPriorityPassEnabled(self, cContext, rideID, nStationID, bIsStation, bFastpassEnabled) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param cContext table
---@param rideID any
---@param nStationID number
---@param bIsStation boolean
---@param nOption number
function WorldAPIs_FlatRideDataStoreComponent.SetPriorityPassPriority(self, cContext, rideID, nStationID, bIsStation, nOption) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param cContext table
---@param nOption number
---@param sEvent string
---@param rideID any
---@param nStationID number
---@param bIsStation boolean
function WorldAPIs_FlatRideDataStoreComponent.SetRule(self, cContext, nOption, sEvent, rideID, nStationID, bIsStation) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param cContext table
---@param rideID any
---@param Arg4 any
---@param bIsStation boolean
---@param cLoadRules table
function WorldAPIs_FlatRideDataStoreComponent.SetRules(self, cContext, rideID, Arg4, bIsStation, cLoadRules) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param rideID any
---@param Arg3 any
function WorldAPIs_FlatRideDataStoreComponent.SetSelectedCarTypeIndex(self, rideID, Arg3) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param cContext table
---@param rideID any
---@param nValue number
function WorldAPIs_FlatRideDataStoreComponent.SetTrainSpeed(self, cContext, rideID, nValue) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param cContext table
---@param nStationID number
function WorldAPIs_FlatRideDataStoreComponent.UpdateCallMechanic(self, cContext, nStationID) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param rideID any
function WorldAPIs_FlatRideDataStoreComponent.UpdateCanEdit(self, rideID) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param rideID any
---@param Arg3 any
---@param bArg4 boolean
---@param bArg5 boolean
---@param nEntityID number?
function WorldAPIs_FlatRideDataStoreComponent.UpdateCoasterChains(self, rideID, Arg3, bArg4, bArg5, nEntityID) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param rideID any
function WorldAPIs_FlatRideDataStoreComponent.UpdateFrictionSettings(self, rideID) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param rideID any
function WorldAPIs_FlatRideDataStoreComponent.UpdateHeatmapOptions(self, rideID) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param rideID any
function WorldAPIs_FlatRideDataStoreComponent.UpdateTestingStats(self, rideID) end

---@param self WorldAPIs_FlatRideDataStoreComponent
---@param rideID any
function WorldAPIs_FlatRideDataStoreComponent.UpdateTicketPriceLock(self, rideID) end


---@param self WorldAPIs_FlumePlatformDataStoreComponent
---@param cEnvironment table
function WorldAPIs_FlumePlatformDataStoreComponent.CompleteWorldSerialisationLoad(self, cEnvironment) end

---@param self WorldAPIs_FlumePlatformDataStoreComponent
---@param uiHUD any
function WorldAPIs_FlumePlatformDataStoreComponent.OnHUDUIReady(self, uiHUD) end


---@param self WorldAPIs_GameModeHelperComponent
---@param nEditorEntityID number
---@return table oEditMode
function WorldAPIs_GameModeHelperComponent.GetCurrentMode(self, nEditorEntityID) end

---@param self WorldAPIs_GameModeHelperComponent
---@param nEditorEntityID number
---@return string sEditModeName
function WorldAPIs_GameModeHelperComponent.GetCurrentModeName(self, nEditorEntityID) end

---@param self WorldAPIs_GameModeHelperComponent
---@param nEditModeHelperEntity number
---@return boolean _
function WorldAPIs_GameModeHelperComponent.IsSafe(self, nEditModeHelperEntity) end

---@param self WorldAPIs_GameModeHelperComponent
---@param Arg2 any
function WorldAPIs_GameModeHelperComponent.IsWorldShuttingDown(self, Arg2) end

---@param self WorldAPIs_GameModeHelperComponent
---@param Arg2 any
---@param sArg3 string
---@param sID string
function WorldAPIs_GameModeHelperComponent.OnModeEvent(self, Arg2, sArg3, sID) end

---@param self WorldAPIs_GameModeHelperComponent
function WorldAPIs_GameModeHelperComponent.RunUntilAllInactive(self) end

---@param self WorldAPIs_GameModeHelperComponent
---@param entityEditMode any
---@param sMode string
---@param Arg4 any?
function WorldAPIs_GameModeHelperComponent.SetNewMode(self, entityEditMode, sMode, Arg4) end

---@param self WorldAPIs_GameModeHelperComponent
function WorldAPIs_GameModeHelperComponent.SetWorldShuttingDown(self) end


---@param self WorldAPIs_HUDPopUpManager
---@param cUnreadDLCs table
---@param fnOpenStorePage function
---@param Arg4 any
function WorldAPIs_HUDPopUpManager.AddDLCFanfare(self, cUnreadDLCs, fnOpenStorePage, Arg4) end

---@param self WorldAPIs_HUDPopUpManager
function WorldAPIs_HUDPopUpManager.AddParkMeetsEstablismentCriteraFanfare(self) end

---@param self WorldAPIs_HUDPopUpManager
---@param cFanfareData table
---@param Arg3 any
---@param Arg4 any
---@param Arg5 any
---@param bArg6 boolean
function WorldAPIs_HUDPopUpManager.AddScenarioFanfare(self, cFanfareData, Arg3, Arg4, Arg5, bArg6) end

---@param self WorldAPIs_HUDPopUpManager
---@param Arg2 any
---@param nCurrentVersionNumber number
function WorldAPIs_HUDPopUpManager.AddUpdateFanfare(self, Arg2, nCurrentVersionNumber) end

---@param self WorldAPIs_HUDPopUpManager
---@param mainHUD any
function WorldAPIs_HUDPopUpManager.SetMainHUD(self, mainHUD) end

---@param self WorldAPIs_HUDPopUpManager
---@param sHelpScreen string
function WorldAPIs_HUDPopUpManager.ShowHelpScreen(self, sHelpScreen) end


---@param self WorldAPIs_HotelDataStoreComponent
---@param entityID any
---@param partID any
---@param bIsBuildingEditMode boolean
function WorldAPIs_HotelDataStoreComponent.OnInfoPanelOpened(self, entityID, partID, bIsBuildingEditMode) end


---@param self WorldAPIs_InfoPopUpComponent
function WorldAPIs_InfoPopUpComponent.ClearRequestedPopUp(self) end

---@param self WorldAPIs_InfoPopUpComponent
---@param bArg2 boolean?
---@param bLeftClick boolean?
function WorldAPIs_InfoPopUpComponent.CloseInfoPopUp(self, bArg2, bLeftClick) end

---@param self WorldAPIs_InfoPopUpComponent
---@param sEndMode string
---@param cArgs table
function WorldAPIs_InfoPopUpComponent.CreateAndOpenInfoPopUp(self, sEndMode, cArgs) end

---@param self WorldAPIs_InfoPopUpComponent
---@param nInfoPopUpEntity number
---@param bUseRememberedTab boolean?
---@param bIsBuildingEditMode boolean?
---@param cArg5 table?
---@param sInitialTab string?
function WorldAPIs_InfoPopUpComponent.CreateAndOpenInfoPopUpForEntity(self, nInfoPopUpEntity, bUseRememberedTab, bIsBuildingEditMode, cArg5, sInitialTab) end

---@param self WorldAPIs_InfoPopUpComponent
---@return number nSelectedEntityID
function WorldAPIs_InfoPopUpComponent.GetEntityIDFromOpenPopUp(self) end

---@param self WorldAPIs_InfoPopUpComponent
---@return any view
function WorldAPIs_InfoPopUpComponent.GetGuestThoughtView(self) end

---@param self WorldAPIs_InfoPopUpComponent
---@param sArg2 string
---@return any guestInfoPopUp
function WorldAPIs_InfoPopUpComponent.GetInfoPopUp(self, sArg2) end

---@param self WorldAPIs_InfoPopUpComponent
---@param entityID any
---@return any SetTypeAndArgsForPopUp
function WorldAPIs_InfoPopUpComponent.GetInfoPopUpType(self, entityID) end

---@param self WorldAPIs_InfoPopUpComponent
---@return any popup
function WorldAPIs_InfoPopUpComponent.GetOpenPopUp(self) end

---@param self WorldAPIs_InfoPopUpComponent
---@param nEntityID number
---@return boolean bCondition
function WorldAPIs_InfoPopUpComponent.HasInfoPopUpComponent(self, nEntityID) end

---@param self WorldAPIs_InfoPopUpComponent
---@return boolean bEntitySelected
function WorldAPIs_InfoPopUpComponent.IsAnyInfoPopUpOpen(self) end

---@param self WorldAPIs_InfoPopUpComponent
---@param mainHUD any
function WorldAPIs_InfoPopUpComponent.SetMainHUD(self, mainHUD) end


function WorldAPIs_InputManager.AddComponentsToEntities() end

---@param self WorldAPIs_InputManager
---@param bArg2 boolean
function WorldAPIs_InputManager.AllowMouseFocusChange(self, bArg2) end

---@param self WorldAPIs_InputManager
---@param bArg2 boolean
function WorldAPIs_InputManager.BlockMouseInput(self, bArg2) end

---@param self WorldAPIs_InputManager
---@param sName string
---@param cGamepadControls table
---@param nInputPriority number
---@param bArg5 boolean?
function WorldAPIs_InputManager.CreateGamepadTemporaryContext(self, sName, cGamepadControls, nInputPriority, bArg5) end

---@param self WorldAPIs_InputManager
---@param sArg2 string
---@param cKeyboardControls table
---@param nArg4 number
function WorldAPIs_InputManager.CreateKeyboardTemporaryContext(self, sArg2, cKeyboardControls, nArg4) end

---@param self WorldAPIs_InputManager
---@param cEnvironment table
---@param mainHUD any
function WorldAPIs_InputManager.CreateRadialMenu(self, cEnvironment, mainHUD) end

---@param self WorldAPIs_InputManager
function WorldAPIs_InputManager.EnableGamepadDrag(self) end

---@param self WorldAPIs_InputManager
function WorldAPIs_InputManager.ForceEndGamepadDrag(self) end

---@param self WorldAPIs_InputManager
---@return table tAxisData
function WorldAPIs_InputManager.GetGamepadAxisData(self) end

---@param self WorldAPIs_InputManager
---@return table tGamepadButtonDescriptors
function WorldAPIs_InputManager.GetGamepadButtonDescriptors(self) end

---@param self WorldAPIs_InputManager
---@param sButtonHeld string
---@return boolean bVerticalModifierDown
function WorldAPIs_InputManager.GetGamepadButtonDown(self, sButtonHeld) end

---@param self WorldAPIs_InputManager
---@param sButtonName string
---@param sInputType string
---@return boolean bMouseHeld
function WorldAPIs_InputManager.GetGamepadButtonInput(self, sButtonName, sInputType) end

---@param self WorldAPIs_InputManager
---@param sGamepadValue string
---@return number X
function WorldAPIs_InputManager.GetGamepadControlValue(self, sGamepadValue) end

---@param self WorldAPIs_InputManager
---@return boolean _
function WorldAPIs_InputManager.GetGamepadDebugDrawControlsEnabled(self) end

---@param self WorldAPIs_InputManager
---@return any rad
function WorldAPIs_InputManager.GetGamepadLeftStickDeadzoneAngle(self) end

---@param self WorldAPIs_InputManager
---@param nDeadzoneAngleRad number
---@return vector vAxisDirection
function WorldAPIs_InputManager.GetGamepadLeftStickDirectionWithDeadzone(self, nDeadzoneAngleRad) end

---@param self WorldAPIs_InputManager
---@return boolean bStickInputsClaimed
function WorldAPIs_InputManager.GetGamepadStickInputsEnabled(self) end

---@param self WorldAPIs_InputManager
---@param sRight string
---@return boolean bIsDown
function WorldAPIs_InputManager.GetKeyDown(self, sRight) end

---@param self WorldAPIs_InputManager
---@param sReset string
---@return boolean bWaitForKeyUp
function WorldAPIs_InputManager.GetKeyPressed(self, sReset) end

---@param self WorldAPIs_InputManager
---@param bDontCareAboutClicks boolean?
---@return table tMouseInput
function WorldAPIs_InputManager.GetMouseInput(self, bDontCareAboutClicks) end

---@param self WorldAPIs_InputManager
---@return number nTimeSinceInput
function WorldAPIs_InputManager.GetPlayerIdleTime(self) end

---@param self WorldAPIs_InputManager
---@return any radialMenuUI
function WorldAPIs_InputManager.GetRadialMenuUI(self) end

---@param self WorldAPIs_InputManager
function WorldAPIs_InputManager.HandleGamepadControlsOptionsChanged(self) end

---@param self WorldAPIs_InputManager
function WorldAPIs_InputManager.HandleKeyboardControlsOptionsChanged(self) end

function WorldAPIs_InputManager.Init() end

---@param self WorldAPIs_InputManager
---@return boolean bHasGamepadInput
function WorldAPIs_InputManager.IsGamepadInputValid(self) end

---@param self WorldAPIs_InputManager
---@param sContextName string
---@return boolean _
function WorldAPIs_InputManager.IsGamepadTemporaryContextActive(self, sContextName) end

---@param self WorldAPIs_InputManager
---@param sArg2 string
---@return boolean _
function WorldAPIs_InputManager.IsKeyboardTemporaryContextActive(self, sArg2) end

---@param self WorldAPIs_InputManager
---@return boolean bUsingGamepad
function WorldAPIs_InputManager.IsPlayerMostRecentlyUsingGamepad(self) end

---@param self WorldAPIs_InputManager
function WorldAPIs_InputManager.PopLogicalButtonAllowList(self) end

---@param self WorldAPIs_InputManager
---@param cGamepadControlsForPrint table
function WorldAPIs_InputManager.PrintControlsAcrossAllModes(self, cGamepadControlsForPrint) end

---@param self WorldAPIs_InputManager
---@param cAllowedLogicalButtons table
---@param bArg3 boolean
function WorldAPIs_InputManager.PushLogicalButtonAllowList(self, cAllowedLogicalButtons, bArg3) end

---@param self WorldAPIs_InputManager
---@param cArg2 table
function WorldAPIs_InputManager.RegisterGamepadInput(self, cArg2) end

---@param self WorldAPIs_InputManager
---@param sTemporaryContextID string
function WorldAPIs_InputManager.RegisterGamepadTemporaryContext(self, sTemporaryContextID) end

---@param self WorldAPIs_InputManager
---@param cRegisteredMouseInput table
function WorldAPIs_InputManager.RegisterMouseInput(self, cRegisteredMouseInput) end

---@param self WorldAPIs_InputManager
---@param sContextName string
function WorldAPIs_InputManager.RemoveGamepadTemporaryContext(self, sContextName) end

---@param self WorldAPIs_InputManager
---@param sArg2 string
function WorldAPIs_InputManager.RemoveKeyboardTemporaryContext(self, sArg2) end

---@param self WorldAPIs_InputManager
---@param bArg2 boolean
function WorldAPIs_InputManager.SetCameraMovementAllowed(self, bArg2) end

---@param self WorldAPIs_InputManager
---@param bArg2 boolean
function WorldAPIs_InputManager.SetGamepadRecogniseDragInputs(self, bArg2) end

---@param self WorldAPIs_InputManager
---@param bStickInputsClaimed boolean
---@param bArg3 boolean?
function WorldAPIs_InputManager.SetGamepadStickInputsEnabled(self, bStickInputsClaimed, bArg3) end

---@param self WorldAPIs_InputManager
---@param bArg2 boolean
function WorldAPIs_InputManager.SetGamepadTriggerInputsEnabled(self, bArg2) end

---@param self WorldAPIs_InputManager
---@param Arg2 any?
function WorldAPIs_InputManager.SetRadialMenuHighlight(self, Arg2) end

---@param self WorldAPIs_InputManager
---@param cArg2 table
function WorldAPIs_InputManager.UnregisterGamepadInput(self, cArg2) end

---@param self WorldAPIs_InputManager
---@param sTemporaryContextID string
function WorldAPIs_InputManager.UnregisterGamepadTemporaryContext(self, sTemporaryContextID) end

---@param self WorldAPIs_InputManager
---@param cRegisteredMouseInput table
function WorldAPIs_InputManager.UnregisterMouseInput(self, cRegisteredMouseInput) end


---@param self WorldAPIs_Manager
---@param nSelectedEventID number
function WorldAPIs_Manager.GetEventCanBlock(self, nSelectedEventID) end

---@param self WorldAPIs_Manager
---@param nSelectedEventID number
function WorldAPIs_Manager.GetEventCanDelay(self, nSelectedEventID) end

---@param self WorldAPIs_Manager
---@param nSelectedEventID number
function WorldAPIs_Manager.GetEventParamNames(self, nSelectedEventID) end

---@param self WorldAPIs_Manager
---@param nSelectedEventID number
---@return table tRequiredParams
function WorldAPIs_Manager.GetEventRequiredParameters(self, nSelectedEventID) end


---@param self WorldAPIs_ModeHelperComponent
---@param Arg2 any
function WorldAPIs_ModeHelperComponent.GetCurrentMode(self, Arg2) end

---@param self WorldAPIs_ModeHelperComponent
---@param Arg2 any
function WorldAPIs_ModeHelperComponent.GetCurrentModeName(self, Arg2) end

---@param self WorldAPIs_ModeHelperComponent
---@param Arg2 any
---@param sMode string
---@param Arg4 any
function WorldAPIs_ModeHelperComponent.SetNewMode(self, Arg2, sMode, Arg4) end


function WorldAPIs_MotionBlurManager.AddComponentsToEntities() end

---@param self WorldAPIs_MotionBlurManager
---@param sArg2 string
---@return number nMotionBlurRequestID
function WorldAPIs_MotionBlurManager.AddRequest(self, sArg2) end

---@param self WorldAPIs_MotionBlurManager
---@return table tMotionBlurParameters
function WorldAPIs_MotionBlurManager.GetRenderParameterCollection(self) end

function WorldAPIs_MotionBlurManager.Init() end

---@param self WorldAPIs_MotionBlurManager
---@param nMotionBlurRequestID number
function WorldAPIs_MotionBlurManager.RemoveRequest(self, nMotionBlurRequestID) end


---@param self WorldAPIs_ObjectiveManager
---@param nSelectedChapter number
---@param nSelectedStage number
---@param nSelectedObjectiveID number
function WorldAPIs_ObjectiveManager.AddNewObjective(self, nSelectedChapter, nSelectedStage, nSelectedObjectiveID) end

---@param self WorldAPIs_ObjectiveManager
---@param cEnvironment table
function WorldAPIs_ObjectiveManager.CompleteWorldSerialisationLoad(self, cEnvironment) end

---@param self WorldAPIs_ObjectiveManager
---@return table tObjectiveStages
function WorldAPIs_ObjectiveManager.GetAllObjectives(self) end

---@param self WorldAPIs_ObjectiveManager
---@param nSelectedChapter number
---@param nSelectedStage number
function WorldAPIs_ObjectiveManager.GetAmountOfObjectivesInStage(self, nSelectedChapter, nSelectedStage) end

---@param self WorldAPIs_ObjectiveManager
---@return number nCurrentChapter
---@return number nCurrentStage
function WorldAPIs_ObjectiveManager.GetChapterAndStage(self) end

---@param self WorldAPIs_ObjectiveManager
---@return table tCompleted
function WorldAPIs_ObjectiveManager.GetCompletion(self) end

---@param self WorldAPIs_ObjectiveManager
function WorldAPIs_ObjectiveManager.GetCompletionSavedData(self) end

---@param self WorldAPIs_ObjectiveManager
function WorldAPIs_ObjectiveManager.GetFails(self) end

---@param self WorldAPIs_ObjectiveManager
---@return number nLinkID
function WorldAPIs_ObjectiveManager.GetNewObjectiveLinkID(self) end

---@param self WorldAPIs_ObjectiveManager
function WorldAPIs_ObjectiveManager.GetStoppedForEvents(self) end

---@param self WorldAPIs_ObjectiveManager
---@param nSelectedChapter number
---@param nSelectedStage number
---@param n any
---@param bArg5 boolean
function WorldAPIs_ObjectiveManager.MoveObjective(self, nSelectedChapter, nSelectedStage, n, bArg5) end

---@param self WorldAPIs_ObjectiveManager
---@param cObjectiveSettingsData table
---@param bIsLoad boolean
function WorldAPIs_ObjectiveManager.OverwriteCareerObjectives(self, cObjectiveSettingsData, bIsLoad) end

---@param self WorldAPIs_ObjectiveManager
function WorldAPIs_ObjectiveManager.RemoveAllObjectives(self) end

---@param self WorldAPIs_ObjectiveManager
---@param nSelectedChapter number
---@param nSelectedStage number
---@param n any
function WorldAPIs_ObjectiveManager.RemoveObjective(self, nSelectedChapter, nSelectedStage, n) end

---@param self WorldAPIs_ObjectiveManager
---@param self2 any
---@param setAvailableRidesCallback any
function WorldAPIs_ObjectiveManager.RequestAvailableRides(self, self2, setAvailableRidesCallback) end

---@param self WorldAPIs_ObjectiveManager
---@param cObjectiveSettings table
---@param bArg3 boolean
function WorldAPIs_ObjectiveManager.SaveObjectiveSettings(self, cObjectiveSettings, bArg3) end

---@param self WorldAPIs_ObjectiveManager
---@param bScenarioModeToActivate boolean
---@param sScenarioCode string?
---@param bArg4 boolean?
function WorldAPIs_ObjectiveManager.SetEnabled(self, bScenarioModeToActivate, sScenarioCode, bArg4) end

---@param self WorldAPIs_ObjectiveManager
---@param bool any
function WorldAPIs_ObjectiveManager.SetObjectivesSuppressed(self, bool) end

---@param self WorldAPIs_ObjectiveManager
---@param bArg2 boolean
function WorldAPIs_ObjectiveManager.SetStoppedForEvents(self, bArg2) end

---@param self WorldAPIs_ObjectiveManager
---@param bArg2 boolean
---@param cArg3 table
function WorldAPIs_ObjectiveManager.UnlockBonus(self, bArg2, cArg3) end

---@param self WorldAPIs_ObjectiveManager
function WorldAPIs_ObjectiveManager.UpdateAvailableRides(self) end

---@param self WorldAPIs_ObjectiveManager
function WorldAPIs_ObjectiveManager.UseCachedLoadObjectives(self) end


---@param self WorldAPIs_PaperDesignToolManager
---@param cEnvironment table
function WorldAPIs_PaperDesignToolManager.CompleteWorldSerialisationLoad(self, cEnvironment) end

---@param self WorldAPIs_PaperDesignToolManager
---@param uiHUD any
function WorldAPIs_PaperDesignToolManager.OnHUDUIReady(self, uiHUD) end


---@param self WorldAPIs_ParkZoneDatastoreComponent
---@return any brushLimits
function WorldAPIs_ParkZoneDatastoreComponent.GetBrushSizeLimits(self) end

---@param self WorldAPIs_ParkZoneDatastoreComponent
---@param nZoneEntityID number
---@return string sZoneContextPath
function WorldAPIs_ParkZoneDatastoreComponent.GetZoneContextPath(self, nZoneEntityID) end

---@param self WorldAPIs_ParkZoneDatastoreComponent
---@param uiHUD any
function WorldAPIs_ParkZoneDatastoreComponent.OnHUDUIReady(self, uiHUD) end

---@param self WorldAPIs_ParkZoneDatastoreComponent
---@param nSelectedZoneID number
---@param nBrushSize number
function WorldAPIs_ParkZoneDatastoreComponent.SetEditToolDatastoreValues(self, nSelectedZoneID, nBrushSize) end

---@param self WorldAPIs_ParkZoneDatastoreComponent
---@param Arg2 any
function WorldAPIs_ParkZoneDatastoreComponent.SetHoveredZone(self, Arg2) end


---@param self WorldAPIs_PlayerInteractionHandler
---@param sInteractionType string
---@param entityID any
---@param nDirectHitEntityID number
---@param vHitPos vector
---@param vHitNormal vector
---@param bUsingGamepad boolean
function WorldAPIs_PlayerInteractionHandler.HandlePlayerInteraction(self, sInteractionType, entityID, nDirectHitEntityID, vHitPos, vHitNormal, bUsingGamepad) end

---@param self WorldAPIs_PlayerInteractionHandler
---@param entityID any
---@return boolean _
function WorldAPIs_PlayerInteractionHandler.HasPlayerInteractionHandlerComponent(self, entityID) end


---@param self WorldAPIs_PoolsDatastoreComponent
---@param nEntityID number
---@param sNewStatus string
function WorldAPIs_PoolsDatastoreComponent.UpdatePoolStatus(self, nEntityID, sNewStatus) end


function WorldAPIs_RenderParametersComponent.AddComponentsToEntities() end

function WorldAPIs_RenderParametersComponent.Apply() end

---@param self WorldAPIs_RenderParametersComponent
---@param cGUIMap table
---@param nWeight number
function WorldAPIs_RenderParametersComponent.ApplyParameterCurves(self, cGUIMap, nWeight) end

---@param self WorldAPIs_RenderParametersComponent
---@param cTableID table
function WorldAPIs_RenderParametersComponent.ApplyParameters(self, cTableID) end

---@param self WorldAPIs_RenderParametersComponent
---@param parameterCollectionA any
---@param parameterCollectionB any
---@param prop any
function WorldAPIs_RenderParametersComponent.BlendParameters(self, parameterCollectionA, parameterCollectionB, prop) end

function WorldAPIs_RenderParametersComponent.CommitParameters() end

function WorldAPIs_RenderParametersComponent.GetName() end

function WorldAPIs_RenderParametersComponent.Init() end


---@param self WorldAPIs_RideSeat
---@param seatID any
---@param entity any
function WorldAPIs_RideSeat.AttachToSeat(self, seatID, entity) end

---@param self WorldAPIs_RideSeat
---@param trainEntity any
function WorldAPIs_RideSeat.CloseAllHarnesses(self, trainEntity) end

---@param self WorldAPIs_RideSeat
---@param seatID any
function WorldAPIs_RideSeat.GetGuestAnimSet(self, seatID) end

---@param self WorldAPIs_RideSeat
---@param trainEntity any
---@return table tReservationData
function WorldAPIs_RideSeat.GetReservationDataForRide(self, trainEntity) end


---@param self WorldAPIs_ScenarioNarrativeManager
---@param cEnvironment table
function WorldAPIs_ScenarioNarrativeManager.CompleteWorldSerialisationLoad(self, cEnvironment) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@return table tDynamicTriggerEvents
function WorldAPIs_ScenarioNarrativeManager.GetAllDynamicTriggerEvents(self) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@return any _
function WorldAPIs_ScenarioNarrativeManager.GetAvailableEvents(self) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@return table tIntroEvents
---@return table tChapters
function WorldAPIs_ScenarioNarrativeManager.GetChapters(self) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@return boolean bNarrativeEnabled
function WorldAPIs_ScenarioNarrativeManager.GetEnabled(self) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param nFunctionID number
---@return string sEventName
function WorldAPIs_ScenarioNarrativeManager.GetEventName(self, nFunctionID) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@return any Checkbox
function WorldAPIs_ScenarioNarrativeManager.GetObjectivesStartSuppressed(self) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param cObjectiveSettingsData table
---@param bParkReset boolean
function WorldAPIs_ScenarioNarrativeManager.MergeObjectiveSettingData(self, cObjectiveSettingsData, bParkReset) end

---@param self WorldAPIs_ScenarioNarrativeManager
function WorldAPIs_ScenarioNarrativeManager.ResetProgress(self) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param cObjectiveSettings table
function WorldAPIs_ScenarioNarrativeManager.SaveObjectiveSettings(self, cObjectiveSettings) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param bCareer boolean
function WorldAPIs_ScenarioNarrativeManager.SetEnabled(self, bCareer) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param sArg2 string
function WorldAPIs_ScenarioNarrativeManager.SetEventFromObjectives(self, sArg2) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param cContext table
function WorldAPIs_ScenarioNarrativeManager.SetFocusOnObjectiveEntity(self, cContext) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param mainHUD any
function WorldAPIs_ScenarioNarrativeManager.SetMainHUD(self, mainHUD) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param suppressState any
function WorldAPIs_ScenarioNarrativeManager.SetObjectivesStartSuppressed(self, suppressState) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param sPopUpTextString string
function WorldAPIs_ScenarioNarrativeManager.ShowPopUpMarkerText(self, sPopUpTextString) end

---@param self WorldAPIs_ScenarioNarrativeManager
function WorldAPIs_ScenarioNarrativeManager.SkipCurrentStage(self) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param triggerIndex any
function WorldAPIs_ScenarioNarrativeManager.TriggerDynamicEvent(self, triggerIndex) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param cScenarioEvents table
function WorldAPIs_ScenarioNarrativeManager.TriggerScenarioEvents(self, cScenarioEvents) end

---@param self WorldAPIs_ScenarioNarrativeManager
---@param nDeltaTime number
function WorldAPIs_ScenarioNarrativeManager.UpdateDynamicEvents(self, nDeltaTime) end

---@param self WorldAPIs_ScenarioNarrativeManager
function WorldAPIs_ScenarioNarrativeManager.UpdateGUIDataGameface(self) end


---@param self WorldAPIs_ScenarioRivalsManager
---@return table tActiveRivals
function WorldAPIs_ScenarioRivalsManager.CheckForActiveRivals(self) end


---@param self WorldAPIs_SceneryBrowserFilterManager
---@param bMinimiseBrowser boolean
function WorldAPIs_SceneryBrowserFilterManager.ClearFilter(self, bMinimiseBrowser) end

---@param self WorldAPIs_SceneryBrowserFilterManager
---@param bBelonging boolean
---@param bPlatform boolean
function WorldAPIs_SceneryBrowserFilterManager.SetAttachmentFilter(self, bBelonging, bPlatform) end

---@param self WorldAPIs_SceneryBrowserFilterManager
---@param nComplexType number
---@param bArg3 boolean?
function WorldAPIs_SceneryBrowserFilterManager.SetComplexFilter(self, nComplexType, bArg3) end

---@param self WorldAPIs_SceneryBrowserFilterManager
---@param mainHUD any
function WorldAPIs_SceneryBrowserFilterManager.SetMainHUD(self, mainHUD) end

---@param self WorldAPIs_SceneryBrowserFilterManager
function WorldAPIs_SceneryBrowserFilterManager.SetSceneryBrushFilter(self) end


---@param self WorldAPIs_SelectAndEditComponent
function WorldAPIs_SelectAndEditComponent.ClearGroupSelection(self) end

---@param self WorldAPIs_SelectAndEditComponent
function WorldAPIs_SelectAndEditComponent.ClearSelection(self) end

---@param self WorldAPIs_SelectAndEditComponent
---@param bArg2 boolean
---@param bAdvancedMove boolean
---@param bFocusOnSelection boolean?
---@param advancedModeTypeScale any?
function WorldAPIs_SelectAndEditComponent.CloneOrMoveSelection(self, bArg2, bAdvancedMove, bFocusOnSelection, advancedModeTypeScale) end

---@param self WorldAPIs_SelectAndEditComponent
function WorldAPIs_SelectAndEditComponent.ExtendSelectionToGroup(self) end

---@param self WorldAPIs_SelectAndEditComponent
---@param nEntityID number
---@return number nStaffID
function WorldAPIs_SelectAndEditComponent.FindParentWithComponent(self, nEntityID) end

---@param self WorldAPIs_SelectAndEditComponent
function WorldAPIs_SelectAndEditComponent.FocusCamOnSelection(self) end

---@param self WorldAPIs_SelectAndEditComponent
---@return number nActiveTranslateAxisOverride
---@return number nActiveRotateAxisOverride
function WorldAPIs_SelectAndEditComponent.GetAndClearNextAdvancedMoveActiveAxes(self) end

---@param self WorldAPIs_SelectAndEditComponent
---@return number nActiveTranslatePlaneOverride
function WorldAPIs_SelectAndEditComponent.GetAndClearNextAdvancedMoveActivePlane(self) end

---@param self WorldAPIs_SelectAndEditComponent
---@return number nLastMode
function WorldAPIs_SelectAndEditComponent.GetAndClearNextAdvancedMoveMode(self) end

---@param self WorldAPIs_SelectAndEditComponent
function WorldAPIs_SelectAndEditComponent.GetAndClearNextAdvancedMoveUsingPlaneMovement(self) end

---@param self WorldAPIs_SelectAndEditComponent
---@return number nSnapMode
function WorldAPIs_SelectAndEditComponent.GetAndClearNextMoveSnapMode(self) end

---@param self WorldAPIs_SelectAndEditComponent
function WorldAPIs_SelectAndEditComponent.GetAndClearNextUsingLocalAxis(self) end

---@param self WorldAPIs_SelectAndEditComponent
---@param Arg2 any
---@return vector vObjectPos
function WorldAPIs_SelectAndEditComponent.GetControlPoint(self, Arg2) end

---@param self WorldAPIs_SelectAndEditComponent
function WorldAPIs_SelectAndEditComponent.GetNextUsingLocalAxis(self) end

---@param self WorldAPIs_SelectAndEditComponent
---@param nEntityID number
---@return string sType
function WorldAPIs_SelectAndEditComponent.GetTypeOfEntity(self, nEntityID) end

---@param self WorldAPIs_SelectAndEditComponent
---@param nEntityLastHighlighted number
---@return boolean bFocusOnMoveObject
function WorldAPIs_SelectAndEditComponent.IsEntitySameAsSelected(self, nEntityLastHighlighted) end

---@param self WorldAPIs_SelectAndEditComponent
---@return boolean bIsLocked
---@return boolean bDLCOwned
function WorldAPIs_SelectAndEditComponent.IsSelectionLocked(self) end

---@param self WorldAPIs_SelectAndEditComponent
---@param nEntityID number
function WorldAPIs_SelectAndEditComponent.QuickDeleteObject(self, nEntityID) end

---@param self WorldAPIs_SelectAndEditComponent
---@param existingEntityID any?
function WorldAPIs_SelectAndEditComponent.RequestQuickDeleteObject(self, existingEntityID) end

---@param self WorldAPIs_SelectAndEditComponent
---@param nEntity number
function WorldAPIs_SelectAndEditComponent.SelectObject(self, nEntity) end

---@param self WorldAPIs_SelectAndEditComponent
---@param selection any
function WorldAPIs_SelectAndEditComponent.SelectSet(self, selection) end

---@param self WorldAPIs_SelectAndEditComponent
---@param nActiveTranslateAxisForGamepad number
---@param nActiveRotateAxisForGamepad number
function WorldAPIs_SelectAndEditComponent.SetNextAdvancedMoveActiveAxes(self, nActiveTranslateAxisForGamepad, nActiveRotateAxisForGamepad) end

---@param self WorldAPIs_SelectAndEditComponent
---@param nActiveTranslatePlaneForGamepad number
function WorldAPIs_SelectAndEditComponent.SetNextAdvancedMoveActivePlane(self, nActiveTranslatePlaneForGamepad) end

---@param self WorldAPIs_SelectAndEditComponent
---@param nAdvancedPlacementMode number
function WorldAPIs_SelectAndEditComponent.SetNextAdvancedMoveMode(self, nAdvancedPlacementMode) end

---@param self WorldAPIs_SelectAndEditComponent
---@param bPlaneAdvancedMovementEnabled boolean
function WorldAPIs_SelectAndEditComponent.SetNextAdvancedMoveUsingPlaneMovement(self, bPlaneAdvancedMovementEnabled) end

---@param self WorldAPIs_SelectAndEditComponent
---@param notSnapping any
function WorldAPIs_SelectAndEditComponent.SetNextMoveSnapMode(self, notSnapping) end

---@param self WorldAPIs_SelectAndEditComponent
---@param bMoveOptionsUseLocalAxis boolean
function WorldAPIs_SelectAndEditComponent.SetNextUsingLocalAxis(self, bMoveOptionsUseLocalAxis) end


---@param self WorldAPIs_StaffBuildingDatastoreComponent
---@param entityID any
---@param partID any
---@param bIsBuildingEditMode boolean
function WorldAPIs_StaffBuildingDatastoreComponent.OnInfoPanelOpened(self, entityID, partID, bIsBuildingEditMode) end


---@param self WorldAPIs_StaffDataStoreComponent
---@param nLifeguard number
function WorldAPIs_StaffDataStoreComponent.RefreshStaffMemberStateTrivia(self, nLifeguard) end

---@param self WorldAPIs_StaffDataStoreComponent
---@param entityID any?
function WorldAPIs_StaffDataStoreComponent.SetOpenStaffInfoPanel(self, entityID) end


---@param self WorldAPIs_StaffPoolDataStoreComponent
---@param uiHUD any
function WorldAPIs_StaffPoolDataStoreComponent.OnHUDUIReady(self, uiHUD) end


---@param self WorldAPIs_StandaloneScenerySerialisation
---@return any standaloneSceneryCompletionToken
function WorldAPIs_StandaloneScenerySerialisation.CompleteWorldSerialisationLoad(self) end


---@param self WorldAPIs_TargetsDatastoreComponent
---@param entityID any
---@param partID any
function WorldAPIs_TargetsDatastoreComponent.OnInfoPanelOpened(self, entityID, partID) end

---@param self WorldAPIs_TargetsDatastoreComponent
---@param entityID any
---@param bPlay boolean
function WorldAPIs_TargetsDatastoreComponent.SetIsPlaying(self, entityID, bPlay) end


---@param self WorldAPIs_TrackedRideDataStoreComponent
---@param cEnvironment table
function WorldAPIs_TrackedRideDataStoreComponent.CompleteWorldSerialisationLoad(self, cEnvironment) end

---@param self WorldAPIs_TrackedRideDataStoreComponent
---@param uiHUD any
function WorldAPIs_TrackedRideDataStoreComponent.OnHUDUIReady(self, uiHUD) end

---@param self WorldAPIs_TrackedRideDataStoreComponent
---@param nTargetEntityID number
function WorldAPIs_TrackedRideDataStoreComponent.SetActiveRideCameraSettingsPanel(self, nTargetEntityID) end

---@param self WorldAPIs_TrackedRideDataStoreComponent
---@param nRideID number
---@param bool any
function WorldAPIs_TrackedRideDataStoreComponent.SetEditable(self, nRideID, bool) end

---@param self WorldAPIs_TrackedRideDataStoreComponent
---@param nTargetEntityID number
function WorldAPIs_TrackedRideDataStoreComponent.UpdateHeatmapOptions(self, nTargetEntityID) end

---@param self WorldAPIs_TrackedRideDataStoreComponent
---@param nTargetEntityID number
function WorldAPIs_TrackedRideDataStoreComponent.UpdateTestingStats(self, nTargetEntityID) end


---@param self WorldAPIs_UIModeHelperComponent
---@param nUIModeHelperEntity number
---@return table oCurrentUIMode
function WorldAPIs_UIModeHelperComponent.GetCurrentMode(self, nUIModeHelperEntity) end

---@param self WorldAPIs_UIModeHelperComponent
---@param nUIModeHelperEntity number
---@return string sUIModeName
function WorldAPIs_UIModeHelperComponent.GetCurrentModeName(self, nUIModeHelperEntity) end

---@param self WorldAPIs_UIModeHelperComponent
---@param nUIModeHelperEntity number
---@return boolean _
function WorldAPIs_UIModeHelperComponent.IsSafe(self, nUIModeHelperEntity) end

---@param self WorldAPIs_UIModeHelperComponent
---@param Arg2 any
function WorldAPIs_UIModeHelperComponent.IsWorldShuttingDown(self, Arg2) end

---@param self WorldAPIs_UIModeHelperComponent
---@param Arg2 any
---@param sArg3 string
---@param cSelection table
function WorldAPIs_UIModeHelperComponent.OnModeEvent(self, Arg2, sArg3, cSelection) end

---@param self WorldAPIs_UIModeHelperComponent
function WorldAPIs_UIModeHelperComponent.RunUntilAllInactive(self) end

---@param self WorldAPIs_UIModeHelperComponent
---@param modeHelperEntity any
---@param sMode string
---@param Arg4 any?
function WorldAPIs_UIModeHelperComponent.SetNewMode(self, modeHelperEntity, sMode, Arg4) end

---@param self WorldAPIs_UIModeHelperComponent
function WorldAPIs_UIModeHelperComponent.SetWorldShuttingDown(self) end


---@param self WorldAPIs_UniqueNameComponent
---@param sCUniqueName string
---@return number nEditorEntityID
function WorldAPIs_UniqueNameComponent.GetEntityID(self, sCUniqueName) end


---@param self WorldAPIs_UtilityDatastoreComponent
---@param nEntityID number
---@param sNewStatus string
function WorldAPIs_UtilityDatastoreComponent.UpdateUtilityStatus(self, nEntityID, sNewStatus) end


---@param self WorldAPIs_WorkshopDatastoreComponent
---@param entityID any
---@return number nStaffEntity
function WorldAPIs_WorkshopDatastoreComponent.GetResearchingStaffEntityID(self, entityID) end

---@param self WorldAPIs_WorkshopDatastoreComponent
---@param entityID any
function WorldAPIs_WorkshopDatastoreComponent.OnInfoPanelClosed(self, entityID) end

---@param self WorldAPIs_WorkshopDatastoreComponent
---@param entityID any
---@param partID any
---@param bIsBuildingEditMode boolean
function WorldAPIs_WorkshopDatastoreComponent.OnInfoPanelOpened(self, entityID, partID, bIsBuildingEditMode) end


---@param self WorldAPIs_WorldBasedGUIProvider
---@param nAME any
---@param wrapper any
function WorldAPIs_WorldBasedGUIProvider.ReleaseGUIWrapper(self, nAME, wrapper) end


---@param self WorldAPIs_animation
---@param activeEntity any
---@param sArg3 string
---@return any fov
function WorldAPIs_animation.GetFloatStreamValue(self, activeEntity, sArg3) end

---@param self WorldAPIs_animation
---@param animatedCameraEntity any
function WorldAPIs_animation.GetPropThrough(self, animatedCameraEntity) end

---@param self WorldAPIs_animation
---@param animatedCameraEntity any
---@param animatedCameraAnimation any
---@param bArg4 boolean
---@param nArg5 number
---@param nArg6 number
---@param nArg7 number
function WorldAPIs_animation.PlayAnimation(self, animatedCameraEntity, animatedCameraAnimation, bArg4, nArg5, nArg6, nArg7) end


---@param self WorldAPIs_attractions
---@param stationID any
function WorldAPIs_attractions.AddNoGuestsReason(self, stationID) end

---@param self WorldAPIs_attractions
---@param stationID any
---@param attractionsOpenStateReasonInvalidRide any
function WorldAPIs_attractions.AddNoOpenReason(self, stationID, attractionsOpenStateReasonInvalidRide) end

---@param self WorldAPIs_attractions
---@param nStationID number
---@return boolean bCanStationBeOpened
function WorldAPIs_attractions.CanBeOpened(self, nStationID) end

---@param self WorldAPIs_attractions
---@param nStationID number
function WorldAPIs_attractions.CanBeTested(self, nStationID) end

---@param self WorldAPIs_attractions
---@param nStationID number
function WorldAPIs_attractions.CloseAttraction(self, nStationID) end

---@param self WorldAPIs_attractions
---@param nSubStationID number
function WorldAPIs_attractions.HasEverOpened(self, nSubStationID) end

---@param self WorldAPIs_attractions
---@param nStationID number
---@param attractionsOpenStateReasonIncompleteFlume any
function WorldAPIs_attractions.HasNoOpenReason(self, nStationID, attractionsOpenStateReasonIncompleteFlume) end

---@param self WorldAPIs_attractions
---@param stationID any
---@return boolean bIsClosed
function WorldAPIs_attractions.IsClosed(self, stationID) end

---@param self WorldAPIs_attractions
---@param nStationID number
---@return boolean bIsOpen
function WorldAPIs_attractions.IsOpen(self, nStationID) end

---@param self WorldAPIs_attractions
---@param nStationID number
---@return boolean bIsTesting
function WorldAPIs_attractions.IsTesting(self, nStationID) end

---@param self WorldAPIs_attractions
---@param nStationID number
function WorldAPIs_attractions.OpenAttraction(self, nStationID) end

---@param self WorldAPIs_attractions
---@param stationID any
function WorldAPIs_attractions.RemoveNoGuestsReason(self, stationID) end

---@param self WorldAPIs_attractions
---@param stationID any
---@param attractionsOpenStateReasonInvalidRide any
function WorldAPIs_attractions.RemoveNoOpenReason(self, stationID, attractionsOpenStateReasonInvalidRide) end

---@param self WorldAPIs_attractions
---@param nStationID number
function WorldAPIs_attractions.TestAttraction(self, nStationID) end


---@param self WorldAPIs_avatarcapture
---@param nArg2 number
---@param nArg3 number
function WorldAPIs_avatarcapture.Activate(self, nArg2, nArg3) end

---@param self WorldAPIs_avatarcapture
function WorldAPIs_avatarcapture.Deactivate(self) end

---@param self WorldAPIs_avatarcapture
---@return table cTokenFull
function WorldAPIs_avatarcapture.GetCaptureResult(self) end

---@param self WorldAPIs_avatarcapture
function WorldAPIs_avatarcapture.IsCaptureInProgress(self) end

---@param self WorldAPIs_avatarcapture
---@param hips any
---@param nArg3 number
---@param Arg4 any?
function WorldAPIs_avatarcapture.TriggerCapture(self, hips, nArg3, Arg4) end


---@param self WorldAPIs_avatarpatterncontrols
---@param nAnimatedEntityID number
---@param sPatternName string
---@param nSlotIdx number
---@param colourIndex any
function WorldAPIs_avatarpatterncontrols.UpdateColour(self, nAnimatedEntityID, sPatternName, nSlotIdx, colourIndex) end

---@param self WorldAPIs_avatarpatterncontrols
---@param nAnimatedEntityID number
---@param sCategory string
---@param nSlotIdx number
---@param sPatternSlotName string
function WorldAPIs_avatarpatterncontrols.UpdatePattern(self, nAnimatedEntityID, sCategory, nSlotIdx, sPatternSlotName) end


---@param self WorldAPIs_billboardwidgets
---@param nTutorialWidgetType number
function WorldAPIs_billboardwidgets.ClearBillboardData(self, nTutorialWidgetType) end

---@param self WorldAPIs_billboardwidgets
---@param nParkExpansionWidgetType number
---@param Arg3 any
---@param cFinalMarkerData table
function WorldAPIs_billboardwidgets.SetBillboardData(self, nParkExpansionWidgetType, Arg3, cFinalMarkerData) end


---@param self WorldAPIs_boundary
---@param cBoundaryChangeList table
---@param bArg3 boolean
function WorldAPIs_boundary.AddCashDeltaOperation(self, cBoundaryChangeList, bArg3) end

---@param self WorldAPIs_boundary
---@param cEditData table
---@param cHitPanel table?
---@param vPhysicsHitPos vector?
---@return table oAddedControlPost
function WorldAPIs_boundary.AddPostToPanel(self, cEditData, cHitPanel, vPhysicsHitPos) end

---@param self WorldAPIs_boundary
---@param cHighlightRequest table
function WorldAPIs_boundary.AttachHighlightRequestToSystem(self, cHighlightRequest) end

---@param self WorldAPIs_boundary
---@return any boundaryCompletionToken
function WorldAPIs_boundary.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_boundary
---@return table oHighlightRequest
function WorldAPIs_boundary.CreateHighlightRequest(self) end

---@param self WorldAPIs_boundary
---@param cNewSingleControlPost table?
---@return table oChangedStartPost
function WorldAPIs_boundary.CreateNewControlPost(self, cNewSingleControlPost) end

---@param self WorldAPIs_boundary
---@return table oNewPanel
function WorldAPIs_boundary.CreateNewPanel(self) end

---@param self WorldAPIs_boundary
---@param cAttachableProp table
---@param cEditData table
---@return table oControlPostToSelect
function WorldAPIs_boundary.DeleteAttachableProp(self, cAttachableProp, cEditData) end

---@param self WorldAPIs_boundary
---@param cMultiSelection table
---@param cEditData table
---@return table oControlPostToSelect
function WorldAPIs_boundary.DeleteMultiSelection(self, cMultiSelection, cEditData) end

---@param self WorldAPIs_boundary
---@param cPanel table
---@param cEditData table
---@return table oControlPostToSelect
function WorldAPIs_boundary.DeletePanel(self, cPanel, cEditData) end

---@param self WorldAPIs_boundary
---@param cControlPost table
---@param cEditData table
---@return table oControlPostToSelect
function WorldAPIs_boundary.DeletePost(self, cControlPost, cEditData) end

---@param self WorldAPIs_boundary
---@param cHighlightRequest table
function WorldAPIs_boundary.DetachHighlightRequestFromSystem(self, cHighlightRequest) end

---@param self WorldAPIs_boundary
---@param cSelectedControlPost table
---@param Arg3 any
---@param nArg4 number
---@param nArg5 number
---@return any startJoinDirLocalTemp
function WorldAPIs_boundary.FindBestJoinDirection(self, cSelectedControlPost, Arg3, nArg4, nArg5) end

---@param self WorldAPIs_boundary
---@param vStartPos vector
---@param startJoinDir3d any
---@param nAlong number
---@param nArg5 number
---@param nMaxLength number
---@return number nSnapAlong
function WorldAPIs_boundary.FindSnapLengthForStraightLine(self, vStartPos, startJoinDir3d, nAlong, nArg5, nMaxLength) end

---@param self WorldAPIs_boundary
---@param boundaryObject any
---@return table tMultiSelect
function WorldAPIs_boundary.GetAllConnectedBoundaryObjects(self, boundaryObject) end

---@param self WorldAPIs_boundary
---@param cMultiSelect table
---@return table tSelectionBoundaryTypeSettings
function WorldAPIs_boundary.GetBoundaryDataForMultiSelection(self, cMultiSelect) end

---@param self WorldAPIs_boundary
---@param sBoundaryType string
---@return table tCurrentBoundaryTypeData
function WorldAPIs_boundary.GetBoundaryDataForType(self, sBoundaryType) end

---@param self WorldAPIs_boundary
---@param cNewPanel table
function WorldAPIs_boundary.GetBoundaryPanelLength(self, cNewPanel) end

---@param self WorldAPIs_boundary
---@param cEditData table
---@param Arg3 any
---@param Arg4 any
---@return boolean bHit
---@return table oHitPanel
---@return table oHitControlPost
---@return table oHitAttachableProp
---@return vector vPhysicsHitPos
function WorldAPIs_boundary.GetBoundaryPartsFromNearRay(self, cEditData, Arg3, Arg4) end

---@param self WorldAPIs_boundary
---@param cEditData table
---@return boolean bHit
---@return table oHitPanel
---@return table oHitControlPost
---@return table oHitAttachableProp
function WorldAPIs_boundary.GetBoundaryPartsFromRayCast(self, cEditData) end

---@param self WorldAPIs_boundary
---@param cConnectedPanel table
---@param vHitPoint vector
---@return vector vClosestPoint
---@return number nPropAlong
---@return vector vTangent
function WorldAPIs_boundary.GetClosestPointPropAlongAndTangentOnPanel(self, cConnectedPanel, vHitPoint) end

---@param self WorldAPIs_boundary
---@return number nWindowCutDistFromBase
function WorldAPIs_boundary.GetDefaultWindowDists(self) end

---@param self WorldAPIs_boundary
---@return number nMaxPostDist
function WorldAPIs_boundary.GetMaxPostDistance(self) end

---@param self WorldAPIs_boundary
---@return number nMinHeight
function WorldAPIs_boundary.GetMinHeight(self) end

---@param self WorldAPIs_boundary
---@return number nMinPostDist
function WorldAPIs_boundary.GetMinPostDistance(self) end

---@param self WorldAPIs_boundary
---@param cHitAttachableProp table
---@return table oPanel
function WorldAPIs_boundary.GetPanelForAttachableProp(self, cHitAttachableProp) end

---@param self WorldAPIs_boundary
---@param cSelectedControlPost table
---@return table tConnectedPanels
function WorldAPIs_boundary.GetPanelsConnectedToControlPost(self, cSelectedControlPost) end

---@param self WorldAPIs_boundary
function WorldAPIs_boundary.GetRandomUVOffsetRange(self) end

---@param self WorldAPIs_boundary
---@param vPos vector
---@param bFindGroundAboveAnUndergroundPoint boolean
---@param nTopWorldHeightReference number
function WorldAPIs_boundary.GroundPoint(self, vPos, bFindGroundAboveAnUndergroundPoint, nTopWorldHeightReference) end

---@param self WorldAPIs_boundary
---@param cCommitSelectedPost table
---@return boolean bCondition
function WorldAPIs_boundary.IsCommittedControlPost(self, cCommitSelectedPost) end

---@param self WorldAPIs_boundary
---@param cCommitSelectedPanel table
---@return boolean bCondition
function WorldAPIs_boundary.IsCommittedPanel(self, cCommitSelectedPanel) end

---@param self WorldAPIs_boundary
---@param cMultiSelect table
---@param cEditData table
---@param leftBit any
---@param rightBit any
---@param bLeftSet boolean
---@param bRightSet boolean
function WorldAPIs_boundary.MultiSelectChangeDualSidedExtra(self, cMultiSelect, cEditData, leftBit, rightBit, bLeftSet, bRightSet) end

---@param self WorldAPIs_boundary
---@param cSelection table
---@param cEditData table
---@param nChannel number
---@param vColour vector
function WorldAPIs_boundary.MultiSelectChangeFlexiColourValue(self, cSelection, cEditData, nChannel, vColour) end

---@param self WorldAPIs_boundary
---@param cMultiSelect table
---@param cEditData table
---@param nHeightAngleStart number
---@param nHeightAngleEnd number
function WorldAPIs_boundary.MultiSelectChangeHeightAngles(self, cMultiSelect, cEditData, nHeightAngleStart, nHeightAngleEnd) end

---@param self WorldAPIs_boundary
---@param cMultiSelect table
---@param cEditData table
---@param nPanelMode number
function WorldAPIs_boundary.MultiSelectChangePanelMode(self, cMultiSelect, cEditData, nPanelMode) end

---@param self WorldAPIs_boundary
---@param cMultiSelect table
---@param cEditData table
---@param bitToChange any
---@param bSet boolean
function WorldAPIs_boundary.MultiSelectChangeSingleSidedExtra(self, cMultiSelect, cEditData, bitToChange, bSet) end

---@param self WorldAPIs_boundary
---@param cMultiSelect table
---@param cEditData table
---@param nSmoothness number
function WorldAPIs_boundary.MultiSelectChangeSmoothness(self, cMultiSelect, cEditData, nSmoothness) end

---@param self WorldAPIs_boundary
---@param cSelection table
---@param sType string
---@param cEditData table
function WorldAPIs_boundary.MultiSelectChangeType(self, cSelection, sType, cEditData) end

---@param self WorldAPIs_boundary
---@param cMultiSelect table
---@param cEditData table
---@param nWindowCutDistFromBase number
---@param nWindowCutDistFromTop number
function WorldAPIs_boundary.MultiSelectChangeWindowDists(self, cMultiSelect, cEditData, nWindowCutDistFromBase, nWindowCutDistFromTop) end

---@param self WorldAPIs_boundary
---@param cMultiSelect table
---@param nDragHeightValue number
---@param cEditData table
function WorldAPIs_boundary.MultiSelectLowerBottom(self, cMultiSelect, nDragHeightValue, cEditData) end

---@param self WorldAPIs_boundary
---@param cMultiSelect table
---@param vOffset vector
---@param cEditData table
function WorldAPIs_boundary.MultiSelectMove(self, cMultiSelect, vOffset, cEditData) end

---@param self WorldAPIs_boundary
---@param cMultiSelect table
---@param nDragHeightValue number
---@param cEditData table
function WorldAPIs_boundary.MultiSelectRaise(self, cMultiSelect, nDragHeightValue, cEditData) end

---@param self WorldAPIs_boundary
---@param cMultiSelect table
---@param cEditData table
---@param bitMask any
---@param bitSet any
function WorldAPIs_boundary.MultiSelectSetEnumExtra(self, cMultiSelect, cEditData, bitMask, bitSet) end

---@param self WorldAPIs_boundary
---@param sPlacingPropName string
---@param cEditData table
---@param cSelectedAttachableProp table?
---@return table oCommitSelectedPost
function WorldAPIs_boundary.PlaceAttachableProp(self, sPlacingPropName, cEditData, cSelectedAttachableProp) end

---@param self WorldAPIs_boundary
---@param Arg2 any
---@param Arg3 any
---@param Arg4 any
---@param nNullBarrierGUIAlpha number
function WorldAPIs_boundary.SetNullBarrierGUICustomColour(self, Arg2, Arg3, Arg4, nNullBarrierGUIAlpha) end

---@param self WorldAPIs_boundary
---@param Arg2 any
---@param Arg3 any
---@param Arg4 any
---@param nNullBarrierGUIAlpha number
function WorldAPIs_boundary.SetNullBarrierGUIEditingColour(self, Arg2, Arg3, Arg4, nNullBarrierGUIAlpha) end

---@param self WorldAPIs_boundary
---@param Arg2 any
---@param Arg3 any
---@param Arg4 any
---@param nNullBarrierGUIAlpha number
function WorldAPIs_boundary.SetNullBarrierGUISelectionColour(self, Arg2, Arg3, Arg4, nNullBarrierGUIAlpha) end

---@param self WorldAPIs_boundary
---@param cSelectedControlPost table
---@param startTransQ any
---@param startJoinDirLocal any
---@param endTransQ any
---@param nArg6 number
---@return any endTransQ
function WorldAPIs_boundary.TrySnapCurveConnection(self, cSelectedControlPost, startTransQ, startJoinDirLocal, endTransQ, nArg6) end


---@param self WorldAPIs_cameraconfig
---@return table tColourGradingPackages
function WorldAPIs_cameraconfig.GetColourGradingPackages(self) end


---@param self WorldAPIs_cheats
---@param trackedRideEntityID any
function WorldAPIs_cheats.UserControlledRacingCheatActiveForRide(self, trackedRideEntityID) end


---@param self WorldAPIs_cinematics
---@param sName string
---@return number nCinematicID
function WorldAPIs_cinematics.PrepareCinematic(self, sName) end


---@param self WorldAPIs_complex
---@param complexItemHighlight any
function WorldAPIs_complex.AttachComplexItemHighlightRequest(self, complexItemHighlight) end

---@param self WorldAPIs_complex
---@param cCompositeMoveObject table
function WorldAPIs_complex.ClearComplexIDForMoveObject(self, cCompositeMoveObject) end

---@param self WorldAPIs_complex
function WorldAPIs_complex.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_complex
---@param multiSelection any
---@param nHitEntityID number
---@param nComplexID number
---@param nComplexType number
---@return boolean bCanAdd
function WorldAPIs_complex.CouldAddItemToMultiSelectionOfComplexItems(self, multiSelection, nHitEntityID, nComplexID, nComplexType) end

---@param self WorldAPIs_complex
---@param nComplexType number
---@return number nComplexID
function WorldAPIs_complex.CreateComplex(self, nComplexType) end

---@param self WorldAPIs_complex
---@param highlightChannelCustom any
---@param nComplexType number
---@param nCoreEntityID number
---@return any complexItemHighlight
function WorldAPIs_complex.CreateComplexItemHighlightRequest(self, highlightChannelCustom, nComplexType, nCoreEntityID) end

---@param self WorldAPIs_complex
---@param nRelatedComplexType number
function WorldAPIs_complex.Debug_ComplexTypeToString(self, nRelatedComplexType) end

---@param self WorldAPIs_complex
function WorldAPIs_complex.DetachComplexItemHighlightRequest(self) end

---@param self WorldAPIs_complex
---@param nComplexID number
---@return table tParts
function WorldAPIs_complex.GetAllPartsInComplex(self, nComplexID) end

---@param self WorldAPIs_complex
---@param nComplexID number
---@param complexInteractableTypeRestaurantPurchase any
---@return number nRestaurantEntityID
function WorldAPIs_complex.GetAnyComplexItem(self, nComplexID, complexInteractableTypeRestaurantPurchase) end

---@param self WorldAPIs_complex
---@param nEntityID number
---@return number nComplexID
function WorldAPIs_complex.GetComplexID(self, nEntityID) end

---@param self WorldAPIs_complex
---@param cMoveObject table
---@return table tPartIDs
function WorldAPIs_complex.GetComplexItemsToDisconnectFromDeadComplexesWhenDeletingParts(self, cMoveObject) end

---@param self WorldAPIs_complex
---@param nComplexID number
---@return number nComplexType
function WorldAPIs_complex.GetComplexType(self, nComplexID) end

---@param self WorldAPIs_complex
---@param entityID any
function WorldAPIs_complex.GetComplexTypeForItem(self, entityID) end

---@param self WorldAPIs_complex
---@param focusEntityID any
---@return number nComplexItemInteractableType
function WorldAPIs_complex.GetInteractableType(self, focusEntityID) end

---@param self WorldAPIs_complex
---@param complexTypeRestaurant any
---@return table tMaxCountPerType
function WorldAPIs_complex.GetMaxCountPerComplexInteractableType(self, complexTypeRestaurant) end

---@param self WorldAPIs_complex
---@param nComplexID number
---@param multiSelection any
---@return string sTitleLocTag
---@return string sTextLocTag
function WorldAPIs_complex.GetWarningPopupForSelectedItems(self, nComplexID, multiSelection) end

---@param self WorldAPIs_complex
---@param nHitEntityID number
---@return boolean bIsComplexItem
function WorldAPIs_complex.IsComplexItem(self, nHitEntityID) end

---@param self WorldAPIs_complex
---@param facilityID any
---@param complexInteractableTypeChangingRoom any
---@return boolean _
function WorldAPIs_complex.IsItemOfInteractableType(self, facilityID, complexInteractableTypeChangingRoom) end

---@param self WorldAPIs_complex
---@param multiSelection any
---@param nComplexType number
---@param nCoreEntityID number
function WorldAPIs_complex.SanitiseMultiSelectionOfComplexItems(self, multiSelection, nComplexType, nCoreEntityID) end

---@param self WorldAPIs_complex
---@param cCompositeMoveObject table
---@param nComplexID number
function WorldAPIs_complex.SetComplexIDForMoveObject(self, cCompositeMoveObject, nComplexID) end

---@param self WorldAPIs_complex
---@param cPartSet table
---@return number nNewComplexID
function WorldAPIs_complex.ShowDebugUIForPartSet(self, cPartSet) end


---@param self WorldAPIs_controlsconfig
---@return number nShortcutType
function WorldAPIs_controlsconfig.GetGamepadShortcutType(self) end

---@param self WorldAPIs_controlsconfig
---@return number nShortcutType
function WorldAPIs_controlsconfig.GetMouseShortcutType(self) end


---@param self WorldAPIs_debugimgui
---@return table tSortSpecs
function WorldAPIs_debugimgui.TableGetSortSpecs(self) end


---@param self WorldAPIs_editors
---@param vToPlacePosDir vector
---@param Arg3 any
---@param bArg4 boolean
---@param vDirStart vector
---@return vector vDirStart
function WorldAPIs_editors.AngleSnapDirection(self, vToPlacePosDir, Arg3, bArg4, vDirStart) end

---@param self WorldAPIs_editors
---@param cMoveObject table
---@return boolean bCan3DRotate
function WorldAPIs_editors.Can3DRotateMoveObject(self, cMoveObject) end

---@param self WorldAPIs_editors
---@param sShareCode string
function WorldAPIs_editors.CopyToClipboard(self, sShareCode) end

---@param self WorldAPIs_editors
---@return table oTargetGroupCollectedSnapEdges
function WorldAPIs_editors.CreateCollectedSnapEdges(self) end

---@param self WorldAPIs_editors
---@param nArg2 number
---@param nBrushHeight number
---@param nArg4 number
---@param nArg5 number
---@return table oBrushCursorVisuals
function WorldAPIs_editors.CreateCylinder3DCursor(self, nArg2, nBrushHeight, nArg4, nArg5) end

---@param self WorldAPIs_editors
---@return any boxSelection
function WorldAPIs_editors.CreateEntityBoxSelect2D(self) end

---@param self WorldAPIs_editors
---@return any cylinderSelection
function WorldAPIs_editors.CreateEntityCylinderSelect(self) end

---@param self WorldAPIs_editors
---@param bShowLabels boolean
---@param bSeparateYAxis boolean
---@return any lineDistanceGUIShape
function WorldAPIs_editors.CreateLineDistanceGUIShape(self, bShowLabels, bSeparateYAxis) end

---@param self WorldAPIs_editors
---@param Arg2 any
---@param Arg3 any
---@param Arg4 any
---@param Arg5 any
---@param nArg6 number
---@param nCursorType number
---@param Arg8 any
---@param Arg9 any
---@param Arg10 any
---@return any multiSelectCursor
function WorldAPIs_editors.CreateMultiSelectCursor2D(self, Arg2, Arg3, Arg4, Arg5, nArg6, nCursorType, Arg8, Arg9, Arg10) end

---@param self WorldAPIs_editors
---@return any multiSelectionCopy
function WorldAPIs_editors.CreateMultiSelection(self) end

---@param self WorldAPIs_editors
---@return table oRequestedChangeListHierarchy
function WorldAPIs_editors.CreateUndoOperationsHierarchy(self) end

---@param self WorldAPIs_editors
---@param cMoveObject table
---@return table tFlumePlatforms
function WorldAPIs_editors.GetFlumePlatformsInMoveObject(self, cMoveObject) end

---@param self WorldAPIs_editors
---@param cMoveObject table
---@return table tStairsEntityIDs
function WorldAPIs_editors.GetRideStairsInMoveObject(self, cMoveObject) end

---@param self WorldAPIs_editors
---@param cMoveObject table
---@return table tStationEntityIDs
function WorldAPIs_editors.GetTrackedRideStationsInMoveObject(self, cMoveObject) end

---@param self WorldAPIs_editors
---@param cBrushCursorVisuals table
function WorldAPIs_editors.HideCylinder3DCursor(self, cBrushCursorVisuals) end

---@param self WorldAPIs_editors
---@param multiSelectCursor any
function WorldAPIs_editors.HideMultiSelectCursor2D(self, multiSelectCursor) end

---@param self WorldAPIs_editors
---@param cEntities table
---@param cParts table
function WorldAPIs_editors.OverrideLights_ApartFrom(self, cEntities, cParts) end

---@param self WorldAPIs_editors
function WorldAPIs_editors.RemoveLightOverrides(self) end

---@param self WorldAPIs_editors
---@param channel any
---@param zero any
---@param nEdgeAlpha number
function WorldAPIs_editors.SetNonModelHighlightStateEdgeColour(self, channel, zero, nEdgeAlpha) end

---@param self WorldAPIs_editors
---@param channel any
---@param zero any
---@param nFillAlpha number
function WorldAPIs_editors.SetNonModelHighlightStateFillColour(self, channel, zero, nFillAlpha) end

---@param self WorldAPIs_editors
---@param nHighlightedStairsEntityID number
---@param highlightChannelCustom any
---@param bArg4 boolean
function WorldAPIs_editors.SetStairsHighlighted(self, nHighlightedStairsEntityID, highlightChannelCustom, bArg4) end

---@param self WorldAPIs_editors
---@param cMoveObject table
---@param nTerrainActionTypePathJoinPartFlatten number
---@param bArg4 boolean?
function WorldAPIs_editors.SetTerrainActionOnMoveObject(self, cMoveObject, nTerrainActionTypePathJoinPartFlatten, bArg4) end

---@param self WorldAPIs_editors
---@param cBrushCursorVisuals table
function WorldAPIs_editors.ShowCylinder3DCursor(self, cBrushCursorVisuals) end

---@param self WorldAPIs_editors
---@param multiSelectCursor any
function WorldAPIs_editors.ShowMultiSelectCursor2D(self, multiSelectCursor) end

---@param self WorldAPIs_editors
---@param cMoveObject table
---@return any buildingEntityID
function WorldAPIs_editors.TryGetBuildingEntityFromMoveObject(self, cMoveObject) end

---@param self WorldAPIs_editors
---@param cMoveObject table
---@return table tRideEntities
function WorldAPIs_editors.TryGetRideEntitiesFromMoveObject(self, cMoveObject) end

---@param self WorldAPIs_editors
---@param moveObject any
---@return table tUtilityEntities
function WorldAPIs_editors.TryGetUtilityEntitiesFromMoveObject(self, moveObject) end

---@param self WorldAPIs_editors
---@param cBrushCursorVisuals table
---@param transform any
---@param nRadius number
---@param nHeight number
---@param nOpacity number
function WorldAPIs_editors.UpdateCylinder3DCursor(self, cBrushCursorVisuals, transform, nRadius, nHeight, nOpacity) end

---@param self WorldAPIs_editors
---@param multiSelectCursor any
---@param Arg3 any
---@param Arg4 any
---@param Arg5 any
---@param Arg6 any
---@param nArg7 number
---@param nCursorType number
---@param Arg9 any
---@param Arg10 any
---@param Arg11 any
function WorldAPIs_editors.UpdateMultiSelectCursor2D(self, multiSelectCursor, Arg3, Arg4, Arg5, Arg6, nArg7, nCursorType, Arg9, Arg10, Arg11) end


---@param self WorldAPIs_environment
---@param sArg2 string
---@return any scenarioManager
function WorldAPIs_environment.RequireInterface(self, sArg2) end


---@param self WorldAPIs_facilities
---@param nEntityID number
---@return boolean bOpenedEnabled
function WorldAPIs_facilities.CanBeOpened(self, nEntityID) end

---@param self WorldAPIs_facilities
function WorldAPIs_facilities.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_facilities
---@param entityID any
---@param nStaffID number
function WorldAPIs_facilities.EjectStaffMemberFromStaffBuilding(self, entityID, nStaffID) end

---@param self WorldAPIs_facilities
---@param entityID any
---@param nStaffID number
function WorldAPIs_facilities.EjectStaffMemberFromWorkshop(self, entityID, nStaffID) end

---@param self WorldAPIs_facilities
---@param bArg2 boolean?
---@return table tFacilities
function WorldAPIs_facilities.GetAllFacilityEntityIDs(self, bArg2) end

---@param self WorldAPIs_facilities
---@return table tPossibleFacilityTypes
function WorldAPIs_facilities.GetAllPossibleFacilityTypes(self) end

---@param self WorldAPIs_facilities
---@param bArg2 boolean
---@return any shops
function WorldAPIs_facilities.GetAllShopEntityIDs(self, bArg2) end

---@param self WorldAPIs_facilities
---@return table tShopTagNames
function WorldAPIs_facilities.GetAllShopTagNames(self) end

---@param self WorldAPIs_facilities
---@param bArg2 boolean?
---@return table tStaffBuildings
function WorldAPIs_facilities.GetAllStaffBuildingEntityIDs(self, bArg2) end

---@param self WorldAPIs_facilities
---@param entityID any
---@param nCapacity number
---@return number nCost
function WorldAPIs_facilities.GetCostForStaffBuildingCapcityChange(self, entityID, nCapacity) end

---@param self WorldAPIs_facilities
---@param entityID any
---@param nCapacity number
---@return number nCost
function WorldAPIs_facilities.GetCostForWorkshopCapcityChange(self, entityID, nCapacity) end

---@param self WorldAPIs_facilities
---@param i any
---@return table oDateEmptied
function WorldAPIs_facilities.GetDateShopBecameEmpty(self, i) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@return table tStaffs
function WorldAPIs_facilities.GetEnrouteStaffMembers(self, nEntityID) end

---@param self WorldAPIs_facilities
---@param entityID any
---@return number nFacilityCleanliness
function WorldAPIs_facilities.GetFacilityCleanliness(self, entityID) end

---@param self WorldAPIs_facilities
---@return table tFacilityCountData
function WorldAPIs_facilities.GetFacilityCounts(self) end

---@param self WorldAPIs_facilities
---@param nFacilityID number
---@return number nType
function WorldAPIs_facilities.GetFacilityType(self, nFacilityID) end

---@param self WorldAPIs_facilities
---@param facilityTypeInfoBooth any
function WorldAPIs_facilities.GetFacilityTypeToString(self, facilityTypeInfoBooth) end

---@param self WorldAPIs_facilities
---@return number nMostPopularFacility
---@return number nMostPopularFacilityGuests
function WorldAPIs_facilities.GetMostPopularFacilityYesterday(self) end

---@param self WorldAPIs_facilities
---@return number nMostProfitableFacility
---@return number nMostProfitableFacilityProfit
function WorldAPIs_facilities.GetMostProfitableFacilityYesterday(self) end

---@param self WorldAPIs_facilities
---@param entityID any
---@return table tShopInventory
function WorldAPIs_facilities.GetShopInventory(self, entityID) end

---@param self WorldAPIs_facilities
---@param entityID any
---@return number nShopType
function WorldAPIs_facilities.GetShopType(self, entityID) end

---@param self WorldAPIs_facilities
---@param entityID any
---@return number nCapacity
function WorldAPIs_facilities.GetStaffBuildingCapacity(self, entityID) end

---@param self WorldAPIs_facilities
---@param entityID any
---@return any shopEntityID
function WorldAPIs_facilities.GetVendorShop(self, entityID) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@return table tStaffs
function WorldAPIs_facilities.GetWorkshopResearchingStaffMembers(self, nEntityID) end

---@param self WorldAPIs_facilities
---@param entityID any
---@return boolean _
function WorldAPIs_facilities.HasFacilityCleanliness(self, entityID) end

---@param self WorldAPIs_facilities
---@param nEntityID number
function WorldAPIs_facilities.HasOpened(self, nEntityID) end

---@param self WorldAPIs_facilities
---@return boolean bHasPriorityPassFacilities
function WorldAPIs_facilities.HasPriorityPassFacilities(self) end

---@param self WorldAPIs_facilities
---@param i any
function WorldAPIs_facilities.HasVendor(self, i) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@return boolean bChangeYaw
function WorldAPIs_facilities.IsFacility(self, nEntityID) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@return boolean bConnectedToPath
function WorldAPIs_facilities.IsFacilityConnectedToPath(self, nEntityID) end

---@param self WorldAPIs_facilities
---@param entityID any
---@return boolean bIsInfoBooth
function WorldAPIs_facilities.IsInformationBooth(self, entityID) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@return boolean bIsOpen
function WorldAPIs_facilities.IsOpen(self, nEntityID) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@return boolean bIsShop
function WorldAPIs_facilities.IsShop(self, nEntityID) end

---@param self WorldAPIs_facilities
---@param i any
function WorldAPIs_facilities.IsShopNotifiedAsUnmanned(self, i) end

---@param self WorldAPIs_facilities
---@param nID number
---@return boolean _
function WorldAPIs_facilities.IsStaffBuilding(self, nID) end

---@param self WorldAPIs_facilities
function WorldAPIs_facilities.ParkReset(self) end

---@param self WorldAPIs_facilities
---@param entityID any
---@param Arg3 any
function WorldAPIs_facilities.SetAllShopItemPrice(self, entityID, Arg3) end

---@param self WorldAPIs_facilities
---@param moveObject any
---@param nCapacity number
function WorldAPIs_facilities.SetCapcityOnStaffBuildingMoveObject(self, moveObject, nCapacity) end

---@param self WorldAPIs_facilities
---@param entityID any
---@param Arg3 any
function WorldAPIs_facilities.SetFacilityCleanliness(self, entityID, Arg3) end

---@param self WorldAPIs_facilities
---@param Arg2 any
function WorldAPIs_facilities.SetFacilityCleanlinessDisabled(self, Arg2) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@param bOpen boolean
function WorldAPIs_facilities.SetOpen(self, nEntityID, bOpen) end

---@param self WorldAPIs_facilities
---@param entityID any
---@param bValue boolean
function WorldAPIs_facilities.SetPriorityPassSold(self, entityID, bValue) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@param bValue boolean
function WorldAPIs_facilities.SetShopInventorySync(self, nEntityID, bValue) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@param Arg3 any
function WorldAPIs_facilities.SetShopIsFairPrice(self, nEntityID, Arg3) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@param nIndex number
---@param sValue string
function WorldAPIs_facilities.SetShopItemCustomName(self, nEntityID, nIndex, sValue) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@param nItemIndex number
---@param nExtraIndex number
---@param bEnabled boolean
function WorldAPIs_facilities.SetShopItemExtraUsed(self, nEntityID, nItemIndex, nExtraIndex, bEnabled) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@param nIndex number
---@param nPrice number
function WorldAPIs_facilities.SetShopItemPrice(self, nEntityID, nIndex, nPrice) end

---@param self WorldAPIs_facilities
---@param nEntityID number
---@param nIndex number
---@param bEnabled boolean
function WorldAPIs_facilities.SetShopItemSold(self, nEntityID, nIndex, bEnabled) end

---@param self WorldAPIs_facilities
---@param i any
function WorldAPIs_facilities.SetShopNotifiedAsUnmanned(self, i) end

---@param self WorldAPIs_facilities
---@param Arg2 any
function WorldAPIs_facilities.SetToiletCleanlinessDisabled(self, Arg2) end

---@param self WorldAPIs_facilities
---@param entityID any
---@param nClawMachinePrizeIndex number
---@param Arg4 any
function WorldAPIs_facilities.SetWeightedShopItemProbabilityWeight(self, entityID, nClawMachinePrizeIndex, Arg4) end

---@param self WorldAPIs_facilities
---@param nEntityID number
function WorldAPIs_facilities.UpdateFacilityConnectedToPath(self, nEntityID) end


---@param self WorldAPIs_flatrides
---@param operationHierarchy any
---@param moveObject any
---@param cFlatRideInfo table
---@param terrainActionTypePathJoinPartFlatten any
---@param Arg6 any
function WorldAPIs_flatrides.AddFlatRide(self, operationHierarchy, moveObject, cFlatRideInfo, terrainActionTypePathJoinPartFlatten, Arg6) end

---@param self WorldAPIs_flatrides
---@param multiSelection any
---@param nRideID number
function WorldAPIs_flatrides.AddRideAndRecursiveSequenceItemsToMultiSelection(self, multiSelection, nRideID) end

---@param self WorldAPIs_flatrides
---@param rideID any
---@param nSequenceID number
function WorldAPIs_flatrides.CanDeleteRideSequenceOptionElement(self, rideID, nSequenceID) end

---@param self WorldAPIs_flatrides
---@param nRideEntityID number
---@return number nEvents
function WorldAPIs_flatrides.CountRideSequenceEvents(self, nRideEntityID) end

---@param self WorldAPIs_flatrides
---@param sRideName string
---@return table cFlatRideInfo
function WorldAPIs_flatrides.CreateFlatRideEditToken(self, sRideName) end

---@param self WorldAPIs_flatrides
---@param operationHierarchy any
---@param cEditToken table
---@param nSequenceID number
function WorldAPIs_flatrides.DeleteRideSequenceOptionElement(self, operationHierarchy, cEditToken, nSequenceID) end

---@param self WorldAPIs_flatrides
---@param rideID any
---@return table tAllVariants
function WorldAPIs_flatrides.GetAllRideVariants(self, rideID) end

---@param self WorldAPIs_flatrides
---@param rideID any
---@return number nVariation
function WorldAPIs_flatrides.GetCurrentRideVariant(self, rideID) end

---@param self WorldAPIs_flatrides
---@param nI number
---@return string sRideName
function WorldAPIs_flatrides.GetFlatRideDatabaseName(self, nI) end

---@param self WorldAPIs_flatrides
---@param nRideID number
---@return table cEditToken
function WorldAPIs_flatrides.GetFlatRideEditToken(self, nRideID) end

---@param self WorldAPIs_flatrides
---@param rideID any
---@return table tSpatialEntities
function WorldAPIs_flatrides.GetFlatRideSpatialEntities(self, rideID) end

---@param self WorldAPIs_flatrides
---@param cEditToken table
---@return table tRideFlexiColours
function WorldAPIs_flatrides.GetMaterialCustomisationData(self, cEditToken) end

---@param self WorldAPIs_flatrides
---@param cFlatRideInfo table
---@return any rideID
function WorldAPIs_flatrides.GetRideIDForToken(self, cFlatRideInfo) end

---@param self WorldAPIs_flatrides
---@param cEditToken table
---@return any storedAudioEventName
function WorldAPIs_flatrides.GetRideMusic(self, cEditToken) end

---@param self WorldAPIs_flatrides
---@param ride any
---@return any operations
function WorldAPIs_flatrides.GetRideOperations(self, ride) end

---@param self WorldAPIs_flatrides
---@param ride any
---@return any sequence
function WorldAPIs_flatrides.GetRideSequence(self, ride) end

---@param self WorldAPIs_flatrides
---@param rideID any
---@return table tRideSequence
function WorldAPIs_flatrides.GetRideSequenceIDs(self, rideID) end

---@param self WorldAPIs_flatrides
---@param nTargetEntityID number
function WorldAPIs_flatrides.GetRideTriggerSequence(self, nTargetEntityID) end

---@param self WorldAPIs_flatrides
---@param cRideEditToken table
---@param sSemanticTag string
---@return boolean _
function WorldAPIs_flatrides.GetSemanticTagHasPattern(self, cRideEditToken, sSemanticTag) end

---@param self WorldAPIs_flatrides
---@param rideID any
---@param bIsBuildUpwards boolean
function WorldAPIs_flatrides.GetVariantConstructionCost(self, rideID, bIsBuildUpwards) end

---@param self WorldAPIs_flatrides
---@param rideID any
---@return boolean _
function WorldAPIs_flatrides.HasRideVariants(self, rideID) end

---@param self WorldAPIs_flatrides
---@param rideID any
function WorldAPIs_flatrides.HidePreviewVariants(self, rideID) end

---@param self WorldAPIs_flatrides
---@param nRideEntityID number
---@return boolean _
function WorldAPIs_flatrides.IsFlatRide(self, nRideEntityID) end

---@param self WorldAPIs_flatrides
function WorldAPIs_flatrides.IsLoadComplete(self) end

---@param self WorldAPIs_flatrides
---@param nEntityID number
---@return boolean _
function WorldAPIs_flatrides.IsTriggerShow(self, nEntityID) end

---@param self WorldAPIs_flatrides
---@param operationHierarchy any
---@param compositeObject any
---@param cEditToken table
---@param terrainActionTypePathJoinPartFlatten any
---@param bArg6 boolean
function WorldAPIs_flatrides.MoveFlatRide(self, operationHierarchy, compositeObject, cEditToken, terrainActionTypePathJoinPartFlatten, bArg6) end

---@param self WorldAPIs_flatrides
function WorldAPIs_flatrides.ParkReset(self) end

---@param self WorldAPIs_flatrides
---@param operationHierarchy any
---@param cEditToken table
function WorldAPIs_flatrides.ResetRideSequence(self, operationHierarchy, cEditToken) end

---@param self WorldAPIs_flatrides
---@param operationHierarchy any
---@param cEditToken table
---@param sSemanticTag string
---@param bIsPattern boolean
---@param vColour vector
function WorldAPIs_flatrides.SetFlexiColourForSemanticTag(self, operationHierarchy, cEditToken, sSemanticTag, bIsPattern, vColour) end

---@param self WorldAPIs_flatrides
---@param operationHierarchy any
---@param cEditToken table
---@param sSemanticTag string
---@param sTexture string
function WorldAPIs_flatrides.SetPatternForSemanticTag(self, operationHierarchy, cEditToken, sSemanticTag, sTexture) end

---@param self WorldAPIs_flatrides
---@param editToken any
---@param arg any
function WorldAPIs_flatrides.SetRideDesignerOverride(self, editToken, arg) end

---@param self WorldAPIs_flatrides
---@param cEditToken table
---@param sAudioEvent string
function WorldAPIs_flatrides.SetRideMusic(self, cEditToken, sAudioEvent) end

---@param self WorldAPIs_flatrides
---@param cEditToken table
---@param nValue number
function WorldAPIs_flatrides.SetRideMusicVolume(self, cEditToken, nValue) end

---@param self WorldAPIs_flatrides
---@param cEditToken table
---@param sText string
function WorldAPIs_flatrides.SetRideName(self, cEditToken, sText) end

---@param self WorldAPIs_flatrides
---@param ride any
---@param cArgs table
function WorldAPIs_flatrides.SetRideSequence(self, ride, cArgs) end

---@param self WorldAPIs_flatrides
---@param operationHierarchy any
---@param cEditToken table
---@param nSequenceID number
---@param nElement number
function WorldAPIs_flatrides.SetRideSequenceOptionElement(self, operationHierarchy, cEditToken, nSequenceID, nElement) end

---@param self WorldAPIs_flatrides
---@param clh any
---@param cEditToken table
---@param cSequence table
function WorldAPIs_flatrides.SetRideTriggerSequence(self, clh, cEditToken, cSequence) end

---@param self WorldAPIs_flatrides
---@param operationHierarchy any
---@param cEditToken table
---@param nNewVariant number
function WorldAPIs_flatrides.SetRideVariant(self, operationHierarchy, cEditToken, nNewVariant) end

---@param self WorldAPIs_flatrides
---@param rideID any
function WorldAPIs_flatrides.SetupPreviewVariants(self, rideID) end

---@param self WorldAPIs_flatrides
---@param nRideID number
function WorldAPIs_flatrides.StopRideTriggerSequences(self, nRideID) end


---@param self WorldAPIs_flumes
---@param Arg2 any
---@param cRideInfo table
---@param cEntranceExitInfo table
---@return table cPreviewUpdateToken
function WorldAPIs_flumes.AddEntrance(self, Arg2, cRideInfo, cEntranceExitInfo) end

---@param self WorldAPIs_flumes
---@param operationHierarchy any
---@param moveObject any
---@param cSectionInfo table
---@param terrainActionTypePathJoinPartFlatten any
---@param Arg6 any
function WorldAPIs_flumes.AddFlumePlatformSection(self, operationHierarchy, moveObject, cSectionInfo, terrainActionTypePathJoinPartFlatten, Arg6) end

---@param self WorldAPIs_flumes
---@param entity any
---@param nDetachedFromPlatform number?
function WorldAPIs_flumes.AttachFlumeToPlatform(self, entity, nDetachedFromPlatform) end

---@param self WorldAPIs_flumes
---@param cMoveObject table
---@param cursorTrans any
---@return any flumeSnapTrans
function WorldAPIs_flumes.CalcBestSnappedMoveObjectTransform(self, cMoveObject, cursorTrans) end

---@param self WorldAPIs_flumes
---@return table cSectionInfo
function WorldAPIs_flumes.CreateFlumePlatformSectionEditToken(self) end

---@param self WorldAPIs_flumes
---@param rideID any
function WorldAPIs_flumes.DetachFlumeFromPlatform(self, rideID) end

---@param self WorldAPIs_flumes
---@param cRideInfo table
---@param nAccessType number
---@return table cEntranceExitInfo
function WorldAPIs_flumes.GetEntranceEditToken(self, cRideInfo, nAccessType) end

---@param self WorldAPIs_flumes
---@param nFlumePlatformEntityID number
---@param rideGateTypeEntrance any
---@return number nGateEntityID
function WorldAPIs_flumes.GetEntranceGateEntity(self, nFlumePlatformEntityID, rideGateTypeEntrance) end

---@param self WorldAPIs_flumes
---@param nPlatformID number
---@return table cEditToken
function WorldAPIs_flumes.GetFlumePlatformEditToken(self, nPlatformID) end

---@param self WorldAPIs_flumes
---@return table tPlatformEntities
function WorldAPIs_flumes.GetFlumePlatformEntities(self) end

---@param self WorldAPIs_flumes
---@param nRideID number
function WorldAPIs_flumes.GetFlumePlatformName(self, nRideID) end

---@param self WorldAPIs_flumes
---@param nHitFlumePlatformSectionID number
---@return table oTargetGrid
function WorldAPIs_flumes.GetFlumePlatformOrSectionLocalGrid(self, nHitFlumePlatformSectionID) end

---@param self WorldAPIs_flumes
---@param cPlatformInfo table
---@return table tPlatformSections
function WorldAPIs_flumes.GetFlumePlatformSectionEntities(self, cPlatformInfo) end

---@param self WorldAPIs_flumes
---@param nPlatformID number
---@return table tFlumes
function WorldAPIs_flumes.GetFlumesForPlatform(self, nPlatformID) end

---@param self WorldAPIs_flumes
---@param nEntityID number
---@return number nPlatformID
function WorldAPIs_flumes.GetMainFlumePlatformForSection(self, nEntityID) end

---@param self WorldAPIs_flumes
function WorldAPIs_flumes.GetNumFlumePlatformsInPark(self) end

---@param self WorldAPIs_flumes
---@param cRideInfo table
---@return number nPathJoinPartGroupID
function WorldAPIs_flumes.GetPathJoinPartGroupIDForToken(self, cRideInfo) end

---@param self WorldAPIs_flumes
---@param nRideID number
---@return number nFlumePlatform
function WorldAPIs_flumes.GetPlatformForAttachedRide(self, nRideID) end

---@param self WorldAPIs_flumes
---@param nStationID number
---@return number nFlumePlatformEntityID
function WorldAPIs_flumes.GetPlatformForAttachedStation(self, nStationID) end

---@param self WorldAPIs_flumes
---@param cPlatformInfo table
function WorldAPIs_flumes.GetPlatformIDForToken(self, cPlatformInfo) end

---@param self WorldAPIs_flumes
---@param cEditToken table
---@return table tFlumePlatformColour
function WorldAPIs_flumes.GetPlatformMaterialFlexicolour(self, cEditToken) end

---@param self WorldAPIs_flumes
---@param sPlatformName string
---@return number nCost
function WorldAPIs_flumes.GetPlatformPurchasePrice(self, sPlatformName) end

---@param self WorldAPIs_flumes
---@param cSectionInfo table
function WorldAPIs_flumes.GetPlatformSectionIDForToken(self, cSectionInfo) end

---@param self WorldAPIs_flumes
---@param nPlatformID number
---@param rideGateTypeEntrance any
---@return number nQueueCrowdGoalEntity
function WorldAPIs_flumes.GetQueueCrowdGoal(self, nPlatformID, rideGateTypeEntrance) end

---@param self WorldAPIs_flumes
---@param nRideID number
---@return number nCost
function WorldAPIs_flumes.GetTotalPlatformPriceWithFlumes(self, nRideID) end

---@param self WorldAPIs_flumes
---@param nPlatformID number
---@param rideGateTypeEntrance any
---@return boolean bHasConnectedQueue
function WorldAPIs_flumes.HasConnectedQueue(self, nPlatformID, rideGateTypeEntrance) end

---@param self WorldAPIs_flumes
---@param nPlatformID number
---@param nRideGateTypeEntrance number
---@return boolean bHasEntranceGate
function WorldAPIs_flumes.HasEntranceGate(self, nPlatformID, nRideGateTypeEntrance) end

---@param self WorldAPIs_flumes
---@param nPlatformID number
function WorldAPIs_flumes.HasPlatformEverOpened(self, nPlatformID) end

---@param self WorldAPIs_flumes
---@param nRideStationOrFlumePlatformEntityID number
---@return boolean bIsFlumePlatform
function WorldAPIs_flumes.IsFlumePlatform(self, nRideStationOrFlumePlatformEntityID) end

---@param self WorldAPIs_flumes
---@param nEntityID number
---@return boolean _
function WorldAPIs_flumes.IsFlumePlatformOrSection(self, nEntityID) end

---@param self WorldAPIs_flumes
---@param nPlatformID number
---@return boolean bEnableEditOptions
function WorldAPIs_flumes.IsPlatformEditable(self, nPlatformID) end

---@param self WorldAPIs_flumes
---@param Arg2 any
---@param cRideInfo table
---@param cEntranceExitInfo table
---@return table cPreviewUpdateToken
function WorldAPIs_flumes.MoveEntrance(self, Arg2, cRideInfo, cEntranceExitInfo) end

---@param self WorldAPIs_flumes
---@param operationHierarchy any
---@param compositeObject any
---@param cPlatformInfo table
---@param terrainActionTypePathJoinPartFlatten any
---@param bArg6 boolean
---@param cDeletedRides table?
function WorldAPIs_flumes.MoveFlumePlatform(self, operationHierarchy, compositeObject, cPlatformInfo, terrainActionTypePathJoinPartFlatten, bArg6, cDeletedRides) end

---@param self WorldAPIs_flumes
---@param Arg2 any
---@param cRideInfo table
---@param cEntranceExitInfo table
function WorldAPIs_flumes.RemoveEntrance(self, Arg2, cRideInfo, cEntranceExitInfo) end

---@param self WorldAPIs_flumes
---@param bArg2 boolean
function WorldAPIs_flumes.SetAllPlatformsEditable(self, bArg2) end

---@param self WorldAPIs_flumes
---@param nPlatformID number
---@param sName string
function WorldAPIs_flumes.SetFlumePlatformName(self, nPlatformID, sName) end

---@param self WorldAPIs_flumes
---@param nPlatformEntityID number
---@param bIsEditable boolean
function WorldAPIs_flumes.SetPlatformEditable(self, nPlatformEntityID, bIsEditable) end

---@param self WorldAPIs_flumes
---@param operationHierarchy any
---@param cEditToken table
---@param sSemanticTag string
---@param vColour vector
function WorldAPIs_flumes.SetPlatformMaterialFlexicolourForSemanticTag(self, operationHierarchy, cEditToken, sSemanticTag, vColour) end


---@param self WorldAPIs_gameaudio
---@param createLakeChangeList any
---@param vLakePlacementSnappedCoord vector
---@param bArg4 boolean
---@param bArg5 boolean
---@return any createLakeChangeList
function WorldAPIs_gameaudio.AddLakeEditAudioOperation(self, createLakeChangeList, vLakePlacementSnappedCoord, bArg4, bArg5) end

---@param self WorldAPIs_gameaudio
---@param Arg2 any
---@param vPlacePoint vector
---@param splineActionRemoveSelect any
---@param typeOfEvent any
---@param splineConstructionTypeHabitatWall any
---@param Arg7 any
function WorldAPIs_gameaudio.AddSplineAudioToChangeList(self, Arg2, vPlacePoint, splineActionRemoveSelect, typeOfEvent, splineConstructionTypeHabitatWall, Arg7) end

---@param self WorldAPIs_gameaudio
---@param sAudioTrackName string
---@param bIsFavourite boolean
---@param nEntityID number
function WorldAPIs_gameaudio.AmbienceFavouriteChange(self, sAudioTrackName, bIsFavourite, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param entityID any
function WorldAPIs_gameaudio.AvatarVoiceChanged(self, entityID) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@return boolean _
function WorldAPIs_gameaudio.CanCustomiseAmbience(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param nRideID number
---@return boolean _
function WorldAPIs_gameaudio.CanCustomiseMusic(self, nRideID) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@return boolean _
function WorldAPIs_gameaudio.CanCustomiseTriggeredAudio(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param nDelta number
function WorldAPIs_gameaudio.CashSpentPopup(self, nDelta) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.CashSpentPopupLoopBegin(self) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.CashSpentPopupLoopEnd(self) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.CommitOptionChanges(self) end

---@param self WorldAPIs_gameaudio
---@param operationHierarchy any
---@param vPos vector
---@param cMaterialComposition table
---@param bDeletion boolean
---@return any splinePlacementOperation
function WorldAPIs_gameaudio.CreatePlacementOperation(self, operationHierarchy, vPos, cMaterialComposition, bDeletion) end

---@param self WorldAPIs_gameaudio
---@param operationsHierarchy any
---@param vPos vector
---@param nEditType number
---@param nAudioMaterial number
---@param nSize number
function WorldAPIs_gameaudio.CreateTrackEditOperation(self, operationsHierarchy, vPos, nEditType, nAudioMaterial, nSize) end

---@param self WorldAPIs_gameaudio
---@param operationHierarchy any
---@param vPos vector
function WorldAPIs_gameaudio.CreateVolumeRoundingOperation(self, operationHierarchy, vPos) end

---@param self WorldAPIs_gameaudio
---@param changeList any
---@param brushLocation any
---@param halfSize any
---@param nIntensity number
---@param bFirstOfCheckpointedChanges boolean
function WorldAPIs_gameaudio.FlattenLandscapeAudio(self, changeList, brushLocation, halfSize, nIntensity, bFirstOfCheckpointedChanges) end

---@param self WorldAPIs_gameaudio
---@return any audioSettings
function WorldAPIs_gameaudio.GetCurrentOptions(self) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@return any currentPitch
function WorldAPIs_gameaudio.GetCurrentPitch(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@return number nModulationType
function WorldAPIs_gameaudio.GetCurrentPlacementModulationType(self) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@return any currentVolume
function WorldAPIs_gameaudio.GetCurrentVolume(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param nRideID number
---@return string sCurrentMusicName
function WorldAPIs_gameaudio.GetCustomMusicOverride(self, nRideID) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@return any customMusicType
function WorldAPIs_gameaudio.GetCustomMusicType(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param sTrackName string
---@param sArg3 string
---@return string sAudioTrackName
function WorldAPIs_gameaudio.GetCustomTrackNameFromUIName(self, sTrackName, sArg3) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
function WorldAPIs_gameaudio.GetCustomTrigger(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param sEvent string
function WorldAPIs_gameaudio.GetDisplayNameForUserAudioEvent(self, sEvent) end

---@param self WorldAPIs_gameaudio
---@param nTrackedRideEntityID number
---@return number nMusicVolume
function WorldAPIs_gameaudio.GetMusicVolume(self, nTrackedRideEntityID) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
function WorldAPIs_gameaudio.GetPlaceableAmbience(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@return boolean bAffectsSoundtrack
function WorldAPIs_gameaudio.GetPlacementAffectsSoundtrackFromEntity(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@return string sCustomEvent
function WorldAPIs_gameaudio.GetPlacementCustomEventFromEntity(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@return number nPlacementFlags
function WorldAPIs_gameaudio.GetPlacementFlagsFromEntity(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@return number nAudioMaterial
function WorldAPIs_gameaudio.GetPlacementMaterialFromEntity(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@return number nAudioSize
function WorldAPIs_gameaudio.GetPlacementSizeFromEntity(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param sDialogueCharacterNumericIDKey string
---@param sDialogueCharacterStringIDKey string
---@return table tDialogueCharacters
function WorldAPIs_gameaudio.GetScenarioDialogueCharacters(self, sDialogueCharacterNumericIDKey, sDialogueCharacterStringIDKey) end

---@param self WorldAPIs_gameaudio
---@return table tDialogueLines
function WorldAPIs_gameaudio.GetScenarioDialogueLines(self) end

---@param self WorldAPIs_gameaudio
---@param nRideID number
---@return string sName
function WorldAPIs_gameaudio.GetShootingSoundForRide(self, nRideID) end

---@param self WorldAPIs_gameaudio
---@param nPartID number
---@return table tEvent
function WorldAPIs_gameaudio.GetSpeakerEvent(self, nPartID) end

---@param self WorldAPIs_gameaudio
---@param nPartID number
---@return any currentPitch
function WorldAPIs_gameaudio.GetSpeakerPitch(self, nPartID) end

---@param self WorldAPIs_gameaudio
---@param nPartID number
function WorldAPIs_gameaudio.GetSpeakerRepeat(self, nPartID) end

---@param self WorldAPIs_gameaudio
---@param nPartID number
---@return number nTypeEnum
function WorldAPIs_gameaudio.GetSpeakerType(self, nPartID) end

---@param self WorldAPIs_gameaudio
---@param nPartID number
---@return any currentVolume
function WorldAPIs_gameaudio.GetSpeakerVolume(self, nPartID) end

---@param self WorldAPIs_gameaudio
---@param bArg2 boolean
function WorldAPIs_gameaudio.InShootingRideCamera(self, bArg2) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.InvalidTerrainEditAudio(self) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@return boolean _
function WorldAPIs_gameaudio.IsPlacableMusicSpeaker(self, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param nAudioMaterial number
---@return boolean _
function WorldAPIs_gameaudio.IsPlacementMaterialPool(self, nAudioMaterial) end

---@param self WorldAPIs_gameaudio
---@param sAudioEvent string
function WorldAPIs_gameaudio.IsUserAudio(self, sAudioEvent) end

---@param self WorldAPIs_gameaudio
---@return table tFavouriteAmbience
function WorldAPIs_gameaudio.ListFavouriteAmbience(self) end

---@param self WorldAPIs_gameaudio
---@return table tFavouriteMusic
function WorldAPIs_gameaudio.ListFavouriteMusic(self) end

---@param self WorldAPIs_gameaudio
---@return table tFavouriteTriggers
function WorldAPIs_gameaudio.ListFavouriteSFXTriggers(self) end

---@param self WorldAPIs_gameaudio
---@return table tFavouriteGun
function WorldAPIs_gameaudio.ListFavouriteUserGuns(self) end

---@param self WorldAPIs_gameaudio
---@param nEntity number
---@return table tSequencers
function WorldAPIs_gameaudio.ListSequencersForSpeaker(self, nEntity) end

---@param self WorldAPIs_gameaudio
---@return table tAllCustomAudio
function WorldAPIs_gameaudio.ListUserAudioFiles(self) end

---@param self WorldAPIs_gameaudio
---@param sEventName string
---@param bIsMusic boolean
---@param bIsUserAudio boolean
function WorldAPIs_gameaudio.ListenToSpeakerEvent(self, sEventName, bIsMusic, bIsUserAudio) end

---@param self WorldAPIs_gameaudio
---@param sAudioTrackName string
---@param bIsFavourite boolean
---@param bArg4 boolean
---@param nEntityID number
function WorldAPIs_gameaudio.MusicFavouriteChange(self, sAudioTrackName, bIsFavourite, bArg4, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param gamepadVibrate any
function WorldAPIs_gameaudio.MuteRumble(self, gamepadVibrate) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.NotifyInitialGuestsLoadedIn(self) end

---@param self WorldAPIs_gameaudio
---@param guestID any
function WorldAPIs_gameaudio.OnGuestSelected(self, guestID) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.OnTerrainEditModeEntered(self) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.OnTerrainEditModeExited(self) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.OnTerrainEditStopped(self) end

---@param self WorldAPIs_gameaudio
---@param changeList any
---@param vHitPoint vector
---@param halfSize any
---@param nIntensity number
---@param bFirstOfCheckpointedChanges boolean
function WorldAPIs_gameaudio.PaintLandscapeAudio(self, changeList, vHitPoint, halfSize, nIntensity, bFirstOfCheckpointedChanges) end

---@param self WorldAPIs_gameaudio
---@param vPos vector
---@param cAudioMaterialComposition table
function WorldAPIs_gameaudio.PerformPlacement(self, vPos, cAudioMaterialComposition) end

---@param self WorldAPIs_gameaudio
---@param vLastDrawingPos vector
---@param nAudioMaterial number
function WorldAPIs_gameaudio.PlacementAuxiliaryPlace(self, vLastDrawingPos, nAudioMaterial) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.PlacementModulationLimitHit(self) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.PlacementModulationSnapOff(self) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.PlacementModulationSnapTo(self) end

---@param self WorldAPIs_gameaudio
---@param nStepMagnitude number
function WorldAPIs_gameaudio.PlacementModulationStep(self, nStepMagnitude) end

---@param self WorldAPIs_gameaudio
---@param vPos vector
---@param bArg3 boolean
function WorldAPIs_gameaudio.PlacementPreviewHighlight(self, vPos, bArg3) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.PostPlacementInvalidEvent(self) end

---@param self WorldAPIs_gameaudio
---@param changeList any
---@param brushLocation any
---@param nSize number
---@param nIntensity number
---@param bFirstOfCheckpointedChanges boolean
function WorldAPIs_gameaudio.PullLandscapeAudio(self, changeList, brushLocation, nSize, nIntensity, bFirstOfCheckpointedChanges) end

---@param self WorldAPIs_gameaudio
---@param changeList any
---@param brushLocation any
---@param nSize number
---@param nIntensity number
---@param bFirstOfCheckpointedChanges boolean
function WorldAPIs_gameaudio.PushLandscapeAudio(self, changeList, brushLocation, nSize, nIntensity, bFirstOfCheckpointedChanges) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.RefreshUserAudioFiles(self) end

---@param self WorldAPIs_gameaudio
---@return any audioCinematicRequest
function WorldAPIs_gameaudio.RequestCinematicGlobalState(self) end

---@param self WorldAPIs_gameaudio
---@param changeList any
---@param brushLocation any
---@param halfSize any
---@param nIntensity number
---@param bFirstOfCheckpointedChanges boolean
function WorldAPIs_gameaudio.RoughenLandscapeAudio(self, changeList, brushLocation, halfSize, nIntensity, bFirstOfCheckpointedChanges) end

---@param self WorldAPIs_gameaudio
---@param sArg2 string
---@param vAudioWaterPlacementLocation vector
function WorldAPIs_gameaudio.SendPlacementEvent(self, sArg2, vAudioWaterPlacementLocation) end

---@param self WorldAPIs_gameaudio
---@param entityID any
function WorldAPIs_gameaudio.SendStaffInfoEmote(self, entityID) end

---@param self WorldAPIs_gameaudio
---@param cAudioSettings table
function WorldAPIs_gameaudio.SetAudioOptions(self, cAudioSettings) end

---@param self WorldAPIs_gameaudio
---@param entityID any
---@param nPendingVoiceChange number
function WorldAPIs_gameaudio.SetAvatarVoiceIndex(self, entityID, nPendingVoiceChange) end

---@param self WorldAPIs_gameaudio
---@param cAvailableDiegeticMusic table
function WorldAPIs_gameaudio.SetCustomMusic(self, cAvailableDiegeticMusic) end

---@param self WorldAPIs_gameaudio
---@param nRideID number
---@param sStoredAudioEventName string
function WorldAPIs_gameaudio.SetCustomMusicOverride(self, nRideID, sStoredAudioEventName) end

---@param self WorldAPIs_gameaudio
---@param guestEntityID any
function WorldAPIs_gameaudio.SetFirstPersonCameraGuest(self, guestEntityID) end

---@param self WorldAPIs_gameaudio
---@param bOpen boolean
function WorldAPIs_gameaudio.SetInOptionsMenu(self, bOpen) end

---@param self WorldAPIs_gameaudio
---@param bArg2 boolean
function WorldAPIs_gameaudio.SetInParkManagementMenu(self, bArg2) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@param nValue number
function WorldAPIs_gameaudio.SetMusicVolume(self, nEntityID, nValue) end

---@param self WorldAPIs_gameaudio
---@param cEventNames table
function WorldAPIs_gameaudio.SetPlaceableAmbienceList(self, cEventNames) end

---@param self WorldAPIs_gameaudio
---@param cAllEventsDLC table
function WorldAPIs_gameaudio.SetPlaceableAmbienceListExcludingUnownedDLC(self, cAllEventsDLC) end

---@param self WorldAPIs_gameaudio
---@param nSpeakerID number
---@param sTrackName string
function WorldAPIs_gameaudio.SetPlaceableAmbienceOverride(self, nSpeakerID, sTrackName) end

---@param self WorldAPIs_gameaudio
---@param cMaterialComposition table
function WorldAPIs_gameaudio.SetPlacementModulationMaterialComposition(self, cMaterialComposition) end

---@param self WorldAPIs_gameaudio
---@param vPos vector
function WorldAPIs_gameaudio.SetPlacementModulationPosition(self, vPos) end

---@param self WorldAPIs_gameaudio
---@param nMovementSpeed number
function WorldAPIs_gameaudio.SetPlacementModulationSpeed(self, nMovementSpeed) end

---@param self WorldAPIs_gameaudio
---@param vPos vector
function WorldAPIs_gameaudio.SetSceneryBrushPosition(self, vPos) end

---@param self WorldAPIs_gameaudio
---@param nAudioParkBrushMode number
---@param nMovementSpeed number
function WorldAPIs_gameaudio.SetSceneryBrushSpeed(self, nAudioParkBrushMode, nMovementSpeed) end

---@param self WorldAPIs_gameaudio
---@param nAudioParkBrushMode number
---@param nNormalisedSize number
function WorldAPIs_gameaudio.SetSceneryBrushWidth(self, nAudioParkBrushMode, nNormalisedSize) end

---@param self WorldAPIs_gameaudio
---@param rideID any
---@param sMusicTitle string
function WorldAPIs_gameaudio.SetShootingSoundForRide(self, rideID, sMusicTitle) end

---@param self WorldAPIs_gameaudio
---@param entityID any
---@param bEnable boolean
function WorldAPIs_gameaudio.SetShopRadioEnabled(self, entityID, bEnable) end

---@param self WorldAPIs_gameaudio
---@param partID any
---@param Arg3 any
---@param sMusicTitle string
---@param bIsUserAudio boolean
function WorldAPIs_gameaudio.SetSpeakerEvent(self, partID, Arg3, sMusicTitle, bIsUserAudio) end

---@param self WorldAPIs_gameaudio
---@param partID any
---@param nValue number
function WorldAPIs_gameaudio.SetSpeakerPitch(self, partID, nValue) end

---@param self WorldAPIs_gameaudio
---@param partID any
---@param nValue number
function WorldAPIs_gameaudio.SetSpeakerRepeat(self, partID, nValue) end

---@param self WorldAPIs_gameaudio
---@param partID any
---@param nGameplaySpeakerType number
function WorldAPIs_gameaudio.SetSpeakerType(self, partID, nGameplaySpeakerType) end

---@param self WorldAPIs_gameaudio
---@param partID any
---@param nVolumeProp number
function WorldAPIs_gameaudio.SetSpeakerVolume(self, partID, nVolumeProp) end

---@param self WorldAPIs_gameaudio
---@param sArg2 string
---@param sArg3 string
function WorldAPIs_gameaudio.SetState(self, sArg2, sArg3) end

---@param self WorldAPIs_gameaudio
---@param nSpeakerID number
---@param sTrackName string
function WorldAPIs_gameaudio.SetTriggeredEventOnEntity(self, nSpeakerID, sTrackName) end

---@param self WorldAPIs_gameaudio
---@param nSpeakerID number
---@param nValue number
function WorldAPIs_gameaudio.SetTriggeredEventPitchOnEntity(self, nSpeakerID, nValue) end

---@param self WorldAPIs_gameaudio
---@param nSpeakerID number
---@param nValue number
function WorldAPIs_gameaudio.SetTriggeredEventVolumeOnEntity(self, nSpeakerID, nValue) end

---@param self WorldAPIs_gameaudio
---@param cEventNames table
function WorldAPIs_gameaudio.SetTriggeredEventsList(self, cEventNames) end

---@param self WorldAPIs_gameaudio
---@param changeList any
---@param brushLocation any
---@param halfSize any
---@param nIntensity number
---@param bFirstOfCheckpointedChanges boolean
function WorldAPIs_gameaudio.SmoothLandscapeAudio(self, changeList, brushLocation, halfSize, nIntensity, bFirstOfCheckpointedChanges) end

---@param self WorldAPIs_gameaudio
---@param splineActionInvalid any
---@param vPlacePoint vector
---@param splineConstructionTypeHabitatWall any
---@param Arg5 any
function WorldAPIs_gameaudio.SplineChangeEvent(self, splineActionInvalid, vPlacePoint, splineConstructionTypeHabitatWall, Arg5) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.StartInvalidModulation(self) end

---@param self WorldAPIs_gameaudio
---@param nPlacementModulationTypeFreeMovement number
---@param vPos vector
---@param cMaterialComposition table
function WorldAPIs_gameaudio.StartPlacementModulation(self, nPlacementModulationTypeFreeMovement, vPos, cMaterialComposition) end

---@param self WorldAPIs_gameaudio
---@param nAudioParkBrushMode number
function WorldAPIs_gameaudio.StartSceneryBrush(self, nAudioParkBrushMode) end

---@param self WorldAPIs_gameaudio
---@param vPos vector
function WorldAPIs_gameaudio.StartSecurityCamMoveSounds(self, vPos) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.StopInvalidModulation(self) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.StopPlacementModulation(self) end

---@param self WorldAPIs_gameaudio
---@param nAudioParkBrushMode number
function WorldAPIs_gameaudio.StopSceneryBrush(self, nAudioParkBrushMode) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.StopSecurityCamMoveSounds(self) end

---@param self WorldAPIs_gameaudio
function WorldAPIs_gameaudio.StopSpeakerEvent(self) end

---@param self WorldAPIs_gameaudio
---@param nEntityID number
---@param musicTitle any?
function WorldAPIs_gameaudio.TestTriggerOnEntity(self, nEntityID, musicTitle) end

---@param self WorldAPIs_gameaudio
---@param sAudioTrackName string
---@param bIsFavourite boolean
---@param nEntityID number
function WorldAPIs_gameaudio.TriggerFavouriteChange(self, sAudioTrackName, bIsFavourite, nEntityID) end

---@param self WorldAPIs_gameaudio
---@param vLakePlacementSnappedCoord vector
---@param bArg3 boolean
function WorldAPIs_gameaudio.UpdateLakePlacementAudio(self, vLakePlacementSnappedCoord, bArg3) end

---@param self WorldAPIs_gameaudio
---@param vCameraYPR vector
---@param nZoomDelta number
---@param Arg4 any
function WorldAPIs_gameaudio.UpdateSecurityCamMoveSounds(self, vCameraYPR, nZoomDelta, Arg4) end


---@param self WorldAPIs_gameaudiodepreciated
---@param sTimeOfDay string
function WorldAPIs_gameaudiodepreciated.OverrideTimeOfDay(self, sTimeOfDay) end


---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param vBrushLocation vector
---@param halfSize any
---@param nIntensity number
---@param nHardness number
function WorldAPIs_gameterrain.AddAutoPaintVoxelColoursToChangeList(self, terrainEditOp, vBrushLocation, halfSize, nIntensity, nHardness) end

---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param brushLocation any
---@param halfSize any
---@param nIntensity number
---@param nHardness number
---@param vLockDirection vector
---@param Arg8 any
function WorldAPIs_gameterrain.AddLowerToPlaneToChangeList(self, terrainEditOp, brushLocation, halfSize, nIntensity, nHardness, vLockDirection, Arg8) end

---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param vBrushLocation vector
---@param halfSize any
---@param nIntensity number
---@param nHardness number
---@param layerIndex any
function WorldAPIs_gameterrain.AddPaintVoxelColoursToChangeList(self, terrainEditOp, vBrushLocation, halfSize, nIntensity, nHardness, layerIndex) end

---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param brushLocation any
---@param Arg4 any
---@param nIntensity number
---@param nHardness number
---@param cTargetColour table
function WorldAPIs_gameterrain.AddPaintVoxelColoursTowardsDataToChangeList(self, terrainEditOp, brushLocation, Arg4, nIntensity, nHardness, cTargetColour) end

---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param brushLocation any
---@param halfSize any
---@param nIntensity number
---@param nHardness number
---@param vLockDirection vector
---@param vLockOrigin vector
function WorldAPIs_gameterrain.AddPlaneFlattenToChangeList(self, terrainEditOp, brushLocation, halfSize, nIntensity, nHardness, vLockDirection, vLockOrigin) end

---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param brushLocation any
---@param nSize number
---@param nPushPullIntensity number
---@param nHardness number
function WorldAPIs_gameterrain.AddPushPullToChangeList(self, terrainEditOp, brushLocation, nSize, nPushPullIntensity, nHardness) end

---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param brushLocation any
---@param halfSize any
---@param nIntensity number
---@param nHardness number
---@param nRoughenTile number
function WorldAPIs_gameterrain.AddRoughenToChangeList(self, terrainEditOp, brushLocation, halfSize, nIntensity, nHardness, nRoughenTile) end

---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param brushLocation any
---@param halfSize any
function WorldAPIs_gameterrain.AddSkirtRevealFillToChangeList(self, terrainEditOp, brushLocation, halfSize) end

---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param brushLocation any
---@param halfSize any
---@param nIntensity number
function WorldAPIs_gameterrain.AddSkirtRevealToChangeList(self, terrainEditOp, brushLocation, halfSize, nIntensity) end

---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param brushLocation any
---@param halfSize any
---@param nIntensity number
---@param nHardness number
function WorldAPIs_gameterrain.AddSmoothToChangeList(self, terrainEditOp, brushLocation, halfSize, nIntensity, nHardness) end

---@param self WorldAPIs_gameterrain
---@param sVoxelTerrainEntityID string
function WorldAPIs_gameterrain.ClearPreviewRenderGeometry(self, sVoxelTerrainEntityID) end

---@param self WorldAPIs_gameterrain
---@param nArg2 number
---@return any terrainCursor
function WorldAPIs_gameterrain.CreateCursor(self, nArg2) end

---@param self WorldAPIs_gameterrain
---@param vLakePlacementSnappedCoord vector
---@param sArg3 string
---@return any createLakeChangeList
function WorldAPIs_gameterrain.CreateLake(self, vLakePlacementSnappedCoord, sArg3) end

---@param self WorldAPIs_gameterrain
---@param nArg2 number
---@return any lakesCursor
function WorldAPIs_gameterrain.CreateLakesCursor(self, nArg2) end

---@param self WorldAPIs_gameterrain
---@param vLakePlacementSnappedCoord vector
---@param partialDerivatives any
---@param sArg4 string
---@return any createLakeChangeList
function WorldAPIs_gameterrain.CreateWaterfall(self, vLakePlacementSnappedCoord, partialDerivatives, sArg4) end

---@param self WorldAPIs_gameterrain
---@param hoveredLakeEntityID any
---@param bIgnoreParkBoundaryChecks boolean
---@return any destroyLakeChangeList
function WorldAPIs_gameterrain.DestroyLake(self, hoveredLakeEntityID, bIgnoreParkBoundaryChecks) end

---@param self WorldAPIs_gameterrain
---@param voxelTerrainEntityID any
---@param vPlacementBasePos vector
---@return vector vGroundPos
function WorldAPIs_gameterrain.FindGroundInVerticalLocality(self, voxelTerrainEntityID, vPlacementBasePos) end

---@param self WorldAPIs_gameterrain
---@param vRayStart vector
---@param vRayDir vector
---@param nRayLength number
---@return any hoveredLakeEntityID
---@return number distanceToLake
function WorldAPIs_gameterrain.FindLake(self, vRayStart, vRayDir, nRayLength) end

---@param self WorldAPIs_gameterrain
---@param vGroundPos vector
---@param nArg3 number
---@return table tLakes
function WorldAPIs_gameterrain.FindLakesWithSphereCheck(self, vGroundPos, nArg3) end

---@param self WorldAPIs_gameterrain
---@param terrainEntityID any
function WorldAPIs_gameterrain.ForceUpdatePreview(self, terrainEntityID) end

---@param self WorldAPIs_gameterrain
---@param Arg2 any
---@return number nLakeSurfaceLevel
function WorldAPIs_gameterrain.GetLakeSurfaceLevel(self, Arg2) end

---@param self WorldAPIs_gameterrain
---@param lakesCursor any
---@return boolean _
function WorldAPIs_gameterrain.GetLakesCursorHasLinesVisible(self, lakesCursor) end

---@param self WorldAPIs_gameterrain
---@param terrainCursor any
function WorldAPIs_gameterrain.HideCursor(self, terrainCursor) end

---@param self WorldAPIs_gameterrain
---@param lakesCursor any
function WorldAPIs_gameterrain.HideLakesCursor(self, lakesCursor) end

---@param self WorldAPIs_gameterrain
---@return any lakesCreatedCompletionToken
function WorldAPIs_gameterrain.LakeCompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_gameterrain
---@param nArg2 number
---@param nArg3 number
---@param nArg4 number
---@param nArg5 number
---@param nArg6 number
---@param nArg7 number
---@param nArg8 number
---@param nArg9 number
---@param nArg10 number
---@param nArg11 number
---@param nArg12 number
---@param nArg13 number
---@param nArg14 number
---@param nArg15 number
---@param nArg16 number
---@param nArg17 number
function WorldAPIs_gameterrain.SetAutoPaintingEnclosedColour(self, nArg2, nArg3, nArg4, nArg5, nArg6, nArg7, nArg8, nArg9, nArg10, nArg11, nArg12, nArg13, nArg14, nArg15, nArg16, nArg17) end

---@param self WorldAPIs_gameterrain
---@param nArg2 number
---@param Arg3 any
function WorldAPIs_gameterrain.SetAutoPaintingEnclosedScaleOffset(self, nArg2, Arg3) end

---@param self WorldAPIs_gameterrain
---@param nArg2 number
---@param nArg3 number
---@param nArg4 number
---@param nArg5 number
---@param nArg6 number
---@param nArg7 number
---@param nArg8 number
---@param nArg9 number
---@param nArg10 number
---@param nArg11 number
---@param nArg12 number
---@param nArg13 number
---@param nArg14 number
---@param nArg15 number
---@param nArg16 number
---@param nArg17 number
function WorldAPIs_gameterrain.SetAutoPaintingExposedColour(self, nArg2, nArg3, nArg4, nArg5, nArg6, nArg7, nArg8, nArg9, nArg10, nArg11, nArg12, nArg13, nArg14, nArg15, nArg16, nArg17) end

---@param self WorldAPIs_gameterrain
---@param nArg2 number
---@param nArg3 number
function WorldAPIs_gameterrain.SetAutoPaintingExposureScaleOffset(self, nArg2, nArg3) end

---@param self WorldAPIs_gameterrain
---@param nArg2 number
---@param nArg3 number
---@param nArg4 number
---@param nArg5 number
---@param nArg6 number
---@param nArg7 number
---@param nArg8 number
---@param nArg9 number
---@param nArg10 number
---@param nArg11 number
---@param nArg12 number
---@param nArg13 number
---@param nArg14 number
---@param nArg15 number
---@param nArg16 number
---@param nArg17 number
function WorldAPIs_gameterrain.SetAutoPaintingSideColour(self, nArg2, nArg3, nArg4, nArg5, nArg6, nArg7, nArg8, nArg9, nArg10, nArg11, nArg12, nArg13, nArg14, nArg15, nArg16, nArg17) end

---@param self WorldAPIs_gameterrain
---@param nArg2 number
---@param nArg3 number
---@param nArg4 number
---@param nArg5 number
---@param nArg6 number
---@param nArg7 number
---@param nArg8 number
---@param nArg9 number
---@param nArg10 number
---@param nArg11 number
---@param nArg12 number
---@param nArg13 number
---@param nArg14 number
---@param nArg15 number
---@param nArg16 number
---@param nArg17 number
function WorldAPIs_gameterrain.SetAutoPaintingTopColour(self, nArg2, nArg3, nArg4, nArg5, nArg6, nArg7, nArg8, nArg9, nArg10, nArg11, nArg12, nArg13, nArg14, nArg15, nArg16, nArg17) end

---@param self WorldAPIs_gameterrain
---@param nArg2 number
---@param nArg3 number
function WorldAPIs_gameterrain.SetAutoPaintingTopToSideTransition(self, nArg2, nArg3) end

---@param self WorldAPIs_gameterrain
---@param sAmbienceOverride string
function WorldAPIs_gameterrain.SetCustomGeome(self, sAmbienceOverride) end

---@param self WorldAPIs_gameterrain
---@param nTerrainEditCost number
function WorldAPIs_gameterrain.SetIsoValueChangeCost(self, nTerrainEditCost) end

---@param self WorldAPIs_gameterrain
---@param sLandscapePrefab string
---@param sSkirtPrefab string
---@param cTerrainMaterials table
---@param cSkirtMaterials table
function WorldAPIs_gameterrain.SetMaterialOverride(self, sLandscapePrefab, sSkirtPrefab, cTerrainMaterials, cSkirtMaterials) end

---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param bR5PC17 boolean
---@param bArg4 boolean
---@param bSceneryLock boolean
---@param bArg6 boolean
---@param bIgnoreRaised boolean
---@param bArg8 boolean
function WorldAPIs_gameterrain.SetTerrainEditOpCollisionFlags(self, terrainEditOp, bR5PC17, bArg4, bSceneryLock, bArg6, bIgnoreRaised, bArg8) end

---@param self WorldAPIs_gameterrain
---@param terrainEditOp any
---@param bArg3 boolean
function WorldAPIs_gameterrain.SetTerrainEditOpGridRenderingEnabled(self, terrainEditOp, bArg3) end

---@param self WorldAPIs_gameterrain
---@param terrainCursor any
function WorldAPIs_gameterrain.ShowCursor(self, terrainCursor) end

---@param self WorldAPIs_gameterrain
---@param lakesCursor any
function WorldAPIs_gameterrain.ShowLakesCursor(self, lakesCursor) end

---@param self WorldAPIs_gameterrain
---@param vHitPoint vector
---@return vector vSnappedHitPoint
function WorldAPIs_gameterrain.SnapLakeFillPoint(self, vHitPoint) end

---@param self WorldAPIs_gameterrain
---@param voxelTerrainEntityID any
---@return boolean _
function WorldAPIs_gameterrain.TerrainSkirtHasSeaPlane(self, voxelTerrainEntityID) end

---@param self WorldAPIs_gameterrain
---@param terrainCursor any
---@param brushTransform any
---@param nBrushSize number
---@param nIntensityA number
---@param nBrushSize2 number
---@param nIntensityB number
function WorldAPIs_gameterrain.UpdateCursor(self, terrainCursor, brushTransform, nBrushSize, nIntensityA, nBrushSize2, nIntensityB) end

---@param self WorldAPIs_gameterrain
---@param terrainEditorEntityID any
---@param lakesCursor any
---@param vLakePlacementSnappedCoord vector
---@param cursorColour any
function WorldAPIs_gameterrain.UpdateLakesCursor(self, terrainEditorEntityID, lakesCursor, vLakePlacementSnappedCoord, cursorColour) end


---@param self WorldAPIs_gamevolatileconfig
---@param sArg2 string
---@param sID string
function WorldAPIs_gamevolatileconfig.AddRecentlyUsedBrowserBlueprintItem(self, sArg2, sID) end

---@param self WorldAPIs_gamevolatileconfig
---@param sArg2 string
---@param sID string
function WorldAPIs_gamevolatileconfig.AddRecentlyUsedBrowserItem(self, sArg2, sID) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetAdvancedMoveAlignmentType(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetAlignToSurfaceBuildings(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetAlignToSurfaceOfBelongingOrPlatformOwner(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetAlignToSurfaceScenery(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetAlignToSurfaceShops(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return any SetAutoStackEnabled
function WorldAPIs_gamevolatileconfig.GetAllowAutoStack(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return any _UpdateAddToBuildingForUI
function WorldAPIs_gamevolatileconfig.GetAutoAddPartToBuildings(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetAutosaveInterval(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetBreakdownsEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return boolean bDistanceSnapEnabled
function WorldAPIs_gamevolatileconfig.GetDistanceSnapEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return number nCellSize
function WorldAPIs_gamevolatileconfig.GetDistanceSnapGridSize(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return number nDistanceStep
function WorldAPIs_gamevolatileconfig.GetDistanceSnapSize(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetEnableTerrainWaterObstruction(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return boolean _
function WorldAPIs_gamevolatileconfig.GetEnableVerticalGrid(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetFacilityCleanlinessEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return any lower
function WorldAPIs_gamevolatileconfig.GetFlatRideCamMode(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetFlumeGlobalFrictionEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetFlumeGlobalFrictionValue(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetLitterEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return any rad
function WorldAPIs_gamevolatileconfig.GetRandomPitchMax(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return any rad
function WorldAPIs_gamevolatileconfig.GetRandomPitchMin(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return number nMaxRandomScale
function WorldAPIs_gamevolatileconfig.GetRandomScaleMax(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return number nMinRandomScale
function WorldAPIs_gamevolatileconfig.GetRandomScaleMin(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetReputationEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return boolean bRotationSnapEnabled
function WorldAPIs_gamevolatileconfig.GetRotationSnapEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return number nRotationSnapSize
function WorldAPIs_gamevolatileconfig.GetRotationSnapSize(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return boolean bScaleSnaping
function WorldAPIs_gamevolatileconfig.GetScaleSnapEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return number nScaleSnaping
function WorldAPIs_gamevolatileconfig.GetScaleSnapSize(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return any seenProducts
function WorldAPIs_gamevolatileconfig.GetSeenDLCProducts(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return any UpdateShowUnownedDLCDatastore
function WorldAPIs_gamevolatileconfig.GetShowDLCItems(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return boolean bShowExtraTrains
function WorldAPIs_gamevolatileconfig.GetShowExtraInterchangeableTrains(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetStickToSurfaceBuildings(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetStickToSurfaceOfBelongingOrPlatformOwner(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetStickToSurfaceScenery(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetStickToSurfaceShops(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetToiletCleanlinessEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return number nDistance
function WorldAPIs_gamevolatileconfig.GetTrackEditAlignDistance(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return boolean bEnabled
function WorldAPIs_gamevolatileconfig.GetTrackEditAlignEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return boolean bSetAngleSnapDegrees
function WorldAPIs_gamevolatileconfig.GetTrackEditAngleSnapToggle(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return number nSetAngleSnapDegrees
function WorldAPIs_gamevolatileconfig.GetTrackEditAngleSnapValue(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return boolean bFixedPitch
function WorldAPIs_gamevolatileconfig.GetTrackEditCameraFixedPitch(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return number nMode
function WorldAPIs_gamevolatileconfig.GetTrackEditCameraMode(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return any SetHeightMarkerMode
function WorldAPIs_gamevolatileconfig.GetTrackEditHeightMarkerMode(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return boolean _
function WorldAPIs_gamevolatileconfig.GetTrackEditShowTrackDirectionArrows(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetTrackEditSmoothingDirection(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetTrackEditSmoothingStrength(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return string sCurrentSmoothType
function WorldAPIs_gamevolatileconfig.GetTrackEditSmoothingType(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetTrackEditTunnelling(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return any lower
function WorldAPIs_gamevolatileconfig.GetTrackedRideCamMode(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetTrackedRideGlobalFrictionEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetTrackedRideGlobalFrictionValue(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetTutorialHideAll(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return any UpdateRandomPlacement
function WorldAPIs_gamevolatileconfig.GetUseRandomRotation(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return any UpdateRandomPlacement
function WorldAPIs_gamevolatileconfig.GetUseRandomScale(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return boolean bOrientUp
function WorldAPIs_gamevolatileconfig.GetUseSnapPointUpDirection(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return boolean bIsSnapping
function WorldAPIs_gamevolatileconfig.GetUseSnapPoints(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetUseStaffHappiness(self) end

---@param self WorldAPIs_gamevolatileconfig
---@return number nVerticalGridSize
function WorldAPIs_gamevolatileconfig.GetVerticalGridSize(self) end

---@param self WorldAPIs_gamevolatileconfig
function WorldAPIs_gamevolatileconfig.GetVomitEnabled(self) end

---@param self WorldAPIs_gamevolatileconfig
---@param cVolatileConfig table
function WorldAPIs_gamevolatileconfig.LoadBoundaryConfig(self, cVolatileConfig) end

---@param self WorldAPIs_gamevolatileconfig
---@param cConfig table
function WorldAPIs_gamevolatileconfig.LoadMultiSelectConfig(self, cConfig) end

---@param self WorldAPIs_gamevolatileconfig
---@param cConfig table
function WorldAPIs_gamevolatileconfig.LoadTerrainConfig(self, cConfig) end

---@param self WorldAPIs_gamevolatileconfig
---@param Arg2 any
function WorldAPIs_gamevolatileconfig.SaveBoundaryConfig(self, Arg2) end

---@param self WorldAPIs_gamevolatileconfig
---@param cConfig table
function WorldAPIs_gamevolatileconfig.SaveMultiSelectConfig(self, cConfig) end

---@param self WorldAPIs_gamevolatileconfig
---@param cConfig table
function WorldAPIs_gamevolatileconfig.SaveTerrainConfig(self, cConfig) end

---@param self WorldAPIs_gamevolatileconfig
---@param bArg2 boolean
function WorldAPIs_gamevolatileconfig.SetAdvancedMoveToggle(self, bArg2) end

---@param self WorldAPIs_gamevolatileconfig
---@param bArg2 boolean
function WorldAPIs_gamevolatileconfig.SetAdvancedMoveToggleUpdated(self, bArg2) end

---@param self WorldAPIs_gamevolatileconfig
---@param arg any
function WorldAPIs_gamevolatileconfig.SetAlignToSurfaceBuildings(self, arg) end

---@param self WorldAPIs_gamevolatileconfig
---@param bArg boolean
function WorldAPIs_gamevolatileconfig.SetAlignToSurfaceOfBelongingOrPlatformOwner(self, bArg) end

---@param self WorldAPIs_gamevolatileconfig
---@param arg any
function WorldAPIs_gamevolatileconfig.SetAlignToSurfaceScenery(self, arg) end

---@param self WorldAPIs_gamevolatileconfig
---@param arg any
function WorldAPIs_gamevolatileconfig.SetAlignToSurfaceShops(self, arg) end

---@param self WorldAPIs_gamevolatileconfig
---@param arg any
function WorldAPIs_gamevolatileconfig.SetAllowAutoStack(self, arg) end

---@param self WorldAPIs_gamevolatileconfig
---@param arg any
function WorldAPIs_gamevolatileconfig.SetAutoAddPartToBuildings(self, arg) end

---@param self WorldAPIs_gamevolatileconfig
---@param sArg2 string
---@param nRows number
function WorldAPIs_gamevolatileconfig.SetBrowserRows(self, sArg2, nRows) end

---@param self WorldAPIs_gamevolatileconfig
---@param sArg2 string
---@param sID string
function WorldAPIs_gamevolatileconfig.SetBrowserView(self, sArg2, sID) end

---@param self WorldAPIs_gamevolatileconfig
---@param bEnabled boolean
function WorldAPIs_gamevolatileconfig.SetDistanceSnapEnabled(self, bEnabled) end

---@param self WorldAPIs_gamevolatileconfig
---@param nValue number
function WorldAPIs_gamevolatileconfig.SetDistanceSnapSize(self, nValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param sMode string
function WorldAPIs_gamevolatileconfig.SetFlatRideCamMode(self, sMode) end

---@param self WorldAPIs_gamevolatileconfig
---@param nValue number
function WorldAPIs_gamevolatileconfig.SetRandomPitchMax(self, nValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param nValue number
function WorldAPIs_gamevolatileconfig.SetRandomPitchMin(self, nValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param nValue number
function WorldAPIs_gamevolatileconfig.SetRandomScaleMax(self, nValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param nValue number
function WorldAPIs_gamevolatileconfig.SetRandomScaleMin(self, nValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param bValue boolean
function WorldAPIs_gamevolatileconfig.SetRotationSnapEnabled(self, bValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param nValue number
function WorldAPIs_gamevolatileconfig.SetRotationSnapSize(self, nValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param Arg2 any
function WorldAPIs_gamevolatileconfig.SetScaleSnapEnabled(self, Arg2) end

---@param self WorldAPIs_gamevolatileconfig
---@param nScaleSnaping number
function WorldAPIs_gamevolatileconfig.SetScaleSnapSize(self, nScaleSnaping) end

---@param self WorldAPIs_gamevolatileconfig
---@param allReleasedProducts any
function WorldAPIs_gamevolatileconfig.SetSeenDLCProducts(self, allReleasedProducts) end

---@param self WorldAPIs_gamevolatileconfig
---@param bShowUnownedDLC boolean
function WorldAPIs_gamevolatileconfig.SetShowDLCItems(self, bShowUnownedDLC) end

---@param self WorldAPIs_gamevolatileconfig
---@param bShowExtraTrains boolean
function WorldAPIs_gamevolatileconfig.SetShowExtraInterchangeableTrains(self, bShowExtraTrains) end

---@param self WorldAPIs_gamevolatileconfig
---@param arg any
function WorldAPIs_gamevolatileconfig.SetStickToSurfaceBuildings(self, arg) end

---@param self WorldAPIs_gamevolatileconfig
---@param bArg boolean
function WorldAPIs_gamevolatileconfig.SetStickToSurfaceOfBelongingOrPlatformOwner(self, bArg) end

---@param self WorldAPIs_gamevolatileconfig
---@param arg any
function WorldAPIs_gamevolatileconfig.SetStickToSurfaceScenery(self, arg) end

---@param self WorldAPIs_gamevolatileconfig
---@param arg any
function WorldAPIs_gamevolatileconfig.SetStickToSurfaceShops(self, arg) end

---@param self WorldAPIs_gamevolatileconfig
---@param nHeight number
function WorldAPIs_gamevolatileconfig.SetTerrainSettingsHeight(self, nHeight) end

---@param self WorldAPIs_gamevolatileconfig
---@param nDistance number
function WorldAPIs_gamevolatileconfig.SetTrackEditAlignDistance(self, nDistance) end

---@param self WorldAPIs_gamevolatileconfig
---@param bEnabled boolean
function WorldAPIs_gamevolatileconfig.SetTrackEditAlignEnabled(self, bEnabled) end

---@param self WorldAPIs_gamevolatileconfig
---@param bIsActive boolean
function WorldAPIs_gamevolatileconfig.SetTrackEditAngleSnapToggle(self, bIsActive) end

---@param self WorldAPIs_gamevolatileconfig
---@param nValue number
function WorldAPIs_gamevolatileconfig.SetTrackEditAngleSnapValue(self, nValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param bFixedPitch boolean
function WorldAPIs_gamevolatileconfig.SetTrackEditCameraFixedPitch(self, bFixedPitch) end

---@param self WorldAPIs_gamevolatileconfig
---@param nMode number
function WorldAPIs_gamevolatileconfig.SetTrackEditCameraMode(self, nMode) end

---@param self WorldAPIs_gamevolatileconfig
---@param sArg2 string
function WorldAPIs_gamevolatileconfig.SetTrackEditFalloffModifier(self, sArg2) end

---@param self WorldAPIs_gamevolatileconfig
---@param sID string
function WorldAPIs_gamevolatileconfig.SetTrackEditHeightMarkerMode(self, sID) end

---@param self WorldAPIs_gamevolatileconfig
---@param sArg2 string
function WorldAPIs_gamevolatileconfig.SetTrackEditHorizontalModifier(self, sArg2) end

---@param self WorldAPIs_gamevolatileconfig
---@param bValue boolean
function WorldAPIs_gamevolatileconfig.SetTrackEditShowTrackDirectionArrows(self, bValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param sValue string
function WorldAPIs_gamevolatileconfig.SetTrackEditSmoothingDirection(self, sValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param nValue number
function WorldAPIs_gamevolatileconfig.SetTrackEditSmoothingStrength(self, nValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param sValue string
function WorldAPIs_gamevolatileconfig.SetTrackEditSmoothingType(self, sValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param bValue boolean
function WorldAPIs_gamevolatileconfig.SetTrackEditTunnelling(self, bValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param sArg2 string
function WorldAPIs_gamevolatileconfig.SetTrackEditVerticalModifier(self, sArg2) end

---@param self WorldAPIs_gamevolatileconfig
---@param sMode string
function WorldAPIs_gamevolatileconfig.SetTrackedRideCamMode(self, sMode) end

---@param self WorldAPIs_gamevolatileconfig
---@param Arg2 any
function WorldAPIs_gamevolatileconfig.SetTutorialHideAll(self, Arg2) end

---@param self WorldAPIs_gamevolatileconfig
---@param bValue boolean
function WorldAPIs_gamevolatileconfig.SetUseRandomRotation(self, bValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param bValue boolean
function WorldAPIs_gamevolatileconfig.SetUseRandomScale(self, bValue) end

---@param self WorldAPIs_gamevolatileconfig
---@param bArg boolean
function WorldAPIs_gamevolatileconfig.SetUseSnapPointUpDirection(self, bArg) end

---@param self WorldAPIs_gamevolatileconfig
---@param bArg boolean
function WorldAPIs_gamevolatileconfig.SetUseSnapPoints(self, bArg) end

---@param volatileConfigAPI any
---@return string sConfigValue
function WorldAPIs_gamevolatileconfig._tModifierData.sVolatileConfigGetter(volatileConfigAPI) end


---@param self WorldAPIs_guests
---@param bArg2 boolean
---@param moodDesperate any
---@return number nNumDesperateGuests
function WorldAPIs_guests.CalculateAndGetRatioOfGuestsWithMood(self, bArg2, moodDesperate) end

---@param self WorldAPIs_guests
---@param bArg2 boolean
---@return number nPropWithSunburn
function WorldAPIs_guests.CalculateAndGetRatioOfGuestsWithSunburn(self, bArg2) end

---@param self WorldAPIs_guests
---@param nGroupID number
function WorldAPIs_guests.CanSuspendGroup(self, nGroupID) end

---@param self WorldAPIs_guests
---@param guestID any
function WorldAPIs_guests.ClearGuestOverridenName(self, guestID) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.CompleteMiscreantSystemWorldSerialisationLoad(self) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.CompleteSerialisationAfterEntitiesCreated(self) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@param ejectedFromParkReasonByPlayer any
function WorldAPIs_guests.EjectGuestsFromPark(self, nGroupID, ejectedFromParkReasonByPlayer) end

---@param self WorldAPIs_guests
---@param guestsGenderFemale any
---@return string sName
function WorldAPIs_guests.GenerateNewUIName(self, guestsGenderFemale) end

---@param self WorldAPIs_guests
---@return any parkGuestEntityArray
function WorldAPIs_guests.GetAllGuestEntities(self) end

---@param self WorldAPIs_guests
---@return table tPossibleGuestNeedTypes
function WorldAPIs_guests.GetAllGuestNeedTypesAsString(self) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.GetAreInitialDecisionsMade(self) end

---@param self WorldAPIs_guests
---@return number nGuestThemingExperience
function WorldAPIs_guests.GetAverageGuestSceneryScore(self) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.GetChildGroupsWeightedRatio(self) end

---@param self WorldAPIs_guests
---@param guestID any
---@return table tTrivia
function WorldAPIs_guests.GetDebugTrivia(self, guestID) end

---@param self WorldAPIs_guests
---@param nEntityID number
---@return string sDestinationType
function WorldAPIs_guests.GetDestinationType(self, nEntityID) end

---@param self WorldAPIs_guests
---@return table tNeeds
function WorldAPIs_guests.GetGlobalAverageNeeds(self) end

---@param self WorldAPIs_guests
---@param nCNThoughtsToGenerate number
---@param nEntityID number
---@param nMinProp number?
---@return table tThoughts
---@return number nTotalGuests
function WorldAPIs_guests.GetGlobalThoughtSummary(self, nCNThoughtsToGenerate, nEntityID, nMinProp) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return table tCash
function WorldAPIs_guests.GetGroupCash(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return table tDecision
function WorldAPIs_guests.GetGroupDecisionState(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return string sBrand
function WorldAPIs_guests.GetGroupFavouriteBrand(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return string sRide
function WorldAPIs_guests.GetGroupFavouriteRide(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return string sRideType
function WorldAPIs_guests.GetGroupFavouriteRideType(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return string sTheme
function WorldAPIs_guests.GetGroupFavouriteTheme(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return table tDietRestrictions
function WorldAPIs_guests.GetGroupFoodRestrictions(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return number nStayLength
function WorldAPIs_guests.GetGroupParkStayLength(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return string sExperience
function WorldAPIs_guests.GetGroupRideExperience(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return table tTolerances
function WorldAPIs_guests.GetGroupRideTolerances(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return table tRideEntities
function WorldAPIs_guests.GetGroupSuccessfulRideHistory(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return number nTimeInPark
function WorldAPIs_guests.GetGroupTimeInPark(self, nGroupID) end

---@param self WorldAPIs_guests
---@param i any
---@return any Text
function WorldAPIs_guests.GetGroupTypeName(self, i) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return string sWater
function WorldAPIs_guests.GetGroupWaterAttractionType(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@param nGroupID number
---@return table tAilments
function WorldAPIs_guests.GetGuestAilments(self, nGuestID, nGroupID) end

---@param self WorldAPIs_guests
---@return table tStats
function WorldAPIs_guests.GetGuestBrainStats(self) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@return number nComplexID
function WorldAPIs_guests.GetGuestCurrentComplex(self, nGuestID) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@return table tData
function WorldAPIs_guests.GetGuestData(self, nGuestID) end

---@param self WorldAPIs_guests
---@return number nGuests
---@return table tRawGuestData
function WorldAPIs_guests.GetGuestDemographicData(self) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@return table tItemNames
---@return table tLogicalSlots
---@return table tVisualSlots
---@return table tPockets
---@return table tCustomItemNames
function WorldAPIs_guests.GetGuestInventory(self, nGuestID) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@return number nMood
function WorldAPIs_guests.GetGuestMood(self, nGuestID) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@return table tNeeds
function WorldAPIs_guests.GetGuestNeeds(self, nGuestID) end

---@param self WorldAPIs_guests
---@return table tNeedsCriticalThreshold
function WorldAPIs_guests.GetGuestNeedsCriticalThreshold(self) end

---@param self WorldAPIs_guests
---@return table tNeedsPressingThreshold
function WorldAPIs_guests.GetGuestNeedsPressingThreshold(self) end

---@param self WorldAPIs_guests
---@param guestID any
function WorldAPIs_guests.GetGuestOverridenName(self, guestID) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@return string sPhysicsStatusString
function WorldAPIs_guests.GetGuestStatusForPhysicsState(self, nGuestID) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@return table tThoughts
function WorldAPIs_guests.GetGuestThoughts(self, nGuestID) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@return string sFinalEntity
function WorldAPIs_guests.GetGuestUIName(self, nGuestID) end

---@param self WorldAPIs_guests
---@param targetEntityID any
---@return number nGuestVisual
function WorldAPIs_guests.GetGuestVisualEntityID(self, targetEntityID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return table tGuestOffsets
function WorldAPIs_guests.GetGuestsDefaultGroupOffsets(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return number nEjectionReason
function WorldAPIs_guests.GetGuestsEjectedFromParkReason(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return table tGuestEntities
function WorldAPIs_guests.GetGuestsInGroup(self, nGroupID) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.GetHavePendingCrowdParticlesLoadedFromSave(self) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@param nMood number
---@return number nHighestPriMoodReason
function WorldAPIs_guests.GetHighestPriorityReasonForMoodOnGuest(self, nGuestID, nMood) end

---@param self WorldAPIs_guests
---@return number nMoodExperienceToday
---@return number nMoodExperienceYesterday
function WorldAPIs_guests.GetMoodExperience(self) end

---@param self WorldAPIs_guests
---@param nHighestPriMoodReason number
---@return string sMoodReasonLocString
function WorldAPIs_guests.GetMoodReasonLocString(self, nHighestPriMoodReason) end

---@param self WorldAPIs_guests
---@return table tNeedThresholds
function WorldAPIs_guests.GetNeedUIThresholds(self) end

---@param self WorldAPIs_guests
---@param nLastLostGuestEntity number?
---@return any bTrappedGuestEntity
function WorldAPIs_guests.GetNextTrappedGuest(self, nLastLostGuestEntity) end

---@param self WorldAPIs_guests
---@return number nNumGuests
function WorldAPIs_guests.GetNumGuests(self) end

---@param self WorldAPIs_guests
---@return number nGuests
function WorldAPIs_guests.GetNumGuestsInsidePark(self) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.GetNumTheftVictims(self) end

---@param self WorldAPIs_guests
---@param bArg2 boolean?
---@return table tGuestExperience
function WorldAPIs_guests.GetOverallGuestExperience(self, bArg2) end

---@param self WorldAPIs_guests
---@param poolID any
---@return number nLifeguardCoverage
function WorldAPIs_guests.GetPoolAreaProportionCoveredByLifeguardPosts(self, poolID) end

---@param self WorldAPIs_guests
---@return number nIdealWeight
function WorldAPIs_guests.GetSceneryIdealWeight(self) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@return table tGuestExperience
function WorldAPIs_guests.GetSpecificGuestExperiences(self, nGuestID) end

---@param self WorldAPIs_guests
---@return number nThoughtExperienceToday
---@return number nThoughtExperienceYesterday
function WorldAPIs_guests.GetThoughtExperience(self) end

---@param self WorldAPIs_guests
---@return number nTrappedGuests
function WorldAPIs_guests.GetTrappedGuestCount(self) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@return number nWetnessState
function WorldAPIs_guests.GetWetnessState(self, nGuestID) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.HideThoughtIcons(self) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.IsCreatingWanderPointsFromLoad(self) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return boolean bInsidePark
function WorldAPIs_guests.IsGroupInsidePark(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nEntityID number
function WorldAPIs_guests.IsGuestTrapped(self, nEntityID) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return boolean _
function WorldAPIs_guests.IsValidGroup(self, nGroupID) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.MakeGuestPanicInWater(self) end

---@param self WorldAPIs_guests
---@param bKeepGuests boolean
function WorldAPIs_guests.ParkReset(self, bKeepGuests) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.ProgressGuestExperienceDay(self) end

---@param self WorldAPIs_guests
function WorldAPIs_guests.ReGenerateAllGuestPreferences(self) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@return any result
function WorldAPIs_guests.RequestSuspendGroup(self, nGroupID) end

---@param self WorldAPIs_guests
---@param nArg2 number
function WorldAPIs_guests.SetAllPreferenceWeights(self, nArg2) end

---@param self WorldAPIs_guests
---@param cBaseGroupSpawnRates table
function WorldAPIs_guests.SetBaseGroupSpawnWeights(self, cBaseGroupSpawnRates) end

---@param self WorldAPIs_guests
---@param nBoostValue number
function WorldAPIs_guests.SetBoostSunburnThoughts(self, nBoostValue) end

---@param self WorldAPIs_guests
---@param Arg2 any
function WorldAPIs_guests.SetEntertainmentRateMultiplier(self, Arg2) end

---@param self WorldAPIs_guests
---@param nSecurityGroupCanBecomeVandalChance number
function WorldAPIs_guests.SetGroupCanBecomeVandalChance(self, nSecurityGroupCanBecomeVandalChance) end

---@param self WorldAPIs_guests
---@param cGroupGenderSpawnRules table
function WorldAPIs_guests.SetGroupGenderSpawnRules(self, cGroupGenderSpawnRules) end

---@param self WorldAPIs_guests
---@param cPreferenceSpawners table
function WorldAPIs_guests.SetGroupPreferenceSpawners(self, cPreferenceSpawners) end

---@param self WorldAPIs_guests
---@param cPreferenceWeights table
function WorldAPIs_guests.SetGroupPreferenceWeights(self, cPreferenceWeights) end

---@param self WorldAPIs_guests
---@param bEnabledMoods boolean
function WorldAPIs_guests.SetGuestMoodsEnabled(self, bEnabledMoods) end

---@param self WorldAPIs_guests
---@param guestID any
---@param nArg3 number
---@param Arg4 any
function WorldAPIs_guests.SetGuestNeed(self, guestID, nArg3, Arg4) end

---@param self WorldAPIs_guests
---@param needHunger any
---@param Arg3 any
function WorldAPIs_guests.SetGuestNeedAlwaysSatisfied(self, needHunger, Arg3) end

---@param self WorldAPIs_guests
---@param needHunger any
---@param nHungerMultiplier number
function WorldAPIs_guests.SetGuestNeedSandboxMultiplier(self, needHunger, nHungerMultiplier) end

---@param self WorldAPIs_guests
---@param Arg2 any
function WorldAPIs_guests.SetGuestRefundMultiplier(self, Arg2) end

---@param self WorldAPIs_guests
---@param nIdealNumberOfGuests number
---@param nSpawnRate number
---@param nCappedGuestStayLength number
---@param Arg5 any
function WorldAPIs_guests.SetGuestSpawnData(self, nIdealNumberOfGuests, nSpawnRate, nCappedGuestStayLength, Arg5) end

---@param self WorldAPIs_guests
---@param guestID any
---@param arg any
function WorldAPIs_guests.SetGuestUIName(self, guestID, arg) end

---@param self WorldAPIs_guests
---@param bEnabledWeatherEffects boolean
function WorldAPIs_guests.SetGuestWeatherEffectsEnabled(self, bEnabledWeatherEffects) end

---@param self WorldAPIs_guests
---@param cPickpocketSpawnData table
function WorldAPIs_guests.SetMiscreantSpawnData(self, cPickpocketSpawnData) end

---@param self WorldAPIs_guests
---@param nSecurityNumGuestsPerPickpocketSpawn number
---@param nSecurityMinGuestsBeforePickpocketSpawn number
---@param nSecurityMaxPickpocketsInPark number
function WorldAPIs_guests.SetMiscreantSpawnLimits(self, nSecurityNumGuestsPerPickpocketSpawn, nSecurityMinGuestsBeforePickpocketSpawn, nSecurityMaxPickpocketsInPark) end

---@param self WorldAPIs_guests
---@param guestEntityID any
---@param bArg3 boolean
---@param bArg4 boolean
function WorldAPIs_guests.SetPeepHeadHidden(self, guestEntityID, bArg3, bArg4) end

---@param self WorldAPIs_guests
---@param i any
---@param bArg3 boolean
---@param bArg4 boolean
function WorldAPIs_guests.SetPeepHidden(self, i, bArg3, bArg4) end

---@param self WorldAPIs_guests
---@param cPreferenceCounts table
function WorldAPIs_guests.SetPreferenceCountWeights(self, cPreferenceCounts) end

---@param self WorldAPIs_guests
---@param nPreferenceMultiplier number
function WorldAPIs_guests.SetPreferenceEffectMultiplier(self, nPreferenceMultiplier) end

---@param self WorldAPIs_guests
---@param bEnabledSunburn boolean
function WorldAPIs_guests.SetSunburnEnabled(self, bEnabledSunburn) end

---@param self WorldAPIs_guests
---@param nSunburnMultiplier number
function WorldAPIs_guests.SetSunburnMultiplier(self, nSunburnMultiplier) end

---@param self WorldAPIs_guests
---@param nNullEntityID number
---@param guestThoughtTypeDrowning any?
function WorldAPIs_guests.SetTutorialOverrideIconForGuest(self, nNullEntityID, guestThoughtTypeDrowning) end

---@param self WorldAPIs_guests
---@param nVomitChanceThresholdMultiplier number
function WorldAPIs_guests.SetVomitChanceThresholdMultiplier(self, nVomitChanceThresholdMultiplier) end

---@param self WorldAPIs_guests
---@param bEnabledVomit boolean
function WorldAPIs_guests.SetVomitEnabled(self, bEnabledVomit) end

---@param self WorldAPIs_guests
---@param nVomitProbabilityPerSecondMultiplier number
function WorldAPIs_guests.SetVomitProbabilityPerSecondMultiplier(self, nVomitProbabilityPerSecondMultiplier) end

---@param self WorldAPIs_guests
---@param nGuestsWaterPanicMultiplier number
function WorldAPIs_guests.SetWaterPanicMultiplier(self, nGuestsWaterPanicMultiplier) end

---@param self WorldAPIs_guests
---@param nRideID number
---@param Arg3 any
function WorldAPIs_guests.ShowThoughtIconsForDestination(self, nRideID, Arg3) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@param view any
function WorldAPIs_guests.ShowThoughtIconsForGuest(self, nGuestID, view) end

---@param self WorldAPIs_guests
---@param entityID any
---@param Arg3 any
function WorldAPIs_guests.ShowThoughtIconsForStaff(self, entityID, Arg3) end

---@param self WorldAPIs_guests
---@param nGroupID number
---@param nPoolEntityID number
function WorldAPIs_guests.StartUnsuspendGroup(self, nGroupID, nPoolEntityID) end

---@param self WorldAPIs_guests
---@param nGuestID number
---@return number nGroupID
function WorldAPIs_guests.TryGetGuestGroupID(self, nGuestID) end


---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@return boolean bCanBeOpened
function WorldAPIs_infrastructure.CanBeOpened(self, nEntityID) end

---@param self WorldAPIs_infrastructure
function WorldAPIs_infrastructure.CompleteBlueprintLoad(self) end

---@param self WorldAPIs_infrastructure
function WorldAPIs_infrastructure.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_infrastructure
---@return any connectionPreview
function WorldAPIs_infrastructure.CreatePlacementPreview(self) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@return boolean bIsUtilityComponent
function WorldAPIs_infrastructure.EntityIsUtilityComponent(self, nEntityID) end

---@param self WorldAPIs_infrastructure
---@param bArg2 boolean
---@return table tPowerGeneratorEntities
function WorldAPIs_infrastructure.GetAllPowerGeneratorEntities(self, bArg2) end

---@param self WorldAPIs_infrastructure
---@param bArg2 boolean
---@return table tWaterGeneratorEntities
function WorldAPIs_infrastructure.GetAllWaterGeneratorEntities(self, bArg2) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
function WorldAPIs_infrastructure.GetComponentType(self, nEntityID) end

---@param self WorldAPIs_infrastructure
---@param nSelectedEntity number
---@param nEntityID number
---@return vector vBuildDirection
---@return vector vStartPos
---@return number nConnectionsNum
function WorldAPIs_infrastructure.GetConnectComponentsData(self, nSelectedEntity, nEntityID) end

---@param self WorldAPIs_infrastructure
---@param nSelectedEntity number
---@return vector vSelectedEntityPosition
function WorldAPIs_infrastructure.GetConnectionPoint(self, nSelectedEntity) end

---@param self WorldAPIs_infrastructure
---@param nConsumerEntity number
---@param utilityTypePower any
---@return number nPower
function WorldAPIs_infrastructure.GetConsumerRecievedUtilityQuantity(self, nConsumerEntity, utilityTypePower) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntityID number
function WorldAPIs_infrastructure.GetConsumersOwnedByDistributor(self, nDistributorEntityID) end

---@param self WorldAPIs_infrastructure
---@param entityID any
---@param utilityTypeWater any
---@return number nCostPerWaterPerHour
function WorldAPIs_infrastructure.GetCostPerUtilityPerHour(self, entityID, utilityTypeWater) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntity number
---@return number nWaterMax
function WorldAPIs_infrastructure.GetCurrentlyRequiredUtilityQuantity(self, nDistributorEntity) end

---@param self WorldAPIs_infrastructure
---@param nGeneratorEntityID number
function WorldAPIs_infrastructure.GetDistributorsAvailableToComponent(self, nGeneratorEntityID) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@return number nUtilityType
function WorldAPIs_infrastructure.GetFirstUtilityType(self, nEntityID) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@param utilityTypeWater any
---@param bArg4 boolean?
---@return number nPowerMax
function WorldAPIs_infrastructure.GetGeneratorMaxProducedUtilityQuantity(self, nEntityID, utilityTypeWater, bArg4) end

---@param self WorldAPIs_infrastructure
---@param nGeneratorEntityID number
---@param utilityTypeWater any
---@param bArg4 boolean
---@return number nWaterMax
function WorldAPIs_infrastructure.GetGeneratorProducedUtilityQuantity(self, nGeneratorEntityID, utilityTypeWater, bArg4) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@param utilityTypeWater any
---@return number nWaterUsed
function WorldAPIs_infrastructure.GetGeneratorTotalUsedUtilityQuantity(self, nEntityID, utilityTypeWater) end

---@param self WorldAPIs_infrastructure
---@param nGeneratorEntityID number
---@param utilityTypeWater any
---@return number nWaterUsed
function WorldAPIs_infrastructure.GetGeneratorUsedByNetworkUtilityQuantity(self, nGeneratorEntityID, utilityTypeWater) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntityID number
function WorldAPIs_infrastructure.GetGeneratorsAvailableToComponent(self, nDistributorEntityID) end

---@param self WorldAPIs_infrastructure
---@param nPartID number
---@return number nConditionProp
function WorldAPIs_infrastructure.GetMaintenanceLevel(self, nPartID) end

---@param self WorldAPIs_infrastructure
---@param vSelectedEntityPosition vector
---@param vPreviewPoint vector
---@return any placementPos
function WorldAPIs_infrastructure.GetPlacementPosition(self, vSelectedEntityPosition, vPreviewPoint) end

---@param self WorldAPIs_infrastructure
---@return number nPowerScalar
function WorldAPIs_infrastructure.GetPowerScalarTweakableValue(self) end

---@param self WorldAPIs_infrastructure
---@param nConsumerEntity number
---@return number nPrediction
function WorldAPIs_infrastructure.GetPredictedCleanlinessDeltaOverNextHour(self, nConsumerEntity) end

---@param self WorldAPIs_infrastructure
---@param nGeneratorEntityID number
---@param utilityTypePower any
---@return number nProjectedCostToday
function WorldAPIs_infrastructure.GetProjectedCostForDay(self, nGeneratorEntityID, utilityTypePower) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntity number
---@return number nWater
function WorldAPIs_infrastructure.GetReceivedUtilityQuantity(self, nDistributorEntity) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@return number nRecievedTreatmentRate
function WorldAPIs_infrastructure.GetRecievedWaterTreatmentRate(self, nEntityID) end

---@param self WorldAPIs_infrastructure
---@param nPartID number
---@return number nRefurbishCost
function WorldAPIs_infrastructure.GetRefurbishmentCost(self, nPartID) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@return number nRequiredPower
function WorldAPIs_infrastructure.GetRequiredPower(self, nEntityID) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntityID number
---@return number nWaterRequiredQuantity
function WorldAPIs_infrastructure.GetRequiredUtilityQuantity(self, nDistributorEntityID) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@return number nRequiredTreatmentRate
function WorldAPIs_infrastructure.GetRequiredWaterTreatmentRate(self, nEntityID) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
function WorldAPIs_infrastructure.GetSurroundingDistributorsForConsumer(self, nEntityID) end

---@param self WorldAPIs_infrastructure
---@param nPartID number
---@return number nTimeUntilNextService
function WorldAPIs_infrastructure.GetTimeTillNextService(self, nPartID) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@return number nCurrentPower
function WorldAPIs_infrastructure.GetTotalRecievedPower(self, nEntityID) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntityID number
---@return number nWaterAvailable
function WorldAPIs_infrastructure.GetTotalUtilityInNetworkForComponent(self, nDistributorEntityID) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@return number nTotalVolume
function WorldAPIs_infrastructure.GetTotalVolume(self, nEntityID) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntityID number
---@return table tUnpowerablesData
function WorldAPIs_infrastructure.GetUnpowerableConsumerDataForDistributor(self, nDistributorEntityID) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntityID number
---@return number nPowerAvailable
function WorldAPIs_infrastructure.GetUtilityAvailableToComponent(self, nDistributorEntityID) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@return number nCleanliness
---@return number nCleanlinessThreshold
function WorldAPIs_infrastructure.GetWaterCleanliness(self, nEntityID) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntityID number
---@return number nCleaningPerFacility
function WorldAPIs_infrastructure.GetWaterTreatmentPerConsumer(self, nDistributorEntityID) end

---@param self WorldAPIs_infrastructure
---@param entityID any
function WorldAPIs_infrastructure.HasRefurbishBeenRequested(self, entityID) end

---@param self WorldAPIs_infrastructure
---@param entityID any
---@param bArg3 boolean
function WorldAPIs_infrastructure.HasServiceBeenRequested(self, entityID, bArg3) end

---@param self WorldAPIs_infrastructure
---@param nRideID number
---@return boolean bHasSufficientPower
function WorldAPIs_infrastructure.HasSufficientPower(self, nRideID) end

---@param self WorldAPIs_infrastructure
---@param nConsumerEntity number
---@return boolean _
function WorldAPIs_infrastructure.HasWaterCleanliness(self, nConsumerEntity) end

---@param self WorldAPIs_infrastructure
---@param connectionPreview any
function WorldAPIs_infrastructure.HidePlacementPreview(self, connectionPreview) end

---@param self WorldAPIs_infrastructure
---@param nPartID number
---@return boolean bIsBroken
function WorldAPIs_infrastructure.IsBrokenDown(self, nPartID) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntityID number
function WorldAPIs_infrastructure.IsConnectedToGenerator(self, nDistributorEntityID) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntityID number
function WorldAPIs_infrastructure.IsDistributorOn(self, nDistributorEntityID) end

---@param self WorldAPIs_infrastructure
---@param nGeneratorEntityID number
function WorldAPIs_infrastructure.IsGeneratorOn(self, nGeneratorEntityID) end

---@param self WorldAPIs_infrastructure
---@param nGeneratorEntity number
function WorldAPIs_infrastructure.IsRegionalSupplier(self, nGeneratorEntity) end

---@param self WorldAPIs_infrastructure
---@param nDistributorEntityID number
---@param cUtilityTypeWater table
---@return boolean bIsCorrectUtilitytype
function WorldAPIs_infrastructure.IsUtilityType(self, nDistributorEntityID, cUtilityTypeWater) end

---@param self WorldAPIs_infrastructure
---@param nConsumerEntity number
---@param utilityTypePower any
---@return number nPowerMax
function WorldAPIs_infrastructure.RefreshAndGetConsumerRequiredUtilityQuantity(self, nConsumerEntity, utilityTypePower) end

---@param self WorldAPIs_infrastructure
---@param entityID any
function WorldAPIs_infrastructure.RequestRefurbishment(self, entityID) end

---@param self WorldAPIs_infrastructure
---@param entityID any
function WorldAPIs_infrastructure.RequestRepair(self, entityID) end

---@param self WorldAPIs_infrastructure
---@param entityID any
function WorldAPIs_infrastructure.RequestService(self, entityID) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@param bIsActive boolean
function WorldAPIs_infrastructure.SetComponentOnState(self, nEntityID, bIsActive) end

---@param self WorldAPIs_infrastructure
---@param bFlatRideEnabledPower boolean
function WorldAPIs_infrastructure.SetFlatRidePowerEnabled(self, bFlatRideEnabledPower) end

---@param self WorldAPIs_infrastructure
---@param bUseFlumeCleanliness boolean
function WorldAPIs_infrastructure.SetFlumeCleanlinessEnabled(self, bUseFlumeCleanliness) end

---@param self WorldAPIs_infrastructure
---@param Arg2 any
function WorldAPIs_infrastructure.SetIconViewForUtility(self, Arg2) end

---@param self WorldAPIs_infrastructure
---@param bUsePoolCleanliness boolean
function WorldAPIs_infrastructure.SetPoolCleanlinessEnabled(self, bUsePoolCleanliness) end

---@param self WorldAPIs_infrastructure
---@param bEnabledPower boolean
function WorldAPIs_infrastructure.SetPowerEnabled(self, bEnabledPower) end

---@param self WorldAPIs_infrastructure
---@param bTrackedRideEnabledPower boolean
function WorldAPIs_infrastructure.SetTrackedRidePowerEnabled(self, bTrackedRideEnabledPower) end

---@param self WorldAPIs_infrastructure
---@param nEntityID number
---@param bHasSufficientUtility boolean
function WorldAPIs_infrastructure.ShowIconsForUtility(self, nEntityID, bHasSufficientUtility) end

---@param self WorldAPIs_infrastructure
---@param connectionPreview any
function WorldAPIs_infrastructure.ShowPlacementPreview(self, connectionPreview) end

---@param self WorldAPIs_infrastructure
---@param connectionPreview any
---@param Arg3 any
function WorldAPIs_infrastructure.UpdateInRemoveSubmode(self, connectionPreview, Arg3) end

---@param self WorldAPIs_infrastructure
---@param connectionPreview any
---@param vCursorPosition vector
---@param bIsHoveringEntity boolean
---@param bHasSelectedEntity boolean
---@param vSelectedEntityPosition vector
function WorldAPIs_infrastructure.UpdatePlacementPreview(self, connectionPreview, vCursorPosition, bIsHoveringEntity, bHasSelectedEntity, vSelectedEntityPosition) end


---@param self WorldAPIs_lighting
---@param nPoint number
function WorldAPIs_lighting.RequestCapturePointActivate(self, nPoint) end

---@param self WorldAPIs_lighting
---@param pointToDraw any
---@param nCompletionToken number
function WorldAPIs_lighting.RequestCapturePointRender(self, pointToDraw, nCompletionToken) end


---@param self WorldAPIs_money
---@param Arg2 any
---@return boolean bCanAffordTrigger
function WorldAPIs_money.CanModifyCash(self, Arg2) end

---@param self WorldAPIs_money
function WorldAPIs_money.ClearActiveLoan(self) end

---@param self WorldAPIs_money
---@return any _
function WorldAPIs_money.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_money
---@param nAdvertCostPerDay number
---@param nTick number
---@param nTotalTicks number
---@return number nSpendingNow
function WorldAPIs_money.Distribute(self, nAdvertCostPerDay, nTick, nTotalTicks) end

---@param self WorldAPIs_money
---@return number nPathsCostMultiplier
function WorldAPIs_money.GetBasePathsCostMultiplier(self) end

---@param self WorldAPIs_money
---@return number nPathsRefundMultiplier
function WorldAPIs_money.GetBasePathsRefundMultiplier(self) end

---@param self WorldAPIs_money
---@return number nPoolsCostMultiplier
function WorldAPIs_money.GetBasePoolsCostMultiplier(self) end

---@param self WorldAPIs_money
---@return number nPoolsRefundMultiplier
function WorldAPIs_money.GetBasePoolsRefundMultiplier(self) end

---@param self WorldAPIs_money
---@return number nRefundMultiplier
function WorldAPIs_money.GetBaseRefundMultiplier(self) end

---@param self WorldAPIs_money
---@return number nSceneryRefundMultiplier
function WorldAPIs_money.GetBaseSceneryRefundMultiplier(self) end

---@param self WorldAPIs_money
---@return number nTrackRefundMultiplier
function WorldAPIs_money.GetBaseTrackRefundMultiplier(self) end

---@param self WorldAPIs_money
---@return number nCash
function WorldAPIs_money.GetCash(self) end

---@param self WorldAPIs_money
---@return number nCurrentTax
function WorldAPIs_money.GetChallengeTaxMultiplier(self) end

---@param self WorldAPIs_money
---@param nArg2 number
---@param sArg3 string
function WorldAPIs_money.GetExpenditureForMonth(self, nArg2, sArg3) end

---@param self WorldAPIs_money
---@return table tSummary
function WorldAPIs_money.GetLifetimeSummary(self) end

---@param self WorldAPIs_money
---@return number nLoanDebt
function WorldAPIs_money.GetLoanDebt(self) end

---@param self WorldAPIs_money
---@return number nLoanInterestRate
function WorldAPIs_money.GetLoanInterestRate(self) end

---@param self WorldAPIs_money
---@param nPotentialLoanIncrease number
---@return table tLoanOffer
function WorldAPIs_money.GetLoanOffer(self, nPotentialLoanIncrease) end

---@param self WorldAPIs_money
---@return number nMaxPayment
function WorldAPIs_money.GetLoanOneOffMaxPaymentData(self) end

---@param self WorldAPIs_money
---@param Arg2 any
function WorldAPIs_money.GetLoanProfitCutPercentage(self, Arg2) end

---@param self WorldAPIs_money
---@return number nStage
function WorldAPIs_money.GetLoanStage(self) end

---@param self WorldAPIs_money
---@return boolean bDisableLoans
function WorldAPIs_money.GetLoansDisabled(self) end

---@param self WorldAPIs_money
---@return number nMaxLoanSizeMultiplier
function WorldAPIs_money.GetMaxLoanSizeMultiplier(self) end

---@param self WorldAPIs_money
---@return any pack
function WorldAPIs_money.GetProfitCutMinMaxMultipler(self) end

---@param self WorldAPIs_money
---@param nDayID number
---@return table tSummary
function WorldAPIs_money.GetSummaryForDay(self, nDayID) end

---@param self WorldAPIs_money
---@param nArg2 number
---@return table tSummary
function WorldAPIs_money.GetSummaryForMonth(self, nArg2) end

---@param self WorldAPIs_money
---@param nI number
---@return table tHourlySummary
function WorldAPIs_money.GetSummaryHoursForDay(self, nI) end

---@param self WorldAPIs_money
---@param ridePricingPremium any
---@return boolean bRidePremiumPriceOption
function WorldAPIs_money.GetTicketTypeAvailable(self, ridePricingPremium) end

---@param self WorldAPIs_money
function WorldAPIs_money.GetTrackRefundMultiplier(self) end

---@param self WorldAPIs_money
---@return boolean bUnlimitedCash
function WorldAPIs_money.HasUnlimitedCash(self) end

---@param self WorldAPIs_money
---@param integer any
---@param expenditureCategorySceneryConstruction any
---@param bArg4 boolean?
---@return boolean bMoneySpent
function WorldAPIs_money.ModifyCash(self, integer, expenditureCategorySceneryConstruction, bArg4) end

---@param self WorldAPIs_money
---@param nInitialCash number
function WorldAPIs_money.ParkReset(self, nInitialCash) end

---@param self WorldAPIs_money
---@param nValue number
---@param bArg3 boolean
function WorldAPIs_money.PayLoan(self, nValue, bArg3) end

---@param self WorldAPIs_money
---@param nChallengeTaxAmount number
function WorldAPIs_money.SetChallengeTaxMultiplier(self, nChallengeTaxAmount) end

---@param self WorldAPIs_money
---@param nInterestRate number
function WorldAPIs_money.SetLoanInterestRate(self, nInterestRate) end

---@param self WorldAPIs_money
---@param nStage number
function WorldAPIs_money.SetLoanStage(self, nStage) end

---@param self WorldAPIs_money
---@param bDisableLoans boolean
function WorldAPIs_money.SetLoansDisabled(self, bDisableLoans) end

---@param self WorldAPIs_money
---@param nMaxLoanSizeMultiplier number
function WorldAPIs_money.SetMaxLoanSizeMultiplier(self, nMaxLoanSizeMultiplier) end

---@param self WorldAPIs_money
---@param bShopSalesDisabled boolean
function WorldAPIs_money.SetNoCashChangesFromShopSales(self, bShopSalesDisabled) end

---@param self WorldAPIs_money
---@param bTicketSalesDisabled boolean
function WorldAPIs_money.SetNoCashChangesFromTicketSales(self, bTicketSalesDisabled) end

---@param self WorldAPIs_money
---@param bUpkeepCostsDisabled boolean
function WorldAPIs_money.SetNoCashChangesFromUpkeepCosts(self, bUpkeepCostsDisabled) end

---@param self WorldAPIs_money
---@param nPathsCostMultiplier number
function WorldAPIs_money.SetPathsCostMultiplier(self, nPathsCostMultiplier) end

---@param self WorldAPIs_money
---@param nPathsRefundMultiplier number
function WorldAPIs_money.SetPathsRefundMultiplier(self, nPathsRefundMultiplier) end

---@param self WorldAPIs_money
---@param nPoolsCostMultiplier number
function WorldAPIs_money.SetPoolsCostMultiplier(self, nPoolsCostMultiplier) end

---@param self WorldAPIs_money
---@param nPoolsRefundMultiplier number
function WorldAPIs_money.SetPoolsRefundMultiplier(self, nPoolsRefundMultiplier) end

---@param self WorldAPIs_money
---@param Arg2 any
function WorldAPIs_money.SetProfitCutMinMaxMultipler(self, Arg2) end

---@param self WorldAPIs_money
---@param nRefundMultiplier number
function WorldAPIs_money.SetRefundMultiplier(self, nRefundMultiplier) end

---@param self WorldAPIs_money
---@param nSceneryRefundMultiplier number
function WorldAPIs_money.SetSceneryRefundMultiplier(self, nSceneryRefundMultiplier) end

---@param self WorldAPIs_money
---@param bRidePremiumPriceOption boolean
---@param ridePricingPremium any
function WorldAPIs_money.SetTicketTypeAvailable(self, bRidePremiumPriceOption, ridePricingPremium) end

---@param self WorldAPIs_money
---@param nTrackRefundMultiplier number
function WorldAPIs_money.SetTrackRefundMultiplier(self, nTrackRefundMultiplier) end

---@param self WorldAPIs_money
---@param bIgnoreParameters boolean
function WorldAPIs_money.SetUnlimitedCash(self, bIgnoreParameters) end

---@param self WorldAPIs_money
---@param nValue number
---@param bIsPlayerControlledLoan boolean?
function WorldAPIs_money.TakeLoan(self, nValue, bIsPlayerControlledLoan) end


---@param self WorldAPIs_park
function WorldAPIs_park.ActivateParkEditConstraints(self) end

---@param self WorldAPIs_park
---@param moveObject any
---@param entityID any
---@param nPerkID number
function WorldAPIs_park.AddHotelPerk_MoveObject(self, moveObject, entityID, nPerkID) end

---@param self WorldAPIs_park
---@param sID string
function WorldAPIs_park.AddObjectToBrush(self, sID) end

---@param self WorldAPIs_park
---@return boolean bSecurityEnabled
function WorldAPIs_park.AreSecurityFeaturesEnabled(self) end

---@param self WorldAPIs_park
---@return boolean bStaffMoraleEnabled
function WorldAPIs_park.AreStaffMoraleFeatureEnabled(self) end

---@param self WorldAPIs_park
---@param nRideID number
---@return any SetEditable
function WorldAPIs_park.CanEditEntityAgainstParkBoundary(self, nRideID) end

---@param self WorldAPIs_park
---@return boolean bCanToggleOpenState
function WorldAPIs_park.CanToggleParkOpenState(self) end

---@param self WorldAPIs_park
---@param sInput string
function WorldAPIs_park.ChangeCurrentBrushName(self, sInput) end

---@param self WorldAPIs_park
function WorldAPIs_park.ClearAllPlotRestrictions(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.ClearEnforcedPlacementArea(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.CompleteParkThemingSerialisationLoad(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.CompletePathClutterSerialisationLoad(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_park
---@param Arg2 any
function WorldAPIs_park.CopyNewBrush(self, Arg2) end

---@param self WorldAPIs_park
---@param Arg2 any
function WorldAPIs_park.CreateNewBrush(self, Arg2) end

---@param self WorldAPIs_park
---@param sNewPointName string
---@param cPointData table
function WorldAPIs_park.CreateScenarioLocationPoint(self, sNewPointName, cPointData) end

---@param self WorldAPIs_park
---@param nProp number
---@param nDeadlineMonth number
---@param nDeadlineYear number
---@return table oEndDate
function WorldAPIs_park.CreateTimeOfMonth(self, nProp, nDeadlineMonth, nDeadlineYear) end

---@param self WorldAPIs_park
function WorldAPIs_park.DeactivateParkEditConstraints(self) end

---@param self WorldAPIs_park
---@return table tParkZoneEntityArray
function WorldAPIs_park.Debug_GetAllParkZones(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.DeleteCurrentBrush(self) end

---@param self WorldAPIs_park
---@param deleteName any
function WorldAPIs_park.DeleteScenarioLocationPoint(self, deleteName) end

---@param self WorldAPIs_park
---@param nEntityID number
function WorldAPIs_park.EntityHasAssociatedCrimeAffecter(self, nEntityID) end

---@param self WorldAPIs_park
---@param entityID any
function WorldAPIs_park.FillBin(self, entityID) end

---@param self WorldAPIs_park
---@param nEntity number
function WorldAPIs_park.FlagStationForRezoning(self, nEntity) end

---@param self WorldAPIs_park
---@param nHotelEntityID number
---@return any allRooms
function WorldAPIs_park.GetAllHotelRoomsInWorldOutsideRadius(self, nHotelEntityID) end

---@param self WorldAPIs_park
---@return table tHotelIDs
function WorldAPIs_park.GetAllHotels(self) end

---@param self WorldAPIs_park
---@return table tPriceOpitions
function WorldAPIs_park.GetAllParkEntrancePriceOptionsAsString(self) end

---@param self WorldAPIs_park
---@param nSelectedZoneID number?
---@return table tWidgetData
function WorldAPIs_park.GetAllParkZoneWidgetData(self, nSelectedZoneID) end

---@param self WorldAPIs_park
---@param bArg2 boolean
---@return table tPoolEntities
function WorldAPIs_park.GetAllPoolEntities(self, bArg2) end

---@param self WorldAPIs_park
---@return table tScenarioPointNames
function WorldAPIs_park.GetAllScenarioLocationPointNames(self) end

---@param self WorldAPIs_park
---@return table tLocationPointNames
function WorldAPIs_park.GetAllScenarioLocationPointNamesCategorised(self) end

---@param self WorldAPIs_park
---@param scenarioLocationPointTypePopUpText any
---@return table tLocationPoints
function WorldAPIs_park.GetAllScenarioLocationPointsForCategory(self, scenarioLocationPointTypePopUpText) end

---@param self WorldAPIs_park
---@return table tAllThemes
function WorldAPIs_park.GetAllThemes(self) end

---@param self WorldAPIs_park
---@param Arg2 any
---@param nPlotID number
---@return number nCurrentAvgPrestige
function WorldAPIs_park.GetAverageAndMaxPoolPrestige(self, Arg2, nPlotID) end

---@param self WorldAPIs_park
---@param nRequiredArea number
---@return number nAvgCleanliness
---@return number nLowestCleanliness
function WorldAPIs_park.GetAverageAndMinPoolCleanliness(self, nRequiredArea) end

---@param self WorldAPIs_park
---@param bArg2 boolean
---@return any SetDataStoreElement
function WorldAPIs_park.GetAverageNumberOfRidesPerGuestYesterday(self, bArg2) end

---@param self WorldAPIs_park
---@param cStation table
function WorldAPIs_park.GetAverageThemingForFlatRide(self, cStation) end

---@param self WorldAPIs_park
---@param nStationID number
---@return number nThemingWeight
function WorldAPIs_park.GetAverageThemingForRide(self, nStationID) end

---@param self WorldAPIs_park
---@param cStation table
function WorldAPIs_park.GetAverageThemingForTrackRide(self, cStation) end

---@param self WorldAPIs_park
---@param nZoneID number
---@return number nAverageSceneryWeight
---@return table tThemes
function WorldAPIs_park.GetAverageThemingForZone(self, nZoneID) end

---@param self WorldAPIs_park
---@return boolean bActive
function WorldAPIs_park.GetBaseAudioDistortionActive(self) end

---@param self WorldAPIs_park
---@return number nIntensity
function WorldAPIs_park.GetBaseAudioDistortionIntensity(self) end

---@param self WorldAPIs_park
---@return string sName
function WorldAPIs_park.GetBaseAudioDistortionName(self) end

---@param self WorldAPIs_park
---@return string sSFXName
function WorldAPIs_park.GetBaseAudioDistortionSFXName(self) end

---@param self WorldAPIs_park
---@return number nBinDesirabilityMultiplier
function WorldAPIs_park.GetBinDesirabilityMultiplier(self) end

---@param self WorldAPIs_park
---@return number nScheduleIndex
function WorldAPIs_park.GetBlockIndex(self) end

---@param self WorldAPIs_park
---@param bArg2 boolean?
---@return table tBrushes
function WorldAPIs_park.GetBrushNames(self, bArg2) end

---@param self WorldAPIs_park
---@return table tActiveTags
function WorldAPIs_park.GetBrushTags(self) end

---@param self WorldAPIs_park
---@param cameraTypeSecurityCamera any
---@return any cameraEntities
function WorldAPIs_park.GetCamerasOfType(self, cameraTypeSecurityCamera) end

---@param self WorldAPIs_park
---@param entityID any
---@param cPerkChangesToggled table
---@return number nConstructionCost
---@return number nBaseCost
---@return number nRoomCoverage
function WorldAPIs_park.GetCostForHotelPerkChange(self, entityID, cPerkChangesToggled) end

---@param self WorldAPIs_park
---@return number nCurrentBrush
function WorldAPIs_park.GetCurrentBrushIndex(self) end

---@param self WorldAPIs_park
---@return table tObjectSettings
function WorldAPIs_park.GetCurrentBrushObjectList(self) end

---@param self WorldAPIs_park
---@return table tBrushSettings
function WorldAPIs_park.GetCurrentBrushSettings(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetDayDurationInSeconds(self) end

---@param self WorldAPIs_park
---@return table tDebugSettings
function WorldAPIs_park.GetDebugSettings(self) end

---@param self WorldAPIs_park
---@param difficultySettingNameSecurityFeaturesEnabled any
function WorldAPIs_park.GetDifficultySettingValue(self, difficultySettingNameSecurityFeaturesEnabled) end

---@param self WorldAPIs_park
---@return table tCurrentDifficultySettings
function WorldAPIs_park.GetDifficultySettingsAsTable(self) end

---@param self WorldAPIs_park
---@param rideI any
---@param bArg3 boolean
function WorldAPIs_park.GetEntityName(self, rideI, bArg3) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetFacilitiesVandalisedCount(self) end

---@param self WorldAPIs_park
---@param priceStateFAIR any?
---@return number nFastPassPrice
function WorldAPIs_park.GetFastPassTicketPrice(self, priceStateFAIR) end

---@param self WorldAPIs_park
---@return number nFastPassPriceState
function WorldAPIs_park.GetFastPassTicketPriceState(self) end

---@param self WorldAPIs_park
---@param nStationID number
---@return number nPrestigeBonus
function WorldAPIs_park.GetFlatRideSceneryPrestigeBonus(self, nStationID) end

---@param self WorldAPIs_park
---@param vPosition vector
---@param bUseStamp boolean
---@param bUseStamp2 boolean
---@return table tPoints
---@return table tFailReasons
function WorldAPIs_park.GetFoliageBrushPoints(self, vPosition, bUseStamp, bUseStamp2) end

---@param self WorldAPIs_park
---@param entityID any
---@return any hotelEntityID
function WorldAPIs_park.GetHotelRoomOwner(self, entityID) end

---@param self WorldAPIs_park
---@return any SetUseSearchRadius
function WorldAPIs_park.GetHotelRoomRadius(self) end

---@param self WorldAPIs_park
---@param entityID any
function WorldAPIs_park.GetHotelRoomRunningCost(self, entityID) end

---@param self WorldAPIs_park
---@param nEntityID number
---@return any type
function WorldAPIs_park.GetHotelRoomType(self, nEntityID) end

---@param self WorldAPIs_park
---@param nHotelEntityID number
---@return table tRoomList
function WorldAPIs_park.GetHotelRooms(self, nHotelEntityID) end

---@param self WorldAPIs_park
---@param nEntityID number
---@return number nNumConnectedItems
function WorldAPIs_park.GetHotelRoomsCount(self, nEntityID) end

---@param self WorldAPIs_park
---@param entityID any
---@param roomTypeNormal any
---@return table tStandardRooms
function WorldAPIs_park.GetHotelRoomsOfType(self, entityID, roomTypeNormal) end

---@param self WorldAPIs_park
---@param id any
---@return any stars
function WorldAPIs_park.GetHotelStarCount(self, id) end

---@param self WorldAPIs_park
---@return number nStartingCashMultiplier
function WorldAPIs_park.GetInitialCashMultiplier(self) end

---@param self WorldAPIs_park
---@return string sCurrentIsland
function WorldAPIs_park.GetIslandID(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetLifetimeApprehendedPickpockets(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetLifetimeApprehendedVandals(self) end

---@param self WorldAPIs_park
---@return number nLitterAmount
---@return number nVomitAmount
function WorldAPIs_park.GetLifetimeClutterQuantities(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetLifetimePickpockets(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetLifetimeVandals(self) end

---@param self WorldAPIs_park
---@return boolean bIsFixedLighting
function WorldAPIs_park.GetLightingFixedEnabled(self) end

---@param self WorldAPIs_park
---@return number nFixedTime
function WorldAPIs_park.GetLightingFixedTime(self) end

---@param self WorldAPIs_park
---@return number nLightingStartTime
---@return number nLightingEndTime
function WorldAPIs_park.GetLightingStartEndTime(self) end

---@param self WorldAPIs_park
---@param cCameras table
---@return table tAggregateCameraData
function WorldAPIs_park.GetListOfCameras(self, cCameras) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetLitterClutterDisabled(self) end

---@param self WorldAPIs_park
---@return number nLitterGenerationMultiplier
function WorldAPIs_park.GetLitterGenerationMultiplier(self) end

---@param self WorldAPIs_park
---@param sTheme string
function WorldAPIs_park.GetLocTagForTheme(self, sTheme) end

---@param self WorldAPIs_park
---@return number nMaxParkZones
function WorldAPIs_park.GetMaxParkZoneCount(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetMonthDurationInSeconds(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetNumberOfHoursInDay(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetOpenConnectedPoolCount(self) end

---@param self WorldAPIs_park
---@return number nParkOpeningTime
---@return number _
function WorldAPIs_park.GetOpeningClosingTime(self) end

---@param self WorldAPIs_park
---@return table tParkExpansions
function WorldAPIs_park.GetParkBoundaryPlotUIData(self) end

---@param self WorldAPIs_park
---@return number nCurrentDay
function WorldAPIs_park.GetParkDay(self) end

---@param self WorldAPIs_park
---@param bArg2 boolean
---@return number nParkEfficiency
function WorldAPIs_park.GetParkEfficiency(self, bArg2) end

---@param self WorldAPIs_park
---@param priceStateFAIR any?
---@return number nAdultEntranceTicketPrice
function WorldAPIs_park.GetParkEntranceAdultTicketPrice(self, priceStateFAIR) end

---@param self WorldAPIs_park
---@param priceStateFAIR any?
---@return number nChildEntranceTicketPrice
function WorldAPIs_park.GetParkEntranceChildTicketPrice(self, priceStateFAIR) end

---@param self WorldAPIs_park
---@return vector vEntranceFocus
function WorldAPIs_park.GetParkEntranceFocus(self) end

---@param self WorldAPIs_park
---@param nPriceStateFAIR number
---@return string sAdultParkEntryDefaultPriceState
function WorldAPIs_park.GetParkEntrancePriceOptionAsString(self, nPriceStateFAIR) end

---@param self WorldAPIs_park
---@return number nParkPriceState
function WorldAPIs_park.GetParkEntrancePriceState(self) end

---@param self WorldAPIs_park
---@return string sGeome
function WorldAPIs_park.GetParkGeome(self) end

---@param self WorldAPIs_park
---@return number nMonthsOpen
function WorldAPIs_park.GetParkMonthsOpen(self) end

---@param self WorldAPIs_park
---@return string sParkName
function WorldAPIs_park.GetParkName(self) end

---@param self WorldAPIs_park
---@return number nParkThemingCoverage
function WorldAPIs_park.GetParkThemingCoverage(self) end

---@param self WorldAPIs_park
---@return number nParkCumulativeThemingWeight
function WorldAPIs_park.GetParkThemingCumulativeWeight(self) end

---@param self WorldAPIs_park
---@return number nVisitorsLastMonth
---@return number nMissedSalesLastMonth
---@return number nLifetimeVisitors
function WorldAPIs_park.GetParkVisitorStats(self) end

---@param self WorldAPIs_park
---@return number nVisitorsToday
---@return number nAdultToday
---@return number nChildToday
---@return number nPoolPassToday
---@return number nFastPassToday
function WorldAPIs_park.GetParkVisitorTodayStats(self) end

---@param self WorldAPIs_park
---@param nZoneID number
---@return number nZoneArea
function WorldAPIs_park.GetParkZoneArea(self, nZoneID) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetParkZoneCount(self) end

---@param self WorldAPIs_park
---@param nParkZoneID number
---@return table tParkZoneData
function WorldAPIs_park.GetParkZoneDatastoreData(self, nParkZoneID) end

---@param self WorldAPIs_park
---@param nZoneStableID number
---@return any zoneEntityID
function WorldAPIs_park.GetParkZoneEntityIDFromStableID(self, nZoneStableID) end

---@param self WorldAPIs_park
---@return number nFallbackZoneID
function WorldAPIs_park.GetParkZoneFallbackID(self) end

---@param self WorldAPIs_park
---@param nZoneEntityID number
---@return vector vFocusPos
function WorldAPIs_park.GetParkZoneFocusPos(self, nZoneEntityID) end

---@param self WorldAPIs_park
---@param nPlatformID number
---@return number nParkZone
function WorldAPIs_park.GetParkZoneForFlumePlatform(self, nPlatformID) end

---@param self WorldAPIs_park
---@param nSelectedPartID number
---@return number nZoneID
function WorldAPIs_park.GetParkZoneForScenery(self, nSelectedPartID) end

---@param self WorldAPIs_park
---@param nStationID number
---@return number nParkZoneID
function WorldAPIs_park.GetParkZoneForStation(self, nStationID) end

---@param self WorldAPIs_park
---@param vSelectionPos vector
---@return number nHoveredZoneID
function WorldAPIs_park.GetParkZoneIDFromPoint(self, vSelectionPos) end

---@param self WorldAPIs_park
---@param nParkZone number
function WorldAPIs_park.GetParkZoneName(self, nParkZone) end

---@param self WorldAPIs_park
---@param nZoneEntityID number
function WorldAPIs_park.GetParkZoneName_DesignOverride(self, nZoneEntityID) end

---@param self WorldAPIs_park
---@param nZoneEntityID number
---@return string sZonePlayerName
function WorldAPIs_park.GetParkZoneName_PlayerOverride(self, nZoneEntityID) end

---@param self WorldAPIs_park
---@param nZoneEntityID number
---@return number nDestroyingZoneStableID
function WorldAPIs_park.GetParkZoneStableIDFromEntityID(self, nZoneEntityID) end

---@param self WorldAPIs_park
---@return number Y
function WorldAPIs_park.GetParkZonesRenderPlaneHeight(self) end

---@param self WorldAPIs_park
---@return table tZonesWithNoShape
function WorldAPIs_park.GetParkZonesWithNoShape(self) end

---@param self WorldAPIs_park
---@return number nLitterAmount
---@return number nVomitAmount
function WorldAPIs_park.GetPathClutterQuantities(self) end

---@param self WorldAPIs_park
---@param cCameraIDs table
---@return table tCameraData
function WorldAPIs_park.GetPlayerControlledCameraData(self, cCameraIDs) end

---@param self WorldAPIs_park
---@return number nTotalLandsOwns
function WorldAPIs_park.GetPlayerOwnedPlotsOfLandCount(self) end

---@param self WorldAPIs_park
---@param selectedPlotID any
---@return table tPlotData
function WorldAPIs_park.GetPlotData(self, selectedPlotID) end

---@param self WorldAPIs_park
---@param vPos vector
---@return number nPlotID
function WorldAPIs_park.GetPlotIDForPosition(self, vPos) end

---@param self WorldAPIs_park
---@param nPlotID number
---@return table tPlotUIData
function WorldAPIs_park.GetPlotUIData(self, nPlotID) end

---@param self WorldAPIs_park
---@param Arg2 any
---@param nPlotID number
---@return number nPreexistingPoolCount
function WorldAPIs_park.GetPoolCount(self, Arg2, nPlotID) end

---@param self WorldAPIs_park
---@param priceStateFAIR any?
---@return number nPoolPassPrice
function WorldAPIs_park.GetPoolPassPrice(self, priceStateFAIR) end

---@param self WorldAPIs_park
---@return number nPoolPassPriceState
function WorldAPIs_park.GetPoolPassPriceState(self) end

---@param self WorldAPIs_park
---@param nPropDiff number
---@return number nHoursPassed
function WorldAPIs_park.GetPropAsHours(self, nPropDiff) end

---@param self WorldAPIs_park
---@return number nRepairAllCost
function WorldAPIs_park.GetRepairAllVandalisedCost(self) end

---@param self WorldAPIs_park
---@param nPartID number
---@return number nCost
function WorldAPIs_park.GetRepairVandalisedCost(self, nPartID) end

---@param self WorldAPIs_park
---@return vector vSafePos
function WorldAPIs_park.GetSafePositionForGuests(self) end

---@param self WorldAPIs_park
---@param sLocationPointName string
---@return table tPointData
function WorldAPIs_park.GetScenarioLocationPoint(self, sLocationPointName) end

---@param self WorldAPIs_park
---@param nEntityID number
function WorldAPIs_park.GetSceneryScore(self, nEntityID) end

---@param self WorldAPIs_park
---@return table tSpawnPointEntities
function WorldAPIs_park.GetSpawnPoints(self) end

---@param self WorldAPIs_park
---@return number nTotalHours
function WorldAPIs_park.GetTimeNumberOfBlocks(self) end

---@param self WorldAPIs_park
---@return number nHour
---@return number nMinute
---@return number nProp
function WorldAPIs_park.GetTimeOfDayActual(self) end

---@param self WorldAPIs_park
---@param nNextFreeSlot number
---@return any _ConstructTimeArray
function WorldAPIs_park.GetTimeOfDayForBlockIndex(self, nNextFreeSlot) end

---@param self WorldAPIs_park
---@return number nHour
---@return number nMinute
---@return number nDayProp
---@return number nDawnDuskProp
---@return any isApparentTimeofDayOverriden
function WorldAPIs_park.GetTimeOfDayLighting(self) end

---@param self WorldAPIs_park
---@return number nHour
---@return number nMinute
---@return number nPropThroughDay
---@return any _
---@return boolean bUserOverrideEnabled
function WorldAPIs_park.GetTimeOfDayUserOverride(self) end

---@param self WorldAPIs_park
---@return table oLastQuitTime
function WorldAPIs_park.GetTimeOfMonth(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetTotalCriminalsInPark(self) end

---@param self WorldAPIs_park
---@param bArg2 boolean
---@return number nTotalLands
function WorldAPIs_park.GetTotalLandCount(self, bArg2) end

---@param self WorldAPIs_park
---@return number nTotalPoolPrestige
function WorldAPIs_park.GetTotalPoolPrestige(self) end

---@param self WorldAPIs_park
---@param nStationID number
---@return number nPrestigeBonus
function WorldAPIs_park.GetTrackedRideSceneryPrestigeBonus(self, nStationID) end

---@param self WorldAPIs_park
---@return any hotelRooms
function WorldAPIs_park.GetUnownedHotelRooms(self) end

---@param self WorldAPIs_park
---@return number nRadius
function WorldAPIs_park.GetVC_ParkZoneBrushRadius(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetVandalisedFurnitureCount(self) end

---@param self WorldAPIs_park
---@param entityID any
---@return any debugInfo
function WorldAPIs_park.GetVendingMachineDebug(self, entityID) end

---@param self WorldAPIs_park
---@param entityID any
function WorldAPIs_park.GetVendingMachineMaintenanceLevel(self, entityID) end

---@param self WorldAPIs_park
---@param entityID any
---@return any vendingMachineType
function WorldAPIs_park.GetVendingMachineType(self, entityID) end

---@param self WorldAPIs_park
---@return number nLitterAmount
---@return number nVomitAmount
function WorldAPIs_park.GetVisualPathClutterQuantities(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.GetVomitClutterDisabled(self) end

---@param self WorldAPIs_park
---@param bArg2 boolean
function WorldAPIs_park.GreyOutAllPlots(self, bArg2) end

---@param self WorldAPIs_park
---@param sceneryEntityID any
function WorldAPIs_park.HideSceneryPiece(self, sceneryEntityID) end

---@param self WorldAPIs_park
---@param entityID any
---@return boolean _
function WorldAPIs_park.IsBin(self, entityID) end

---@param self WorldAPIs_park
---@param nDifficultySettingName number
---@return boolean _
function WorldAPIs_park.IsDifficultySettingActive(self, nDifficultySettingName) end

---@param self WorldAPIs_park
---@param nDifficultySettingName number
function WorldAPIs_park.IsDifficultySettingOnlyOnMainMenu(self, nDifficultySettingName) end

---@param self WorldAPIs_park
---@param nEntityID number
---@return boolean _
function WorldAPIs_park.IsHotel(self, nEntityID) end

---@param self WorldAPIs_park
---@param nEntityID number
---@return boolean _
function WorldAPIs_park.IsHotelRoom(self, nEntityID) end

---@param self WorldAPIs_park
---@param nEntityID number
---@return boolean _
function WorldAPIs_park.IsParkEntrance(self, nEntityID) end

---@param self WorldAPIs_park
---@return boolean bParkOpen
function WorldAPIs_park.IsParkOpenForGuests(self) end

---@param self WorldAPIs_park
---@param nSelectedZoneID number
---@return boolean bParkZoneExists
function WorldAPIs_park.IsParkZoneEntity(self, nSelectedZoneID) end

---@param self WorldAPIs_park
---@param vPosition vector
---@return any allowDelete
function WorldAPIs_park.IsPositionWithinParkBoundary(self, vPosition) end

---@param self WorldAPIs_park
---@param nEntityID number
---@return boolean bIsVandalised
function WorldAPIs_park.IsVandalised(self, nEntityID) end

---@param self WorldAPIs_park
---@param entityID any
---@return boolean bIsVendingMachine
function WorldAPIs_park.IsVendingMachine(self, entityID) end

---@param self WorldAPIs_park
---@param entityID any
function WorldAPIs_park.IsVendingMachineBrokenDown(self, entityID) end

---@param self WorldAPIs_park
---@param entityID any
---@return boolean _
function WorldAPIs_park.IsWorkshop(self, entityID) end

---@param self WorldAPIs_park
---@param entityID any
---@return any isZoltran
function WorldAPIs_park.IsZoltran(self, entityID) end

---@param self WorldAPIs_park
---@param Arg2 any
---@param bKeepLitter boolean
---@param bKeepVomit boolean
function WorldAPIs_park.ParkReset(self, Arg2, bKeepLitter, bKeepVomit) end

---@param self WorldAPIs_park
function WorldAPIs_park.ReloadBrushes(self) end

---@param self WorldAPIs_park
---@param moveObject any
---@param entityID any
---@param nPerkID number
function WorldAPIs_park.RemoveHotelPerk_MoveObject(self, moveObject, entityID, nPerkID) end

---@param self WorldAPIs_park
---@param Arg2 any
function WorldAPIs_park.RemoveObjectFromBrush(self, Arg2) end

---@param self WorldAPIs_park
---@param sSelectedPointName string
---@param sNewName string
function WorldAPIs_park.RenameScenarioLocationPoint(self, sSelectedPointName, sNewName) end

---@param self WorldAPIs_park
function WorldAPIs_park.RepairAllVandalisedItems(self) end

---@param self WorldAPIs_park
---@param clh any
---@param partID any
---@param repairCost any
function WorldAPIs_park.RepairVandalisedItem(self, clh, partID, repairCost) end

---@param self WorldAPIs_park
---@param entityID any
function WorldAPIs_park.RequestService(self, entityID) end

---@param self WorldAPIs_park
function WorldAPIs_park.ResetAudioDistortion(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.ResetColourGrading(self) end

---@param self WorldAPIs_park
---@param nRideI number
function WorldAPIs_park.ResetEntityName(self, nRideI) end

---@param self WorldAPIs_park
function WorldAPIs_park.ResetFilmGrain(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.ResetVignette(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.SaveBrushes(self) end

---@param self WorldAPIs_park
---@param entityID any
---@param staffTypeJanitor any
function WorldAPIs_park.SendHighPriorityStaffAlert(self, entityID, staffTypeJanitor) end

---@param self WorldAPIs_park
function WorldAPIs_park.SendSandboxSettingsUpdatedMessage(self) end

---@param self WorldAPIs_park
---@param sName string
---@param nIntensity number
---@param sSFXName string
function WorldAPIs_park.SetAudioDistortion(self, sName, nIntensity, sSFXName) end

---@param self WorldAPIs_park
---@param nBinDesirabilityMultiplier number
function WorldAPIs_park.SetBinDesirabilityMultiplier(self, nBinDesirabilityMultiplier) end

---@param self WorldAPIs_park
---@param nBrushIntensity number
function WorldAPIs_park.SetBrushIntensity(self, nBrushIntensity) end

---@param self WorldAPIs_park
---@param nBrushSize number
function WorldAPIs_park.SetBrushSize(self, nBrushSize) end

---@param self WorldAPIs_park
---@param Arg2 any
function WorldAPIs_park.SetCanPlaceOnPaths(self, Arg2) end

---@param self WorldAPIs_park
---@param Arg2 any
function WorldAPIs_park.SetCanPlaceToSurface(self, Arg2) end

---@param self WorldAPIs_park
---@param bArg2 boolean
function WorldAPIs_park.SetCheckForCollisions(self, bArg2) end

---@param self WorldAPIs_park
---@param nPropThroughDay number
function WorldAPIs_park.SetClosingProp(self, nPropThroughDay) end

---@param self WorldAPIs_park
---@param sPackage string
---@param nIntensity number
function WorldAPIs_park.SetColourGrading(self, sPackage, nIntensity) end

---@param self WorldAPIs_park
---@param sBrush string
function WorldAPIs_park.SetCurrentBrushUsingName(self, sBrush) end

---@param self WorldAPIs_park
---@param nNewDawnDuskProp number
function WorldAPIs_park.SetDayPropThrough(self, nNewDawnDuskProp) end

---@param self WorldAPIs_park
---@param cDifficultySettings table
function WorldAPIs_park.SetDifficultySettingsFromTable(self, cDifficultySettings) end

---@param self WorldAPIs_park
---@param Arg2 any
---@param vec2 Vector2
---@param bFillIn boolean
---@param bCheckForClear boolean?
function WorldAPIs_park.SetEnforcedPlacementArea(self, Arg2, vec2, bFillIn, bCheckForClear) end

---@param self WorldAPIs_park
---@param nValue number
function WorldAPIs_park.SetFastPassTicketPrice(self, nValue) end

---@param self WorldAPIs_park
---@param sPriceMode string
function WorldAPIs_park.SetFastPassTicketPriceState(self, sPriceMode) end

---@param self WorldAPIs_park
---@param nIntensity number
function WorldAPIs_park.SetFilmGrain(self, nIntensity) end

---@param self WorldAPIs_park
---@param bFreeFastPass boolean
function WorldAPIs_park.SetFreeFastPass(self, bFreeFastPass) end

---@param self WorldAPIs_park
---@param bFreeParkEntrance boolean
function WorldAPIs_park.SetFreeParkEntrance(self, bFreeParkEntrance) end

---@param self WorldAPIs_park
---@param bFreePoolPass boolean
function WorldAPIs_park.SetFreePoolPass(self, bFreePoolPass) end

---@param self WorldAPIs_park
---@param moveObject any
---@param entityID any
---@param nRoomType number
---@param Arg5 any
function WorldAPIs_park.SetHotelRoomCost_MoveObject(self, moveObject, entityID, nRoomType, Arg5) end

---@param self WorldAPIs_park
---@param moveObject any
---@param cRoomList table
function WorldAPIs_park.SetHotelRooms_MoveObject(self, moveObject, cRoomList) end

---@param self WorldAPIs_park
---@param entityID any
---@param bValue boolean
function WorldAPIs_park.SetHotelSynced(self, entityID, bValue) end

---@param self WorldAPIs_park
---@param lastHoveredPlotID any
function WorldAPIs_park.SetHoveredPlotID(self, lastHoveredPlotID) end

---@param self WorldAPIs_park
---@param Arg2 any
function WorldAPIs_park.SetLightingEndProp(self, Arg2) end

---@param self WorldAPIs_park
---@param Arg2 any
function WorldAPIs_park.SetLightingStartProp(self, Arg2) end

---@param self WorldAPIs_park
---@param Arg2 any
function WorldAPIs_park.SetLightingTimeOfDayUserOverride(self, Arg2) end

---@param self WorldAPIs_park
---@param bEnabled boolean
function WorldAPIs_park.SetLightingTimeOfDayUserOverrideEnabled(self, bEnabled) end

---@param self WorldAPIs_park
---@param Arg2 any
function WorldAPIs_park.SetLitterClutterDisabled(self, Arg2) end

---@param self WorldAPIs_park
---@param bEnabledLitter boolean
function WorldAPIs_park.SetLitterEnabled(self, bEnabledLitter) end

---@param self WorldAPIs_park
---@param nLitterGenerationMultiplier number
function WorldAPIs_park.SetLitterGenerationMultiplier(self, nLitterGenerationMultiplier) end

---@param self WorldAPIs_park
---@param bLockedSceneryContributesToTheming boolean
function WorldAPIs_park.SetLockedSceneryContributesToTheming(self, bLockedSceneryContributesToTheming) end

---@param self WorldAPIs_park
---@param nLastObjectIndex number
---@param cValue table
function WorldAPIs_park.SetObjectRadius(self, nLastObjectIndex, cValue) end

---@param self WorldAPIs_park
---@param sID string
---@param Arg3 any
function WorldAPIs_park.SetObjectToBrush(self, sID, Arg3) end

---@param self WorldAPIs_park
---@param nPropThroughDay number
function WorldAPIs_park.SetOpeningProp(self, nPropThroughDay) end

---@param self WorldAPIs_park
---@param integer any
---@param bArg3 boolean
function WorldAPIs_park.SetParkBoundaryPlotLockForPurchase(self, integer, bArg3) end

---@param self WorldAPIs_park
---@param nSetPrice number
function WorldAPIs_park.SetParkEntranceAdultTicketPrice(self, nSetPrice) end

---@param self WorldAPIs_park
---@param nAdultPriceState number
function WorldAPIs_park.SetParkEntrancePriceState(self, nAdultPriceState) end

---@param self WorldAPIs_park
---@param sParkName string
function WorldAPIs_park.SetParkName(self, sParkName) end

---@param self WorldAPIs_park
---@param bParkOpenForGuests boolean
function WorldAPIs_park.SetParkOpenForGuests(self, bParkOpenForGuests) end

---@param self WorldAPIs_park
---@param nRating number
function WorldAPIs_park.SetParkRatingForHotels(self, nRating) end

---@param self WorldAPIs_park
---@param self2 any
---@param sArg3 string
function WorldAPIs_park.SetParkRatingManager(self, self2, sArg3) end

---@param self WorldAPIs_park
---@param nZoneID number
---@param sIconPath string
function WorldAPIs_park.SetParkZoneIcon(self, nZoneID, sIconPath) end

---@param self WorldAPIs_park
---@param nZoneEntityID number
---@param arg any
function WorldAPIs_park.SetParkZoneName_DesignOverride(self, nZoneEntityID, arg) end

---@param self WorldAPIs_park
---@param nSelectedZoneID number
---@param sNewName string
function WorldAPIs_park.SetParkZoneName_PlayerOverride(self, nSelectedZoneID, sNewName) end

---@param self WorldAPIs_park
---@param Arg2 any
function WorldAPIs_park.SetParkZonesLocked(self, Arg2) end

---@param self WorldAPIs_park
---@param bArg2 boolean
function WorldAPIs_park.SetParkZonesVisibility(self, bArg2) end

---@param self WorldAPIs_park
---@param nValue number
function WorldAPIs_park.SetPoolPassPrice(self, nValue) end

---@param self WorldAPIs_park
---@param nPriceMode number
function WorldAPIs_park.SetPoolPassPriceState(self, nPriceMode) end

---@param self WorldAPIs_park
---@param moveObject any
---@param entityID any
---@param nArg4 number
---@param bValue boolean
function WorldAPIs_park.SetPriorityPassRequired_MoveObject(self, moveObject, entityID, nArg4, bValue) end

---@param self WorldAPIs_park
---@param nLastObjectIndex number
---@param bArg3 boolean
function WorldAPIs_park.SetRandomRotationAll(self, nLastObjectIndex, bArg3) end

---@param self WorldAPIs_park
---@param nLastObjectIndex number
---@param bArg3 boolean
function WorldAPIs_park.SetRandomRotationYaw(self, nLastObjectIndex, bArg3) end

---@param self WorldAPIs_park
---@param nLastObjectIndex number
---@param Arg3 any
function WorldAPIs_park.SetRotateToSurface(self, nLastObjectIndex, Arg3) end

---@param self WorldAPIs_park
---@param nLastObjectIndex number
---@param cValue table
function WorldAPIs_park.SetScaleMax(self, nLastObjectIndex, cValue) end

---@param self WorldAPIs_park
---@param nLastObjectIndex number
---@param cValue table
function WorldAPIs_park.SetScaleMin(self, nLastObjectIndex, cValue) end

---@param self WorldAPIs_park
---@param bScenarioSecurityFeaturesEnabled boolean
---@param bUseScenarioSecuritySettings boolean
function WorldAPIs_park.SetSecurityFeatureSettings(self, bScenarioSecurityFeaturesEnabled, bUseScenarioSecuritySettings) end

---@param self WorldAPIs_park
---@param selectedPlotID any
function WorldAPIs_park.SetSelectedPlotID(self, selectedPlotID) end

---@param self WorldAPIs_park
---@param showParkBoundary any
function WorldAPIs_park.SetShowParkBoundary(self, showParkBoundary) end

---@param self WorldAPIs_park
---@param bStaffMoraleEnabled boolean
function WorldAPIs_park.SetStaffMoraleFeatureSettings(self, bStaffMoraleEnabled) end

---@param self WorldAPIs_park
---@param ticketStateParkEntry any
---@param priceStateSET any
---@param bArg4 boolean
function WorldAPIs_park.SetTicketTypeAvailable(self, ticketStateParkEntry, priceStateSET, bArg4) end

---@param self WorldAPIs_park
---@param nPropThroughDay number
---@param bArg3 boolean
function WorldAPIs_park.SetTimeOfDayNarrativeOverride(self, nPropThroughDay, bArg3) end

---@param self WorldAPIs_park
---@param bArg2 boolean
---@param nTime number?
function WorldAPIs_park.SetTimeOfDayUserOverride(self, bArg2, nTime) end

---@param self WorldAPIs_park
---@param nBrushSize number
function WorldAPIs_park.SetVC_ParkZoneBrushRadius(self, nBrushSize) end

---@param self WorldAPIs_park
---@param entityID any
---@param arg any
function WorldAPIs_park.SetVendingMachineMaintenanceLevel(self, entityID, arg) end

---@param self WorldAPIs_park
---@param nStrength number
---@param nOpacity number
function WorldAPIs_park.SetVignette(self, nStrength, nOpacity) end

---@param self WorldAPIs_park
---@param Arg2 any
function WorldAPIs_park.SetVomitClutterDisabled(self, Arg2) end

---@param self WorldAPIs_park
---@param voxelTerrainEntityID any
function WorldAPIs_park.SetVoxelTerrainEntityID(self, voxelTerrainEntityID) end

---@param self WorldAPIs_park
---@param bArg2 boolean
function WorldAPIs_park.ShouldCreatePlotSpatials(self, bArg2) end

---@param self WorldAPIs_park
---@param bArg2 boolean
function WorldAPIs_park.ShowHideAllPlots(self, bArg2) end

---@param self WorldAPIs_park
---@param sceneryEntityID any
function WorldAPIs_park.ShowSceneryPiece(self, sceneryEntityID) end

---@param self WorldAPIs_park
---@return table oFallbackParkZoneCompletionToken
function WorldAPIs_park.TakeFallbackParkZoneCompletionToken(self) end

---@param self WorldAPIs_park
---@param vNewCameraPos vector
---@param bArg3 boolean
---@return boolean bInsideBoundary
---@return vector vClampedCameraPos
function WorldAPIs_park.TestConvexParkBoundaryForCamera(self, vNewCameraPos, bArg3) end

---@param self WorldAPIs_park
---@param bArg2 boolean
function WorldAPIs_park.ToggleAllCrimeAffecterGUIShapes(self, bArg2) end

---@param self WorldAPIs_park
---@param nEntityID number
---@param bShouldGUIShapeBeVisible boolean
function WorldAPIs_park.ToggleCrimeAffecterGUIShape(self, nEntityID, bShouldGUIShapeBeVisible) end

---@param self WorldAPIs_park
---@param bArg2 boolean
function WorldAPIs_park.UnlockAllPlots(self, bArg2) end

---@param self WorldAPIs_park
---@param selectedPlotID any
---@param bArg3 boolean
function WorldAPIs_park.UnlockParkBoundaryPlot(self, selectedPlotID, bArg3) end

---@param self WorldAPIs_park
function WorldAPIs_park.UpdateAllBrushObjectLists(self) end

---@param self WorldAPIs_park
function WorldAPIs_park.UpdateCollisionIgnoreFlags(self) end

---@param self WorldAPIs_park
---@param sSelectedPointName string
---@param cPointData table
function WorldAPIs_park.UpdateScenarioLocationPoint(self, sSelectedPointName, cPointData) end


---@param self WorldAPIs_placement
---@param nEntityID number
---@return number nPartID
function WorldAPIs_placement.EntityIDToPlacementID(self, nEntityID) end

---@param self WorldAPIs_placement
function WorldAPIs_placement.FinishWorldSerialisationLoad(self) end

---@param self WorldAPIs_placement
---@param partID any
---@return string sResourceName
function WorldAPIs_placement.GetPartResourceName(self, partID) end

---@param self WorldAPIs_placement
---@param nPartID number
---@return number nRequiredDLC
function WorldAPIs_placement.GetRequiredDLC(self, nPartID) end

---@param self WorldAPIs_placement
---@param nId number
---@return boolean bCondition
function WorldAPIs_placement.HasCommittedData(self, nId) end

---@param self WorldAPIs_placement
function WorldAPIs_placement.HasPartsRequiringUpdate(self) end

---@param self WorldAPIs_placement
---@param nId number
function WorldAPIs_placement.HasPresentedData(self, nId) end

---@param self WorldAPIs_placement
---@return any gridScope
function WorldAPIs_placement.MakeGridDrawScope(self) end

---@param self WorldAPIs_placement
---@return any ruler3AxisDrawer
function WorldAPIs_placement.MakeRuler3AxisDrawer(self) end

---@param self WorldAPIs_placement
---@return table tVerticalLineDrawer
function WorldAPIs_placement.MakeVerticalLineDrawer(self) end

---@param self WorldAPIs_placement
---@param nI number
---@return table tEntitiesForPart
function WorldAPIs_placement.PlacementIDToAllEntityIDs(self, nI) end

---@param self WorldAPIs_placement
---@param nPartID number
---@param nPuppetIndex number?
---@return number nEntityID
function WorldAPIs_placement.PlacementIDToEntityID(self, nPartID, nPuppetIndex) end

---@param self WorldAPIs_placement
---@param nPartID number
---@return boolean _
function WorldAPIs_placement.PlacementPartExists(self, nPartID) end

---@param self WorldAPIs_placement
---@param cPreviewUpdateToken table
---@param transform any
function WorldAPIs_placement.UpdatePreviewTransform(self, cPreviewUpdateToken, transform) end


---@param self WorldAPIs_pools
function WorldAPIs_pools.AllPoolScoresInitialised(self) end

---@param self WorldAPIs_pools
function WorldAPIs_pools.AreAnyPoolEdgeCellGeneratorsDirty(self) end

---@param self WorldAPIs_pools
---@param poolID any
---@return boolean bCanBeReachedFromSpawn
function WorldAPIs_pools.CanBeReachedFromSpawnPoint(self, poolID) end

---@param self WorldAPIs_pools
---@param nPoolID number
---@return boolean bCanSpawnBeReachedFromExit
function WorldAPIs_pools.CanReachSpawnPointFrom(self, nPoolID) end

---@param self WorldAPIs_pools
---@return table tPools
function WorldAPIs_pools.GetAllPools(self) end

---@param self WorldAPIs_pools
---@param nEntityID number
---@return any SetDataStoreElement
function WorldAPIs_pools.GetIsPoolOpen(self, nEntityID) end

---@param self WorldAPIs_pools
---@param nEntityID number
---@return table tLifeguardPosts
function WorldAPIs_pools.GetLifeguardPostsForPool(self, nEntityID) end

---@param self WorldAPIs_pools
function WorldAPIs_pools.GetMinimumPoolCapacity(self) end

---@param self WorldAPIs_pools
---@param nEntityID number
---@return number nOverallSafetyValue
function WorldAPIs_pools.GetOverallPoolSafetyValue(self, nEntityID) end

---@param self WorldAPIs_pools
---@param nEntityID number
---@return number nCurrentGuestsMax
function WorldAPIs_pools.GetPoolCapacity(self, nEntityID) end

---@param self WorldAPIs_pools
---@param nEntityID number
---@return table tPoolColourData
function WorldAPIs_pools.GetPoolColourData(self, nEntityID) end

---@param self WorldAPIs_pools
---@return table tPoolDefaultColourData
function WorldAPIs_pools.GetPoolDefaultColourData(self) end

---@param self WorldAPIs_pools
---@param nEntityID number
---@return number nCurrentGuests
function WorldAPIs_pools.GetPoolOccupancy(self, nEntityID) end

---@param self WorldAPIs_pools
---@param nEntityID number
---@return table tPoolScoreData
function WorldAPIs_pools.GetPoolScoringData(self, nEntityID) end

---@param self WorldAPIs_pools
---@param nPoolID number
---@return number nSurfaceArea
function WorldAPIs_pools.GetPoolSurfaceArea(self, nPoolID) end

---@param self WorldAPIs_pools
---@return number nTotalSurfaceArea
function WorldAPIs_pools.GetTotalPoolSurfaceArea(self) end

---@param self WorldAPIs_pools
function WorldAPIs_pools.HasPendingPoolEntranceGoalCreations(self) end

---@param self WorldAPIs_pools
---@param poolID any
---@param Arg3 any
---@return boolean bIsChangingRoomWithDistance
function WorldAPIs_pools.IsAChangingRoomWithDistance(self, poolID, Arg3) end

---@param self WorldAPIs_pools
---@param poolID any
---@param Arg3 any
---@return boolean bIsAnInfoKioskWithDistance
function WorldAPIs_pools.IsAnInfoKioskWithDistance(self, poolID, Arg3) end

---@param self WorldAPIs_pools
---@param nEntityID number
function WorldAPIs_pools.IsPool(self, nEntityID) end

---@param self WorldAPIs_pools
---@param entityID any
---@return boolean _
function WorldAPIs_pools.IsPoolExtra(self, entityID) end

---@param self WorldAPIs_pools
---@param entityID any
---@return boolean _
function WorldAPIs_pools.IsWaterPump(self, entityID) end

---@param self WorldAPIs_pools
---@param nPoolEntityID number
---@param vPos vector
---@return number nWaterY
function WorldAPIs_pools.SamplePoolWaterHeight(self, nPoolEntityID, vPos) end

---@param self WorldAPIs_pools
---@param nEntityID number
---@param arg any
function WorldAPIs_pools.SetPoolDesignerOverrideName(self, nEntityID, arg) end

---@param self WorldAPIs_pools
---@param nEntityID number
---@param sArg string
function WorldAPIs_pools.SetPoolName(self, nEntityID, sArg) end

---@param self WorldAPIs_pools
---@param nEntityID number
---@param bIsActive boolean
function WorldAPIs_pools.SetPoolOpen(self, nEntityID, bIsActive) end

---@param self WorldAPIs_pools
---@param bUsePoolSafety boolean
function WorldAPIs_pools.SetPoolSafetyEnabled(self, bUsePoolSafety) end

---@param self WorldAPIs_pools
---@param nEntityID number
---@param cPoolColourData table
function WorldAPIs_pools.SetPoolWaterColourData(self, nEntityID, cPoolColourData) end


---@param self WorldAPIs_renderparameters
---@param parameterCollection any
---@param cGlobalParameters table
---@param prop any
function WorldAPIs_renderparameters.ApplyParameterCurvesTo(self, parameterCollection, cGlobalParameters, prop) end

---@param self WorldAPIs_renderparameters
---@param cGlobalParameters table
function WorldAPIs_renderparameters.ApplyParameters(self, cGlobalParameters) end

---@param self WorldAPIs_renderparameters
---@param cResource table
---@param cGlobalParameters table
function WorldAPIs_renderparameters.ApplyParametersTo(self, cResource, cGlobalParameters) end

---@param self WorldAPIs_renderparameters
---@param cGlobalParameters table
---@param cParameters table
---@param nBlendFactor number
function WorldAPIs_renderparameters.BlendParameters(self, cGlobalParameters, cParameters, nBlendFactor) end

---@param self WorldAPIs_renderparameters
---@param cParameterCollectionA table
---@param cParameterCollectionB table
---@param cGlobalParameters table
---@param nProp number
function WorldAPIs_renderparameters.BlendParametersTo(self, cParameterCollectionA, cParameterCollectionB, cGlobalParameters, nProp) end

---@param self WorldAPIs_renderparameters
---@param sArg2 string
---@return table tGlobalParameters
function WorldAPIs_renderparameters.CreateEmptyParameters(self, sArg2) end

---@param self WorldAPIs_renderparameters
---@param sArg2 string
---@param sArg3 string
---@return any GUIMap
function WorldAPIs_renderparameters.CreateParameterCurveFromResource(self, sArg2, sArg3) end

---@param self WorldAPIs_renderparameters
---@param sName string
---@param sAssetName string
---@param nEntityID number?
---@return table tAtmospherics
function WorldAPIs_renderparameters.CreateParameterFromResource(self, sName, sAssetName, nEntityID) end

---@param self WorldAPIs_renderparameters
---@param sCollectionName string
---@param cTable table
---@return table tParamCollections[nMotionBlur][nDepthOfField]
function WorldAPIs_renderparameters.CreateParameterFromTable(self, sCollectionName, cTable) end


---@param self WorldAPIs_rides
---@param nRideID number
---@param nLinkID number
function WorldAPIs_rides.AddRideObjectiveLinkID(self, nRideID, nLinkID) end

---@param self WorldAPIs_rides
---@return number nRideSequentialIDAtObjectiveStart
function WorldAPIs_rides.AssignRideSequentialID(self) end

---@param self WorldAPIs_rides
function WorldAPIs_rides.BuildQueuesOnLoad(self) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return boolean bCanBeOpened
function WorldAPIs_rides.CanBeOpened(self, nRideID) end

---@param self WorldAPIs_rides
---@param nActiveRideInfoPanel number
---@return boolean bCanBeTested
function WorldAPIs_rides.CanBeTested(self, nActiveRideInfoPanel) end

---@param self WorldAPIs_rides
---@param nRideID number
function WorldAPIs_rides.CloseRide(self, nRideID) end

---@param self WorldAPIs_rides
function WorldAPIs_rides.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_rides
function WorldAPIs_rides.ComputeParkRatingData(self) end

---@param self WorldAPIs_rides
---@param bArg2 boolean?
---@return table tRides
function WorldAPIs_rides.GetAllRides(self, bArg2) end

---@param self WorldAPIs_rides
---@param nTrain number
---@param nArg3 number
---@return any carID
function WorldAPIs_rides.GetCarByIndex(self, nTrain, nArg3) end

---@param self WorldAPIs_rides
---@param cabinID any
---@return table tCabinLayout
function WorldAPIs_rides.GetCarLayout(self, cabinID) end

---@param self WorldAPIs_rides
---@param nTrackedRideEntityID number
---@return any SetDataStoreElement
function WorldAPIs_rides.GetCarShowName(self, nTrackedRideEntityID) end

---@param self WorldAPIs_rides
---@param rideEntityID any
---@return table tRawCabinIDs
function WorldAPIs_rides.GetCarsForRide(self, rideEntityID) end

---@param self WorldAPIs_rides
---@param nTrain number
---@return table tCars1
function WorldAPIs_rides.GetCarsForTrain(self, nTrain) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return number nDayOpened
function WorldAPIs_rides.GetDayOpened(self, nRideID) end

---@param self WorldAPIs_rides
---@param nSeatID number
---@return number nDummyID
function WorldAPIs_rides.GetDummyInSeat(self, nSeatID) end

---@param self WorldAPIs_rides
---@param guestEntityID any
function WorldAPIs_rides.GetDummyLocation(self, guestEntityID) end

---@param self WorldAPIs_rides
---@return boolean bSandboxFrictionEnabled
function WorldAPIs_rides.GetFlumeFrictionEnabled(self) end

---@param self WorldAPIs_rides
---@param nSeatID number
---@return number nGuestID
function WorldAPIs_rides.GetGuestInSeat(self, nSeatID) end

---@param self WorldAPIs_rides
---@param nGuestEntityID number
---@return table tGuestLocation
function WorldAPIs_rides.GetGuestLocation(self, nGuestEntityID) end

---@param self WorldAPIs_rides
---@param nStationID number
function WorldAPIs_rides.GetIsNameable(self, nStationID) end

---@param self WorldAPIs_rides
---@param nRideEntityID number
---@return number nPopularityMultiplier
function WorldAPIs_rides.GetLifecyclePopularityMultiplier(self, nRideEntityID) end

---@param self WorldAPIs_rides
---@param nRideEntityID number
function WorldAPIs_rides.GetLifecycleStageUIString(self, nRideEntityID) end

---@param self WorldAPIs_rides
---@return number nMaxRidePrestige
function WorldAPIs_rides.GetMaxAndTotalRideStationPrestige(self) end

---@param self WorldAPIs_rides
---@return number nMostPopularRide
---@return number nMostPopularRideGuests
function WorldAPIs_rides.GetMostPopularRideLastMonth(self) end

---@param self WorldAPIs_rides
---@return number nMostProfitableRide
---@return number nMostProfitableRideProfit
function WorldAPIs_rides.GetMostProfitableRideLastMonth(self) end

---@param self WorldAPIs_rides
---@return number nNumberOfUniqueRides
function WorldAPIs_rides.GetNumberOfUniqueRides(self) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return table tObjectiveLinkIDs
function WorldAPIs_rides.GetObjectiveLinkIDsFromRideID(self, nRideID) end

---@param self WorldAPIs_rides
---@param nRideEntityID number
---@return table tNodes
function WorldAPIs_rides.GetPrestigeDeclineNodesUI(self, nRideEntityID) end

---@param self WorldAPIs_rides
---@param nRideEntityID number
function WorldAPIs_rides.GetPrestigeDeclineProgressProp(self, nRideEntityID) end

---@param self WorldAPIs_rides
---@param nRideEntityID number
---@return number nCost
function WorldAPIs_rides.GetPurchasePrice(self, nRideEntityID) end

---@param self WorldAPIs_rides
---@param rideID any
function WorldAPIs_rides.GetRebrandCost(self, rideID) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return number nRequiredDLCBitMask
function WorldAPIs_rides.GetRequiredDLC(self, nRideID) end

---@param self WorldAPIs_rides
---@return any requiredLevelToSave
function WorldAPIs_rides.GetRequiredLevel(self) end

---@param self WorldAPIs_rides
---@param rideID any
---@return any AddCashDelta
function WorldAPIs_rides.GetResalePrice(self, rideID) end

---@param self WorldAPIs_rides
---@param nTrackCarEntityID number
---@return number nRideEntityID
function WorldAPIs_rides.GetRideForCar(self, nTrackCarEntityID) end

---@param self WorldAPIs_rides
---@param nStationEntityID number
---@return number nRideEntityID
function WorldAPIs_rides.GetRideForStation(self, nStationEntityID) end

---@param self WorldAPIs_rides
---@param trainID any
---@return any rideEntityID
function WorldAPIs_rides.GetRideForTrain(self, trainID) end

---@param self WorldAPIs_rides
---@return boolean bSandboxFrictionEnabled
function WorldAPIs_rides.GetRideFrictionEnabled(self) end

---@param self WorldAPIs_rides
---@param sRideLinkID string
---@return number nRideID
function WorldAPIs_rides.GetRideIDFromObjectiveLinkID(self, sRideLinkID) end

---@param self WorldAPIs_rides
---@param nMostPopularRide number
---@return string sIcon
function WorldAPIs_rides.GetRideIcon(self, nMostPopularRide) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return table tRideInfo
function WorldAPIs_rides.GetRideInfo(self, nRideID) end

---@param self WorldAPIs_rides
---@param nRide number
---@return string sRideName
function WorldAPIs_rides.GetRideKey(self, nRide) end

---@param self WorldAPIs_rides
---@param nTrackedRideEntityID number
function WorldAPIs_rides.GetRideManufacturer(self, nTrackedRideEntityID) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return string sName
function WorldAPIs_rides.GetRideName(self, nRideID) end

---@param self WorldAPIs_rides
---@param prestige any
---@return string sPrestigeLocString
---@return number nPrestigeStarRating
function WorldAPIs_rides.GetRidePrestigeVisibleValue(self, prestige) end

---@param self WorldAPIs_rides
---@param nRideID number
function WorldAPIs_rides.GetRideSimID(self, nRideID) end

---@param self WorldAPIs_rides
---@param nEntityID number
---@return number nHitStairsID
function WorldAPIs_rides.GetRideStairsFromPhysics(self, nEntityID) end

---@param self WorldAPIs_rides
---@param nHitStairsID number
---@return table oTargetGrid
function WorldAPIs_rides.GetRideStairsLocalGrid(self, nHitStairsID) end

---@param self WorldAPIs_rides
---@param nTrackedRideEntityID number
function WorldAPIs_rides.GetRideType(self, nTrackedRideEntityID) end

---@param self WorldAPIs_rides
---@return table tRideCountData
function WorldAPIs_rides.GetRideTypeCounts(self) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return string sRideTypeName
function WorldAPIs_rides.GetRideTypeName(self, nRideID) end

---@param self WorldAPIs_rides
function WorldAPIs_rides.GetRideTypesAsString(self) end

---@param self WorldAPIs_rides
---@param seatID any
---@return table tSeatLayout
function WorldAPIs_rides.GetSeatLayout(self, seatID) end

---@param self WorldAPIs_rides
---@param nCar number
---@return table tSeats
function WorldAPIs_rides.GetSeatsForCar(self, nCar) end

---@param self WorldAPIs_rides
---@param rideEntityID any
---@return table tRawSeatIDs
function WorldAPIs_rides.GetSeatsForRide(self, rideEntityID) end

---@param self WorldAPIs_rides
---@param nTrainEntityID number
---@return table tSeatEntityIDs
function WorldAPIs_rides.GetSeatsForTrain(self, nTrainEntityID) end

---@param self WorldAPIs_rides
---@param nStationID number
---@return table tStationLoadRules
function WorldAPIs_rides.GetStationLoadRules(self, nStationID) end

---@param self WorldAPIs_rides
---@param nStationID number
---@return table tMergeRules
function WorldAPIs_rides.GetStationMergeRules(self, nStationID) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return table tStations
function WorldAPIs_rides.GetStationsForRide(self, nRideID) end

---@param self WorldAPIs_rides
---@param nStationID number
---@return number nThemingMaximum
function WorldAPIs_rides.GetThemingMaximums(self, nStationID) end

---@param self WorldAPIs_rides
---@param nCarEntityID number
---@return number nTrainEntityID
function WorldAPIs_rides.GetTrainForCar(self, nCarEntityID) end

---@param self WorldAPIs_rides
---@param seatID any
function WorldAPIs_rides.GetTrainForSeat(self, seatID) end

---@param self WorldAPIs_rides
---@param trainID any
---@return any trainState
function WorldAPIs_rides.GetTrainStatus(self, trainID) end

---@param self WorldAPIs_rides
---@param rideEntityID any
---@return table tTrains
function WorldAPIs_rides.GetTrainsForRide(self, rideEntityID) end

---@param self WorldAPIs_rides
---@param nRideStationEntityID number
function WorldAPIs_rides.HasRequiredStaff(self, nRideStationEntityID) end

---@param self WorldAPIs_rides
---@param nRideEntityID number
---@return boolean _
function WorldAPIs_rides.IsClosed(self, nRideEntityID) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return boolean bIsEditable
function WorldAPIs_rides.IsEditable(self, nRideID) end

---@param self WorldAPIs_rides
---@param nRide number
---@return boolean _
function WorldAPIs_rides.IsFlatRide(self, nRide) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return boolean bCanStationBeOpened
function WorldAPIs_rides.IsOpen(self, nRideID) end

---@param self WorldAPIs_rides
---@param nEntityID number
---@return boolean bCondition
function WorldAPIs_rides.IsRide(self, nEntityID) end

---@param self WorldAPIs_rides
---@param nEntityID number
---@return boolean _
function WorldAPIs_rides.IsRideGate(self, nEntityID) end

---@param self WorldAPIs_rides
---@param nEntityID number
function WorldAPIs_rides.IsRideStairs(self, nEntityID) end

---@param self WorldAPIs_rides
---@param nEntityID number
---@return boolean _
function WorldAPIs_rides.IsRideStairsPhysics(self, nEntityID) end

---@param self WorldAPIs_rides
---@param nEntityID number
---@return boolean _
function WorldAPIs_rides.IsRideStairsSpatial(self, nEntityID) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return boolean bIsTested
function WorldAPIs_rides.IsTested(self, nRideID) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return boolean bIsTesting
function WorldAPIs_rides.IsTesting(self, nRideID) end

---@param self WorldAPIs_rides
---@param nRideID number
---@return boolean bIsTrackedRide
function WorldAPIs_rides.IsTrackedRide(self, nRideID) end

---@param self WorldAPIs_rides
---@param nRideEntityID number
---@return boolean bIsTransportRide
function WorldAPIs_rides.IsTransportRide(self, nRideEntityID) end

---@param self WorldAPIs_rides
function WorldAPIs_rides.IsTransportRideNavGraphOutOfDate(self) end

---@param self WorldAPIs_rides
---@param nRideID number
function WorldAPIs_rides.OpenRide(self, nRideID) end

---@param self WorldAPIs_rides
function WorldAPIs_rides.ParkReset(self) end

---@param self WorldAPIs_rides
---@param rideID any
function WorldAPIs_rides.PurgeAllRideGuests(self, rideID) end

---@param self WorldAPIs_rides
---@param rideID any
function WorldAPIs_rides.Rebrand(self, rideID) end

---@param self WorldAPIs_rides
---@param nRideID number
---@param rideLinkID any
function WorldAPIs_rides.RemoveRideObjectiveLinkID(self, nRideID, rideLinkID) end

---@param self WorldAPIs_rides
---@param bArg2 boolean
function WorldAPIs_rides.SetAllRidesEditable(self, bArg2) end

---@param self WorldAPIs_rides
---@param nRideBreakdownMultiplier number
function WorldAPIs_rides.SetBreakdownRateMultiplier(self, nRideBreakdownMultiplier) end

---@param self WorldAPIs_rides
---@param rideID any
---@param bValue boolean
function WorldAPIs_rides.SetCarShowName(self, rideID, bValue) end

---@param self WorldAPIs_rides
---@param bArg2 boolean
function WorldAPIs_rides.SetDarkRideVolumeEnabled(self, bArg2) end

---@param self WorldAPIs_rides
---@param nRideID number
---@param bIsEditable boolean
function WorldAPIs_rides.SetEditable(self, nRideID, bIsEditable) end

---@param self WorldAPIs_rides
---@param Arg2 any
---@param Arg3 any
function WorldAPIs_rides.SetGlobalFlumeFrictionMultiplier(self, Arg2, Arg3) end

---@param self WorldAPIs_rides
---@param Arg2 any
---@param Arg3 any
function WorldAPIs_rides.SetGlobalRideFrictionMultiplier(self, Arg2, Arg3) end

---@param self WorldAPIs_rides
---@param ridePrestige any
function WorldAPIs_rides.SetPrestigeEnabled(self, ridePrestige) end

---@param self WorldAPIs_rides
---@param nStationID number
---@param cStationLoadRules table
function WorldAPIs_rides.SetStationLoadRules(self, nStationID, cStationLoadRules) end

---@param self WorldAPIs_rides
---@param nStationID number
---@param cMergeRules table
function WorldAPIs_rides.SetStationMergeRules(self, nStationID, cMergeRules) end

---@param self WorldAPIs_rides
function WorldAPIs_rides.StoreRidesNotEligibleForAchievements(self) end

---@param self WorldAPIs_rides
---@param nTrackEntity number
function WorldAPIs_rides.TestRide(self, nTrackEntity) end


---@param self WorldAPIs_ridestation
---@param Arg2 any
---@param cRideInfo table
---@param cEntranceExitInfo table
---@return table cPreviewUpdateToken
function WorldAPIs_ridestation.AddEntranceExit(self, Arg2, cRideInfo, cEntranceExitInfo) end

---@param self WorldAPIs_ridestation
function WorldAPIs_ridestation.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_ridestation
---@param sPrefabName string
---@param nAccessType number
---@return table cEntranceExitInfo
function WorldAPIs_ridestation.CreateEntranceExitEditToken(self, sPrefabName, nAccessType) end

---@param self WorldAPIs_ridestation
---@param bArg2 boolean?
---@return table tRideInfos
function WorldAPIs_ridestation.GetAllRideStationEditTokens(self, bArg2) end

---@param self WorldAPIs_ridestation
---@param Arg2 any
function WorldAPIs_ridestation.GetBreakdownsDisabledForRideStation(self, Arg2) end

---@param self WorldAPIs_ridestation
---@param cRideInfo table
---@param nAccessType number
---@return table cEntranceExitInfo
function WorldAPIs_ridestation.GetEntranceExitEditToken(self, cRideInfo, nAccessType) end

---@param self WorldAPIs_ridestation
---@param cEntranceExitInfo table
---@return number nEntranceExitEntityID
function WorldAPIs_ridestation.GetEntranceExitIDForToken(self, cEntranceExitInfo) end

---@param self WorldAPIs_ridestation
---@param nStartingRideEntityID number
---@return number nEntranceStationEntityID
---@return number nRunoutLaneStationEntityID
function WorldAPIs_ridestation.GetFlumeEntranceAndRunoutLaneStations(self, nStartingRideEntityID) end

---@param self WorldAPIs_ridestation
---@param rideStationEntityID any
---@return number nPoolID
function WorldAPIs_ridestation.GetFlumeExitPool(self, rideStationEntityID) end

---@param self WorldAPIs_ridestation
---@param stationID any
function WorldAPIs_ridestation.GetIdealTicketPrice(self, stationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
function WorldAPIs_ridestation.GetLastBreakdownDate(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
function WorldAPIs_ridestation.GetMaintenanceLevel(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param stationID any
function WorldAPIs_ridestation.GetMaximumGroupSize(self, stationID) end

---@param self WorldAPIs_ridestation
---@param cRideInfo table
---@return number nPathJoinPartGroupID
function WorldAPIs_ridestation.GetPathJoinPartGroupIDForToken(self, cRideInfo) end

---@param self WorldAPIs_ridestation
---@param cEditToken table
---@return table tPlatformColours
function WorldAPIs_ridestation.GetPlatformMaterialFlexicolour(self, cEditToken) end

---@param self WorldAPIs_ridestation
---@param nEntranceStationEntityID number
---@param nStartingRideEntityID number
---@return any exitTransform
function WorldAPIs_ridestation.GetPoolEntryTransformForFlume(self, nEntranceStationEntityID, nStartingRideEntityID) end

---@param self WorldAPIs_ridestation
---@param editToken any
function WorldAPIs_ridestation.GetPriceSyncEnabled(self, editToken) end

---@param self WorldAPIs_ridestation
---@param nStationID number
function WorldAPIs_ridestation.GetRefurbishmentCost(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nRideStationEntityID number
---@return number nRideCategory
function WorldAPIs_ridestation.GetRideCategoryForStation(self, nRideStationEntityID) end

---@param self WorldAPIs_ridestation
---@param nRideStationEntityID number
---@return number nRideID
function WorldAPIs_ridestation.GetRideEntityIDFromStationEntityID(self, nRideStationEntityID) end

---@param self WorldAPIs_ridestation
---@param cEntranceExitInfo table
---@return string sPrefabName
function WorldAPIs_ridestation.GetRideEntranceExitInfoPrefabName(self, cEntranceExitInfo) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@param rideGateTypeEntrance any
---@return number nGateEntityID
function WorldAPIs_ridestation.GetRideGateEntity(self, nStationID, rideGateTypeEntrance) end

---@param self WorldAPIs_ridestation
---@return number nEntranceWidth
function WorldAPIs_ridestation.GetRidePlatformEntranceAndExitWidth(self) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return table cEditToken
function WorldAPIs_ridestation.GetRideStationEditToken(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param i any
---@return number nStationEntity
function WorldAPIs_ridestation.GetRideStationEntityIDFromEditToken(self, i) end

---@param self WorldAPIs_ridestation
---@param nRunoutLaneStationEntityID number
---@param nStartingRideEntityID number
---@return any exitTransform
function WorldAPIs_ridestation.GetRunoutLaneExitTransform(self, nRunoutLaneStationEntityID, nStartingRideEntityID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return number nTicketType
function WorldAPIs_ridestation.GetSelectedTicketType(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param editToken any
---@return string sStationName
function WorldAPIs_ridestation.GetStationName(self, editToken) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return number nTime
function WorldAPIs_ridestation.GetStationPremiumTargetTime(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@param ridePricingFair any
---@return number nFairPrice
function WorldAPIs_ridestation.GetStationPriceOfTicketType(self, nStationID, ridePricingFair) end

---@param self WorldAPIs_ridestation
---@param ridePricingFair any
---@param nStationID number
---@return boolean bFairAvailable
function WorldAPIs_ridestation.GetStationTicketTypeAvailable(self, ridePricingFair, nStationID) end

---@param self WorldAPIs_ridestation
---@param stationInfoToken any
---@return number nStationType
function WorldAPIs_ridestation.GetStationType(self, stationInfoToken) end

---@param self WorldAPIs_ridestation
---@param bArg2 boolean
---@return number nSumFairPrice
function WorldAPIs_ridestation.GetSumFairPrice(self, bArg2) end

---@param self WorldAPIs_ridestation
---@param stationID any
function WorldAPIs_ridestation.GetSupportsChildGuests(self, stationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return number nMinPrice
---@return number nMaxPrice
---@return number nMinQueue
---@return number nMaxQueue
function WorldAPIs_ridestation.GetTicketCustomData(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return number nTicketPrice
function WorldAPIs_ridestation.GetTicketPrice(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return number nTicketPriceLockReason
function WorldAPIs_ridestation.GetTicketPriceLockReason(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return boolean bTicketPriceLocked
function WorldAPIs_ridestation.GetTicketPriceLocked(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nStationEntityID number
function WorldAPIs_ridestation.GetTimePropBrokenDown(self, nStationEntityID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
function WorldAPIs_ridestation.GetTimeSinceRefurbishment(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
function WorldAPIs_ridestation.GetTimeUntilServiceOverdue(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nStationEntityID number
---@return vector vVelocity
function WorldAPIs_ridestation.GetTrainLeavingTrackVelocity(self, nStationEntityID) end

---@param self WorldAPIs_ridestation
---@param nStationEntityID number
function WorldAPIs_ridestation.GetWear(self, nStationEntityID) end

---@param self WorldAPIs_ridestation
---@return number nWearHighThreshold
---@return number nWearLowThreshold
function WorldAPIs_ridestation.GetWearHighLowReliabilityThresholds(self) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return any hasBull
function WorldAPIs_ridestation.HasBullWheel(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@param rideGateTypeEntrance any
---@return boolean bHasConnectedQueue
function WorldAPIs_ridestation.HasConnectedQueue(self, nStationID, rideGateTypeEntrance) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return any hasDrive
function WorldAPIs_ridestation.HasDriveStation(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param stationID any
---@param bIsTransportStation boolean
---@return boolean bRefurbishRequested
function WorldAPIs_ridestation.HasRefurbishBeenRequested(self, stationID, bIsTransportStation) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@param nRideGateTypeExit number
---@return boolean bHasEntranceGate
function WorldAPIs_ridestation.HasRideGate(self, nStationID, nRideGateTypeExit) end

---@param self WorldAPIs_ridestation
---@param stationID any
---@param bIsTransport boolean
---@param bArg4 boolean
---@return boolean _
function WorldAPIs_ridestation.HasServiceBeenRequested(self, stationID, bIsTransport, bArg4) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return boolean bIsBrokenDown
function WorldAPIs_ridestation.IsBrokenDown(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nAccessType number
---@return boolean bIsEntrance
function WorldAPIs_ridestation.IsEntranceGateAccessType(self, nAccessType) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return boolean _
function WorldAPIs_ridestation.IsFlumeEntranceStation(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param rideStationEntityID any
---@param rideGateTypeEntrance any
---@return boolean bCanEntranceBeReachedFromSpawn
function WorldAPIs_ridestation.IsGateConnectedToParkEntrance(self, rideStationEntityID, rideGateTypeEntrance) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return boolean bIsStation
function WorldAPIs_ridestation.IsRideStation(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@return boolean bIsTrackedRide
function WorldAPIs_ridestation.IsTrackedRide(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nRideID number
---@return boolean bIsWaterSlide
function WorldAPIs_ridestation.IsWaterSlide(self, nRideID) end

---@param self WorldAPIs_ridestation
---@param Arg2 any
---@param cRideInfo table
---@param cEntranceExitInfo table
---@return table cPreviewUpdateToken
function WorldAPIs_ridestation.MoveEntranceExit(self, Arg2, cRideInfo, cEntranceExitInfo) end

---@param self WorldAPIs_ridestation
---@param Arg2 any
---@param cRideInfo table
---@param cEntranceExitInfo table
function WorldAPIs_ridestation.RemoveEntranceExit(self, Arg2, cRideInfo, cEntranceExitInfo) end

---@param self WorldAPIs_ridestation
---@param stationID any
function WorldAPIs_ridestation.RequestBreakdown(self, stationID) end

---@param self WorldAPIs_ridestation
---@param stationID any
function WorldAPIs_ridestation.RequestRefurbishment(self, stationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
function WorldAPIs_ridestation.RequestRepair(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param nStationID number
function WorldAPIs_ridestation.RequestService(self, nStationID) end

---@param self WorldAPIs_ridestation
---@param bLockExistingRidePrices boolean
function WorldAPIs_ridestation.SetAllCurrentRidesPriceLock(self, bLockExistingRidePrices) end

---@param self WorldAPIs_ridestation
---@param bool any
---@param Arg3 any?
function WorldAPIs_ridestation.SetBreakdownsDisabled(self, bool, Arg3) end

---@param self WorldAPIs_ridestation
---@param Arg2 any
---@param arg any
function WorldAPIs_ridestation.SetBreakdownsDisabledForRideStation(self, Arg2, arg) end

---@param self WorldAPIs_ridestation
---@param stationID any
---@param Arg3 any
function WorldAPIs_ridestation.SetMaintenanceLevel(self, stationID, Arg3) end

---@param self WorldAPIs_ridestation
---@param operationHierarchy any
---@param cEditToken table
---@param sSemanticTag string
---@param vColour vector
function WorldAPIs_ridestation.SetPlatformMaterialFlexicolourForSemanticTag(self, operationHierarchy, cEditToken, sSemanticTag, vColour) end

---@param self WorldAPIs_ridestation
---@param cEditToken table
---@param bValue boolean
function WorldAPIs_ridestation.SetPriceSyncEnabled(self, cEditToken, bValue) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@param pricingType any
function WorldAPIs_ridestation.SetSelectedTicketType(self, nStationID, pricingType) end

---@param self WorldAPIs_ridestation
---@param bArg2 boolean
function WorldAPIs_ridestation.SetServiceAndMaintenanceTickDisabled(self, bArg2) end

---@param self WorldAPIs_ridestation
---@param Arg2 any
function WorldAPIs_ridestation.SetServiceIntervalDisabled(self, Arg2) end

---@param self WorldAPIs_ridestation
---@param Arg2 any
---@param arg any
function WorldAPIs_ridestation.SetStationDesignerOverrideName(self, Arg2, arg) end

---@param self WorldAPIs_ridestation
---@param cEditToken table
---@param sText string
function WorldAPIs_ridestation.SetStationName(self, cEditToken, sText) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@param Arg3 any
function WorldAPIs_ridestation.SetTicketCustomMaxPrice(self, nStationID, Arg3) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@param Arg3 any
function WorldAPIs_ridestation.SetTicketCustomMaxQueue(self, nStationID, Arg3) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@param Arg3 any
function WorldAPIs_ridestation.SetTicketCustomMinPrice(self, nStationID, Arg3) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@param Arg3 any
function WorldAPIs_ridestation.SetTicketCustomMinQueue(self, nStationID, Arg3) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@param integer any
function WorldAPIs_ridestation.SetTicketPrice(self, nStationID, integer) end

---@param self WorldAPIs_ridestation
---@param nRideStationID number
---@param bArg3 boolean
function WorldAPIs_ridestation.SetTicketPriceAndStateLocked(self, nRideStationID, bArg3) end

---@param self WorldAPIs_ridestation
---@param nStationID number
---@param nLockReason number
function WorldAPIs_ridestation.SetTicketPriceLockReason(self, nStationID, nLockReason) end

---@param self WorldAPIs_ridestation
---@param stationID any
---@param arg any
function WorldAPIs_ridestation.SetTicketPriceLocked(self, stationID, arg) end

---@param self WorldAPIs_ridestation
---@param nTicketPriceLockReason number
---@return string sLockedReason
function WorldAPIs_ridestation.TicketPriceLockReasonToString(self, nTicketPriceLockReason) end

---@param self WorldAPIs_ridestation
---@param nRideStationID number
function WorldAPIs_ridestation.TriggerBreakdown(self, nRideStationID) end


---@param self WorldAPIs_ridestats
---@param nStationEntity number
---@return table tArrivalsDepartures
function WorldAPIs_ridestats.GetArrivalsDepartures(self, nStationEntity) end

---@param self WorldAPIs_ridestats
---@return number nBiggestDrop
---@return number nFastestCoaster
---@return number nLongestCoaster
---@return number nLengthOfAllCoasters
function WorldAPIs_ridestats.GetParkWideStats(self) end

---@param self WorldAPIs_ridestats
---@param nRideEntityID number
---@return table tRideStats
function WorldAPIs_ridestats.GetRideStats(self, nRideEntityID) end

---@param self WorldAPIs_ridestats
---@param nEntityID number
---@return table tTriggerShowStats
function WorldAPIs_ridestats.GetRideTriggerShowStats(self, nEntityID) end

---@param self WorldAPIs_ridestats
---@param nStationID number
---@return table tStationStats
function WorldAPIs_ridestats.GetStationStats(self, nStationID) end

---@param self WorldAPIs_ridestats
---@param nStationID number
---@return table tRideStats
function WorldAPIs_ridestats.GetStationStatsLastOnly(self, nStationID) end

---@param self WorldAPIs_ridestats
function WorldAPIs_ridestats.ParkReset(self) end


---@param self WorldAPIs_scenegraph
---@return number nCompletionToken
function WorldAPIs_scenegraph.CreateCompletionToken(self) end

---@param self WorldAPIs_scenegraph
---@param nCompletionToken number
---@return any renderingCompleted
function WorldAPIs_scenegraph.HaveRequestsCompleted(self, nCompletionToken) end

---@param self WorldAPIs_scenegraph
---@param sColourGradeName string
function WorldAPIs_scenegraph.SetColourGrading(self, sColourGradeName) end


---@param self WorldAPIs_scenery
---@param i any
---@param saveSelection any
function WorldAPIs_scenery.AddGroupToBlueprintSelection(self, i, saveSelection) end

---@param self WorldAPIs_scenery
---@param i any
---@param saveSelection any
function WorldAPIs_scenery.AddSceneryToBlueprintSelection(self, i, saveSelection) end

---@param self WorldAPIs_scenery
---@param destinationsHighlight any
function WorldAPIs_scenery.AttachGuestDestinationEntityHighlightRequest(self, destinationsHighlight) end

---@param self WorldAPIs_scenery
---@param nPlacementPartID number
---@return table tSelectedSceneryPartsOnEntry
function WorldAPIs_scenery.BillboardListSpeakers(self, nPlacementPartID) end

---@param self WorldAPIs_scenery
---@param editObject any
---@param cAttachedSpeakers table
function WorldAPIs_scenery.BillboardSetSpeakers(self, editObject, cAttachedSpeakers) end

---@param self WorldAPIs_scenery
---@param sceneryHighlightSelection any
---@return number nPlacementCost
---@return number nRunningCost
function WorldAPIs_scenery.CalculateBuildingSetCosts(self, sceneryHighlightSelection) end

---@param self WorldAPIs_scenery
---@param nCamEntity number
---@param vAxisPosition vector
---@param vNormal vector
---@param vInputUVFlipped vector
---@return any delta
function WorldAPIs_scenery.CalculatePointOnAxisNearScreenPoint(self, nCamEntity, vAxisPosition, vNormal, vInputUVFlipped) end

---@param self WorldAPIs_scenery
---@param vPosition vector
---@return vector vClamped
function WorldAPIs_scenery.ClampPointToVoxelTerrainWidthDepth(self, vPosition) end

---@param self WorldAPIs_scenery
function WorldAPIs_scenery.ClearSnapPointVisuals(self) end

---@param self WorldAPIs_scenery
---@param partSet any
---@param highlightChannelCustom any
---@return any highlightRequest
function WorldAPIs_scenery.CreateBuildingHighlightRequest(self, partSet, highlightChannelCustom) end

---@param self WorldAPIs_scenery
---@return table oPartSet
function WorldAPIs_scenery.CreateBuildingPartSet(self) end

---@param self WorldAPIs_scenery
---@param highlightChannelSelection any
---@return any destinationsHighlight
function WorldAPIs_scenery.CreateGuestDestinationEntityHighlightRequest(self, highlightChannelSelection) end

---@param self WorldAPIs_scenery
function WorldAPIs_scenery.DetatchGuestDestinationEntityHighlightRequest(self) end

---@param self WorldAPIs_scenery
---@param cMoveObject table
---@return boolean bHasUnattachedScenery
function WorldAPIs_scenery.DoesMoveObjectContainAnyUnattachedParts(self, cMoveObject) end

---@param self WorldAPIs_scenery
---@param moveObject any
---@param nPartID number
---@return boolean _
function WorldAPIs_scenery.DoesMoveObjectContainPart(self, moveObject, nPartID) end

---@param self WorldAPIs_scenery
---@param sSpawnerLinkID string
---@return number nPartID
function WorldAPIs_scenery.FindSceneryLink(self, sSpawnerLinkID) end

---@param self WorldAPIs_scenery
---@return any partIDArrayBuilding
function WorldAPIs_scenery.GetAllBuildingIDs(self) end

---@param self WorldAPIs_scenery
---@return table tTextures
function WorldAPIs_scenery.GetAllCustomTextures(self) end

---@param self WorldAPIs_scenery
---@return any partIDArrayScenery
function WorldAPIs_scenery.GetAllSceneryIDs(self) end

---@param self WorldAPIs_scenery
---@return table tEntitiesNow
function WorldAPIs_scenery.GetAllVistaPoints(self) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@return any SetStatus
function WorldAPIs_scenery.GetBillboardIsOn(self, nPartID) end

---@param self WorldAPIs_scenery
---@param nPartID number
function WorldAPIs_scenery.GetBillboardMuted(self, nPartID) end

---@param self WorldAPIs_scenery
---@param entityID any
---@return any attendantID
function WorldAPIs_scenery.GetBoothOperator(self, entityID) end

---@param self WorldAPIs_scenery
---@param buildingID any
---@return any buildingName
function WorldAPIs_scenery.GetBuildingName(self, buildingID) end

---@param self WorldAPIs_scenery
---@param moveObject any
---@return string sConfigCategory
function WorldAPIs_scenery.GetConfigCategoryForMoveObject(self, moveObject) end

---@param self WorldAPIs_scenery
---@param sTextureID string
---@return string sDisplayName
function WorldAPIs_scenery.GetCustomTextureDisplayName(self, sTextureID) end

---@param self WorldAPIs_scenery
---@return table tFavourites
function WorldAPIs_scenery.GetCustomTextureFavourites(self) end

---@param self WorldAPIs_scenery
---@param item any
---@return number nImageSource
function WorldAPIs_scenery.GetCustomTextureSource(self, item) end

---@param self WorldAPIs_scenery
---@param item any
---@return number nImageType
function WorldAPIs_scenery.GetCustomTextureType(self, item) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@return number nTextureLocation
---@return string sTextureID
function WorldAPIs_scenery.GetCustomTexture_On(self, nPartID) end

---@param self WorldAPIs_scenery
---@param sTagName string
function WorldAPIs_scenery.GetIconPathForTag(self, sTagName) end

---@param self WorldAPIs_scenery
---@param sResourceName string
---@return number nMinScale
---@return number nMaxScale
function WorldAPIs_scenery.GetMinMaxScale(self, sResourceName) end

---@param self WorldAPIs_scenery
---@param cMoveObject table
---@return table tPlacementPartIDs
function WorldAPIs_scenery.GetMoveObjectPartIDs(self, cMoveObject) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@return string sOriginalName
function WorldAPIs_scenery.GetOriginalPropName(self, nPartID) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@return table tScaleData
function WorldAPIs_scenery.GetPartScaleData(self, nPartID) end

---@param self WorldAPIs_scenery
---@param nPartID number
function WorldAPIs_scenery.GetPropCategoryIcon(self, nPartID) end

---@param self WorldAPIs_scenery
---@param entityID any
function WorldAPIs_scenery.GetPropDesignOverrideNameFromEntityID(self, entityID) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@param bLocalised boolean?
---@return string sName
function WorldAPIs_scenery.GetPropName(self, nPartID, bLocalised) end

---@param self WorldAPIs_scenery
---@param nRideID number
---@return string sFinalEntity
function WorldAPIs_scenery.GetPropNameFromEntityID(self, nRideID) end

---@param self WorldAPIs_scenery
---@param partid any
---@return any lower
function WorldAPIs_scenery.GetPropResourceName(self, partid) end

---@param self WorldAPIs_scenery
---@param nEntityID number
---@return string sSceneryResourceName
function WorldAPIs_scenery.GetPropResourceNameFromPuppetID(self, nEntityID) end

---@param self WorldAPIs_scenery
---@param sceneryID any
---@return any overridenName
function WorldAPIs_scenery.GetRawNameOverride(self, sceneryID) end

---@param self WorldAPIs_scenery
---@param nBuildingID number
---@return any requiredDLC
function WorldAPIs_scenery.GetRequiredDLCForGroup(self, nBuildingID) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@return number nRequiredDLCBitMask
function WorldAPIs_scenery.GetRequiredDLCForPart(self, nPartID) end

---@param self WorldAPIs_scenery
---@param entityID any
function WorldAPIs_scenery.GetRideVendorInfo(self, entityID) end

---@param self WorldAPIs_scenery
---@return any SceneryLinkIDs
function WorldAPIs_scenery.GetSceneryLinks(self) end

---@param self WorldAPIs_scenery
---@param value any
---@return number nTagCount
function WorldAPIs_scenery.GetSceneryTagCount(self, value) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@return boolean bIsOn
function WorldAPIs_scenery.GetSecurityCameraIsOn(self, nPartID) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@return number nPickpocketsLocated
---@return number nVandalsLocated
function WorldAPIs_scenery.GetSecurityCameraStats(self, nPartID) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@return number nFocusPartID
function WorldAPIs_scenery.GetVistaPointFocusSceneryPart(self, nPartID) end

---@param self WorldAPIs_scenery
---@param nPartID number
function WorldAPIs_scenery.GetWaterPumpSpeed(self, nPartID) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@return boolean _
function WorldAPIs_scenery.IsCustomTexturePropData(self, nPartID) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@return boolean bCanEdit
function WorldAPIs_scenery.IsPartEditable(self, nPartID) end

---@param self WorldAPIs_scenery
---@param nPartID number
function WorldAPIs_scenery.IsPathExtraPart(self, nPartID) end

---@param self WorldAPIs_scenery
---@param sPropResourceName string
---@param sShopTagName string
---@return boolean _
function WorldAPIs_scenery.IsPropAssignedWithGivenTag(self, sPropResourceName, sShopTagName) end

---@param self WorldAPIs_scenery
---@param nDistributorEntityID number
---@return boolean bCanEdit
function WorldAPIs_scenery.IsPuppetEditable(self, nDistributorEntityID) end

---@param self WorldAPIs_scenery
---@param nFocusPartID number
---@return boolean bValidTarget
function WorldAPIs_scenery.IsSceneryPart(self, nFocusPartID) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@return boolean bIsTextSign
function WorldAPIs_scenery.IsSignPart(self, nPartID) end

---@param self WorldAPIs_scenery
---@param nEntityID number
---@return boolean _
function WorldAPIs_scenery.IsVistaPoint(self, nEntityID) end

---@param self WorldAPIs_scenery
---@param nPlacementPartID number
function WorldAPIs_scenery.IsVisualPropPart(self, nPlacementPartID) end

---@param self WorldAPIs_scenery
---@param buildingGroupID any
---@param sNewName string
function WorldAPIs_scenery.OverrideBuildingName_Debug(self, buildingGroupID, sNewName) end

---@param self WorldAPIs_scenery
---@param nPartID number
---@param sNewName string
---@param bArg4 boolean?
function WorldAPIs_scenery.OverridePropName(self, nPartID, sNewName, bArg4) end

---@param self WorldAPIs_scenery
---@param buildingGroupID any
---@param sNewName string
function WorldAPIs_scenery.OverrideSceneryGroupName_Debug(self, buildingGroupID, sNewName) end

---@param self WorldAPIs_scenery
---@param partID any
---@param sNewName string
function WorldAPIs_scenery.OverrideSceneryName_Debug(self, partID, sNewName) end

---@param self WorldAPIs_scenery
function WorldAPIs_scenery.RefreshUserTextures(self) end

---@param self WorldAPIs_scenery
---@param editObject any
function WorldAPIs_scenery.RemoveVistaPointFocusSceneryPart(self, editObject) end

---@param self WorldAPIs_scenery
---@param buildingID any
---@param newName any
function WorldAPIs_scenery.ResetBuildingName(self, buildingID, newName) end

---@param self WorldAPIs_scenery
---@param moveObject any
function WorldAPIs_scenery.ResetCullingTypeToDefault(self, moveObject) end

---@param self WorldAPIs_scenery
---@param partID any
---@param clh any
function WorldAPIs_scenery.SendSetMusicOnSequencer(self, partID, clh) end

---@param self WorldAPIs_scenery
---@param partID any
---@param sTrackName string
---@param clh any
function WorldAPIs_scenery.SetAmbienceOnSpeaker(self, partID, sTrackName, clh) end

---@param self WorldAPIs_scenery
---@param editObject any
---@param Arg3 any
function WorldAPIs_scenery.SetBillboardIsOn(self, editObject, Arg3) end

---@param self WorldAPIs_scenery
---@param editObject any
---@param bToggled boolean
function WorldAPIs_scenery.SetBillboardMuted(self, editObject, bToggled) end

---@param self WorldAPIs_scenery
---@param bEnabledBreakdowns boolean
function WorldAPIs_scenery.SetBreakdownsEnabled(self, bEnabledBreakdowns) end

---@param self WorldAPIs_scenery
---@param bEnabledRideFacilityCondition boolean
function WorldAPIs_scenery.SetConditionEnabled(self, bEnabledRideFacilityCondition) end

---@param self WorldAPIs_scenery
---@param moveObject any
---@param cullingTypePlatform any
function WorldAPIs_scenery.SetCullingType(self, moveObject, cullingTypePlatform) end

---@param self WorldAPIs_scenery
---@param sTextureName string
---@param bIsFavourite boolean
function WorldAPIs_scenery.SetCustomTextureFavourite(self, sTextureName, bIsFavourite) end

---@param self WorldAPIs_scenery
---@param editObject any
---@param nTextureSource number
---@param sTextureID string
function WorldAPIs_scenery.SetCustomTexture_On(self, editObject, nTextureSource, sTextureID) end

---@param self WorldAPIs_scenery
---@param partID any
---@param sAudioTrackName string
---@param clh any
function WorldAPIs_scenery.SetMusicOnSpeaker(self, partID, sAudioTrackName, clh) end

---@param self WorldAPIs_scenery
---@param sceneryLinkIDs any
function WorldAPIs_scenery.SetSceneryLinks(self, sceneryLinkIDs) end

---@param self WorldAPIs_scenery
---@param editObject any
---@param bIsOn boolean
function WorldAPIs_scenery.SetSecurityCameraIsOn(self, editObject, bIsOn) end

---@param self WorldAPIs_scenery
---@param partID any
---@param sAudioTrackName string
---@param clh any
function WorldAPIs_scenery.SetTriggerOnSpeaker(self, partID, sAudioTrackName, clh) end

---@param self WorldAPIs_scenery
---@param partID any
---@param nPitch number
---@param clh any
function WorldAPIs_scenery.SetTriggerPitchOnSpeaker(self, partID, nPitch, clh) end

---@param self WorldAPIs_scenery
---@param partID any
---@param nPitch number
---@param clh any
function WorldAPIs_scenery.SetTriggerVolumeOnSpeaker(self, partID, nPitch, clh) end

---@param self WorldAPIs_scenery
---@param editObject any
---@param nFocusPlacementPartID number
function WorldAPIs_scenery.SetVistaPointFocusSceneryPart(self, editObject, nFocusPlacementPartID) end

---@param self WorldAPIs_scenery
---@param voxelTerrainEntityID any
function WorldAPIs_scenery.SetVoxelTerrainEntity(self, voxelTerrainEntityID) end

---@param self WorldAPIs_scenery
---@param editObject any
---@param nWaterSpeed number
function WorldAPIs_scenery.SetWaterPumpSpeed(self, editObject, nWaterSpeed) end

---@param self WorldAPIs_scenery
---@param vRayStart vector
---@param vRayEnd vector
function WorldAPIs_scenery.UpdateSnapPointVisuals(self, vRayStart, vRayEnd) end


---@param self WorldAPIs_scenery_belonging
---@param nBelongingOrPlatformOwnerEntityID number
---@param cPartSet table
function WorldAPIs_scenery_belonging.AddAllPartsBelongingToBelongingOwnerToPartSet(self, nBelongingOrPlatformOwnerEntityID, cPartSet) end

---@param self WorldAPIs_scenery_belonging
---@param Arg2 any
---@return boolean bAnyPartsAttached
function WorldAPIs_scenery_belonging.AreAnyPartsBelongingToBelongingOwner(self, Arg2) end

---@param self WorldAPIs_scenery_belonging
---@param moveObject any
function WorldAPIs_scenery_belonging.ClearMoveObjectBelongingOwnerID(self, moveObject) end

---@param self WorldAPIs_scenery_belonging
---@param nPartID number
---@param nBelongingOrPlatformOwnerEntityID number
function WorldAPIs_scenery_belonging.DoesPartBelongToBelongingOwner(self, nPartID, nBelongingOrPlatformOwnerEntityID) end

---@param self WorldAPIs_scenery_belonging
---@param nEntityID number
---@return number nHitBelongingOwnerEntityID
function WorldAPIs_scenery_belonging.FindBelongingOwnerForEntity(self, nEntityID) end

---@param self WorldAPIs_scenery_belonging
---@param nBelongingOrPlatformOwnerEntityID number
---@return table tBelongingPartIDs
function WorldAPIs_scenery_belonging.GetAllPartsBelongingToBelongingOwner(self, nBelongingOrPlatformOwnerEntityID) end

---@param self WorldAPIs_scenery_belonging
---@param nEntityID number
function WorldAPIs_scenery_belonging.GetBelongingOwnerID(self, nEntityID) end

---@param self WorldAPIs_scenery_belonging
---@param moveObject any
function WorldAPIs_scenery_belonging.GetMoveObjectBelongingOwnerID(self, moveObject) end

---@param self WorldAPIs_scenery_belonging
---@param cMoveObject table
---@return boolean bCanBelongToBelongingOwner
function WorldAPIs_scenery_belonging.GetMoveObjectSupportsBelonging(self, cMoveObject) end

---@param self WorldAPIs_scenery_belonging
---@param nRideEntityID number
---@return boolean bIsBelongingOwner
function WorldAPIs_scenery_belonging.IsValidBelongingOwner(self, nRideEntityID) end

---@param self WorldAPIs_scenery_belonging
---@param moveObject any
---@param Arg3 any
function WorldAPIs_scenery_belonging.SetMoveObjectBelongingOwnerID(self, moveObject, Arg3) end


---@param self WorldAPIs_scenery_editconstraint
function WorldAPIs_scenery_editconstraint.ClearEditConstraintsForAllParts(self) end

---@param self WorldAPIs_scenery_editconstraint
---@param nEditConstraint number
function WorldAPIs_scenery_editconstraint.Debug_EditConstraintToString(self, nEditConstraint) end

---@param self WorldAPIs_scenery_editconstraint
---@param cMoveObject table
---@return table tCountPerConstraint
function WorldAPIs_scenery_editconstraint.Debug_GetMoveObjectEditConstraintCounts(self, cMoveObject) end

---@param self WorldAPIs_scenery_editconstraint
---@param cPartSet table
---@return table tCountPerConstraint
function WorldAPIs_scenery_editconstraint.Debug_GetPartSetEditConstraintCounts(self, cPartSet) end

---@param self WorldAPIs_scenery_editconstraint
---@param cMoveObject table
---@param nNewEditConstraint number
function WorldAPIs_scenery_editconstraint.SetMoveObjectEditConstraint(self, cMoveObject, nNewEditConstraint) end

---@param self WorldAPIs_scenery_editconstraint
---@param partSet any
---@param editConstraintLocked any
function WorldAPIs_scenery_editconstraint.SetPartSetEditConstraint(self, partSet, editConstraintLocked) end


---@param self WorldAPIs_scenery_flexicolour
---@param nPartID number
---@param sSemanticTag string
---@return number nSlotIndex
function WorldAPIs_scenery_flexicolour.GetAssignedSlotFromPartIDWithSemanticTag(self, nPartID, sSemanticTag) end

---@param self WorldAPIs_scenery_flexicolour
---@param attendantID any
---@return any operatorFlexiColours
function WorldAPIs_scenery_flexicolour.GetAttendantFlexiColours(self, attendantID) end

---@param self WorldAPIs_scenery_flexicolour
---@param partID any
---@return table tFlexiColours
function WorldAPIs_scenery_flexicolour.GetDefaultFlexiColourForPartID(self, partID) end

---@param self WorldAPIs_scenery_flexicolour
---@param nPartID number
---@return table tFlexiColours
function WorldAPIs_scenery_flexicolour.GetFlexiColourForPartID(self, nPartID) end

---@param self WorldAPIs_scenery_flexicolour
---@param cPartSet table
---@return table tSelectionFlexiColours
function WorldAPIs_scenery_flexicolour.GetFlexiColourForPartSet(self, cPartSet) end

---@param self WorldAPIs_scenery_flexicolour
---@param nPartID number
---@return table tSignFlexiColours
function WorldAPIs_scenery_flexicolour.GetFlexiColourForSignText(self, nPartID) end

---@param self WorldAPIs_scenery_flexicolour
---@param changeListHierarchy any
---@param partID any
---@param sSemanticTag string
---@param vColour vector
function WorldAPIs_scenery_flexicolour.SetFlexiColourForPartID(self, changeListHierarchy, partID, sSemanticTag, vColour) end

---@param self WorldAPIs_scenery_flexicolour
---@param changeListHierarchy any
---@param partSet any
---@param sSemanticTag string
---@param vColour vector
function WorldAPIs_scenery_flexicolour.SetFlexiColourForPartSet(self, changeListHierarchy, partSet, sSemanticTag, vColour) end


---@param self WorldAPIs_scenery_grid
---@param moveObject any
---@param grid any
function WorldAPIs_scenery_grid.AlignLocalGridForMoveObject(self, moveObject, grid) end

---@param self WorldAPIs_scenery_grid
---@return any grid
function WorldAPIs_scenery_grid.CalculateGlobalGrid(self) end

---@param self WorldAPIs_scenery_grid
---@param groupID any
---@param localGrid any
---@return any groupSize
---@return any groupBottom
function WorldAPIs_scenery_grid.CalculateGridRegionForGroup(self, groupID, localGrid) end

---@param self WorldAPIs_scenery_grid
---@param moveObject any
---@param grid any
---@return any objectSize
---@return any objectBottom
function WorldAPIs_scenery_grid.CalculateGridRegionForMoveObject(self, moveObject, grid) end

---@param self WorldAPIs_scenery_grid
---@param cMoveObject table
---@return any grid
function WorldAPIs_scenery_grid.CalculateLocalGridForMoveObject(self, cMoveObject) end

---@param self WorldAPIs_scenery_grid
---@param partID any
---@return any focusedGrid
function WorldAPIs_scenery_grid.CalculateLocalGridForPart(self, partID) end

---@param self WorldAPIs_scenery_grid
---@param moveObject any
function WorldAPIs_scenery_grid.HasSnapPoints(self, moveObject) end

---@param self WorldAPIs_scenery_grid
---@param nPartID number
---@return boolean bContainsGridpart
function WorldAPIs_scenery_grid.IsGridPart(self, nPartID) end

---@param self WorldAPIs_scenery_grid
---@param moveObject any
---@param physicsWorldEntity any
---@param rayStart any
---@param rayDir any
---@param rayCastFlags any
---@return table tStack
function WorldAPIs_scenery_grid.RaycastForVerticalStack(self, moveObject, physicsWorldEntity, rayStart, rayDir, rayCastFlags) end

---@param self WorldAPIs_scenery_grid
---@param moveObject any
---@param unsnappedRotation any
---@param entityID any
---@param vPosition vector
---@param vNormal vector
---@return table tLocal
---@return table tTarget
function WorldAPIs_scenery_grid.SnapToSnapPoint(self, moveObject, unsnappedRotation, entityID, vPosition, vNormal) end

---@param self WorldAPIs_scenery_grid
---@param entityID any
---@param vPosition vector
---@param vNormal vector
---@return any deltaPos
---@return any norm
function WorldAPIs_scenery_grid.SnapToSurfaceCentre(self, entityID, vPosition, vNormal) end

---@param self WorldAPIs_scenery_grid
---@param moveObject any
---@param Arg3 any
---@param partID any?
---@param vPosition vector?
function WorldAPIs_scenery_grid.TryStackGridObjectVertically(self, moveObject, Arg3, partID, vPosition) end


---@param self WorldAPIs_scenery_group
---@param nActiveGroup number
---@param Arg3 any
function WorldAPIs_scenery_group.AreOnlyPartsInGroup(self, nActiveGroup, Arg3) end

---@param self WorldAPIs_scenery_group
---@param buildingGroupID any
---@return vector vMin
---@return vector vMax
function WorldAPIs_scenery_group.CalculateBuildingGroupAABB(self, buildingGroupID) end

---@param self WorldAPIs_scenery_group
---@param nTargetGroupID number
---@return table oTargetGrid
function WorldAPIs_scenery_group.CalculateDefaultGridForGroup(self, nTargetGroupID) end

---@param self WorldAPIs_scenery_group
---@param buildingGroupID any
function WorldAPIs_scenery_group.Debug_GetGroupName_DesignerOverride(self, buildingGroupID) end

---@param self WorldAPIs_scenery_group
---@param buildingGroupID any
function WorldAPIs_scenery_group.Debug_GetGroupName_PlayerName(self, buildingGroupID) end

---@param self WorldAPIs_scenery_group
---@param groupID any
function WorldAPIs_scenery_group.GetGroupHasGridObject(self, groupID) end

---@param self WorldAPIs_scenery_group
---@param nGroupPartID number
---@return table tGroupMemberPartIDs
function WorldAPIs_scenery_group.GetGroupMembers(self, nGroupPartID) end

---@param self WorldAPIs_scenery_group
---@param nFocusBuildingGroupID number
---@return any EscapeString
function WorldAPIs_scenery_group.GetGroupName(self, nFocusBuildingGroupID) end

---@param self WorldAPIs_scenery_group
---@param nBuildingPartID number
---@return number nGroupSize
function WorldAPIs_scenery_group.GetNumGridPartsInGroup(self, nBuildingPartID) end

---@param self WorldAPIs_scenery_group
---@param i any
---@return table tResourceNames
function WorldAPIs_scenery_group.GetResourceNamesFromGroup(self, i) end

---@param self WorldAPIs_scenery_group
---@param nBuildingID number
---@return boolean bIsBuildingGroup
function WorldAPIs_scenery_group.IsBuildingGroup(self, nBuildingID) end

---@param self WorldAPIs_scenery_group
---@param nBuildingGroupID number
---@param nPartID number
function WorldAPIs_scenery_group.IsOnlyPartInGroup(self, nBuildingGroupID, nPartID) end

---@param self WorldAPIs_scenery_group
---@param nBuildingID number
---@return boolean bIsSceneryGroup
function WorldAPIs_scenery_group.IsSceneryGroup(self, nBuildingID) end

---@param self WorldAPIs_scenery_group
---@param bSceneryGroupID boolean
---@param partSet any
function WorldAPIs_scenery_group.PartSetContainsOnlyPartsInGroup(self, bSceneryGroupID, partSet) end

---@param self WorldAPIs_scenery_group
---@param buildingGroupID any
---@param sName string
function WorldAPIs_scenery_group.SetGroupName(self, buildingGroupID, sName) end

---@param self WorldAPIs_scenery_group
---@param nPartID number
---@return number nBuildingGroupID
function WorldAPIs_scenery_group.TryGetBuildingGroupForPart(self, nPartID) end


---@param self WorldAPIs_scenery_platforms
---@param nBelongingOrPlatformOwnerEntityID number
---@param cPartSet table
function WorldAPIs_scenery_platforms.AddAllPartsAttachedToPlatformOwnerToPartSet(self, nBelongingOrPlatformOwnerEntityID, cPartSet) end

---@param self WorldAPIs_scenery_platforms
---@param Arg2 any
---@return boolean bAnyPartsAttached
function WorldAPIs_scenery_platforms.AreAnyPartsAttachedToPlatformOwner(self, Arg2) end

---@param self WorldAPIs_scenery_platforms
function WorldAPIs_scenery_platforms.ClearActiveSceneryPlatformFinders(self) end

---@param self WorldAPIs_scenery_platforms
function WorldAPIs_scenery_platforms.ClearHighlightedSceneryPlatforms(self) end

---@param self WorldAPIs_scenery_platforms
---@param moveObject any
function WorldAPIs_scenery_platforms.ClearMoveObjectPlatformAttachment(self, moveObject) end

---@param self WorldAPIs_scenery_platforms
---@param rideID any
---@param Arg3 any
function WorldAPIs_scenery_platforms.Debug_SetAllowDynamicPlatformTwinningGroupChanges(self, rideID, Arg3) end

---@param self WorldAPIs_scenery_platforms
---@param editObject any
---@param cCloneToOriginalPartIDLookupTable table
function WorldAPIs_scenery_platforms.DoPlatformAttachmentRemapForClonedPartsInMoveObject(self, editObject, cCloneToOriginalPartIDLookupTable) end

---@param self WorldAPIs_scenery_platforms
---@param cAttachedPartIDs table
function WorldAPIs_scenery_platforms.ExpandPartIDsToIncludeAllPartsAttachedToPlatformOwningParts(self, cAttachedPartIDs) end

---@param self WorldAPIs_scenery_platforms
---@param nEntityID number
---@param bRecursiveSearchForRoot boolean
---@param bIgnoreFirstEntityPlatformOwner boolean?
---@return number nPlatformOwnerEntityID
function WorldAPIs_scenery_platforms.FindPlatformOwnerForEntity(self, nEntityID, bRecursiveSearchForRoot, bIgnoreFirstEntityPlatformOwner) end

---@param self WorldAPIs_scenery_platforms
---@param nEntityID number
---@return number nHitPlatformOwnerEntityID
function WorldAPIs_scenery_platforms.FindPlatformOwnerOfEntityOrAncestor(self, nEntityID) end

---@param self WorldAPIs_scenery_platforms
---@param nParentEntityID number
---@return table oPlatformID
function WorldAPIs_scenery_platforms.FindSceneryPlatform(self, nParentEntityID) end

---@param self WorldAPIs_scenery_platforms
---@param nBelongingOrPlatformOwnerEntityID number
---@return table tPlatformPartIDs
function WorldAPIs_scenery_platforms.GetAllPartsAttachedToPlatformOwner(self, nBelongingOrPlatformOwnerEntityID) end

---@param self WorldAPIs_scenery_platforms
---@param moveObject any
---@return boolean bIsAttachedToPlatform
function WorldAPIs_scenery_platforms.GetMoveObjectAttachmentPlatform(self, moveObject) end

---@param self WorldAPIs_scenery_platforms
---@param cMoveObject table
---@return boolean bCanBeAttachedToPlatform
function WorldAPIs_scenery_platforms.GetMoveObjectSupportsPlatformAttachment(self, cMoveObject) end

---@param self WorldAPIs_scenery_platforms
---@param nBelongingOrPlatformOwnerEntityID number
---@return number nNumTwinningSets
function WorldAPIs_scenery_platforms.GetNumTwinningSetsForPlatformOwner(self, nBelongingOrPlatformOwnerEntityID) end

---@param self WorldAPIs_scenery_platforms
---@param Arg2 any
---@return table oOnlyPlatformID
function WorldAPIs_scenery_platforms.GetOnlySceneryPlatformForPlatformOwner(self, Arg2) end

---@param self WorldAPIs_scenery_platforms
---@param nEntityID number
---@return number nPlatformOwnerID
function WorldAPIs_scenery_platforms.GetPlatformOwnerID(self, nEntityID) end

---@param self WorldAPIs_scenery_platforms
---@param nParentEntityID number
---@return table oPlatformID
function WorldAPIs_scenery_platforms.GetSceneryPlatformID(self, nParentEntityID) end

---@param self WorldAPIs_scenery_platforms
---@param nPartID number
---@param nBelongingOrPlatformOwnerEntityID number
---@param bSearchHierarchy boolean?
---@return boolean bInPlatformOwner
function WorldAPIs_scenery_platforms.IsPartAttachedToPlatformOwner(self, nPartID, nBelongingOrPlatformOwnerEntityID, bSearchHierarchy) end

---@param self WorldAPIs_scenery_platforms
---@param nPartID number
---@return boolean bIsPlatformOwner
function WorldAPIs_scenery_platforms.IsPartPlatformOwner(self, nPartID) end

---@param self WorldAPIs_scenery_platforms
---@param nSearchEntity number
---@return boolean _
function WorldAPIs_scenery_platforms.IsSceneryPlatform(self, nSearchEntity) end

---@param self WorldAPIs_scenery_platforms
---@param nRideEntityID number
---@return boolean bIsPlatformOwner
function WorldAPIs_scenery_platforms.IsValidPlatformOwner(self, nRideEntityID) end

---@param self WorldAPIs_scenery_platforms
---@param Arg2 any
function WorldAPIs_scenery_platforms.SetFindersActiveForPlatformOwner(self, Arg2) end

---@param self WorldAPIs_scenery_platforms
---@param moveObject any
function WorldAPIs_scenery_platforms.SetHighlightedSceneryPlatformsFromMoveObject(self, moveObject) end

---@param self WorldAPIs_scenery_platforms
---@param selection any
function WorldAPIs_scenery_platforms.SetHighlightedSceneryPlatformsFromPartSet(self, selection) end

---@param self WorldAPIs_scenery_platforms
---@param moveObject any
---@param cMostRecentPlatformID table
function WorldAPIs_scenery_platforms.SetMoveObjectAttachmentPlatform(self, moveObject, cMostRecentPlatformID) end

---@param self WorldAPIs_scenery_platforms
---@param moveObject any
---@param bShouldBeAttachedToPlatform boolean
function WorldAPIs_scenery_platforms.SetMoveObjectShouldBeAttachedToPlatform(self, moveObject, bShouldBeAttachedToPlatform) end


---@param self WorldAPIs_scenery_puppets
---@param moveObject any
---@return boolean _
function WorldAPIs_scenery_puppets.CanEditPuppetDuplicationRulesForMoveObject(self, moveObject) end

---@param self WorldAPIs_scenery_puppets
---@param moveObject any
function WorldAPIs_scenery_puppets.DoPuppetDuplicationRulesImGuiControlsForMoveObject(self, moveObject) end

---@param self WorldAPIs_scenery_puppets
---@param nPartID number
---@return table tNewRules
function WorldAPIs_scenery_puppets.DoPuppetDuplicationRulesImGuiControlsForPart(self, nPartID) end

---@param self WorldAPIs_scenery_puppets
---@param selection any
---@return table tNewRules
function WorldAPIs_scenery_puppets.DoPuppetDuplicationRulesImGuiControlsForPartSet(self, selection) end

---@param self WorldAPIs_scenery_puppets
---@param nEntityID number
---@return number nPuppetIndex
function WorldAPIs_scenery_puppets.GetIndexForPuppet(self, nEntityID) end

---@param self WorldAPIs_scenery_puppets
---@param nPartID number
---@return number nNumPuppetsForPart
function WorldAPIs_scenery_puppets.GetNumPuppetsForPart(self, nPartID) end

---@param self WorldAPIs_scenery_puppets
---@param moveObject any
---@return table tDuplicationRules
function WorldAPIs_scenery_puppets.GetPuppetDuplicationRulesForMoveObject(self, moveObject) end

---@param self WorldAPIs_scenery_puppets
---@param moveObject any
function WorldAPIs_scenery_puppets.ResetPuppetDuplicationRulesForMoveObject(self, moveObject) end

---@param self WorldAPIs_scenery_puppets
---@param moveObject any
---@param cDuplicationRules table
function WorldAPIs_scenery_puppets.SetPuppetDuplicationRulesForMoveObject(self, moveObject, cDuplicationRules) end


---@param self WorldAPIs_scenery_signage
---@param nPartID number
---@return string sSelectedFont
function WorldAPIs_scenery_signage.GetFontOnSign(self, nPartID) end

---@param self WorldAPIs_scenery_signage
---@param nPartID number
---@return table tDestinationEntities
---@return table tDestinationPartIDs
function WorldAPIs_scenery_signage.GetGuestDestinationAdvertDestinations(self, nPartID) end

---@param self WorldAPIs_scenery_signage
---@param nPartID number
---@return any SetDataStoreElement
function WorldAPIs_scenery_signage.GetTextOnSign(self, nPartID) end

---@param self WorldAPIs_scenery_signage
---@param partID any
---@param Arg3 any
---@param clh any
function WorldAPIs_scenery_signage.RemoveGuestDestinationAdvertEntityByIndex(self, partID, Arg3, clh) end

---@param self WorldAPIs_scenery_signage
---@param partID any
---@param Arg3 any
---@param clh any
function WorldAPIs_scenery_signage.RemoveGuestDestinationAdvertPartIDByIndex(self, partID, Arg3, clh) end

---@param self WorldAPIs_scenery_signage
---@param partID any
---@param emptySelection any
---@param clh any
function WorldAPIs_scenery_signage.SetGuestDestinationAdvertDestinations(self, partID, emptySelection, clh) end


---@param self WorldAPIs_scenery_volumeextras
---@param cParams table
---@return table tResult
function WorldAPIs_scenery_volumeextras.CalculateBestPlacementPosition(self, cParams) end

---@param self WorldAPIs_scenery_volumeextras
---@param cParams table
---@return table tPlacementResults[i]
function WorldAPIs_scenery_volumeextras.CalculateBestPlacementPositionFromPreviewChangelist(self, cParams) end

---@param self WorldAPIs_scenery_volumeextras
---@param volumeMoveObject any
---@param cSceneryPlacement table
---@return table tPositions
function WorldAPIs_scenery_volumeextras.CalculatePlacementTransformsAlongVolumeSpline(self, volumeMoveObject, cSceneryPlacement) end

---@param self WorldAPIs_scenery_volumeextras
---@param rayStart any
---@param rayDir any
---@return table oPathPart
---@return vector vCursorHitPos
function WorldAPIs_scenery_volumeextras.FindFirstPhysicsRayVolumeHit(self, rayStart, rayDir) end

---@param self WorldAPIs_scenery_volumeextras
---@param cArg2 table
function WorldAPIs_scenery_volumeextras.GetVC_Path_Spline(self, cArg2) end

---@param self WorldAPIs_scenery_volumeextras
---@param cArg2 table
function WorldAPIs_scenery_volumeextras.GetVC_Pool_Spline(self, cArg2) end

---@param self WorldAPIs_scenery_volumeextras
---@param cMoveObject table
---@param bPathSnapped boolean
function WorldAPIs_scenery_volumeextras.SetCurbSnappedForMoveObject(self, cMoveObject, bPathSnapped) end

---@param self WorldAPIs_scenery_volumeextras
---@param standard any
function WorldAPIs_scenery_volumeextras.SetVC_Path_Spline(self, standard) end

---@param self WorldAPIs_scenery_volumeextras
---@param pool any
function WorldAPIs_scenery_volumeextras.SetVC_Pool_Spline(self, pool) end


---@param self WorldAPIs_sequence
---@param multiSelection any
---@param nPartID number
---@param bArg4 boolean?
function WorldAPIs_sequence.AddAllRecursiveSequencerItemsToMultiSelection(self, multiSelection, nPartID, bArg4) end

---@param self WorldAPIs_sequence
---@param triggerableHighlight any
function WorldAPIs_sequence.AttachSequencerSpeakerEntityHighlightRequest(self, triggerableHighlight) end

---@param self WorldAPIs_sequence
---@param triggerableHighlight any
function WorldAPIs_sequence.AttachTriggerableEntityHighlightRequest(self, triggerableHighlight) end

---@param self WorldAPIs_sequence
function WorldAPIs_sequence.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@param bArg3 boolean
---@return number nGroups
---@return number nEvents
function WorldAPIs_sequence.CountTriggerGroupsAndEvents(self, nPartID, bArg3) end

---@param self WorldAPIs_sequence
---@param clh any
---@param partID any
---@param datastoreChangeTriggerControlled any
function WorldAPIs_sequence.CreateEditOperationForDatastoreChange(self, clh, partID, datastoreChangeTriggerControlled) end

---@param self WorldAPIs_sequence
---@param clh any
---@param nPartID number
---@param sequencerDatastoreChangeDisplayCameras any
function WorldAPIs_sequence.CreateEditOperationForSequencerDatastoreChange(self, clh, nPartID, sequencerDatastoreChangeDisplayCameras) end

---@param self WorldAPIs_sequence
---@param clh any
---@param partID any
function WorldAPIs_sequence.CreateEditOperationForTimeMachineChange(self, clh, partID) end

---@param self WorldAPIs_sequence
---@param highlightChannelSelection any
---@return any triggerableHighlight
function WorldAPIs_sequence.CreateSequencerSpeakerEntityHighlightRequest(self, highlightChannelSelection) end

---@param self WorldAPIs_sequence
---@param highlightChannelCustom any
---@return any triggerableHighlight
function WorldAPIs_sequence.CreateTriggerableEntityHighlightRequest(self, highlightChannelCustom) end

---@param self WorldAPIs_sequence
function WorldAPIs_sequence.DetatchSequencerSpeakerEntityHighlightRequest(self) end

---@param self WorldAPIs_sequence
function WorldAPIs_sequence.DetatchTriggerableEntityHighlightRequest(self) end

---@param self WorldAPIs_sequence
---@param partID any
function WorldAPIs_sequence.EndRideCamPreview(self, partID) end

---@param self WorldAPIs_sequence
---@param cSequence table
---@return table tHoverHighlightedPartIDs
function WorldAPIs_sequence.GetAllSequencePartIDs(self, cSequence) end

---@param self WorldAPIs_sequence
---@return table tCurrentSequenceEntities
function WorldAPIs_sequence.GetAllSequences(self) end

---@param self WorldAPIs_sequence
---@return table tCurrentSequenceEntities
function WorldAPIs_sequence.GetAllSpeakers(self) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return table tAttachedCameras
function WorldAPIs_sequence.GetAttachedCameras(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return table tAttachedSpeakers
function WorldAPIs_sequence.GetAttachedSpeakers(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return table tConnectedSequencerForTrigger
function WorldAPIs_sequence.GetConnectedSequencers(self, nPartID) end

---@param self WorldAPIs_sequence
---@param cGroupSequence table
---@return number nDuration
function WorldAPIs_sequence.GetDurationOfSequence(self, cGroupSequence) end

---@param self WorldAPIs_sequence
---@param cTrackSequence table
---@param nItemID number
---@return any displayDuration
function WorldAPIs_sequence.GetDurationOfSequenceItem(self, cTrackSequence, nItemID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetIsDoorTriggerTarget(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nEntityID number
---@return boolean bIsRideCamTimeMachine
function WorldAPIs_sequence.GetIsRideCamTimeBox(self, nEntityID) end

---@param self WorldAPIs_sequence
---@param cSequence table
---@return boolean bIsPlaying
function WorldAPIs_sequence.GetIsTriggerSequenceRunningAndCurrentTime(self, cSequence) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return number nMinWaitTime
function WorldAPIs_sequence.GetMinWaitTime(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return any activatedByTrigger
function WorldAPIs_sequence.GetPartTriggerControlled(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return number nDuration
function WorldAPIs_sequence.GetPartTriggerDuration(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return number nDuration
function WorldAPIs_sequence.GetPartTriggerStrobe(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamAudioDistortionActive(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamAudioDistortionIntensity(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return any linkAudioToVisual
function WorldAPIs_sequence.GetRideCamAudioDistortionLinkedToVisual(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamAudioDistortionName(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamAudioDistortionSFXName(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamBlendActive(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamBlendTime(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamColourGradingActive(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamColourGradingIntensity(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamColourGradingPackage(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamFilmGrainActive(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamFilmGrainStrength(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamTime(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamTimeActive(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamVignetteActive(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamVignetteOpacity(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetRideCamVignetteStrength(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nEntityID number
---@return table tSequence
function WorldAPIs_sequence.GetSequenceData(self, nEntityID) end

---@param self WorldAPIs_sequence
function WorldAPIs_sequence.GetSequencerSpeakerEntitiesCount(self) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return table oSequence
function WorldAPIs_sequence.GetSequencerTriggerSequence(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return table tTriggerSettings
function WorldAPIs_sequence.GetSequencerTriggerSettings(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return table oSequence
function WorldAPIs_sequence.GetShootableTargetTriggerSequence(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nEntity number
---@return table tSpeaker
function WorldAPIs_sequence.GetSpeakerData(self, nEntity) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@param bArg3 boolean
---@return table tStatsData
function WorldAPIs_sequence.GetStatisticsDataForSequencer(self, nPartID, bArg3) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.GetTriggerTargetLoopAnimOptions(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return any propData
function WorldAPIs_sequence.GetTriggerTargetPropData(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return number nUIMode
function WorldAPIs_sequence.GetTriggerUIMode(self, nPartID) end

---@param self WorldAPIs_sequence
function WorldAPIs_sequence.GetTriggerableEntitiesCount(self) end

---@param self WorldAPIs_sequence
---@param nEntityID number
---@return boolean _
function WorldAPIs_sequence.IsEntityTriggerSource(self, nEntityID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return boolean bIsSequencer
function WorldAPIs_sequence.IsSequencerPropData(self, nPartID) end

---@param self WorldAPIs_sequence
---@param nPartID number
function WorldAPIs_sequence.IsTriggerTargetPropData(self, nPartID) end

---@param self WorldAPIs_sequence
---@param cRootSequence table
---@param nStartingTime number?
---@param bArg4 boolean?
---@param bArg5 boolean?
function WorldAPIs_sequence.PlayTriggerSequence(self, cRootSequence, nStartingTime, bArg4, bArg5) end

---@param self WorldAPIs_sequence
---@param partID any
function WorldAPIs_sequence.PreviewRideCamEffects(self, partID) end

---@param self WorldAPIs_sequence
---@param cSequence table
function WorldAPIs_sequence.RemoveDeadItemsFromSequence(self, cSequence) end

---@param self WorldAPIs_sequence
---@param sequencer any
---@param partID any
function WorldAPIs_sequence.RemovedAttachedSpeaker(self, sequencer, partID) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@return boolean bRequiresUniqueTrack
function WorldAPIs_sequence.RequiresUniqueTrack(self, nPartID) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param cAttachedCameras table
function WorldAPIs_sequence.SetAttachedCamerasMoveObject(self, moveObject, cAttachedCameras) end

---@param self WorldAPIs_sequence
---@param editObject any
---@param cAttachedSpeakers table
function WorldAPIs_sequence.SetAttachedSpeakersMoveObject(self, editObject, cAttachedSpeakers) end

---@param self WorldAPIs_sequence
---@param editObject any
---@param nSelectedIndex number
function WorldAPIs_sequence.SetLoopAnim(self, editObject, nSelectedIndex) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param bToggled boolean
function WorldAPIs_sequence.SetRideCamAudioDistortionActive(self, moveObject, bToggled) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param nDefaultAudioIntensity number
function WorldAPIs_sequence.SetRideCamAudioDistortionIntensity(self, moveObject, nDefaultAudioIntensity) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param bToggled boolean
function WorldAPIs_sequence.SetRideCamAudioDistortionLinkedToVisual(self, moveObject, bToggled) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param defaultAudioEffect any
function WorldAPIs_sequence.SetRideCamAudioDistortionName(self, moveObject, defaultAudioEffect) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param defaultAudioSFXEffect any
function WorldAPIs_sequence.SetRideCamAudioDistortionSFXName(self, moveObject, defaultAudioSFXEffect) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param bToggled boolean
function WorldAPIs_sequence.SetRideCamBlendActive(self, moveObject, bToggled) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param nVisualTime number
function WorldAPIs_sequence.SetRideCamBlendTime(self, moveObject, nVisualTime) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param bToggled boolean
function WorldAPIs_sequence.SetRideCamColourGradingActive(self, moveObject, bToggled) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param nIntensity number
function WorldAPIs_sequence.SetRideCamColourGradingIntensity(self, moveObject, nIntensity) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param Arg3 any
function WorldAPIs_sequence.SetRideCamColourGradingPackage(self, moveObject, Arg3) end

---@param self WorldAPIs_sequence
---@param rideEntityID any
function WorldAPIs_sequence.SetRideCamEnabled(self, rideEntityID) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param bToggled boolean
function WorldAPIs_sequence.SetRideCamFilmGrainActive(self, moveObject, bToggled) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param nStrength number
function WorldAPIs_sequence.SetRideCamFilmGrainStrength(self, moveObject, nStrength) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param nVisualTime number
function WorldAPIs_sequence.SetRideCamTime(self, moveObject, nVisualTime) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param bToggled boolean
function WorldAPIs_sequence.SetRideCamTimeActive(self, moveObject, bToggled) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param bToggled boolean
function WorldAPIs_sequence.SetRideCamVignetteActive(self, moveObject, bToggled) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param nOpacity number
function WorldAPIs_sequence.SetRideCamVignetteOpacity(self, moveObject, nOpacity) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param nStrength number
function WorldAPIs_sequence.SetRideCamVignetteStrength(self, moveObject, nStrength) end

---@param self WorldAPIs_sequence
---@param editObject any
---@param sAudioTrackNameSequencer string
function WorldAPIs_sequence.SetSequencerCustomMusicMoveObject(self, editObject, sAudioTrackNameSequencer) end

---@param self WorldAPIs_sequence
---@param editObject any
---@param cSequence table
function WorldAPIs_sequence.SetSequencerTriggerSequenceMoveObject(self, editObject, cSequence) end

---@param self WorldAPIs_sequence
---@param editObject any
---@param cTriggerSettings table
function WorldAPIs_sequence.SetSequencerTriggerSettingsMoveObject(self, editObject, cTriggerSettings) end

---@param self WorldAPIs_sequence
---@param moveObject any
---@param nValue number
function WorldAPIs_sequence.SetTargetPointsMoveObject(self, moveObject, nValue) end

---@param self WorldAPIs_sequence
---@param editObject any
---@param Arg3 any
function WorldAPIs_sequence.SetTriggerBehaviourMoveObject(self, editObject, Arg3) end

---@param self WorldAPIs_sequence
---@param editObject any
---@param bControlled boolean
function WorldAPIs_sequence.SetTriggerControlledMoveObject(self, editObject, bControlled) end

---@param self WorldAPIs_sequence
---@param partID any
---@param nValue number
function WorldAPIs_sequence.SetTriggerDurationPart(self, partID, nValue) end

---@param self WorldAPIs_sequence
---@param partID any
---@param nValue number
function WorldAPIs_sequence.SetTriggerStrobePart(self, partID, nValue) end

---@param self WorldAPIs_sequence
---@param nPartID number
---@param triggerTypeShootableDeactivated any
function WorldAPIs_sequence.SetTriggerType(self, nPartID, triggerTypeShootableDeactivated) end

---@param self WorldAPIs_sequence
---@param cModifiableSequence table
---@param newItemID any
---@param nPartID number
function WorldAPIs_sequence.SetupFlexiColourEvent(self, cModifiableSequence, newItemID, nPartID) end

---@param self WorldAPIs_sequence
---@param cRootSequence table
function WorldAPIs_sequence.StopTriggerSequence(self, cRootSequence) end


---@param self WorldAPIs_staff
---@param nStaffEntityID number
---@param nBlock number
function WorldAPIs_staff.AssignBlockAllDay(self, nStaffEntityID, nBlock) end

---@param self WorldAPIs_staff
---@param nStaffID number
---@param nEntityID number
function WorldAPIs_staff.BlacklistLocation(self, nStaffID, nEntityID) end

---@param self WorldAPIs_staff
---@param staffID any
function WorldAPIs_staff.ClearOverridenStaffName(self, staffID) end

---@param self WorldAPIs_staff
function WorldAPIs_staff.CompleteSerialisationAfterEntitiesCreated(self) end

---@param self WorldAPIs_staff
function WorldAPIs_staff.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_staff
---@param entityID any
---@return boolean bTaskAccess
function WorldAPIs_staff.CouldAnyJanitorCleanFacility(self, entityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return boolean bServiceAssigned
---@return boolean bIsAccessible
---@return boolean bRefurbAssigned
---@return boolean bRefurbAccess
function WorldAPIs_staff.CouldAnyMechanicCheckInfrastructure(self, nEntityID) end

---@param self WorldAPIs_staff
---@param stationID any
---@param bIsTransport boolean
---@return boolean bServiceAssigned
function WorldAPIs_staff.CouldAnyMechanicCheckRide(self, stationID, bIsTransport) end

---@param self WorldAPIs_staff
---@param nStaffType number
---@param nCategory number
---@return boolean bCondition
function WorldAPIs_staff.DoesStaffTypeSupportWorkTypeCategory(self, nStaffType, nCategory) end

---@param self WorldAPIs_staff
---@param sStaffPrefab string
---@param Arg3 any
---@param completionToken any
---@return any staffEntityID
function WorldAPIs_staff.GenerateRandomStaff(self, sStaffPrefab, Arg3, completionToken) end

---@param self WorldAPIs_staff
---@param bArg2 boolean
---@param bArg3 boolean
---@return table tPoolSafetyEntities
function WorldAPIs_staff.GetAllLifeguardPostsData(self, bArg2, bArg3) end

---@param self WorldAPIs_staff
---@return table tStaffMoraleOptions
function WorldAPIs_staff.GetAllPossibleMoraleTypes(self) end

---@param self WorldAPIs_staff
---@param nStaffEnum number?
---@param nZoneID number?
---@return table tStaff
function WorldAPIs_staff.GetAllStaffEntities(self, nStaffEnum, nZoneID) end

---@param self WorldAPIs_staff
---@return table tAvailableStaffTypes
function WorldAPIs_staff.GetAllStaffTypesAsString(self) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return any SetDataStoreElement
function WorldAPIs_staff.GetApprehendedPickpockets(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return any SetDataStoreElement
function WorldAPIs_staff.GetApprehendedVandals(self, nEntityID) end

---@param self WorldAPIs_staff
---@param entityID any
---@return number nLifeguard
function WorldAPIs_staff.GetAssignedLifeguardForPost(self, entityID) end

---@param self WorldAPIs_staff
---@param nStationID number
---@return number nStaffID
function WorldAPIs_staff.GetAssignedRideAttendantForRideDestination(self, nStationID) end

---@param self WorldAPIs_staff
---@param entityID any
---@return number nSecurity
---@return boolean bIsAtPost
function WorldAPIs_staff.GetAssignedSecurityForPost(self, entityID) end

---@param self WorldAPIs_staff
---@param nBuildingID number
---@return table tBuildingPoints
function WorldAPIs_staff.GetBuildingPatrolPoints(self, nBuildingID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return any SetDataStoreElement
function WorldAPIs_staff.GetChasedPickpockets(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return any SetDataStoreElement
function WorldAPIs_staff.GetChasedVandals(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@param staffTypeRideAttendant any
---@param workTypeCategoryRideAttendantAttendRide any
---@return number nHoursStaffed
function WorldAPIs_staff.GetHoursStaffed(self, nEntityID, staffTypeRideAttendant, workTypeCategoryRideAttendantAttendRide) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return any parkZoneOverridden
function WorldAPIs_staff.GetIsScheduleParkZoneOverridden(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nStaffID number
---@return boolean _
function WorldAPIs_staff.GetIsStaffMember(self, nStaffID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return any lastMonthTimeValues
function WorldAPIs_staff.GetLastMonthsTimeSpentValues(self, nEntityID) end

---@param self WorldAPIs_staff
---@param entityID any
---@return table tPostInfo
function WorldAPIs_staff.GetLifeguardPostInfo(self, entityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return table tUniformColours
function WorldAPIs_staff.GetMaterialCustomisationData(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nGeneratorEntityID number
function WorldAPIs_staff.GetMechanicAssignedToRide(self, nGeneratorEntityID) end

---@param self WorldAPIs_staff
---@param staffTypeMechanic any
---@return number nSecurityGuards
function WorldAPIs_staff.GetNumberOfStaffOfType(self, staffTypeMechanic) end

---@param self WorldAPIs_staff
---@param nPointID number
---@return any pointType
function WorldAPIs_staff.GetPatrolPointType(self, nPointID) end

---@param self WorldAPIs_staff
---@param entityID any
---@return number nSafetyValue
---@return number nSafetyLevel
function WorldAPIs_staff.GetPostSafetyValueLevel(self, entityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@param nBlockIndex number
---@return table tBlock
function WorldAPIs_staff.GetScheduleBlockForStaffMember(self, nEntityID, nBlockIndex) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return table tScheduleBlocks
function WorldAPIs_staff.GetScheduleBlocksForStaffMember(self, nEntityID) end

---@param self WorldAPIs_staff
function WorldAPIs_staff.GetScheduleCopyBlockStaffType(self) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return any SetDataStoreElement
function WorldAPIs_staff.GetScheduleSalaryPerBlock(self, nEntityID) end

---@param self WorldAPIs_staff
---@return number nShortShiftMaxBlocks
function WorldAPIs_staff.GetScheduleShortShiftMaxBlocks(self) end

---@param self WorldAPIs_staff
---@param nStaff number
---@return number nAssignedLoc
function WorldAPIs_staff.GetScheduleSpecificLocation(self, nStaff) end

---@param self WorldAPIs_staff
---@param nCategory number
---@param nStaffType number
---@param nBlockIndex number
---@return table tValidLocations
function WorldAPIs_staff.GetSpecificLocationsSupportingWorkTypeCategory(self, nCategory, nStaffType, nBlockIndex) end

---@param self WorldAPIs_staff
---@param nBlockIndex number
---@return table tValidLocations
function WorldAPIs_staff.GetSpecificRestLocations(self, nBlockIndex) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return any SetDataStoreElement
function WorldAPIs_staff.GetSprintingEnergy(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@param nBlock number
---@param nStaffType number
---@param nCategory number
---@return number nSecurity
function WorldAPIs_staff.GetStaffAssignedToSpecificLocation(self, nEntityID, nBlock, nStaffType, nCategory) end

---@param self WorldAPIs_staff
---@return boolean bStaffRequireBreaks
function WorldAPIs_staff.GetStaffBreaksEnabled(self) end

---@param self WorldAPIs_staff
---@param i any
function WorldAPIs_staff.GetStaffEnRouteToFacility(self, i) end

---@param self WorldAPIs_staff
---@param nEntityID number
function WorldAPIs_staff.GetStaffMemberCurrentTrainingLevel(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nStaffEntityID number
---@return number nNumberOfDaysMiserable
function WorldAPIs_staff.GetStaffMemberLowPayCounter(self, nStaffEntityID) end

---@param self WorldAPIs_staff
---@param entity any
---@return any salaryMax
function WorldAPIs_staff.GetStaffMemberMaxSalary(self, entity) end

---@param self WorldAPIs_staff
---@param nStaffEntityID number
---@return number nMiserableCounter
function WorldAPIs_staff.GetStaffMemberMiserableCounter(self, nStaffEntityID) end

---@param self WorldAPIs_staff
---@param entity any
---@return number nCurrentSalary
function WorldAPIs_staff.GetStaffMemberMonthlySalary(self, entity) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return number nMorale
function WorldAPIs_staff.GetStaffMemberMorale(self, nEntityID) end

---@param self WorldAPIs_staff
---@param entityID any
function WorldAPIs_staff.GetStaffMemberNumTrainingLevels(self, entityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
function WorldAPIs_staff.GetStaffMemberOnStrike(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return number nParkZoneID
function WorldAPIs_staff.GetStaffMemberParkZone(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return any dailyProjectedPay]
function WorldAPIs_staff.GetStaffMemberProjectedSalary(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return table tFoundFoundStaffRoom
function WorldAPIs_staff.GetStaffMemberRestFoundStaffRoom(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
function WorldAPIs_staff.GetStaffMemberRestStatus(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nStaffID number
---@return any SetDataStoreElement
function WorldAPIs_staff.GetStaffMemberRested(self, nStaffID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@param staffSalaryTierLow any
function WorldAPIs_staff.GetStaffMemberSalaryForTier(self, nEntityID, staffSalaryTierLow) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return number nCurrentTier
function WorldAPIs_staff.GetStaffMemberSalaryTier(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return string sTopString
---@return string sBottomString
---@return number nTaskLocationType
---@return string sCurrentTaskType
---@return number nTargetEntity
function WorldAPIs_staff.GetStaffMemberStateTrivia(self, nEntityID) end

---@param self WorldAPIs_staff
---@param staffEntityID any
---@return vector vSuspendedPos
function WorldAPIs_staff.GetStaffMemberSuspendedPos(self, staffEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
function WorldAPIs_staff.GetStaffMemberTrainingCost(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nStaffID number
---@return number nStaffType
function WorldAPIs_staff.GetStaffMemberType(self, nStaffID) end

---@param self WorldAPIs_staff
---@return table tStaffSummary
function WorldAPIs_staff.GetStaffMembersSummary(self) end

---@param self WorldAPIs_staff
---@param nEntityID number
function WorldAPIs_staff.GetStaffRawName(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return table tScheduleData
function WorldAPIs_staff.GetStaffScheduleData(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return any AddLifetimeStat
function WorldAPIs_staff.GetStaffTimeEmployed(self, nEntityID) end

---@param self WorldAPIs_staff
---@param staffTypeJanitor any
function WorldAPIs_staff.GetStaffTypeFairSalary(self, staffTypeJanitor) end

---@param self WorldAPIs_staff
---@param nStaffEntityID number
---@return string sStaffName
function WorldAPIs_staff.GetStaffUIName(self, nStaffEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return table tTimeSpentValues
function WorldAPIs_staff.GetTimeSpentValues(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return table tStats
function WorldAPIs_staff.GetVendorLifetimeStatsAttended(self, nEntityID) end

---@param self WorldAPIs_staff
---@param staffEntityID any
---@return boolean bCanPlace
function WorldAPIs_staff.HasStaffBrain(self, staffEntityID) end

---@param self WorldAPIs_staff
---@param nStaffID number
---@return any hasQuit
function WorldAPIs_staff.HasStaffMemberQuit(self, nStaffID) end

---@param self WorldAPIs_staff
---@param nRideStationEntityID number
---@param nParkZone number
---@param nRideCategory number
function WorldAPIs_staff.IsAnyRAFreeForRide(self, nRideStationEntityID, nParkZone, nRideCategory) end

---@param self WorldAPIs_staff
---@param entityID any
---@param bArg3 boolean
---@return boolean bTaskAssigned
function WorldAPIs_staff.IsFacilityCleaningTaskAssigned(self, entityID, bArg3) end

---@param self WorldAPIs_staff
---@param nStaff number
---@return boolean bCanWork
function WorldAPIs_staff.IsScheduledForWork(self, nStaff) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@return boolean bCanStaffMove
function WorldAPIs_staff.IsStaffMemberMoveable(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
function WorldAPIs_staff.IsStaffMemberOutOfPark(self, nEntityID) end

---@param self WorldAPIs_staff
---@param nEID number
---@return boolean bIsSuspended
function WorldAPIs_staff.IsStaffMemberSuspended(self, nEID) end

---@param self WorldAPIs_staff
---@param nStaffEntityID number
---@return boolean bFireTrappedInParkNotification
function WorldAPIs_staff.IsStaffMemberTrappedInPark(self, nStaffEntityID) end

---@param self WorldAPIs_staff
---@param staffID any
function WorldAPIs_staff.IsStaffNameOverriden(self, staffID) end

---@param self WorldAPIs_staff
---@param nStaffEntityID number
function WorldAPIs_staff.IsStaffSearchingForFreeStaffBuilding(self, nStaffEntityID) end

---@param self WorldAPIs_staff
function WorldAPIs_staff.ParkReset(self) end

---@param self WorldAPIs_staff
---@param nStaffEntityID number
---@param nBlock number
function WorldAPIs_staff.ResetScheduleBlockErrors(self, nStaffEntityID, nBlock) end

---@param self WorldAPIs_staff
---@param nStaffID number
---@param nScheduleIndex number
---@param nEntityID number?
function WorldAPIs_staff.ScheduleAssignSpecificLocation(self, nStaffID, nScheduleIndex, nEntityID) end

---@param self WorldAPIs_staff
---@param nStaffEntityID number
---@param nSelectedEntityID number
---@param nBlockIndex number
function WorldAPIs_staff.ScheduleAssignSpecificRestLocation(self, nStaffEntityID, nSelectedEntityID, nBlockIndex) end

---@param self WorldAPIs_staff
---@param nStaffID number
---@param nScheduleIndex number
---@param nWorkTypeCategoryMechanicsResearch number
function WorldAPIs_staff.ScheduleChangeWorkTaskCategory(self, nStaffID, nScheduleIndex, nWorkTypeCategoryMechanicsResearch) end

---@param self WorldAPIs_staff
---@param Arg2 any
---@param Arg3 any
function WorldAPIs_staff.ScheduleCopyBlock(self, Arg2, Arg3) end

---@param self WorldAPIs_staff
---@param Arg2 any
---@param Arg3 any
function WorldAPIs_staff.SchedulePasteBlock(self, Arg2, Arg3) end

---@param self WorldAPIs_staff
---@param Arg2 any
---@param Arg3 any
---@param Arg4 any?
function WorldAPIs_staff.ScheduleSetParkZone(self, Arg2, Arg3, Arg4) end

---@param self WorldAPIs_staff
---@param Arg2 any
---@param Arg3 any
---@param bArg4 boolean
function WorldAPIs_staff.ScheduleToggleBlockActive(self, Arg2, Arg3, bArg4) end

---@param self WorldAPIs_staff
---@param Arg2 any
---@param Arg3 any
---@param bIsBreak boolean
function WorldAPIs_staff.ScheduleToggleIsBreak(self, Arg2, Arg3, bIsBreak) end

---@param self WorldAPIs_staff
---@param Arg2 any
---@param Arg3 any
---@param Arg4 any
---@param bToggled boolean
function WorldAPIs_staff.ScheduleToggleWorkTask(self, Arg2, Arg3, Arg4, bToggled) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@param nScheduleIndex number
---@param staffTypeRideAttendant any
---@param workTypeCategoryRideAttendantAttendRide any
function WorldAPIs_staff.ScheduleUnassignSpecificLocation(self, nEntityID, nScheduleIndex, staffTypeRideAttendant, workTypeCategoryRideAttendantAttendRide) end

---@param self WorldAPIs_staff
---@param nStaffEntityID number
---@param nLocationID number
---@param nBlock number
function WorldAPIs_staff.ScheduleUnassignSpecificRestLocation(self, nStaffEntityID, nLocationID, nBlock) end

---@param self WorldAPIs_staff
---@param entityID any
---@param staffTypeLifeguard any
function WorldAPIs_staff.SendHighPriorityAlertForWorkArea(self, entityID, staffTypeLifeguard) end

---@param self WorldAPIs_staff
---@param entityID any
function WorldAPIs_staff.SendHighPriorityRepairAlertForJanitor(self, entityID) end

---@param self WorldAPIs_staff
---@param bDeductStaffPay boolean
function WorldAPIs_staff.SetDeductStaffPayEnabled(self, bDeductStaffPay) end

---@param self WorldAPIs_staff
---@param Arg2 any
function WorldAPIs_staff.SetFairPriceMultiplier(self, Arg2) end

---@param self WorldAPIs_staff
---@param operationHierarchy any
---@param entityID any
---@param sSemanticTag string
---@param vColour vector
function WorldAPIs_staff.SetFlexiColourForTag(self, operationHierarchy, entityID, sSemanticTag, vColour) end

---@param self WorldAPIs_staff
---@param nLifeguard number
---@param nEntityID number?
---@param bArg4 boolean?
function WorldAPIs_staff.SetLifeguardAssignedPost(self, nLifeguard, nEntityID, bArg4) end

---@param self WorldAPIs_staff
---@param bArg2 boolean
function WorldAPIs_staff.SetPostIsPathSnapPlacementMode(self, bArg2) end

---@param self WorldAPIs_staff
---@param entityID any
---@param name any
function WorldAPIs_staff.SetPostName(self, entityID, name) end

---@param self WorldAPIs_staff
---@param bArg2 boolean
---@param entityID any
function WorldAPIs_staff.SetSafetyViewEnabled(self, bArg2, entityID) end

---@param self WorldAPIs_staff
---@param nSecurity number
---@param nEntityID number?
function WorldAPIs_staff.SetSecurityAssignedPost(self, nSecurity, nEntityID) end

---@param self WorldAPIs_staff
---@param nSecurityDetectionBaseChanceMin number
---@param nSecurityDetectionBaseChanceMax number
function WorldAPIs_staff.SetSecurityDetectionChance(self, nSecurityDetectionBaseChanceMin, nSecurityDetectionBaseChanceMax) end

---@param self WorldAPIs_staff
---@param bEnableStaffBreaks boolean
function WorldAPIs_staff.SetStaffBreaksEnabled(self, bEnableStaffBreaks) end

---@param self WorldAPIs_staff
---@param nStaffCostMultiplier number
function WorldAPIs_staff.SetStaffCostMultiplier(self, nStaffCostMultiplier) end

---@param self WorldAPIs_staff
---@param Arg2 any
function WorldAPIs_staff.SetStaffHappinessDisabled(self, Arg2) end

---@param self WorldAPIs_staff
---@param enumVal any
function WorldAPIs_staff.SetStaffInitialMorale(self, enumVal) end

---@param self WorldAPIs_staff
---@param entity any
---@param Arg3 any
function WorldAPIs_staff.SetStaffMemberMonthlySalary(self, entity, Arg3) end

---@param self WorldAPIs_staff
---@param entity any
---@param nZoneID number
function WorldAPIs_staff.SetStaffMemberParkZone(self, entity, nZoneID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@param Arg3 any
function WorldAPIs_staff.SetStaffMemberSalaryTier(self, nEntityID, Arg3) end

---@param self WorldAPIs_staff
---@param staffEntityID any
---@param bArg3 boolean
---@param nPoolEntityID number?
function WorldAPIs_staff.SetStaffMemberSuspended(self, staffEntityID, bArg3, nPoolEntityID) end

---@param self WorldAPIs_staff
---@param bEnableStaffMorale boolean
function WorldAPIs_staff.SetStaffMoraleEnabled(self, bEnableStaffMorale) end

---@param self WorldAPIs_staff
---@param bEnableStaffPay boolean
function WorldAPIs_staff.SetStaffPayEnabled(self, bEnableStaffPay) end

---@param self WorldAPIs_staff
---@param bEnableStaffQuiting boolean
function WorldAPIs_staff.SetStaffQuitingEnabled(self, bEnableStaffQuiting) end

---@param self WorldAPIs_staff
---@param bool any
function WorldAPIs_staff.SetStaffTrainingDisabled(self, bool) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@param sArg string
function WorldAPIs_staff.SetStaffUIName(self, nEntityID, sArg) end

---@param self WorldAPIs_staff
---@param nID number
---@param nVal number
function WorldAPIs_staff.SetWagePayRangeMultiplier(self, nID, nVal) end

---@param self WorldAPIs_staff
---@param Arg2 any
---@return string sStaffType
function WorldAPIs_staff.StaffTypeToString(self, Arg2) end

---@param self WorldAPIs_staff
---@param entityID any
function WorldAPIs_staff.TrainToNextLevel(self, entityID) end

---@param self WorldAPIs_staff
---@param nEntityID number
---@param cEntityContext table
function WorldAPIs_staff.UpdateStaffThoughtsInDataStore(self, nEntityID, cEntityContext) end

---@param self WorldAPIs_staff
---@param nStaffEntityID number
---@return any isFired
function WorldAPIs_staff.WasStaffMemberFired(self, nStaffEntityID) end


---@param self WorldAPIs_techtree
---@param bArg2 boolean
---@param bArg3 boolean
---@param bArg4 boolean
function WorldAPIs_techtree.DrawTechTreeGraph(self, bArg2, bArg3, bArg4) end

---@param self WorldAPIs_techtree
---@param bArg2 boolean
---@param bArg3 boolean
---@param bArg4 boolean
function WorldAPIs_techtree.DrawTechTreeTable(self, bArg2, bArg3, bArg4) end

---@param self WorldAPIs_techtree
---@return table tNodes
function WorldAPIs_techtree.GetAllNodeData(self) end

---@param self WorldAPIs_techtree
---@return table tResearchNodeNames
function WorldAPIs_techtree.GetAllNodeNames(self) end

---@param self WorldAPIs_techtree
---@return any currentAct
function WorldAPIs_techtree.GetCurrentAct(self) end

---@param self WorldAPIs_techtree
---@return number nPlayerObtainedPoints
function WorldAPIs_techtree.GetResearchPoints(self) end

---@param self WorldAPIs_techtree
---@return table tCurrentOverrideData
function WorldAPIs_techtree.GetScenarioOverrideData(self) end

---@param self WorldAPIs_techtree
---@param nID number
function WorldAPIs_techtree.PurchaseNode(self, nID) end

---@param self WorldAPIs_techtree
function WorldAPIs_techtree.ResetTechTree(self) end

---@param self WorldAPIs_techtree
function WorldAPIs_techtree.SaveTechTreeAndResearchPoints(self) end

---@param self WorldAPIs_techtree
---@param nInteger number
function WorldAPIs_techtree.SetResearchPoints(self, nInteger) end

---@param self WorldAPIs_techtree
---@param Arg2 any
function WorldAPIs_techtree.SetSandboxResearchDisabled(self, Arg2) end

---@param self WorldAPIs_techtree
---@param cTechTreeScenarioOverrides table
function WorldAPIs_techtree.SetScenarioOverrideData(self, cTechTreeScenarioOverrides) end

---@param self WorldAPIs_techtree
---@param sGameMode string
---@param Arg3 any
function WorldAPIs_techtree.UpdatePerScenarioData(self, sGameMode, Arg3) end


---@param self WorldAPIs_trackedridedatabase
---@param sRideType string
---@return boolean bAllowedBlockSection
function WorldAPIs_trackedridedatabase.AllowsBlockSections(self, sRideType) end

---@param self WorldAPIs_trackedridedatabase
---@param Arg2 any
function WorldAPIs_trackedridedatabase.AllowsFreeEnds(self, Arg2) end

---@param self WorldAPIs_trackedridedatabase
---@param sRideType string
---@return boolean bAllowedShuttleMode
function WorldAPIs_trackedridedatabase.AllowsShuttleMode(self, sRideType) end

---@param self WorldAPIs_trackedridedatabase
---@param sRideType string
---@return table tTrackResData
function WorldAPIs_trackedridedatabase.BuildTrackResData(self, sRideType) end

---@param self WorldAPIs_trackedridedatabase
---@return table tElementParam
function WorldAPIs_trackedridedatabase.GetAllElementLists(self) end

---@param self WorldAPIs_trackedridedatabase
---@return table tElementUsesRideParam
function WorldAPIs_trackedridedatabase.GetAllElementUsesRideParams(self) end

---@param self WorldAPIs_trackedridedatabase
---@return table tElementParam
function WorldAPIs_trackedridedatabase.GetAllRideParams(self) end

---@param self WorldAPIs_trackedridedatabase
---@return table tElementParam
function WorldAPIs_trackedridedatabase.GetAllTrackElementParams(self) end

---@param self WorldAPIs_trackedridedatabase
---@return table tElementParam
function WorldAPIs_trackedridedatabase.GetAllTrackElements(self) end

---@param self WorldAPIs_trackedridedatabase
---@param sRideType string
---@param bShowExtraTrains boolean
---@return table tTrainTypesForTrack
---@return table tContentPacksForTrains
---@return table tSceneryAttachmentGroupsForTrains
function WorldAPIs_trackedridedatabase.GetAllTrainsForRideType(self, sRideType, bShowExtraTrains) end

---@param self WorldAPIs_trackedridedatabase
---@param sRideType string
---@return table tTagsForCoaster
function WorldAPIs_trackedridedatabase.GetBlueprintTags(self, sRideType) end

---@param self WorldAPIs_trackedridedatabase
---@param sRideType string
---@return table tCinematicCameraWeights
function WorldAPIs_trackedridedatabase.GetCinematicCameraWeights(self, sRideType) end

---@param self WorldAPIs_trackedridedatabase
---@param sID string
---@return string sPlatform
function WorldAPIs_trackedridedatabase.GetFlumePlatformForRideType(self, sID) end

---@param self WorldAPIs_trackedridedatabase
---@param sTrainTypeName string
---@return number nRequiredDLCForTrain
function WorldAPIs_trackedridedatabase.GetRequiredDLCForTrain(self, sTrainTypeName) end

---@param self WorldAPIs_trackedridedatabase
---@param sRideType string
---@return table tElements
function WorldAPIs_trackedridedatabase.GetTrackElements(self, sRideType) end

---@param self WorldAPIs_trackedridedatabase
---@return table tElementParam
function WorldAPIs_trackedridedatabase.GetTrackParamEnum(self) end

---@param self WorldAPIs_trackedridedatabase
---@param sRideType string
---@return boolean _
function WorldAPIs_trackedridedatabase.IsBoomerangCoaster(self, sRideType) end

---@param self WorldAPIs_trackedridedatabase
---@param sRideType string
---@return boolean _
function WorldAPIs_trackedridedatabase.IsCoasterLoopedAsDefault(self, sRideType) end

---@param self WorldAPIs_trackedridedatabase
---@param sID string
---@return boolean bIsFlumePlatform
function WorldAPIs_trackedridedatabase.IsFlumePlatformType(self, sID) end

---@param self WorldAPIs_trackedridedatabase
---@param sRideName string
---@param sElementName string
---@param bUseLooseTrackRestrictions boolean
---@return table tParams
function WorldAPIs_trackedridedatabase.LookupElementParams(self, sRideName, sElementName, bUseLooseTrackRestrictions) end

---@param self WorldAPIs_trackedridedatabase
---@param sElementID string
---@param bArg3 boolean
---@return table tElementParams
function WorldAPIs_trackedridedatabase.LookupElementParamsFromElementName(self, sElementID, bArg3) end

---@param self WorldAPIs_trackedridedatabase
---@param sRideType string
---@param bArg3 boolean
---@return table tRideParams
function WorldAPIs_trackedridedatabase.LookupRideParams(self, sRideType, bArg3) end


---@param self WorldAPIs_trackedrides
---@param nRideID number
---@param nRideID2 number
function WorldAPIs_trackedrides.AddToDuel(self, nRideID, nRideID2) end

---@param self WorldAPIs_trackedrides
---@param shootableHighlight any
function WorldAPIs_trackedrides.AttachShootableTargetHighlightRequest(self, shootableHighlight) end

---@param self WorldAPIs_trackedrides
---@param nHitEntityID number
function WorldAPIs_trackedrides.CanShootTarget(self, nHitEntityID) end

---@param self WorldAPIs_trackedrides
function WorldAPIs_trackedrides.CommitTrainManager(self) end

---@param self WorldAPIs_trackedrides
function WorldAPIs_trackedrides.CompleteBlueprintSerialisationLoad(self) end

---@param self WorldAPIs_trackedrides
---@return any _
function WorldAPIs_trackedrides.CompleteTrainWorldSerialisationLoad(self) end

---@param self WorldAPIs_trackedrides
function WorldAPIs_trackedrides.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_trackedrides
---@param highlightChannelCustom any
---@return any shootableHighlight
function WorldAPIs_trackedrides.CreateShootableTargetHighlightRequest(self, highlightChannelCustom) end

---@param self WorldAPIs_trackedrides
function WorldAPIs_trackedrides.DetachShootableTargetHighlightRequest(self) end

---@param self WorldAPIs_trackedrides
---@param nRideID number
---@return boolean bTrackComplete
function WorldAPIs_trackedrides.DoesTrackStartAndEndAtStation(self, nRideID) end

---@param self WorldAPIs_trackedrides
---@return table tRides
function WorldAPIs_trackedrides.GetAllTrackedRides(self) end

---@param self WorldAPIs_trackedrides
---@param nRideID number
---@return table tTrainsInDuel
function WorldAPIs_trackedrides.GetAllTrackedRidesInDuel(self, nRideID) end

---@param self WorldAPIs_trackedrides
---@param nRideID number
---@return table tTrains
function WorldAPIs_trackedrides.GetAllTrainsOnTrackedRide(self, nRideID) end

---@param self WorldAPIs_trackedrides
---@param nRideEntityID number
---@return number nRemainingShots
function WorldAPIs_trackedrides.GetAmmoLimit(self, nRideEntityID) end

---@param self WorldAPIs_trackedrides
---@param nRideEntityID number
---@param nCarEntityID number
---@return number nDistanceFromStationFront
---@return number nDistanceFromStationRear
function WorldAPIs_trackedrides.GetCarDistanceFromStation(self, nRideEntityID, nCarEntityID) end

---@param self WorldAPIs_trackedrides
---@param trackCarEntityID any
---@return any trackCarLocation
function WorldAPIs_trackedrides.GetCarFrontTrackLocation_Display(self, trackCarEntityID) end

---@param self WorldAPIs_trackedrides
---@param nTrackCarEntityID number
---@return boolean _
function WorldAPIs_trackedrides.GetCarIsOnTrack(self, nTrackCarEntityID) end

---@param self WorldAPIs_trackedrides
---@param trackCarEntityID any
---@return vector vAccel
function WorldAPIs_trackedrides.GetCarLocalAcceleration(self, trackCarEntityID) end

---@param self WorldAPIs_trackedrides
---@param nTrackCarEntityID number
---@return number nSpeed
function WorldAPIs_trackedrides.GetCarTrackSpeed(self, nTrackCarEntityID) end

---@param self WorldAPIs_trackedrides
---@param nTrainID number
---@return table tCars2
function WorldAPIs_trackedrides.GetCarsInTrain(self, nTrainID) end

---@param self WorldAPIs_trackedrides
---@param nEntityID number
---@return number nNumConnectedItems
function WorldAPIs_trackedrides.GetConnectedShootableTargetCount(self, nEntityID) end

---@param self WorldAPIs_trackedrides
---@param nRideEntityID number
---@return table tTargetsParts
function WorldAPIs_trackedrides.GetConnectedShootableTargetParts(self, nRideEntityID) end

---@param self WorldAPIs_trackedrides
---@param nRideEntityID number
---@return boolean bInfiniteAmmo
function WorldAPIs_trackedrides.GetIsAmmoInfinite(self, nRideEntityID) end

---@param self WorldAPIs_trackedrides
---@param nRideEntityID number
---@param nStationEntityID number
---@param nArg4 number
---@return number nTrainEntityID
function WorldAPIs_trackedrides.GetNextTrainToLeaveStation(self, nRideEntityID, nStationEntityID, nArg4) end

---@param self WorldAPIs_trackedrides
---@param nEntityID number
---@return number nNumPoints
function WorldAPIs_trackedrides.GetNumPointsForTarget(self, nEntityID) end

---@param self WorldAPIs_trackedrides
---@param nEntityID number
---@return number nMaxSelections
function WorldAPIs_trackedrides.GetNumShootableTargetsMax(self, nEntityID) end

---@param self WorldAPIs_trackedrides
---@param nPartID number
---@return table tConnectedRides
function WorldAPIs_trackedrides.GetRidesConnectedToTarget(self, nPartID) end

---@param self WorldAPIs_trackedrides
---@param nRideEntityID number
---@return boolean bFreeCamEnabled
function WorldAPIs_trackedrides.GetShootingFreeCamEnabled(self, nRideEntityID) end

---@param self WorldAPIs_trackedrides
---@param nConsecutiveHits number
---@return number nComboMultiplier
function WorldAPIs_trackedrides.GetShootingMultiplier(self, nConsecutiveHits) end

---@param self WorldAPIs_trackedrides
---@param nRideEntityID number
---@return number nPiercing
function WorldAPIs_trackedrides.GetShootingSceneryPiercing(self, nRideEntityID) end

---@param self WorldAPIs_trackedrides
---@param nRideEntityID number
---@return table tHighScores
function WorldAPIs_trackedrides.GetShootingScores(self, nRideEntityID) end

---@param self WorldAPIs_trackedrides
---@param nStartingRideEntityID number
---@param nStartingTrainEntityID number
---@param Arg4 any
---@return any stationID
function WorldAPIs_trackedrides.GetStationBehindTrain(self, nStartingRideEntityID, nStartingTrainEntityID, Arg4) end

---@param self WorldAPIs_trackedrides
---@param nHitEntityID number
---@return vector vForwardShootVector
function WorldAPIs_trackedrides.GetTargetForwardShootVector(self, nHitEntityID) end

---@param self WorldAPIs_trackedrides
---@param nRideEntityID number
---@param nHitPartID number
function WorldAPIs_trackedrides.GetTargetPartRideConnected(self, nRideEntityID, nHitPartID) end

---@param self WorldAPIs_trackedrides
---@param nRideEntityID number
---@param nStationEntityID number
---@return number nTrainEntityID
function WorldAPIs_trackedrides.GetTrainAtStation(self, nRideEntityID, nStationEntityID) end

---@param self WorldAPIs_trackedrides
---@param nRideID number
---@return string sTrainTypeName
function WorldAPIs_trackedrides.GetTrainTypeForTrackedRide(self, nRideID) end

---@param self WorldAPIs_trackedrides
---@param nRideID number
function WorldAPIs_trackedrides.IsLoadedTrackedRide(self, nRideID) end

---@param self WorldAPIs_trackedrides
---@param nEntityID number
---@return boolean _
function WorldAPIs_trackedrides.IsShootableTarget(self, nEntityID) end

---@param self WorldAPIs_trackedrides
---@param nTrackedRideEntityID number
---@return boolean bIsShootingRide
function WorldAPIs_trackedrides.IsShootingMinigameEnabled(self, nTrackedRideEntityID) end

---@param self WorldAPIs_trackedrides
---@param nRideID number
---@return boolean _
function WorldAPIs_trackedrides.IsShuttleLaunchCoaster(self, nRideID) end

---@param self WorldAPIs_trackedrides
---@param rideID any
function WorldAPIs_trackedrides.IsUnconnectedStation(self, rideID) end

---@param self WorldAPIs_trackedrides
---@param sTrainType string
---@param numCars any
---@param nStationLength number
---@return any numCars
function WorldAPIs_trackedrides.LimitNumberOfCarsByTrainLength(self, sTrainType, numCars, nStationLength) end

---@param self WorldAPIs_trackedrides
---@param trackEntity any
---@param bArg3 boolean
function WorldAPIs_trackedrides.NotifyTrackedRideOfTrackEdit(self, trackEntity, bArg3) end

---@param self WorldAPIs_trackedrides
---@param nEntityID number
function WorldAPIs_trackedrides.RemoveFromDuel(self, nEntityID) end

---@param self WorldAPIs_trackedrides
---@param clh any
---@param rideID any
---@param nTargetPartID number
function WorldAPIs_trackedrides.RemoveTarget(self, clh, rideID, nTargetPartID) end

---@param self WorldAPIs_trackedrides
---@param trackEntity any
---@param bRemove boolean
function WorldAPIs_trackedrides.RequestRemoveNormalTrainsOnTrackedRide(self, trackEntity, bRemove) end

---@param self WorldAPIs_trackedrides
---@param trackEntity any
function WorldAPIs_trackedrides.RequestRemoveNormalTrainsOnTrackedRide_IsPending(self, trackEntity) end

---@param self WorldAPIs_trackedrides
---@param rideID any
---@param Arg3 any
function WorldAPIs_trackedrides.SetAmmoLimit(self, rideID, Arg3) end

---@param self WorldAPIs_trackedrides
---@param clh any
---@param nRideID number
---@param cEmptyTargetList table
function WorldAPIs_trackedrides.SetConnectedTargetParts(self, clh, nRideID, cEmptyTargetList) end

---@param self WorldAPIs_trackedrides
---@param nRideEntityID number
---@param bArg3 boolean
function WorldAPIs_trackedrides.SetGuestsCanShoot(self, nRideEntityID, bArg3) end

---@param self WorldAPIs_trackedrides
---@param rideID any
---@param bValue boolean
function WorldAPIs_trackedrides.SetIsAmmoInfinite(self, rideID, bValue) end

---@param self WorldAPIs_trackedrides
---@param rideID any
---@param bValue boolean
function WorldAPIs_trackedrides.SetShootingFreeCamEnabled(self, rideID, bValue) end

---@param self WorldAPIs_trackedrides
---@param rideID any
---@param Arg3 any
function WorldAPIs_trackedrides.SetShootingSceneryPiercing(self, rideID, Arg3) end

---@param self WorldAPIs_trackedrides
---@param trainEntityID any
---@param nCar number
---@param bArg4 boolean
function WorldAPIs_trackedrides.SetSubTrainIsUserControlled(self, trainEntityID, nCar, bArg4) end

---@param self WorldAPIs_trackedrides
---@param trainEntityID any
---@param nCar number
---@param nXInput number
---@param nZInput number
---@param nHornInput number
function WorldAPIs_trackedrides.SetSubTrainUserInput(self, trainEntityID, nCar, nXInput, nZInput, nHornInput) end

---@param self WorldAPIs_trackedrides
---@param nEntityID number
---@return boolean bHitTarget
function WorldAPIs_trackedrides.ShootTarget(self, nEntityID) end

---@param self WorldAPIs_trackedrides
---@param debugEFNCarEntity any
---@param bArg3 boolean
function WorldAPIs_trackedrides.ShowDebugEFNDisplayForCarIfEnabled(self, debugEFNCarEntity, bArg3) end


---@param self WorldAPIs_transform
---@param nIndex number
---@return vector vPointPos
function WorldAPIs_transform.CalculateWorldPosition(self, nIndex) end

---@param self WorldAPIs_transform
---@param nEntityID number
---@return number nLogicalEntityID
function WorldAPIs_transform.GetParent(self, nEntityID) end

---@param self WorldAPIs_transform
---@param nEnvCaptureEntity number
---@return vector vStartPosition
function WorldAPIs_transform.GetPosition(self, nEnvCaptureEntity) end

---@param self WorldAPIs_transform
---@param entityID any
---@return any entranceTransform
function WorldAPIs_transform.GetTransform(self, entityID) end

---@param self WorldAPIs_transform
---@param nEnvCaptureEntity number
---@param Arg3 any
function WorldAPIs_transform.SetPosition(self, nEnvCaptureEntity, Arg3) end


---@param self WorldAPIs_vehicles
---@param vehicle any
---@return boolean bCondition
function WorldAPIs_vehicles.IsVehicle(self, vehicle) end

---@param self WorldAPIs_vehicles
---@param vehicle any
---@param bArg3 boolean
function WorldAPIs_vehicles.SetPlayerControlled(self, vehicle, bArg3) end

---@param self WorldAPIs_vehicles
---@param vehicle any
---@param bArg3 boolean
function WorldAPIs_vehicles.SetVehicleOccupiedByPlayer(self, vehicle, bArg3) end


---@param self WorldAPIs_visualsConfig
---@return number nConfigDepthOfFieldMode
function WorldAPIs_visualsConfig.GetDepthOfFieldMode(self) end

---@param self WorldAPIs_visualsConfig
---@return number nConfigMotionBlurMode
function WorldAPIs_visualsConfig.GetMotionBlurMode(self) end

---@param self WorldAPIs_visualsConfig
---@param depthOfFieldModeAlways any
function WorldAPIs_visualsConfig.SetDepthOfFieldMode(self, depthOfFieldModeAlways) end

---@param self WorldAPIs_visualsConfig
---@param motionBlurModeAlways any
function WorldAPIs_visualsConfig.SetMotionBlurMode(self, motionBlurModeAlways) end


---@param self WorldAPIs_volumes
---@param guishape any
---@param vPos vector
function WorldAPIs_volumes.AddDrawingHeightStick(self, guishape, vPos) end

---@param self WorldAPIs_volumes
---@param guishape any
---@param vStart vector
---@param vEnd vector
---@param lineVisual any
function WorldAPIs_volumes.AddDrawingLine(self, guishape, vStart, vEnd, lineVisual) end

---@param self WorldAPIs_volumes
---@param guishape any
---@param vPos vector
---@param pointVisual any
function WorldAPIs_volumes.AddDrawingPoint(self, guishape, vPos, pointVisual) end

---@param self WorldAPIs_volumes
---@param guishape any
---@return any guidrawing
function WorldAPIs_volumes.AllocDrawingID(self, guishape) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.AnyPoolChangesInProgress(self) end

---@param self WorldAPIs_volumes
---@param Arg2 any
---@param nHandleFlags number
---@param vPos vector
---@param Arg5 any
---@param nBrushHeight number
---@param cSelection table
function WorldAPIs_volumes.AppendBrushHandles(self, Arg2, nHandleFlags, vPos, Arg5, nBrushHeight, cSelection) end

---@param self WorldAPIs_volumes
---@param guishape any
---@param guidrawing any
function WorldAPIs_volumes.BeginDrawing(self, guishape, guidrawing) end

---@param self WorldAPIs_volumes
---@param Arg2 any
---@param Arg3 any
---@param bBuildFromDefaults boolean?
---@return table tFlexiColours
function WorldAPIs_volumes.BuildFlexiColours(self, Arg2, Arg3, bBuildFromDefaults) end

---@param self WorldAPIs_volumes
---@param rayDir any
---@param currentTransform any
---@param changeListHierarchy any
---@param bArg5 boolean
---@return any snappedTransform
function WorldAPIs_volumes.CalcBestSnappedMoveObjectTransform(self, rayDir, currentTransform, changeListHierarchy, bArg5) end

---@param self WorldAPIs_volumes
---@param cControls table
---@param vPrevPos vector
---@param vPos vector
---@param Arg5 any
---@param Arg6 any
---@param Arg7 any
---@param nSnapAngle number
---@param nSnapLength number
---@return vector vEndPos
function WorldAPIs_volumes.CalcPathCourseControls(self, cControls, vPrevPos, vPos, Arg5, Arg6, Arg7, nSnapAngle, nSnapLength) end

---@param self WorldAPIs_volumes
---@param volumeMoveObject any
function WorldAPIs_volumes.CanClearSplineControlPoint(self, volumeMoveObject) end

---@param self WorldAPIs_volumes
---@param nSelectedVolume number
function WorldAPIs_volumes.CanSelectForPipette(self, nSelectedVolume) end

---@param self WorldAPIs_volumes
---@param volumeID any
---@param i any
function WorldAPIs_volumes.CanSelectPoint(self, volumeID, i) end

---@param self WorldAPIs_volumes
---@param volumeMoveObject any
function WorldAPIs_volumes.CanSetSplineControlPoint(self, volumeMoveObject) end

---@param self WorldAPIs_volumes
---@param nVolumeID number
function WorldAPIs_volumes.Claim(self, nVolumeID) end

---@param self WorldAPIs_volumes
---@param volumeMoveObject any
function WorldAPIs_volumes.ClearSplineControlPoint(self, volumeMoveObject) end

---@param self WorldAPIs_volumes
---@return any guishape
function WorldAPIs_volumes.CreateDrawingShape(self) end

---@param self WorldAPIs_volumes
---@param nGridType number
---@param nScale number
---@return table cGridObject
function WorldAPIs_volumes.CreateGridObject(self, nGridType, nScale) end

---@param self WorldAPIs_volumes
---@param compositeObject any
---@param operationHierarchy any
---@param cVolumeOutline table
---@param nClipPriority number
---@param nGroundedRequest number
function WorldAPIs_volumes.CreateMoveObjectForVolumeOutline(self, compositeObject, operationHierarchy, cVolumeOutline, nClipPriority, nGroundedRequest) end

---@param self WorldAPIs_volumes
---@param operationHierarchy any
---@param Arg3 any
---@param bStraight boolean
---@param bClassic boolean
---@param bArg6 boolean
---@param bStub boolean
---@return any moveObject
function WorldAPIs_volumes.CreateMoveObjectForVolumeSpline(self, operationHierarchy, Arg3, bStraight, bClassic, bArg6, bStub) end

---@param self WorldAPIs_volumes
---@param compositeObject any
---@param operationHierarchy any
---@param vPos vector
function WorldAPIs_volumes.CreateMoveObjectHeightStick(self, compositeObject, operationHierarchy, vPos) end

---@param self WorldAPIs_volumes
---@param cChangeListHierarchy table
---@param cJoinGroupIDs table
---@param cStationInfo table
---@param cPlatformInfo table?
---@return table cMoveObjectPlatformJoin
function WorldAPIs_volumes.CreateMoveObjectPlatformFlumeJoin(self, cChangeListHierarchy, cJoinGroupIDs, cStationInfo, cPlatformInfo) end

---@param self WorldAPIs_volumes
---@param cChangeListHierarchy table
---@param nPathJoinPartGroupID number
---@param cEntranceExitInfo table
---@param bRemoveOldJoin boolean
function WorldAPIs_volumes.CreateMoveObjectPlatformGateJoin(self, cChangeListHierarchy, nPathJoinPartGroupID, cEntranceExitInfo, bRemoveOldJoin) end

---@param self WorldAPIs_volumes
---@param compositeObject any
---@param operationHierarchy any
---@param cSelection table
function WorldAPIs_volumes.CreateMoveObjectsForControlHandles(self, compositeObject, operationHierarchy, cSelection) end

---@param self WorldAPIs_volumes
---@param compositeObject any
---@param operationHierarchy any
---@param cSelection table
---@param handleType any
function WorldAPIs_volumes.CreateMoveObjectsForSelection(self, compositeObject, operationHierarchy, cSelection, handleType) end

---@param self WorldAPIs_volumes
---@param cSelection table
---@param transQ any
---@return any _SetSelection
function WorldAPIs_volumes.CreateSelectionAfterTranslation(self, cSelection, transQ) end

---@param self WorldAPIs_volumes
---@param vStart vector
---@param vDir vector
function WorldAPIs_volumes.CreateSelectionFromRaycast(self, vStart, vDir) end

---@param self WorldAPIs_volumes
---@param cSelection table
---@param site any
---@param Arg4 any
---@return any _SetSelection
function WorldAPIs_volumes.CreateSelectionWithMovedSitePos(self, cSelection, site, Arg4) end

---@param self WorldAPIs_volumes
---@param cSelection table
---@return any _SetSelection
function WorldAPIs_volumes.CreateTrimmedSelection(self, cSelection) end

---@param self WorldAPIs_volumes
---@param guishape any
function WorldAPIs_volumes.DestroyDrawingShape(self, guishape) end

---@param self WorldAPIs_volumes
---@param guishape any
---@param cSelection table
---@param bNeighbours boolean
function WorldAPIs_volumes.DrawSelection(self, guishape, cSelection, bNeighbours) end

---@param self WorldAPIs_volumes
---@param guishape any
---@param cSelection table
---@param vOffset vector
function WorldAPIs_volumes.DrawSelectionWithOffset(self, guishape, cSelection, vOffset) end

---@param self WorldAPIs_volumes
---@param guishape any
---@param guidrawing any
function WorldAPIs_volumes.EndDrawing(self, guishape, guidrawing) end

---@param self WorldAPIs_volumes
---@param guishape any
---@param guidrawing any
function WorldAPIs_volumes.EraseDrawing(self, guishape, guidrawing) end

---@param self WorldAPIs_volumes
---@param cSelection table
---@param vStart vector
---@param vDir vector
function WorldAPIs_volumes.ExpandSelectionUsingRaycast(self, cSelection, vStart, vDir) end

---@param self WorldAPIs_volumes
---@param Arg2 any
---@param nHandleFlags number
---@param vStart vector
---@param vDir vector
---@param guishape any
---@return table tHandles
---@return vector vHitPos
function WorldAPIs_volumes.FindAndDrawControlHandles(self, Arg2, nHandleFlags, vStart, vDir, guishape) end

---@param self WorldAPIs_volumes
---@param operationHierarchy any
---@param nControlHandleID number
---@return number nAudioMaterial
---@return boolean bFromEdge
function WorldAPIs_volumes.GetAudioMaterialChangeFromControlHandle(self, operationHierarchy, nControlHandleID) end

---@param self WorldAPIs_volumes
---@param i any
---@return number nAudioMaterial
function WorldAPIs_volumes.GetAudioMaterialFromControlHandle(self, i) end

---@param self WorldAPIs_volumes
---@param selection any
---@param nControlHandleType number
---@return table tHandles
function WorldAPIs_volumes.GetControlHandlesForSelection(self, selection, nControlHandleType) end

---@param self WorldAPIs_volumes
---@param cFlexiColours table
---@param Arg3 any
function WorldAPIs_volumes.GetEdgeStyleColour(self, cFlexiColours, Arg3) end

---@param self WorldAPIs_volumes
---@param operationHierarchy any
---@return boolean bRoundingChangesForAudio
function WorldAPIs_volumes.GetHasAnyRoundingChangesForAudio(self, operationHierarchy) end

---@param self WorldAPIs_volumes
---@param vRayStart vector
---@param vRayDir vector
---@return table oNavPart
---@return vector vGroundedNavPartPosition
function WorldAPIs_volumes.GetNavPartFromRay(self, vRayStart, vRayDir) end

---@param self WorldAPIs_volumes
---@param sRenderType string
---@return number nAudioMaterial
function WorldAPIs_volumes.GetOutlineAudioPlacementMaterial(self, sRenderType) end

---@param self WorldAPIs_volumes
---@param cFlexiColours table
---@param Arg3 any
function WorldAPIs_volumes.GetOutlineStyleColour(self, cFlexiColours, Arg3) end

---@param self WorldAPIs_volumes
---@param cMoveObjectPlatformJoin table
---@return boolean bSuccess
function WorldAPIs_volumes.GetPlatformGateJoinSuccess(self, cMoveObjectPlatformJoin) end

---@param self WorldAPIs_volumes
---@param nVolumeID number
---@return number nPoolEntityID
function WorldAPIs_volumes.GetPoolEntityFromVolume(self, nVolumeID) end

---@param self WorldAPIs_volumes
---@param cSelection table
---@return any StartSelectionDrag
function WorldAPIs_volumes.GetSelectionNumPoints(self, cSelection) end

---@param self WorldAPIs_volumes
---@param cInitialSelection table
---@return table tPositions
function WorldAPIs_volumes.GetSelectionPositions(self, cInitialSelection) end

---@param self WorldAPIs_volumes
---@param cSelection table
---@param siteMiddle any
---@return vector vMidPos
---@return vector vMidDir
function WorldAPIs_volumes.GetSelectionSitePos(self, cSelection, siteMiddle) end

---@param self WorldAPIs_volumes
---@param cSelection table
---@return table tWidgetsAllowed
function WorldAPIs_volumes.GetSelectionWidgets(self, cSelection) end

---@param self WorldAPIs_volumes
---@param volumeMoveObject any
---@return table tSplineAudioData
function WorldAPIs_volumes.GetSplineAudioData(self, volumeMoveObject) end

---@param self WorldAPIs_volumes
---@param volumeMoveObject any
---@return boolean bCommitCurrent
---@return vector vStartPos
---@return vector vEndPos
---@return boolean bShouldContinueBuilding
---@return vector vCameraDeltaStraight
---@return vector vCameraDeltaContinued
---@return number nCameraDeltaRotation
function WorldAPIs_volumes.GetSplineResultData(self, volumeMoveObject) end

---@param self WorldAPIs_volumes
---@param volumeMoveObject any
---@return vector vStartPos
---@return vector vStartDir
---@return boolean bStartSnapped
function WorldAPIs_volumes.GetSplineStartData(self, volumeMoveObject) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCAddBorder(self) end

---@param self WorldAPIs_volumes
---@param eToolPanel any
function WorldAPIs_volumes.GetVCAddKerbs(self, eToolPanel) end

---@param self WorldAPIs_volumes
---@param eToolPanel any
function WorldAPIs_volumes.GetVCAddPathSpine(self, eToolPanel) end

---@param self WorldAPIs_volumes
---@param eToolPanel any
function WorldAPIs_volumes.GetVCAddRails(self, eToolPanel) end

---@param self WorldAPIs_volumes
---@return boolean bAngleSnapActive
function WorldAPIs_volumes.GetVCAngleSnapActive(self) end

---@param self WorldAPIs_volumes
---@return number nAngleSnapDegrees
function WorldAPIs_volumes.GetVCAngleSnapDegrees(self) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCBrushHeight(self) end

---@param self WorldAPIs_volumes
---@return any AdvanceBrushPlacement
function WorldAPIs_volumes.GetVCBrushRadius(self) end

---@param self WorldAPIs_volumes
---@return boolean _
function WorldAPIs_volumes.GetVCCameraFollow(self) end

---@param self WorldAPIs_volumes
---@return boolean _
function WorldAPIs_volumes.GetVCCameraFollowCurve(self) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCDeploySupports(self) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCGroundedRequest(self) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCPriority(self) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCRightAngledJoints(self) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCRoundingRadius(self) end

---@param self WorldAPIs_volumes
---@return boolean bOldValue
function WorldAPIs_volumes.GetVCSplineCurve(self) end

---@param self WorldAPIs_volumes
---@return number nDistanceStepSize
function WorldAPIs_volumes.GetVCSplineHeightSnap(self) end

---@param self WorldAPIs_volumes
---@return boolean bSplineHeightSnapActive
function WorldAPIs_volumes.GetVCSplineHeightSnapActive(self) end

---@param self WorldAPIs_volumes
---@return number nSplineLengthFixed
function WorldAPIs_volumes.GetVCSplineLengthFixed(self) end

---@param self WorldAPIs_volumes
---@return boolean bSplineLengthFixed
function WorldAPIs_volumes.GetVCSplineLengthFixedActive(self) end

---@param self WorldAPIs_volumes
---@return number nSnapLength
function WorldAPIs_volumes.GetVCSplineLengthSnap(self) end

---@param self WorldAPIs_volumes
---@return boolean bSplineLengthSnapActive
function WorldAPIs_volumes.GetVCSplineLengthSnapActive(self) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCSplineRoundedEnds(self) end

---@param self WorldAPIs_volumes
---@param eToolPanel any
function WorldAPIs_volumes.GetVCSplineWidth(self, eToolPanel) end

---@param self WorldAPIs_volumes
---@param eToolPanel any
---@return number nScale
function WorldAPIs_volumes.GetVCStampScale(self, eToolPanel) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCUseStampGrid(self) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCUseStampSnap(self) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCUseWorkingPlane(self) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.GetVCWorkingPlaneHeight(self) end

---@param self WorldAPIs_volumes
---@param nI number
---@param bArg3 boolean?
---@param bArg4 boolean?
---@return number nVolumeID
function WorldAPIs_volumes.GetVolumeIDFromEntityID(self, nI, bArg3, bArg4) end

---@param self WorldAPIs_volumes
---@param nSelectedVolume number
---@return table tVolumeOutline
function WorldAPIs_volumes.GetVolumeOutline(self, nSelectedVolume) end

---@param self WorldAPIs_volumes
---@param cMoveObject table
---@return table tVolumeOutlines
function WorldAPIs_volumes.GetVolumeOutlinesFromMoveObject(self, cMoveObject) end

---@param self WorldAPIs_volumes
---@param operationHierarchy any
---@return table tVolumeIDs
function WorldAPIs_volumes.GetVolumesWithPreviewChangesForAudio(self, operationHierarchy) end

---@param self WorldAPIs_volumes
---@param cGridObject table
---@param cGridObject2 table
function WorldAPIs_volumes.GridObjectsAreCompatible(self, cGridObject, cGridObject2) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.HasPendingPoolEdgeCreations(self) end

---@param self WorldAPIs_volumes
---@param nVolumeID number
---@return boolean _
function WorldAPIs_volumes.IsPool(self, nVolumeID) end

---@param self WorldAPIs_volumes
---@param nVolumeID number
---@return boolean _
function WorldAPIs_volumes.IsQueue(self, nVolumeID) end

---@param self WorldAPIs_volumes
---@param nVolumeID number
---@return boolean _
function WorldAPIs_volumes.IsStaffPath(self, nVolumeID) end

---@param self WorldAPIs_volumes
---@param guishape any
function WorldAPIs_volumes.LockUpdateDrawing(self, guishape) end

---@param self WorldAPIs_volumes
---@param vStart vector
---@param vDir vector
---@return number nDist
---@return number nVolume
---@return number nEdge
function WorldAPIs_volumes.Raycast(self, vStart, vDir) end

---@param self WorldAPIs_volumes
---@param i any
function WorldAPIs_volumes.Release(self, i) end

---@param self WorldAPIs_volumes
function WorldAPIs_volumes.SendInitialPathAndVolumeMessagesOnLoad(self) end

---@param self WorldAPIs_volumes
---@param cVolumeOutline table
---@param nSelectedEdge number
function WorldAPIs_volumes.SetFlexiColoursFromOutline(self, cVolumeOutline, nSelectedEdge) end

---@param self WorldAPIs_volumes
---@param operationHierarchy any
---@param Arg3 any
---@param gLabelColumns any
---@param gLabelRows any
---@param labelsContext any
function WorldAPIs_volumes.SetModifyVolumesLabelView(self, operationHierarchy, Arg3, gLabelColumns, gLabelRows, labelsContext) end

---@param self WorldAPIs_volumes
---@param cMoveObjectPlatformJoin table
---@param bArg3 boolean
function WorldAPIs_volumes.SetPlatformGateJoinRaycastToGround(self, cMoveObjectPlatformJoin, bArg3) end

---@param self WorldAPIs_volumes
---@param volumeMoveObject any
---@param sOutlineType string
---@param sRenderType string
---@param sEdgeType string
---@param nWidth number
---@param nDepth number
---@param nClipPriority number
---@param nGroundedRequest number
---@param bDeploySupports boolean
---@param vOutlineColour vector
---@param vEdgeColour vector
function WorldAPIs_volumes.SetSplineBorderData(self, volumeMoveObject, sOutlineType, sRenderType, sEdgeType, nWidth, nDepth, nClipPriority, nGroundedRequest, bDeploySupports, vOutlineColour, vEdgeColour) end

---@param self WorldAPIs_volumes
---@param volumeMoveObject any
---@param Arg3 any
---@param Arg4 any
function WorldAPIs_volumes.SetSplineBuildingOptions(self, volumeMoveObject, Arg3, Arg4) end

---@param self WorldAPIs_volumes
---@param volumeMoveObject any
---@param Arg3 any
function WorldAPIs_volumes.SetSplineControlPoint(self, volumeMoveObject, Arg3) end

---@param self WorldAPIs_volumes
---@param moveObject any
---@param sOutlineType string
---@param sRenderType string
---@param sEdgeType string
---@param nRadius number
---@param nDepth number
---@param nClipPriorityHigh number
---@param nGroundedRequestForceNotOnGround number
---@param bDeploySupports boolean
---@param vOutlineColour vector
---@param vEdgeColour vector
function WorldAPIs_volumes.SetSplinePathData(self, moveObject, sOutlineType, sRenderType, sEdgeType, nRadius, nDepth, nClipPriorityHigh, nGroundedRequestForceNotOnGround, bDeploySupports, vOutlineColour, vEdgeColour) end

---@param self WorldAPIs_volumes
---@param operationHierarchy any
---@param cGridObject table
---@param cachedTransform any
function WorldAPIs_volumes.SetToUseGridObject(self, operationHierarchy, cGridObject, cachedTransform) end

---@param self WorldAPIs_volumes
---@param bAddBorder boolean
function WorldAPIs_volumes.SetVCAddBorder(self, bAddBorder) end

---@param self WorldAPIs_volumes
---@param bAddKerbs boolean
---@param eToolPanel any
function WorldAPIs_volumes.SetVCAddKerbs(self, bAddKerbs, eToolPanel) end

---@param self WorldAPIs_volumes
---@param bAddPathSpine boolean
---@param eToolPanel any
function WorldAPIs_volumes.SetVCAddPathSpine(self, bAddPathSpine, eToolPanel) end

---@param self WorldAPIs_volumes
---@param bAddRails boolean
---@param eToolPanel any
function WorldAPIs_volumes.SetVCAddRails(self, bAddRails, eToolPanel) end

---@param self WorldAPIs_volumes
---@param bAngleSnap boolean
function WorldAPIs_volumes.SetVCAngleSnapActive(self, bAngleSnap) end

---@param self WorldAPIs_volumes
---@param nAngleSnapDegrees number
function WorldAPIs_volumes.SetVCAngleSnapDegrees(self, nAngleSnapDegrees) end

---@param self WorldAPIs_volumes
---@param nBrushHeight number
function WorldAPIs_volumes.SetVCBrushHeight(self, nBrushHeight) end

---@param self WorldAPIs_volumes
---@param nBrushRadius number
function WorldAPIs_volumes.SetVCBrushRadius(self, nBrushRadius) end

---@param self WorldAPIs_volumes
---@param bCameraFollow boolean
function WorldAPIs_volumes.SetVCCameraFollow(self, bCameraFollow) end

---@param self WorldAPIs_volumes
---@param bCameraFollowCurve boolean
function WorldAPIs_volumes.SetVCCameraFollowCurve(self, bCameraFollowCurve) end

---@param self WorldAPIs_volumes
---@param bDeploySupports boolean
function WorldAPIs_volumes.SetVCDeploySupports(self, bDeploySupports) end

---@param self WorldAPIs_volumes
---@param nDepth number
function WorldAPIs_volumes.SetVCDepth(self, nDepth) end

---@param self WorldAPIs_volumes
---@param sEdgeType string
function WorldAPIs_volumes.SetVCEdgeType(self, sEdgeType) end

---@param self WorldAPIs_volumes
---@param Arg2 any
function WorldAPIs_volumes.SetVCGroundedRequest(self, Arg2) end

---@param self WorldAPIs_volumes
---@param sRenderType string
function WorldAPIs_volumes.SetVCOutlineRenderType(self, sRenderType) end

---@param self WorldAPIs_volumes
---@param sOutlineType string
function WorldAPIs_volumes.SetVCOutlineType(self, sOutlineType) end

---@param self WorldAPIs_volumes
---@param bPriority boolean
function WorldAPIs_volumes.SetVCPriority(self, bPriority) end

---@param self WorldAPIs_volumes
---@param bRightAngledJoints boolean
function WorldAPIs_volumes.SetVCRightAngledJoints(self, bRightAngledJoints) end

---@param self WorldAPIs_volumes
---@param nRoundingRadius number
function WorldAPIs_volumes.SetVCRoundingRadius(self, nRoundingRadius) end

---@param self WorldAPIs_volumes
---@param sSemanticTag string
---@param vColour vector
function WorldAPIs_volumes.SetVCSemanticColour(self, sSemanticTag, vColour) end

---@param self WorldAPIs_volumes
---@param bValue boolean
function WorldAPIs_volumes.SetVCSplineCurve(self, bValue) end

---@param self WorldAPIs_volumes
---@param nSplineHeightSnap number
function WorldAPIs_volumes.SetVCSplineHeightSnap(self, nSplineHeightSnap) end

---@param self WorldAPIs_volumes
---@param bSplineHeightSnapActive boolean
function WorldAPIs_volumes.SetVCSplineHeightSnapActive(self, bSplineHeightSnapActive) end

---@param self WorldAPIs_volumes
---@param nSplineLengthFixed number
function WorldAPIs_volumes.SetVCSplineLengthFixed(self, nSplineLengthFixed) end

---@param self WorldAPIs_volumes
---@param bSplineLengthFixedActive boolean
function WorldAPIs_volumes.SetVCSplineLengthFixedActive(self, bSplineLengthFixedActive) end

---@param self WorldAPIs_volumes
---@param nSplineLengthSnap number
function WorldAPIs_volumes.SetVCSplineLengthSnap(self, nSplineLengthSnap) end

---@param self WorldAPIs_volumes
---@param bSplineLengthSnapActive boolean
function WorldAPIs_volumes.SetVCSplineLengthSnapActive(self, bSplineLengthSnapActive) end

---@param self WorldAPIs_volumes
---@param bSplineRoundedEnds boolean
function WorldAPIs_volumes.SetVCSplineRoundedEnds(self, bSplineRoundedEnds) end

---@param self WorldAPIs_volumes
---@param nSplineWidth number
---@param eToolPanel any
function WorldAPIs_volumes.SetVCSplineWidth(self, nSplineWidth, eToolPanel) end

---@param self WorldAPIs_volumes
---@param nNewScale number
---@param eToolPanel any
function WorldAPIs_volumes.SetVCStampScale(self, nNewScale, eToolPanel) end

---@param self WorldAPIs_volumes
---@param bStampGrid boolean
function WorldAPIs_volumes.SetVCUseStampGrid(self, bStampGrid) end

---@param self WorldAPIs_volumes
---@param bStampSnap boolean
function WorldAPIs_volumes.SetVCUseStampSnap(self, bStampSnap) end

---@param self WorldAPIs_volumes
---@param bUseWorkingHeight boolean
function WorldAPIs_volumes.SetVCUseWorkingPlane(self, bUseWorkingHeight) end

---@param self WorldAPIs_volumes
---@param nWorkingHeight number
function WorldAPIs_volumes.SetVCWorkingPlaneHeight(self, nWorkingHeight) end

---@param self WorldAPIs_volumes
---@param nEntityID number
function WorldAPIs_volumes.ShouldEntityBeIgnoredBySelect(self, nEntityID) end

---@param self WorldAPIs_volumes
---@param Arg2 any
---@return vector vNewTargetPos
---@return table oNavPart
function WorldAPIs_volumes.SnapPositionToNavPart(self, Arg2) end

---@param self WorldAPIs_volumes
---@param cVolumeOutlines table
---@return table tVolumeOutlines
function WorldAPIs_volumes.SubdivideOutlines(self, cVolumeOutlines) end

---@param self WorldAPIs_volumes
---@param guishape any
function WorldAPIs_volumes.UnlockUpdateDrawing(self, guishape) end


---@param self WorldAPIs_voxelterrain
---@param nPhysicsWorldEntity number
---@param voxelTerrainEntityID any
function WorldAPIs_voxelterrain.AddTerrainToPhysicsWorld(self, nPhysicsWorldEntity, voxelTerrainEntityID) end

---@param self WorldAPIs_voxelterrain
---@param nTerrainEntityID number
---@param vRayStart vector
---@param vRayDir vector
---@param nArg5 number
---@return number nDistance
function WorldAPIs_voxelterrain.CoarseRayCast(self, nTerrainEntityID, vRayStart, vRayDir, nArg5) end

---@param self WorldAPIs_voxelterrain
---@param vCameraPos vector
---@param vDirection vector
---@param nLength number
---@return any terrainID
---@return any distance
function WorldAPIs_voxelterrain.CoarseRayCastAll(self, vCameraPos, vDirection, nLength) end

---@param self WorldAPIs_voxelterrain
---@return any voxTerrainCompletionToken
function WorldAPIs_voxelterrain.CompleteWorldSerialisationLoad(self) end

---@param self WorldAPIs_voxelterrain
---@param terrainEditorEntityID any
---@param brushLocation any
---@return table tTargetColour
function WorldAPIs_voxelterrain.GetAuxDataOfClosestVoxel(self, terrainEditorEntityID, brushLocation) end

---@param self WorldAPIs_voxelterrain
---@param key any
function WorldAPIs_voxelterrain.GetMaterialName(self, key) end

---@param self WorldAPIs_voxelterrain
---@return number nVoxelTerrainEntityID
function WorldAPIs_voxelterrain.GetPrimaryVoxelTerrainEntityID(self) end

---@param self WorldAPIs_voxelterrain
---@param voxelTerrainID any
---@param vSurfacePoint vector
---@param bArg4 boolean
---@return vector vNorm
function WorldAPIs_voxelterrain.GetSmoothIsoValuePartialDerivatives(self, voxelTerrainID, vSurfacePoint, bArg4) end

---@param self WorldAPIs_voxelterrain
---@param nVoxelTerrainID number
---@return vector vMin
---@return vector vMax
function WorldAPIs_voxelterrain.GetWorldBounds(self, nVoxelTerrainID) end

---@param self WorldAPIs_voxelterrain
---@param voxelTerrainID any
---@param vPos vector
---@return any pointTest
function WorldAPIs_voxelterrain.PointTest(self, voxelTerrainID, vPos) end

---@param self WorldAPIs_voxelterrain
---@param voxelTerrainID any
---@param rayStart Vector3
---@param vRayDir vector
---@param nGNRayCastDistance number
---@return number nRayCast
function WorldAPIs_voxelterrain.RayCast(self, voxelTerrainID, rayStart, vRayDir, nGNRayCastDistance) end

---@param self WorldAPIs_voxelterrain
---@param vRayStart vector
---@param vRayDir vector
---@param nRayLength number
---@return number nTerrainID
---@return number nTerrainDistance
function WorldAPIs_voxelterrain.RayCastAll(self, vRayStart, vRayDir, nRayLength) end

---@param self WorldAPIs_voxelterrain
---@param nPhysicsWorldEntity number
---@param nVoxelTerrainEntityID number
function WorldAPIs_voxelterrain.RemoveTerrainFromPhysicsWorld(self, nPhysicsWorldEntity, nVoxelTerrainEntityID) end

---@param self WorldAPIs_voxelterrain
---@param voxelTerrainEntityID any
function WorldAPIs_voxelterrain.SetPrimaryVoxelTerrainEntityID(self, voxelTerrainEntityID) end

---@param self WorldAPIs_voxelterrain
---@param voxelTerrainID any
---@param vCameraPos vector
---@param vRayDir vector
---@param nTestRayLength number
---@param nRadius number
---@return number nSphereSweepDist
function WorldAPIs_voxelterrain.SphereSweep(self, voxelTerrainID, vCameraPos, vRayDir, nTestRayLength, nRadius) end

---@param self WorldAPIs_voxelterrain
---@param voxelTerrainID any
---@param vCameraPos vector
---@param nRadius number
---@return any sphereTest
---@return any pointTest
---@return vector vClosestPoint
function WorldAPIs_voxelterrain.SphereTest(self, voxelTerrainID, vCameraPos, nRadius) end


---@param self WorldAPIs_weather
---@param nArg2 number
---@param nArg3 number
function WorldAPIs_weather.ActivateDefaultEvent(self, nArg2, nArg3) end

---@param self WorldAPIs_weather
---@param value any
---@param bArg3 boolean
---@return boolean bChanged
function WorldAPIs_weather.DrawWeatherScenarioImGui(self, value, bArg3) end

---@param self WorldAPIs_weather
---@return table tCurrentDawnDuskTimes
function WorldAPIs_weather.GetCurrentDawnDuskTimes(self) end

---@param self WorldAPIs_weather
---@return table tCurrentSeasonAvailability
function WorldAPIs_weather.GetCurrentSeasonAvailability(self) end

---@param self WorldAPIs_weather
---@return table tCurrentWeatherAvailability
function WorldAPIs_weather.GetCurrentWeatherAvailability(self) end

---@param self WorldAPIs_weather
---@return table tCurrentWeatherOccurrence
function WorldAPIs_weather.GetCurrentWeatherOccurrence(self) end

---@param self WorldAPIs_weather
---@return table tCurrentWeatherTemperatures
function WorldAPIs_weather.GetCurrentWeatherTemperatures(self) end

---@param self WorldAPIs_weather
---@return any defaultDawnDuskTimes
function WorldAPIs_weather.GetDefaultDawnDuskTimes(self) end

---@param self WorldAPIs_weather
---@return table tFirstDayWeather
function WorldAPIs_weather.GetDefaultDayOfWeatherForScenaroEdit(self) end

---@param self WorldAPIs_weather
---@return string sInitialWeatherEventName
function WorldAPIs_weather.GetDefaultEventName(self) end

---@param self WorldAPIs_weather
---@return any defaultSeasonAvailability
function WorldAPIs_weather.GetDefaultSeasonAvailability(self) end

---@param self WorldAPIs_weather
---@return any weatherAvailability
function WorldAPIs_weather.GetDefaultWeatherAvailability(self) end

---@param self WorldAPIs_weather
---@return any defaultWeatherOccurence
function WorldAPIs_weather.GetDefaultWeatherOccurrence(self) end

---@param self WorldAPIs_weather
---@return any defaultWeatherTemperatures
function WorldAPIs_weather.GetDefaultWeatherTemperatures(self) end

---@param self WorldAPIs_weather
---@return table tWeatherRenderParameters
function WorldAPIs_weather.GetRenderParametersCollection(self) end

---@param self WorldAPIs_weather
function WorldAPIs_weather.RegenerateWeather(self) end

---@param self WorldAPIs_weather
---@param nAutumnClearWeight number
---@param nAutumnHotSunWeight number
---@param nAutumnCloudyWeight number
---@param nAutumnLightRainWeight number
---@param nAutumnHeavyRainWeight number
---@param nAutumnWindWeight number
---@param bArg8 boolean
function WorldAPIs_weather.SetAutumnWeatherWeights(self, nAutumnClearWeight, nAutumnHotSunWeight, nAutumnCloudyWeight, nAutumnLightRainWeight, nAutumnHeavyRainWeight, nAutumnWindWeight, bArg8) end

---@param self WorldAPIs_weather
---@param nCurrentBiomeBaseTempDay number
---@param nCurrentBiomeBaseTempNight number
---@param bArg4 boolean
function WorldAPIs_weather.SetBiomeBaseTemperatures(self, nCurrentBiomeBaseTempDay, nCurrentBiomeBaseTempNight, bArg4) end

---@param self WorldAPIs_weather
---@param nBiomeClearWeight number
---@param nBiomeHotSunWeight number
---@param nBiomeCloudyWeight number
---@param nBiomeLightRainWeight number
---@param nBiomeHeavyRainWeight number
---@param nBiomeWindWeight number
---@param bArg8 boolean
function WorldAPIs_weather.SetBiomeWeatherWeights(self, nBiomeClearWeight, nBiomeHotSunWeight, nBiomeCloudyWeight, nBiomeLightRainWeight, nBiomeHeavyRainWeight, nBiomeWindWeight, bArg8) end

---@param self WorldAPIs_weather
---@param nWinterDawnTime number
---@param nWinterDuskTime number
---@param nSpringDawnTime number
---@param nSpringDuskTime number
---@param nSummerDawnTime number
---@param nSummerDuskTime number
---@param nAutumnDawnTime number
---@param nAutumnDuskTime number
---@param bArg10 boolean
function WorldAPIs_weather.SetDawnDuskTimes(self, nWinterDawnTime, nWinterDuskTime, nSpringDawnTime, nSpringDuskTime, nSummerDawnTime, nSummerDuskTime, nAutumnDawnTime, nAutumnDuskTime, bArg10) end

---@param self WorldAPIs_weather
---@param sInitialWeatherEventName string
function WorldAPIs_weather.SetDefaultEvent(self, sInitialWeatherEventName) end

---@param self WorldAPIs_weather
---@param bWinterSeasonAvailability boolean
---@param nWinterSeasonLength number
---@param bSpringSeasonAvailability boolean
---@param nSpringSeasonLength number
---@param bSummerSeasonAvailability boolean
---@param nSummerSeasonLength number
---@param bAutumnSeasonAvailability boolean
---@param nAutumnSeasonLength number
---@param bArg10 boolean
function WorldAPIs_weather.SetSeasonAvailability(self, bWinterSeasonAvailability, nWinterSeasonLength, bSpringSeasonAvailability, nSpringSeasonLength, bSummerSeasonAvailability, nSummerSeasonLength, bAutumnSeasonAvailability, nAutumnSeasonLength, bArg10) end

---@param self WorldAPIs_weather
---@param nWinterTempEffect number
---@param nSpringTempEffect number
---@param nSummerTempEffect number
---@param nAutumnTempEffect number
---@param bArg6 boolean
function WorldAPIs_weather.SetSeasonTemperatures(self, nWinterTempEffect, nSpringTempEffect, nSummerTempEffect, nAutumnTempEffect, bArg6) end

---@param self WorldAPIs_weather
---@param nSpringClearWeight number
---@param nSpringHotSunWeight number
---@param nSpringCloudyWeight number
---@param nSpringLightRainWeight number
---@param nSpringHeavyRainWeight number
---@param nSpringWindWeight number
---@param bArg8 boolean
function WorldAPIs_weather.SetSpringWeatherWeights(self, nSpringClearWeight, nSpringHotSunWeight, nSpringCloudyWeight, nSpringLightRainWeight, nSpringHeavyRainWeight, nSpringWindWeight, bArg8) end

---@param self WorldAPIs_weather
---@param nSummerClearWeight number
---@param nSummerHotSunWeight number
---@param nSummerCloudyWeight number
---@param nSummerLightRainWeight number
---@param nSummerHeavyRainWeight number
---@param nSummerWindWeight number
---@param bArg8 boolean
function WorldAPIs_weather.SetSummerWeatherWeights(self, nSummerClearWeight, nSummerHotSunWeight, nSummerCloudyWeight, nSummerLightRainWeight, nSummerHeavyRainWeight, nSummerWindWeight, bArg8) end

---@param self WorldAPIs_weather
---@param cFirstDayWeather table
function WorldAPIs_weather.SetTodaysWeather(self, cFirstDayWeather) end

---@param self WorldAPIs_weather
---@param bClearBiomeAvailability boolean
---@param bClearWinterAvailability boolean
---@param bClearSpringAvailability boolean
---@param bClearSummerAvailability boolean
---@param bClearAutumnAvailability boolean
---@param weatherTypeClear any
---@param bArg8 boolean
function WorldAPIs_weather.SetWeatherAvailabilty(self, bClearBiomeAvailability, bClearWinterAvailability, bClearSpringAvailability, bClearSummerAvailability, bClearAutumnAvailability, weatherTypeClear, bArg8) end

---@param self WorldAPIs_weather
---@param nSelectedOptionIndex number
function WorldAPIs_weather.SetWeatherOverride(self, nSelectedOptionIndex) end

---@param self WorldAPIs_weather
---@param nClearWeatherTempEffectDay number
---@param nClearWeatherTempEffectNight number
---@param weatherTypeClear any
---@param bArg5 boolean
function WorldAPIs_weather.SetWeatherTemperatures(self, nClearWeatherTempEffectDay, nClearWeatherTempEffectNight, weatherTypeClear, bArg5) end

---@param self WorldAPIs_weather
---@param nWinterClearWeight number
---@param nWinterHotSunWeight number
---@param nWinterCloudyWeight number
---@param nWinterLightRainWeight number
---@param nWinterHeavyRainWeight number
---@param nWinterWindWeight number
---@param bArg8 boolean
function WorldAPIs_weather.SetWinterWeatherWeights(self, nWinterClearWeight, nWinterHotSunWeight, nWinterCloudyWeight, nWinterLightRainWeight, nWinterHeavyRainWeight, nWinterWindWeight, bArg8) end


---@param self WorldAPIs_whiteworldui
function WorldAPIs_whiteworldui.GetEntityUnderCursor(self) end

---@param self WorldAPIs_whiteworldui
---@return number nViewMode
function WorldAPIs_whiteworldui.GetViewMode(self) end

---@param self WorldAPIs_whiteworldui
---@param Arg2 any
---@param Arg3 any
function WorldAPIs_whiteworldui.SetCurrentViewModeType(self, Arg2, Arg3) end

---@param self WorldAPIs_whiteworldui
---@param nEntityID number
function WorldAPIs_whiteworldui.SetEntityUnderCursor(self, nEntityID) end

---@param self WorldAPIs_whiteworldui
---@param nViewMode number
function WorldAPIs_whiteworldui.SetViewMode(self, nViewMode) end


---@param self WorldAPIs_worldserialisation
---@return any saveSelection
function WorldAPIs_worldserialisation.CreateSaveSelection(self) end

---@param self WorldAPIs_worldserialisation
---@return any requiredDLC
function WorldAPIs_worldserialisation.GetRequiredDLC(self) end

---@param self WorldAPIs_worldserialisation
---@return boolean bCompleted
function WorldAPIs_worldserialisation.HasSaveToFileCompleted(self) end

---@param self WorldAPIs_worldserialisation
---@return boolean bCompleted
function WorldAPIs_worldserialisation.HasTerrainSaveToFileCompleted(self) end

---@param self WorldAPIs_worldserialisation
---@param sFileName string
---@param typePark any
---@return boolean bOK
---@return boolean bExists
---@return boolean bIsCompressed
function WorldAPIs_worldserialisation.IsValidFile(self, sFileName, typePark) end

---@param self WorldAPIs_worldserialisation
---@param sFileName string
---@return boolean _
function WorldAPIs_worldserialisation.LoadBlueprintFromFile(self, sFileName) end

---@param self WorldAPIs_worldserialisation
---@param sTerrainFileName string
---@return boolean bLoadSuccessful
function WorldAPIs_worldserialisation.LoadTerrainFromFile(self, sTerrainFileName) end

---@param self WorldAPIs_worldserialisation
---@param sFileName string
---@return boolean bOK
function WorldAPIs_worldserialisation.LoadWorldFromFile(self, sFileName) end

---@param self WorldAPIs_worldserialisation
---@param sArg2 string
---@param nCNSaveVersion number
---@param fnSave function
---@param fnLoad function
---@param fnCanLoadOldVersion function
function WorldAPIs_worldserialisation.RegisterWorldSerialisationClient(self, sArg2, nCNSaveVersion, fnSave, fnLoad, fnCanLoadOldVersion) end

---@param self WorldAPIs_worldserialisation
---@param sFileName string
---@param selection any
---@param bCompressed boolean
function WorldAPIs_worldserialisation.RequestSaveBlueprintToFile(self, sFileName, selection, bCompressed) end

---@param self WorldAPIs_worldserialisation
---@param sFileName string
---@param bCompressed boolean
function WorldAPIs_worldserialisation.RequestSaveTerrainToFile(self, sFileName, bCompressed) end

---@param self WorldAPIs_worldserialisation
---@param sFileName string
---@param bCompressed boolean
function WorldAPIs_worldserialisation.RequestSaveWorldToFile(self, sFileName, bCompressed) end

---@param self WorldAPIs_worldserialisation
---@param entityID any
---@return any serialisedEntityID
function WorldAPIs_worldserialisation.SaveEntityID(self, entityID) end

---@param self WorldAPIs_worldserialisation
---@param sArg2 string
function WorldAPIs_worldserialisation.UnregisterWorldSerialisationClient(self, sArg2) end


---@class (partial) Api
---@field IRC IRC
---@field audio audio
---@field camera camera
---@field componentmanager componentmanager
---@field content content
---@field crowdsimulation crowdsimulation
---@field cursor cursor
---@field database database
---@field debug debug
---@field debugui debugui
---@field entity entity
---@field franchise franchise
---@field game game
---@field gameRender gameRender
---@field gamedatastore gamedatastore
---@field globe globe
---@field http http
---@field input input
---@field json json
---@field lighting lighting
---@field loc loc
---@field localisation localisation
---@field math math
---@field messaging messaging
---@field model model
---@field motiongraph motiongraph
---@field movie movie
---@field multipart2 multipart2
---@field online online
---@field particles particles
---@field physics physics
---@field platform platform
---@field player player
---@field presence presence
---@field random random
---@field render render
---@field save save
---@field spatial spatial
---@field task task
---@field telemetry telemetry
---@field time time
---@field track track
---@field transform transform
---@field ui ui
---@field ui2 ui2
---@field uioptions uioptions
---@field undo undo
---@field usercontent usercontent
---@field world world
---@field xmlconfig xmlconfig
local api = {}
