local Vector2 = require('Vector2')
local Vector3 = require('Vector3')

Packages = {
['Casino::LuaScript::API::Animation'] = {
	GetFloatStreamValue = 'function: 00000001403251E0',
	GetLODDataForEntity = 'function: 0000000140325680',
	GetPropThrough = 'function: 0000000140325070',
	PlayAnimation = 'function: 00000001403245E0',
	RequestAllBonesForCalculate = 'function: 0000000140325400',
	RequestAllBonesForCalculateForAllEntities = 'function: 0000000140325590',
	RequestBonesForRender = 'function: 0000000140325780',
	SetLODDataForEntity = 'function: 00000001402E2EB0',
	SetPlaybackDirection = 'function: 0000000140324D30',
	SetPlaybackRate = 'function: 00000001403249D0',
	['userdata: 00000001431C2AF8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018807C00'
	},
	_NAME = 'casino::luascript::api::animation',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018807C00'
	}
},

['Casino::LuaScript::API::AnimationControl'] = {
	ClearOneShotQueue = 'function: 0000000140328440',
	ClearOneShotQueueAndForceStopOneShot = 'function: 0000000140328760',
	ForceStopOneShot = 'function: 00000001403285D0',
	IsOneShotPlayingNow = 'function: 0000000140327D00',
	IsOneShotPlayingNowOrQueued = 'function: 00000001403280A0',
	IsOneShotQueueFull = 'function: 0000000140328270',
	IsOneShotQueued = 'function: 0000000140327ED0',
	IsRequestedBaseAnimationPlayingNow = 'function: 00000001403275C0',
	QueueOneShotAnimation = 'function: 00000001403279C0',
	SetBaseAnimation = 'function: 00000001403272B0',
	SetPlaybackRate = 'function: 0000000140327790',
	['userdata: 00000001431C2B00'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C23C0'
	},
	_NAME = 'casino::luascript::api::animationcontrol',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C23C0'
	}
},

['Casino::LuaScript::API::AudioTest'] = {
	CreateDebugAmbienceEmitterLooping = 'function: 000000014034F110',
	CreateDebugAmbienceEmitterOneShot = 'function: 000000014034F110',
	CreateDebugAmbienceEmitterRepeating = 'function: 000000014034F110',
	CreateDebugUserEmitter = 'function: 000000014034F110',
	CreateDebugVOEEmitter = 'function: 000000014034F110',
	DebugShellExecute = 'function: 000000014142A7F0',
	DeleteAllRequestedSoundbankHandles = 'function: 000000014142A690',
	DeleteDebugAmbienceEmitter = 'function: 0000000140524840',
	DeleteRequestedSoundbankHandle = 'function: 000000014142A4A0',
	GetRequestedSoundbankStatuses = 'function: 000000014142A0B0',
	GetVoiceInfo = 'function: 0000000141429A20',
	PostEvent = 'function: 00000001414294F0',
	PostEventAllAuto = 'function: 00000001402E2EB0',
	RequestLoadSoundbank = 'function: 0000000141429DF0',
	SetRTPC = 'function: 0000000141429630',
	SetRTPCAllAuto = 'function: 00000001402E2EB0',
	SetState = 'function: 0000000141429780',
	SetSwitch = 'function: 00000001414298C0',
	SetSwitchAllAuto = 'function: 00000001402E2EB0',
	SetUseFirstSoundmap = 'function: 00000001402E2EB0',
	StopAllActiveEvents = 'function: 0000000140524840',
	StopAllActiveEventsAllAuto = 'function: 00000001402E2EB0',
	['userdata: 00000001431C3B58'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001881DF80'
	},
	_NAME = 'casino::luascript::api::audiotest',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001881DF80'
	}
},

['Casino::LuaScript::API::BakedAnimation'] = {
	GetPropThrough = 'function: 0000000140326630',
	PlayAnimation = 'function: 0000000140325CD0',
	SetPlaybackRate = 'function: 00000001403263D0',
	SetPropThrough = 'function: 0000000140326850',
	StopAnimation = 'function: 0000000140326160',
	['userdata: 00000001431C2AD8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187D5F40'
	},
	_NAME = 'casino::luascript::api::bakedanimation',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187D5F40'
	}
},

['Casino::LuaScript::API::Camera'] = {
	DoCaptureCameraCollisionCheck = 'function: 000000014032E440',
	GetBottomUpScreenUVFromWorldPosition = 'function: 000000014032D3F0',
	GetCameraShakeTransform = 'function: 000000014032E2A0',
	GetDropCameraEnabled = 'function: 000000014032E210',
	GetDropCameraTransform = 'function: 000000014032E180',
	GetFOV = 'function: 000000014032D8B0',
	GetIsometricScale = 'function: 000000014032DB70',
	GetMainCameraID = 'function: 000000014032DDD0',
	GetRayFromTopDownScreenUV = 'function: 000000014032D610',
	GetTopDownScreenUVFromWorldPosition = 'function: 000000014032D1C0',
	SetAspectRatio = 'function: 000000014032C130',
	SetCompositeOrder = 'function: 000000014032C8E0',
	SetDropCameraEnabled = 'function: 000000014032E120',
	SetDropCameraTransform = 'function: 000000014032E020',
	SetFOVY = 'function: 000000014032C3E0',
	SetIsometricScale = 'function: 000000014032C660',
	SetLightingComplexity = 'function: 000000014032CBA0',
	SetMainCameraID = 'function: 000000014032DEB0',
	SetProjectionMode = 'function: 000000014032CEB0',
	SetViewport = 'function: 000000014032B6E0',
	SetZBias = 'function: 000000014032BF00',
	SetZFar = 'function: 000000014032BC80',
	SetZNear = 'function: 000000014032BA10',
	['userdata: 00000001431C2B08'] = true,
	ProjectionMode_Perspective = 0,
	ProjectionMode_Isometric = 1,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C29C0'
	},
	_NAME = 'casino::luascript::api::camera',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C29C0'
	}
},

['Casino::LuaScript::API::ComponentManager'] = {
	ActivateFeatureForEntity = 'function: 0000000140333430',
	Configure_AddFeatureProvided = 'function: 0000000140332410',
	Configure_AddFeatureRequired = 'function: 0000000140332810',
	Configure_AddFeatureRequiredOnAnotherEntity = 'function: 0000000140333030',
	Configure_AddFeatureRequiredOptional = 'function: 0000000140332C10',
	GetComponentManagerNameFromID = 'function: 0000000140331E90',
	GetFeatureNameFromID = 'function: 0000000140332260',
	LookupComponentManagerID = 'function: 0000000140331C80',
	LookupFeatureID = 'function: 0000000140332050',
	['userdata: 00000001431C2B28'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C2C80'
	},
	_NAME = 'casino::luascript::api::componentmanager',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C2C80'
	}
},

['Casino::LuaScript::API::Content'] = {
	ActivateDebugWindow = 'function: 00000001402E2EB0',
	DebugGetAllStreams = 'function: 0000000140338300',
	DebugTriggerStreamManagerCSVExport = 'function: 0000000140338170',
	EnumResources = 'function: 0000000140335690',
	FilterAvailable = 'function: 00000001403370F0',
	GetAllNotActiveInGame = 'function: 0000000140336EF0',
	GetAllRegisteredDLC = 'function: 0000000140337450',
	GetAllRegisteredDLCMask = 'function: 0000000140337670',
	GetDLCName = 'function: 0000000140337290',
	GetLanguageCode = 'function: 00000001403351E0',
	GetLanguageName = 'function: 00000001403350C0',
	GetLoadedContentPackDebugNames = 'function: 0000000140337BF0',
	GetLoadedContentPackIDs = 'function: 0000000140337EB0',
	GetModelStats = 'function: 0000000140336070',
	GetNotActiveInGameMask = 'function: 0000000140336D50',
	GetRegionName = 'function: 0000000140335490',
	GetSKUName = 'function: 00000001403355B0',
	GetUnownedMask = 'function: 0000000140336910',
	HasContentLoaded = 'function: 0000000140334EF0',
	IsDLCActiveInGame = 'function: 0000000140336AB0',
	IsDLCOwned = 'function: 0000000140336770',
	IsOwnershipEstablished = 'function: 0000000140336C50',
	OpenDLCStorePage = 'function: 0000000140337850',
	OpenDefaultStorePage = 'function: 0000000140337790',
	RequestContentLoad = 'function: 0000000140334FE0',
	SetAllOwnedDLCActiveInGame = 'function: 0000000140336FD0',
	StreamingCalculateStable = 'function: 0000000140337B00',
	['userdata: 00000001431C2B40'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C2F00'
	},
	_NAME = 'casino::luascript::api::content',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C2F00'
	}
},

['Casino::LuaScript::API::Coordination'] = {
	IsCoordGroupCoordinated = 'function: 00000001403392D0',
	SetupCoordGroup = 'function: 0000000140339010',
	ShutdownCoordGroup = 'function: 0000000140339470',
	['userdata: 00000001431C2B50'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C31C0'
	},
	_NAME = 'casino::luascript::api::coordination',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C31C0'
	}
},

['Casino::LuaScript::API::Cursor'] = {
	CaptureCursor = 'function: 000000014033A1D0',
	HideCursor = 'function: 000000014033A3C0',
	IsCursorInsideGameWindow = 'function: 000000014033A130',
	RequestCursor = 'function: 000000014033A5B0',
	['userdata: 00000001431C2B80'] = true,
	Priority_ControlRebind = 2,
	Priority_Camera = 6,
	Priority_EditorInvalid = 7,
	Priority_Editor = 8,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C3500'
	},
	_NAME = 'casino::luascript::api::cursor',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C3500'
	}
},

['Casino::LuaScript::API::Database'] = {
	AreAllRequiredParametersBound = 'function: 0000000140341980',
	BindComplete = 'function: 0000000140341AF0',
	BindParameter = 'function: 0000000140340AA0',
	BindPreparedStatement = 'function: 000000014033E6F0',
	BindPreparedStatementCollection = 'function: 000000014033E9E0',
	CompactHeap = 'function: 000000014033E640',
	CreateEmptyNamedDatabase = 'function: 000000014033E1E0',
	DiscardDatabaseResources = 'function: 000000014033DE90',
	ExecuteSQL = 'function: 000000014033F800',
	GetAllResults = 'function: 0000000140342B70',
	GetAsyncDispatchStatus = 'function: 0000000140340970',
	GetPreparedStatementInstance = 'function: 000000014033F410',
	GetReadOnly = 'function: 000000014033FE90',
	GetResult = 'function: 00000001403429B0',
	GetResultColumn = 'function: 0000000140342480',
	GetResultColumnCount = 'function: 0000000140341EA0',
	GetResultColumnName = 'function: 0000000140342000',
	GetState = 'function: 0000000140340650',
	IsReadyForResult = 'function: 0000000140341D60',
	LoadAndNameDatabase = 'function: 000000014033D980',
	MergeChildDatabase = 'function: 000000014033FA90',
	NamedDatabaseExists = 'function: 000000014033E410',
	ReadyForStep = 'function: 0000000140340390',
	Reset = 'function: 00000001403404D0',
	SetAsyncDispatch = 'function: 0000000140340780',
	SetReadOnly = 'function: 0000000140340100',
	Step = 'function: 0000000140341C30',
	UnbindParameter = 'function: 0000000140341620',
	UnbindPreparedStatement = 'function: 000000014033ECD0',
	UnbindPreparedStatementCollection = 'function: 000000014033F030',
	UnloadNamedDatabase = 'function: 000000014033DC60',
	['userdata: 00000001431C2BA8'] = true,
	AsyncInitialStep_Disabled = 0,
	AsyncInitialStep_DispatchInProgress = 2,
	AsyncInitialStep_Completed = 3,
	State_Binding = 0,
	State_BindComplete = 1,
	State_Executing = 2,
	State_FinishedWithResult = 3,
	State_Finished = 4,
	State_Error = 5,
	AsyncInitialStep_Enabled_AwaitingDispatch = 1,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C3600'
	},
	_NAME = 'casino::luascript::api::database',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C3600'
	}
},

['Casino::LuaScript::API::Debug'] = {
	Assert = 'function: 000000010E3E4740',
	Break = 'function: 00000001402E2EB0',
	CheckAPIReference = 'function: 00000001402E2EB0',
	ClearDrawViewMask = 'function: 00000001402E2EB0',
	CloseLog = 'function: 00000001402E2EB0',
	CreateDebugTweakable = 'function: 000000010E3E4DE0',
	CreateLog = 'function: 00000001402E2EB0',
	DbgBreak = 'function: 00000001402E2EB0',
	DrawAABB = 'function: 00000001402E2EB0',
	DrawAxis = 'function: 00000001402E2EB0',
	DrawAxisXYZ = 'function: 00000001402E2EB0',
	DrawBox = 'function: 00000001402E2EB0',
	DrawCircle = 'function: 00000001402E2EB0',
	DrawCircle2D = 'function: 00000001402E2EB0',
	DrawCircleSector = 'function: 00000001402E2EB0',
	DrawCross = 'function: 00000001402E2EB0',
	DrawCross2D = 'function: 00000001402E2EB0',
	DrawFOVCone = 'function: 00000001402E2EB0',
	DrawFilledAABB = 'function: 00000001402E2EB0',
	DrawFilledArrow = 'function: 00000001402E2EB0',
	DrawFilledBox = 'function: 00000001402E2EB0',
	DrawFilledCircle = 'function: 00000001402E2EB0',
	DrawFilledCircle2D = 'function: 00000001402E2EB0',
	DrawFilledCircleSector = 'function: 00000001402E2EB0',
	DrawFilledQuad = 'function: 00000001402E2EB0',
	DrawFilledQuad2D = 'function: 00000001402E2EB0',
	DrawFilledRectangle2D = 'function: 00000001402E2EB0',
	DrawFilledTri = 'function: 00000001402E2EB0',
	DrawGraph = 'function: 00000001402E2EB0',
	DrawLine = 'function: 00000001402E2EB0',
	DrawLine2D = 'function: 00000001402E2EB0',
	DrawLineCapsule = 'function: 00000001402E2EB0',
	DrawRectangle2D = 'function: 00000001402E2EB0',
	DrawSphere = 'function: 00000001402E2EB0',
	DrawText = 'function: 00000001402E2EB0',
	DrawTextFlag = 'function: 00000001402E2EB0',
	DrawTri = 'function: 00000001402E2EB0',
	DumpMemoryStats = 'function: 00000001402E2EB0',
	EndTimer = 'function: 000000014191DBF0',
	Error = 'function: 00000001402E2EB0',
	FatalError = 'function: 000000014191D270',
	GetAllTextSymbols = 'function: 00000001402E2EB0',
	GetAllValidWorlds = 'function: 00000001402E2EB0',
	GetDebugTextScale = 'function: 000000014191D330',
	GetFilesOfType = 'function: 00000001402E2EB0',
	GetFunctionInfo = 'function: 000000014191DD10',
	GetMostRecentlyModifiedFile = 'function: 00000001402E2EB0',
	GetPlatformString = 'function: 000000014191E400',
	GetScaleformMemoryReport = 'function: 00000001402E2EB0',
	GetSubFolders = 'function: 00000001402E2EB0',
	GetSubPlatformString = 'function: 000000014191E400',
	IsDebugAllowed = 'function: 000000010E3E4A60',
	IsMobiusAllowed = 'function: 000000010E3E4C80',
	IsWorldValid = 'function: 00000001402E2EB0',
	LoadTweakablesFromFile = 'function: 00000001402E2EB0',
	PIXCustomCounter = 'function: 00000001402E2EB0',
	PerformResStreamReport = 'function: 00000001402E2EB0',
	PerformResStreamSummaryReport = 'function: 00000001402E2EB0',
	Print = 'function: 00000001402E2EB0',
	PrintScaleformMemoryReport = 'function: 00000001402E2EB0',
	ReadStringFromFile = 'function: 000000014191E340',
	RegisterShellCommand = 'function: 000000014191D580',
	RemoveDirectory = 'function: 000000014191E340',
	RunShellCommand = 'function: 000000014191D880',
	SetDrawViewMask = 'function: 00000001403B5270',
	SetTweakableDuringWorldActivate = 'function: 00000001402E2EB0',
	SetZBuffered = 'function: 00000001402E2FE0',
	StartTimer = 'function: 000000014191DAD0',
	Trace = 'function: 00000001402E2EB0',
	UnregisterShellCommand = 'function: 000000014191DA90',
	Warning = 'function: 00000001402E2EB0',
	Write = 'function: 00000001402E2EB0',
	WriteLine = 'function: 00000001402E2EB0',
	WriteLog = 'function: 00000001402E2EB0',
	WriteStringToFile = 'function: 000000014191E340',
	['userdata: 00000001431C3E10'] = true,
	Tweakable_Int32 = 7,
	Tweakable_UInt32 = 8,
	Tweakable_Int64 = 9,
	Tweakable_UInt64 = 10,
	Tweakable_Float = 11,
	Tweakable_fVector1 = 14,
	Tweakable_Bool = 22,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C3940'
	},
	_NAME = 'casino::luascript::api::debug',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C3940'
	}
},

['Casino::LuaScript::API::DebugUI'] = {
	CreateFunctionWindow = 'function: 00000001403447B0',
	CreateMethodWindow = 'function: 0000000140344B70',
	DestroyWindow = 'function: 00000001402E2EB0',
	ForceFocusWindow = 'function: 00000001402E2EB0',
	GetMainViewportPos = 'function: 00000001403446F0',
	InputUnsigned = 'function: 00000001402E2EB0',
	IsActive = 'function: 000000014032E210',
	IsInNavigationMode = 'function: 000000014032E210',
	SetActive = 'function: 00000001402E2EB0',
	SetWindowActive = 'function: 00000001402E2EB0',
	['userdata: 00000001431C2BB8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C3CC0'
	},
	_NAME = 'casino::luascript::api::debugui',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C3CC0'
	}
},

['Casino::LuaScript::API::Entity'] = {
	AddComponentsToEntity = 'function: 0000000140347180',
	ClearEntityDebugName = 'function: 0000000140347E60',
	CompilePrefab = 'function: 0000000140348D30',
	CreateEntity = 'function: 0000000140346DC0',
	CreateRequestCompletionToken = 'function: 0000000140346B60',
	DestroyEntity = 'function: 0000000140347040',
	DestroyPrefab = 'function: 00000001403490D0',
	EnumerateRootPrefabs = 'function: 0000000140349220',
	FindAncestorEntityProvidingFeature = 'function: 0000000140347820',
	FindEntityByName = 'function: 0000000140349630',
	FindPrefab = 'function: 0000000140349C70',
	GetEntityDebugName = 'function: 0000000140347AD0',
	GetEntityName = 'function: 0000000140349800',
	GetEntityPath = 'function: 0000000140349970',
	HasPendingRequests = 'function: 0000000140349B00',
	HaveRequestsCompleted = 'function: 0000000140346C50',
	InstantiateDesc = 'function: 00000001403487A0',
	InstantiatePrefab = 'function: 0000000140347F50',
	IsFeatureProvidedByEntity = 'function: 00000001403475C0',
	OpenEntityInfoWindow = 'function: 00000001402E2EB0',
	PrefabExists = 'function: 0000000140349F00',
	RemoveComponentsFromEntity = 'function: 00000001403473E0',
	SetEntityDebugName = 'function: 0000000140347C70',
	['userdata: 00000001431C2BE8'] = true,
	NullEntityID = 0,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C3DC0'
	},
	_NAME = 'casino::luascript::api::entity',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C3DC0'
	}
},

['Casino::LuaScript::API::Game'] = {
	GetCommandLineArgument = 'function: 000000014034D460',
	GetEndpointTypeString = 'function: 000000014034D970',
	GetGameName = 'function: 000000014034DB80',
	GetPlatformSensitivityLevel = 'function: 000000014034F110',
	GetRevision = 'function: 000000014034D860',
	GetSmoothedFrameTime = 'function: 000000014034DA80',
	GetUseJapanKeyBindings = 'function: 000000014032E210',
	GetVersionString = 'function: 000000014034D730',
	HasCommandLineArgument = 'function: 000000014034D2C0',
	IsBuildServer = 'function: 000000014034D6A0',
	IsErrorDialogOpen = 'function: 000000014034F650',
	IsHeadless = 'function: 000000014032E210',
	IsSwitchConsole = 'function: 000000014032E210',
	IsSwitchHandheld = 'function: 000000014032E210',
	OpenErrorDialog = 'function: 000000014034F440',
	OpenPredeterminedContentBrowser = 'function: 000000014034E2B0',
	OpenSystemMessageDialog = 'function: 000000014034F230',
	OpenURLInBrowser = 'function: 000000014034EA70',
	PopUserMessage = 'function: 000000014034EF60',
	PushUserMessage = 'function: 000000014034ECD0',
	Quit = 'function: 000000014034D100',
	RegisterPLMCallback = 'function: 000000014034DE00',
	TriggerPlatformScreenshot = 'function: 000000014034F1A0',
	UnregisterPLMCallback = 'function: 000000014034DFF0',
	['userdata: 00000001431C2C10'] = true,
	PLMEvent_Suspend = 0,
	PLMEvent_Resume = 1,
	PLMEvent_Constrained = 2,
	PLMEvent_Unconstrained = 3,
	PLMEvent_GainedFocus = 4,
	PLMEvent_LostFocus = 5,
	PLMEvent_Visible = 6,
	PLMEvent_Invisible = 7,
	SensitivityLevel_None = 0,
	SensitivityLevel_China = 1,
	SysMessage_EmptyStore = 0,
	SysMessage_ChatRestriction = 1,
	SysMessage_UGCRestriction = 2,
	SysMessage_CameraNotConnected = 3,
	SysMessage_ProfileSharingOff = 4,
	Target_WinDesktop = 0,
	Target_OSX = 1,
	Target_Durango = 2,
	Target_PS4 = 3,
	Target_Switch = 4,
	Target_Scarlett = 5,
	Target_Prospero = 6,
	Target_Linux = 7,
	CurrentTarget = 0,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C4680'
	},
	_NAME = 'casino::luascript::api::game',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C4680'
	}
},

['Casino::LuaScript::API::HTTP'] = {
	CreateHeaderSet = 'function: 0000000140355F40',
	Delete = 'function: 0000000140356B90',
	FreeHeaderSet = 'function: 0000000140356110',
	Get = 'function: 0000000140356960',
	Post = 'function: 0000000140357030',
	Put = 'function: 0000000140356DC0',
	URLDecode = 'function: 00000001403574D0',
	URLEncode = 'function: 00000001403572A0',
	['userdata: 00000001431C2C50'] = true,
	RequestCancelled = 9,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C4F40'
	},
	_NAME = 'casino::luascript::api::http',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C4F40'
	}
},

['Casino::LuaScript::API::InWorldText'] = {
	GetTextUTF8 = 'function: 0000000140362630',
	SetTextUTF8 = 'function: 0000000140362810',
	['userdata: 00000001431C2CD8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187ECF80'
	},
	_NAME = 'casino::luascript::api::inworldtext',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187ECF80'
	}
},

['Casino::LuaScript::API::Input'] = {
	AddMobileKeyboardRequest = 'function: 000000014035C0E0',
	BeginButtonRebind = 'function: 000000014035C430',
	BeginButtonRebindPlayer = 'function: 000000014035C560',
	ButtonRebindInProgress = 'function: 000000014035C6E0',
	CancelButtonRebind = 'function: 000000014035C800',
	CreateDebugControlContext = 'function: 00000001402E2EB0',
	CreateGlobalControlContext = 'function: 000000014035AB90',
	CreatePlayerControlContext = 'function: 000000014035AE20',
	GameHasFocus = 'function: 000000014035BD40',
	GetAnyButtonRebound = 'function: 000000014035DF40',
	GetLastBindSwaps = 'function: 000000014035D0F0',
	GetLogicalButtonRebound = 'function: 000000014035DFD0',
	GetMouseButtonsSwapped = 'function: 000000014035DC20',
	GetMousePositionUV = 'function: 000000014035B1C0',
	GetMousePositionUVInternalUnclamped = 'function: 000000014035B3C0',
	GetMousePositionUVUnclamped = 'function: 000000014035B2C0',
	GetMouseRay = 'function: 000000014035B680',
	GetMouseRayUnclamped = 'function: 000000014035B8D0',
	GetMouseWheelDelta = 'function: 000000014035BC60',
	GetTextDescriptionForLogicalAxis = 'function: 000000014035D9D0',
	GetTextDescriptionForLogicalButton = 'function: 000000014035D4C0',
	GetTextDescriptionForLogicalValue = 'function: 000000014035D780',
	GetTriggerEffectState = 'function: 00000001402E2EB0',
	IsMouseDataAvailable = 'function: 000000014035B0E0',
	LuaHasMouseFocus = 'function: 000000014035BE60',
	RebindLogicalButton = 'function: 000000014035C8F0',
	RelinquishMouseFocus = 'function: 000000014035C020',
	ReloadRebinds = 'function: 000000014035DEE0',
	RemoveLogicalButtonRebind = 'function: 000000014035CB70',
	RemoveMobileKeyboardRequest = 'function: 000000014035C270',
	ResetAllLogicalButtonRebinds = 'function: 000000014035D010',
	ResetDualSenseLightColour = 'function: 00000001402E2EB0',
	RetainMouseFocus = 'function: 000000014035BF60',
	RevertLogicalButtonRebind = 'function: 000000014035CDB0',
	SaveRebinds = 'function: 000000014035DE80',
	SetDualSenseLightColour = 'function: 00000001402E2EB0',
	SetMousePositionUV = 'function: 000000014035B530',
	SetRebindDevice = 'function: 000000014035DCB0',
	SetTriggerHapticsFeedback = 'function: 00000001402E2EB0',
	SetTriggerHapticsMultiplePositionFeedback = 'function: 00000001402E2EB0',
	SetTriggerHapticsMultiplePositionVibration = 'function: 00000001402E2EB0',
	SetTriggerHapticsOff = 'function: 00000001402E2EB0',
	SetTriggerHapticsSlopeFeedback = 'function: 00000001402E2EB0',
	SetTriggerHapticsVibration = 'function: 00000001402E2EB0',
	SetTriggerHapticsWeapon = 'function: 00000001402E2EB0',
	['userdata: 00000001431C2C70'] = true,
	InputDevice_Gamepad = 0,
	InputDevice_KeyboardAndMouse = 1,
	RebindResult_Err_InvalidButton = 2,
	RebindResult_Err_InvalidBinding = 3,
	RebindResult_Err_TooManyKeys = 5,
	RebindResult_Err_Unswappable = 6,
	RebindResult_Err_SwapDepth = 7,
	RebindResult_Err_Cycle = 8,
	TriggerHapticsIndex_L = 0,
	TriggerHapticsIndex_R = 1,
	TriggerHapticsIndex_LR = 2,
	TriggerState_Intercepted = -1,
	TriggerState_Off = 0,
	TriggerState_FeedbackStandby = 1,
	TriggerState_FeedbackActive = 2,
	TriggerState_WeaponStandby = 3,
	TriggerState_WeaponPulling = 4,
	TriggerState_WeaponFired = 5,
	TriggerState_VibrationStandby = 6,
	TriggerState_VibrationActive = 7,
	RebindResult_Success = 0,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C5000'
	},
	_NAME = 'casino::luascript::api::input',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C5000'
	}
},

['Casino::LuaScript::API::JSON'] = {
	GetArrayMetatable = 'function: 0000000140365C90',
	Parse = 'function: 0000000140364050',
	Stringify = 'function: 0000000140365A90',
	['userdata: 00000001431C2CE0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C5880'
	},
	_NAME = 'casino::luascript::api::json',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C5880'
	}
},

['Casino::LuaScript::API::Lighting'] = {
	ClaimDisableLight = 'function: 00000001403691D0',
	ReleaseDisableLight = 'function: 0000000140369310',
	RequestCapturePointActivate = 'function: 000000014036AE40',
	RequestCapturePointDeactivate = 'function: 000000014036B040',
	RequestCapturePointRender = 'function: 000000014036B240',
	SetColour = 'function: 0000000140369450',
	SetDirectionalComplexity = 'function: 0000000140369900',
	SetDirectionalFade = 'function: 0000000140369BA0',
	SetDirectionalUsage = 'function: 0000000140369DF0',
	SetIntensity = 'function: 0000000140369740',
	SetLightCookieProperties = 'function: 000000014036AB50',
	SetLightVolumeProperties = 'function: 000000014036A900',
	SetPointProperties = 'function: 000000014036A020',
	SetSpotProperties = 'function: 000000014036A280',
	SetTubeProperties = 'function: 000000014036A5E0',
	['userdata: 00000001431C2CF0'] = true,
	Sun = 0,
	Moon = 1,
	Generic = 2,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C5940'
	},
	_NAME = 'casino::luascript::api::lighting',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C5940'
	}
},

['Casino::LuaScript::API::Localisation'] = {
	DoesTextExistAtAll = 'function: 000000014036C650',
	DoesTextSymbolExist = 'function: 000000014036C3E0',
	GetLocalisedText = 'function: 000000014036C9D0',
	GetTextSentiment = 'function: 000000014036CC60',
	IsCommunityTranslationActive = 'function: 000000014036C8C0',
	IsProfane = 'function: 000000014032E210',
	['userdata: 00000001431C2D00'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C5B80'
	},
	_NAME = 'casino::luascript::api::localisation',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C5B80'
	}
},

['Casino::LuaScript::API::LuaAudio'] = {
	CreateDialogueSequenceFromResource = 'function: 00000001403219A0',
	DropGlobalState = 'function: 00000001403202C0',
	Error = 'function: 00000001402E2EB0',
	GetIsSuspended = 'function: 00000001403208D0',
	GetMaxVoiceLimit = 'function: 000000014031F410',
	GetNonDiegeticPlayerDialogueEntityID = 'function: 0000000140322080',
	GetVolumeThreshold = 'function: 000000014031F660',
	IsDialogueBlockingLoad = 'function: 0000000140321F40',
	IsVOLineBlockingLoad = 'function: 0000000140321550',
	IsVOPlaying = 'function: 0000000140321150',
	Message = 'function: 00000001402E2EB0',
	PostGuiEvent = 'function: 000000014031FD00',
	RequestGlobalState = 'function: 0000000140320010',
	RequestGlobalStateOneShot = 'function: 00000001403203F0',
	RequestLoadBlockingVOLine = 'function: 00000001403211F0',
	RequestVOHighPriority = 'function: 0000000140320B10',
	RequestVOLock = 'function: 0000000140320970',
	RequestVOLowPriority = 'function: 0000000140320E60',
	SendGUIEvent = 'function: 000000014031FB80',
	SetControllerUnplugged = 'function: 0000000140320770',
	SetGuiRTPC = 'function: 000000014031FE80',
	SetMaxVoiceLimit = 'function: 000000014031F2A0',
	SetMuted = 'function: 000000014031F730',
	SetVolumeThreshold = 'function: 000000014031F4E0',
	StartOutputCapture = 'function: 000000014031F8A0',
	StartProfilerCapture = 'function: 000000014031FA10',
	StopCurrentVO = 'function: 00000001403210D0',
	StopOutputCapture = 'function: 00000001402E2EB0',
	StopProfilerCapture = 'function: 00000001402E2EB0',
	SubmitDialogueSequence = 'function: 0000000140321650',
	UseDebugBudgets = 'function: 0000000140320650',
	['userdata: 00000001431C2AD0'] = true,
	DialogueClientContext_Default = 0,
	DialogueClientContext_Debug = 1,
	DialogueClientContext_Cinematic = 2,
	DialogueCooldownMode_Seconds = 0,
	DialogueCooldownMode_PerSession = 1,
	DialogueCooldownScope_Entity = 0,
	DialogueCooldownScope_Character = 1,
	DialogueCooldownScope_Global = 2,
	DialogueEmptyBeatPolicy_Ignore = 0,
	DialogueEmptyBeatPolicy_StopSequence = 1,
	DialogueEmptyBeatPolicy_AbandonSequence = 2,
	DialogueNullID = 4294967295,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C2540'
	},
	_NAME = 'casino::luascript::api::luaaudio',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C2540'
	}
},

['Casino::LuaScript::API::Math'] = {
	ClosestPointOnSegmentToPoint = 'function: 000000014036E3E0',
	ClosestPointOnSegmentToPoint2D = 'function: 000000014036E640',
	ClosestPointOnSegmentToSegment = 'function: 000000014036E8B0',
	SLerp = 'function: 000000014036EB90',
	['userdata: 00000001431C2D10'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C5C80'
	},
	_NAME = 'casino::luascript::api::math',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C5C80'
	}
},

['Casino::LuaScript::API::Messaging'] = {
	RegisterGlobalReceiver = 'function: 0000000140377080',
	RegisterReceiver = 'function: 0000000140376B20',
	RegisterTriggerInput = 'function: 0000000140377680',
	RegisterTriggerOutput = 'function: 0000000140377BC0',
	SubmitGlobalMessage = 'function: 0000000140377420',
	SubmitMessage = 'function: 0000000140376E20',
	SubmitTrigger = 'function: 0000000140378220',
	UnregisterGlobalReceiver = 'function: 0000000140377200',
	UnregisterReceiver = 'function: 0000000140376CA0',
	UnregisterTriggerInput = 'function: 0000000140377F80',
	UnregisterTriggerOutput = 'function: 00000001403780D0',
	['userdata: 00000001431C2D38'] = true,
	MsgType_ComponentsActivatedForEntitiesMessage = 9,
	MsgType_PauseMessage = 13,
	MsgType_WorldTransitionMessage = 14,
	MsgType_AnselSessionStartedMessage = 15,
	MsgType_AnselSessionStoppedMessage = 16,
	MsgType_NewDLCInstalledMessage = 19,
	MsgType_NewDLCActiveInGameMessage = 20,
	MsgType_GameLicenceUpdatedMessage = 21,
	MsgType_NewWorkshopItemAvailableMessage = 22,
	MsgType_ModItemAvailabilityMessage = 22,
	MsgType_ModUpdateAllProgressMessage = 23,
	MsgType_SubscriptionListReadyMessage = 24,
	MsgType_DialogueLineDurationMessage = 329,
	MsgType_DialogueLineEndedMessage = 330,
	MsgType_DialogueLineMarkerMessage = 331,
	MsgType_DialogueLinePlayedMessage = 332,
	MsgType_DialogueRequestEndedMessage = 333,
	MsgType_DialogueRequestStartedMessage = 334,
	MsgType_DialogueTriggerMessage = 335,
	MsgType_AnimationPlayedMessage = 341,
	MsgType_VODurationMessage = 346,
	MsgType_VOMarkerMessage = 347,
	MsgType_VOEndMessage = 348,
	MsgType_CinematicEventMessage = 370,
	MsgType_UndoRedoCompletedMessage = 371,
	MsgType_TestMessage = 372,
	MsgType_DataStreamMessage = 379,
	MsgType_ComponentsHaveBeenRemovedFromEntitiesMessage = 381,
	MsgType_EntitiesAboutToBeDestroyedMessage = 383,
	MsgType_SpatialVolumeChangedMessage = 387,
	MsgType_EntityDestructionRequestedMessage = 395,
	MsgType_ComponentsAboutToBeRemovedFromEntitiesMessage = 396,
	MsgType_ComponentsAddedToEntitiesMessage = 397,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C5E40'
	},
	_NAME = 'casino::luascript::api::messaging',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C5E40'
	}
},

['Casino::LuaScript::API::Model'] = {
	ApplyMaterialCollectionDefaultVariant = 'function: 000000014037E5E0',
	ApplyMaterialCollectionResource = 'function: 000000014037D9A0',
	ApplyMaterialCollectionVariant = 'function: 000000014037E420',
	CreateCubeModel = 'function: 0000000140380410',
	CreateTrivialClippedModel = 'function: 0000000140380410',
	ReleaseContents = 'function: 0000000140380830',
	SetEnableConstantMaterialCollectionModifierRebuilds = 'function: 000000014037E870',
	SetFlexiColour = 'function: 000000014037CDB0',
	SetFlexiEmissiveColour = 'function: 000000014037CFF0',
	SetFlexiPattern = 'function: 000000014037CBF0',
	SetFlexiSelectAlpha = 'function: 000000014037D710',
	SetFlexiSelectColour = 'function: 000000014037D1C0',
	SetHidden = 'function: 000000014037EAA0',
	SetHighlightBehaviour = 'function: 000000014037EE90',
	SetHighlightEdgeColour = 'function: 000000014037F0D0',
	SetHighlightFillColour = 'function: 000000014037F350',
	SetHighlighted = 'function: 000000014037EC50',
	SetMaterialCollectionCamoEffectWeight = 'function: 000000014037E0A0',
	SetMaterialCollectionDecayWeight = 'function: 000000014037E260',
	SetMaterialCollectionDirectDamageWeight = 'function: 000000014037DB60',
	SetMaterialCollectionImpactDamageWeight = 'function: 000000014037DD20',
	SetMaterialCollectionWitherWeight = 'function: 000000014037DEE0',
	SetModel = 'function: 00000001403804A0',
	SetViewFilterEnvironmentMap = 'function: 000000014037F880',
	SetViewFilterMain = 'function: 000000014037FD20',
	SetViewFilterReflection = 'function: 00000001403801C0',
	SetViewFilterSecondary = 'function: 000000014037FF70',
	SetViewFilterSelection = 'function: 000000014037FAD0',
	SetViewFilterShadowCascade = 'function: 000000014037F5D0',
	['userdata: 00000001431C2D48'] = true,
	HighlightDefault = 0,
	HighlightOcclusionOnly = 1,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C9440'
	},
	_NAME = 'casino::luascript::api::model',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C9440'
	}
},

['Casino::LuaScript::API::MotionGraph'] = {
	AddDataStreamDurationalEventListener = 'function: 00000001403868C0',
	AddDataStreamEventListener = 'function: 0000000140386270',
	AreDataStreamsPlaying = 'function: 0000000140384DF0',
	ClearActionQueue = 'function: 0000000140383E80',
	DebugGetVariables = 'function: 0000000140385AA0',
	DebugUIDraw = 'function: 0000000140385BC0',
	EnqueueLoopAction = 'function: 0000000140383B50',
	EnqueueOneShotAction = 'function: 0000000140383820',
	FireTrigger = 'function: 00000001403835D0',
	GetCurrentActionFence = 'function: 00000001403840E0',
	GetCurrentActionLoopFence = 'function: 0000000140384360',
	GetDataStreamTrigger = 'function: 0000000140385880',
	GetDataStreamValue = 'function: 00000001403853D0',
	HasActionFencePassed = 'function: 00000001403845E0',
	HasActionFencePassedCleanly = 'function: 00000001403847C0',
	IsDataStreamPlaying = 'function: 0000000140384BF0',
	RegisterDataStreamListener = 'function: 0000000140385CB0',
	RemoveDataStreamDurationalEventListener = 'function: 0000000140386C90',
	RemoveDataStreamEventListener = 'function: 0000000140386620',
	SetEnumVariable = 'function: 0000000140383380',
	SetVariable = 'function: 0000000140382DB0',
	UnregisterDataStreamListener = 'function: 0000000140386020',
	['userdata: 00000001431C2D88'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C97C0'
	},
	_NAME = 'casino::luascript::api::motiongraph',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C97C0'
	}
},

['Casino::LuaScript::API::MoviePlayer'] = {
	EndFreezeOnFinish = 'function: 00000001403895D0',
	GetPause = 'function: 0000000140389360',
	GetState = 'function: 00000001403897D0',
	Play = 'function: 0000000140388E50',
	SetPause = 'function: 00000001403891F0',
	SetVolumeLevel = 'function: 0000000140389460',
	Stop = 'function: 0000000140389130',
	['userdata: 00000001431C2DB0'] = true,
	State_Idle = 0,
	State_Loading = 1,
	State_Ready = 2,
	State_Playing = 3,
	State_FrozenOnEnd = 4,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C9A80'
	},
	_NAME = 'casino::luascript::api::movieplayer',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C9A80'
	}
},

['Casino::LuaScript::API::Multipart'] = {
	GenerateRandom = 'function: 000000014038ECE0',
	GetDatabase = 'function: 000000014038E700',
	GetDescriptionAndValidate = 'function: 000000014038EB30',
	GetProperties = 'function: 000000014038E800',
	PickColour = 'function: 000000014038F030',
	['userdata: 00000001431C2DC0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C9B40'
	},
	_NAME = 'casino::luascript::api::multipart',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C9B40'
	}
},

['Casino::LuaScript::API::Online'] = {
	ClearCrossPlatformPermissionsCache = 'function: 00000001403A1EE0',
	ClearKeplerUser = 'function: 00000001403A6BD0',
	CompletePresenceActivity = 'function: 00000001403A02C0',
	CreateCrossPlatformPermissionRequest = 'function: 00000001403A0C80',
	CreateDataRequest = 'function: 00000001403A0680',
	CreateIDRequest = 'function: 00000001403A0880',
	CreateKeplerAcceptEulaRequest = 'function: 00000001403A2B30',
	CreateKeplerCheckPasswordQualityRequest = 'function: 00000001403A3330',
	CreateKeplerConfirmAccountRequest = 'function: 00000001403A2730',
	CreateKeplerCreateAccountRequest = 'function: 00000001403A2530',
	CreateKeplerHttpRequest = 'function: 00000001403A2D30',
	CreateKeplerInventoryRequest = 'function: 00000001403A2F30',
	CreateKeplerLinkAccountRequest = 'function: 00000001403A2930',
	CreateKeplerNewsfeedDownloadImageRequest = 'function: 00000001403A3930',
	CreateKeplerNewsfeedRequest = 'function: 00000001403A3730',
	CreateKeplerNewsletterSignUpRequest = 'function: 00000001403A3530',
	CreateKeplerPasswordResetCodeRequest = 'function: 00000001403A3D30',
	CreateKeplerPasswordResetRequest = 'function: 00000001403A3F40',
	CreateKeplerProfileBlockRequest = 'function: 00000001403A4570',
	CreateKeplerProfileFollowRequest = 'function: 00000001403A4360',
	CreateKeplerProfileIDRequest = 'function: 00000001403A4150',
	CreateKeplerProfilePagedListRequest = 'function: 00000001403A4780',
	CreateKeplerSetDisplayNameRequest = 'function: 00000001403A3B30',
	CreateKeplerUserRequest = 'function: 00000001403A3130',
	CreateProfanityFilterRequest = 'function: 00000001403A0A80',
	DisplayDebugImage = 'function: 00000001402E2EB0',
	GetAPIURL = 'function: 000000014039F7D0',
	GetForcType = 'function: 000000014034D970',
	GetGameEndpoint = 'function: 000000014039F7D0',
	GetKeplerEndpoint = 'function: 00000001403A2490',
	GetKeplerEndpointName = 'function: 000000014034D970',
	GetKeplerUser = 'function: 00000001403A6D30',
	GetTransmittableProfileID = 'function: 000000014039F870',
	GetUserKeplerProfileID = 'function: 00000001403A71A0',
	HasKeplerUser = 'function: 00000001403A6F00',
	IsKeplerAvailable = 'function: 00000001403A23E0',
	IsKeplerUser = 'function: 00000001403A7000',
	KeplerProfileIDFromString = 'function: 00000001403A72D0',
	KeplerProfileIDToString = 'function: 00000001403A2040',
	OnlineProfileIDFromString = 'function: 00000001403A2190',
	OnlineProfileIDToString = 'function: 00000001403A2040',
	OpenPremiumDialog = 'function: 00000001403A0470',
	OpenViewProfileDialog = 'function: 000000014039FAC0',
	PruneRequestCache = 'function: 00000001403A1D80',
	ReleaseDebugImage = 'function: 00000001402E2EB0',
	RunKeplerRequest = 'function: 00000001403A4990',
	RunRequest = 'function: 00000001403A0E80',
	SetPresence = 'function: 000000014039FDE0',
	StartPresenceActivity = 'function: 00000001403A0110',
	UpdatePremiumDialog = 'function: 000000014039FCC0',
	UpdateViewProfileDialog = 'function: 000000014039FCC0',
	['userdata: 00000001431C2EA8'] = true,
	CrossPlatformPermission_CommunicateUsingText = 0,
	CrossPlatformPermission_CommunicateUsingVoice = 1,
	CrossPlatformPermission_PlayMultiplayer = 2,
	CrossPlatformPermission_ViewTargetUserCreatedContent = 3,
	KeplerCompressionMethod_None = 0,
	KeplerCompressionMethod_LZ4 = 1,
	KeplerEncryptionMethod_None = 0,
	KeplerEncryptionMethod_RC4 = 1,
	KeplerEncryptionMethod_ChaCha20 = 2,
	KeplerMethod_Get = 0,
	KeplerMethod_Put = 1,
	KeplerMethod_Post = 2,
	KeplerMethod_Delete = 3,
	KeplerNewsfeedSortOrder_Ascending = 0,
	KeplerNewsfeedSortOrder_Descending = 1,
	KeplerPermissionLevel_Public = 0,
	KeplerPermissionLevel_UploadDisabled = 1,
	KeplerPermissionLevel_LocalOnly = 2,
	KeplerPermissionLevel_NoAccess = 3,
	KeplerProfileListType_Featured = 0,
	KeplerProfileListType_Followed = 1,
	KeplerProfileListType_Blocked = 2,
	KeplerRequestResult_Success = 0,
	KeplerRequestResult_NotAcceptedEula = 1,
	KeplerRequestResult_NoFrontierLink = 2,
	KeplerRequestResult_Offline = 3,
	KeplerRequestResult_AccessRestricted = 4,
	KeplerRequestResult_UserAccountBanned = 4,
	KeplerRequestResult_InvalidAuth = 5,
	KeplerRequestResult_InvalidEmail = 6,
	KeplerRequestResult_InvalidPassword = 7,
	KeplerRequestResult_AccountAlreadyExists = 8,
	KeplerRequestResult_EmailSendFailure = 9,
	KeplerRequestResult_ServiceBusy = 10,
	KeplerRequestResult_AccountAlreadyLinked = 11,
	KeplerRequestResult_ExternalAccountAlreadyLinked = 12,
	KeplerRequestResult_AuthLinkExists = 13,
	KeplerRequestResult_AccountLinkFailed = 14,
	KeplerRequestResult_InsufficientPermission = 15,
	KeplerRequestResult_DisplayNameRejected = 16,
	KeplerRequestResult_DisplayNameInvalidLength = 17,
	KeplerRequestResult_UnknownError = 18,
	KeplerRequestResult_Cancelled = 19,
	KeplerRequestResult_TooManyRequests = 20,
	KeplerRequestResult_InProgress = 21,
	ListType_Friends = 0,
	ListType_Blocked = 1,
	RequestResult_FrontierError = 0,
	RequestResult_Unknown = 0,
	RequestResult_PlatformError = 0,
	RequestResult_Success = 1,
	RequestResult_Cancelled = 2,
	RequestResult_InProgress = 3,
	MaxDataRequestSize = 100,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C9C40'
	},
	_NAME = 'casino::luascript::api::online',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C9C40'
	}
},

['Casino::LuaScript::API::Particles'] = {
	ClearParticleColour = 'function: 00000001403B01F0',
	PauseEffect = 'function: 00000001403AFF50',
	Reset = 'function: 00000001403AFB80',
	ResumeEffect = 'function: 00000001403B00A0',
	SetParticleColour = 'function: 00000001403B11C0',
	SetParticleDeathEffect = 'function: 00000001403B0D80',
	SetParticleImpactEffect = 'function: 00000001403B0FA0',
	SetParticleTexture = 'function: 00000001403B0900',
	SetParticleTrailEffect = 'function: 00000001403B0B60',
	SetRateMultiplier = 'function: 00000001403B0540',
	SetUniformParticleScale = 'function: 00000001403B0720',
	SetVelocity = 'function: 00000001403B0340',
	StartEmitting = 'function: 00000001403AFCD0',
	StartPooledEffect = 'function: 00000001403B1410',
	StopEmitting = 'function: 00000001403AFE10',
	StopPooledEffect = 'function: 00000001403B1690',
	['userdata: 00000001431C2F70'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CAB80'
	},
	_NAME = 'casino::luascript::api::particles',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CAB80'
	}
},

['Casino::LuaScript::API::Physics'] = {
	AddToPhysicsWorld = 'function: 00000001419C82D0',
	ApplyForce = 'function: 00000001419C56B0',
	ApplyForceAtWorldPos = 'function: 00000001419C5880',
	EnableCollisionsBetween = 'function: 00000001419C7F50',
	GetAngularVelocity = 'function: 00000001419C5E60',
	GetDynamicsAwake = 'function: 00000001419C6B80',
	GetFlagNameFromValue = 'function: 00000001419C4B80',
	GetFlagSetFromNames = 'function: 00000001419C4FA0',
	GetFlagValueFromName = 'function: 00000001419C4D60',
	GetLinearVelocity = 'function: 00000001419C5AD0',
	GetPositionUnderSphereSweepForCamera = 'function: 00000001419C40F0',
	GetWorldGravity = 'function: 00000001419C2300',
	IgnoreCollisionsBetween = 'function: 00000001419C8110',
	IntersectSphere = 'function: 00000001419C4770',
	RayCast = 'function: 00000001419C26A0',
	RayCastJustEntitiesAndFirstHit = 'function: 00000001419C3080',
	SetAngularDamping = 'function: 00000001419C70F0',
	SetAngularVelocity = 'function: 00000001419C6020',
	SetAutoSleepEnabled = 'function: 00000001419C74C0',
	SetCollisionEnabled = 'function: 00000001419C61F0',
	SetDynamicsAwake = 'function: 00000001419C65A0',
	SetDynamicsEnabled = 'function: 00000001419C63C0',
	SetIgnoreGravity = 'function: 00000001419C6780',
	SetLinearDamping = 'function: 00000001419C6F00',
	SetLinearVelocity = 'function: 00000001419C5C90',
	SetPhysicsClassification = 'function: 00000001419C7940',
	SetPhysicsCollisionData = 'function: 00000001419C7690',
	SetPhysicsSurface = 'function: 00000001419C7C60',
	SetScale = 'function: 00000001419C72E0',
	SetSpatialEnabled = 'function: 00000001419C69A0',
	SetWorldGravity = 'function: 00000001419C24C0',
	SphereSweep = 'function: 00000001419C36F0',
	Teleport = 'function: 00000001419C6D50',
	['userdata: 00000001431C3E58'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CAC80'
	},
	_NAME = 'casino::luascript::api::physics',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CAC80'
	}
},

['Casino::LuaScript::API::Player'] = {
	AddDebugGameOwner = 'function: 00000001403B6B90',
	AddGameOwner = 'function: 00000001403B6A00',
	AddInputSourceForPlayer = 'function: 00000001403B6640',
	AddPlayer = 'function: 00000001403B6870',
	Debug_GetName = 'function: 00000001403B4CE0',
	DisableAchievementHandling = 'function: 00000001403B87C0',
	EnableAchievementHandling = 'function: 00000001403B8700',
	GetAgeGroup = 'function: 00000001403B8340',
	GetAllPlayers = 'function: 00000001403B4EA0',
	GetCount = 'function: 00000001403B5080',
	GetGameOwner = 'function: 00000001403B5180',
	GetInvalid = 'function: 00000001403B5270',
	GetJoinRequest = 'function: 00000001403B6330',
	GetOnlineProfileID = 'function: 00000001403B57F0',
	GetPlayerName = 'function: 00000001403B5300',
	GetPrivilege = 'function: 00000001403B8100',
	GetProfileID = 'function: 00000001403B5660',
	HasGameOwner = 'function: 00000001403B5980',
	HasProfile = 'function: 00000001403B54C0',
	InitialiseAchievements = 'function: 00000001403B8540',
	IsGameOwner = 'function: 00000001403B5A90',
	IsInputLinkedToPlayer = 'function: 00000001403B6410',
	IsSimpleUserTrackingEnabled = 'function: 00000001402E2FE0',
	IsValid = 'function: 00000001403B5C30',
	PlayerSourceDebug = 'userdata: 000000010ABA4EF0',
	PlayerSourceDefault = 'userdata: 000000010ABA5230',
	RegisterGameOwnerChangeCallback = 'function: 00000001403B7D10',
	RegisterInputChangeCallback = 'function: 00000001403B7930',
	RegisterPlayerChangeCallback = 'function: 00000001403B5DD0',
	RemoveAllPlayers = 'function: 00000001403B6CA0',
	RemovePlayer = 'function: 00000001403B6D60',
	RequestLinkInput = 'function: 00000001403B73E0',
	RequestReconnectController = 'function: 00000001403B76D0',
	RequestSignIn = 'function: 00000001403B6EC0',
	RequestSwitchUser = 'function: 00000001403B7230',
	StartListeningForPlayerSources = 'function: 00000001403B61B0',
	StopListeningForPlayerSources = 'function: 00000001403B6270',
	UnlockReward = 'function: 00000001403B8880',
	UnregisterGameOwnerChangeCallback = 'function: 00000001403B7F60',
	UnregisterInputChangeCallback = 'function: 00000001403B7B80',
	UnregisterPlayerChangeCallback = 'function: 00000001403B6020',
	UpdateControllerSupportDialog = 'function: 00000001403B8E60',
	UpdateStat = 'function: 00000001403B8AE0',
	['userdata: 00000001431C2F80'] = true,
	AgeGroup_Unknown = 0,
	AgeGroup_Child = 1,
	AgeGroup_Teen = 2,
	AgeGroup_Adult = 3,
	ProfileType_Null = 0,
	ProfileType_Steam = 1,
	ProfileType_Epic = 2,
	ProfileType_PlayStation = 3,
	ProfileType_Switch = 4,
	ProfileType_GDK = 5,
	AddFriends = 0,
	CurrentProfileType = 1,
	Broadcast = 1,
	CloudGamingJoinSession = 2,
	CloudGamingManageSession = 3,
	CloudSavedGames = 4,
	Communications = 5,
	CrossPlay = 6,
	UploadGameVideo = 7,
	JoinPartySession = 8,
	JoinMultiplayerSession = 9,
	ShareContent = 10,
	SocialNetworkSharing = 11,
	UserCreatedContent = 12,
	OnlineFeatures = 13,
	IndependantServers = 14,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CB040'
	},
	_NAME = 'casino::luascript::api::player',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CB040'
	}
},

['Casino::LuaScript::API::Presence'] = {
	AbandonAlwaysAvailablePS5Activity = 'function: 00000001403BCD00',
	AbandonRichPresence = 'function: 00000001403BC5E0',
	BeginMultiplayer = 'function: 00000001403BE250',
	CancelManagedRequests = 'function: 00000001403BCA00',
	CompleteAlwaysAvailablePS5Activity = 'function: 00000001403BCEA0',
	CompleteRichPresence = 'function: 00000001403BC7F0',
	CreateMultiplayerPresenceRequest = 'function: 00000001403BD240',
	CreateRichPresenceRequest = 'function: 00000001403BD040',
	CreateSendInviteRequest = 'function: 00000001403BD440',
	EndMultiplayer = 'function: 00000001403BE3B0',
	HasPendingIntents = 'function: 00000001403BDCB0',
	RegisterNotifyIntentCallback = 'function: 00000001403BDDA0',
	RunRequest = 'function: 00000001403BD640',
	StartAlwaysAvailablePS5Activity = 'function: 00000001403BCB60',
	StartRichPresence = 'function: 00000001403BC3D0',
	UnregisterNotifyIntentCallback = 'function: 00000001403BE060',
	['userdata: 00000001431C2FB8'] = true,
	JoinRestrictions_Public = 0,
	JoinRestrictions_Friends = 1,
	JoinRestrictions_InviteOnly = 2,
	JoinRestrictions_Unknown = 3,
	MemberType_Any = 0,
	MemberType_Player = 1,
	MemberType_Spectator = 2,
	PresenceState_Started = 0,
	PresenceState_Abandonded = 1,
	PresenceState_Completed = 2,
	PresenceState_Unknown = 3,
	RequestResult_Success = 0,
	RequestResult_UnknownError = 1,
	RequestResult_Cancelled = 2,
	RequestResult_InProgress = 3,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CB600'
	},
	_NAME = 'casino::luascript::api::presence',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CB600'
	}
},

['Casino::LuaScript::API::ProfileStatistics'] = {
	GetClockPeriod = 'function: 00000001403C09A0',
	GetCurrentCPUActiveTimeMS = 'function: 00000001403532C0',
	GetCurrentCommittedMemoryMB = 'function: 00000001403C0BB0',
	GetCurrentGPUActiveTimeMS = 'function: 00000001403532C0',
	GetCurrentSmoothedFPS = 'function: 00000001403C0AA0',
	GetFlexibleMemoryMB = 'function: 00000001403C0ED0',
	GetKernelPoolMB = 'function: 00000001403C0ED0',
	GetTotalDispatchCount = 'function: 000000014034F110',
	GetTotalDrawCount = 'function: 000000014034F110',
	GetTriCount = 'function: 000000014034F110',
	Getf3dEstimateMB = 'function: 00000001403C0F70',
	GetfHeapMemoryMB = 'function: 00000001403C0C80',
	IsTracing = 'function: 000000014032E210',
	SaveProfileAccumulatorData = 'function: 000000014032E210',
	SetAnimationFilter = 'function: 00000001402E2EB0',
	StartProfileAccumulator = 'function: 000000014032E210',
	StartTrace = 'function: 000000014032E210',
	StopProfileAccumulator = 'function: 00000001402E2EB0',
	StopTrace = 'function: 00000001402E2EB0',
	['userdata: 00000001431C2FE0'] = true,
	Heap_Default = 0,
	Heap_Lua = 1,
	Heap_UI = 2,
	Heap_Audio = 3,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CB980'
	},
	_NAME = 'casino::luascript::api::profilestatistics',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CB980'
	}
},

['Casino::LuaScript::API::Random'] = {
	Create = 'function: 00000001403C1A60',
	Destroy = 'function: 00000001403C1C30',
	Get = 'function: 00000001403C20C0',
	Seed = 'function: 00000001403C1DC0',
	['userdata: 00000001431C2FF0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CBB40'
	},
	_NAME = 'casino::luascript::api::random',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CBB40'
	}
},

['Casino::LuaScript::API::Render'] = {
	AllowAnselActivation = 'function: 00000001403D0D40',
	ClearCalibrationTiles = 'function: 00000001403D0AD0',
	ClearCaptures = 'function: 00000001403CEA10',
	DisableRenderingGameFrames = 'function: 00000001403CC900',
	DisallowAnselActivation = 'function: 00000001403D0DA0',
	DismissPlatformSplashScreen = 'function: 0000000140099DF0',
	EnableRenderingGameFrames = 'function: 00000001403CC8A0',
	ForceGlobalLOD = 'function: 00000001403C6CE0',
	GetBackBufferDimensions = 'function: 00000001403C4B70',
	GetCaptureToken = 'function: 00000001403CEE80',
	GetDefaultDisplaySettings = 'function: 00000001403C8050',
	GetDefaultEffectSettingsName = 'function: 00000001403CA2C0',
	GetDisplayAdapterInfo = 'function: 00000001403C8230',
	GetDisplayCalibrationSettings = 'function: 00000001403C73F0',
	GetDisplaySettings = 'function: 00000001403C7250',
	GetEffectSettings = 'function: 00000001403CA420',
	GetIsRenderingGUI = 'function: 00000001403CFA60',
	GetLocalBoundingSphere = 'function: 00000001403CFAE0',
	GetPrimaryOutputColourSpace = 'function: 00000001403CFDC0',
	GetRec709ColourOfSunlightAboveAtmosphere = 'function: 00000001403D0B40',
	GetTerrainPreset = 'function: 00000001403CAD70',
	InitialiseAnsel = 'function: 00000001403D0CE0',
	IsAnselSessionActive = 'function: 00000001403D0E00',
	IsCaptureSystemReady = 'function: 00000001403CCC50',
	IsDLSSAvailable = 'function: 00000001403CC7A0',
	IsDLSSFrameGenerationAvailable = 'function: 00000001403CC690',
	IsDLSSFrameGenerationEnabled = 'function: 00000001403CC5B0',
	IsFSR3Available = 'function: 00000001402E2FE0',
	IsFSR3Enabled = 'function: 00000001403CCB60',
	IsPrimaryOutputInHDRMode = 'function: 00000001403CFD30',
	IsRaytracingAvailable = 'function: 00000001403CCA70',
	IsReflexAvailable = 'function: 00000001403CC960',
	RequestDisplayCalibrationChange = 'function: 00000001403C7710',
	RequestDisplayChange = 'function: 00000001403C97A0',
	RequestEffectsChange = 'function: 00000001403CB7D0',
	ResetDisplayCalibration = 'function: 00000001403C7560',
	SaveCaptureToFile = 'function: 00000001403CF540',
	SetCompositeColourMask = 'function: 00000001403D0EA0',
	SetCompositeMaskEnabled = 'function: 00000001402E2EB0',
	SetCompositePostProcess = 'function: 00000001402E2EB0',
	SetCompositeTransparencyEnabled = 'function: 00000001402E2EB0',
	SetSelectionToMainViewOverride = 'function: 00000001403CF7C0',
	SetShouldRenderGUI = 'function: 00000001403CFAA0',
	SetShouldRenderSkeleton = 'function: 00000001403C6E20',
	SetSkeletonDebugRenderOptions = 'function: 00000001403C7090',
	SetTerrainPreset = 'function: 00000001403CB070',
	StartCapture = 'function: 00000001403CCD80',
	StartCaptureFromSourceArea = 'function: 00000001403CD8C0',
	UpdateCalibrationTiles = 'function: 00000001403D0380',
	['userdata: 00000001431C3018'] = true,
	CaptureFormat_JPG = 1,
	CaptureFormat_BMP = 2,
	CaptureFormat_PNG = 3,
	ColourSpace_sRGB = 0,
	ColourSpace_scRGB = 2,
	ColourSpace_HDR10 = 3,
	windowed = 0,
	fullscreen = 1,
	ColourSpace_sRGB_Linear = 1,
	borderless = 2,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CBC00'
	},
	_NAME = 'casino::luascript::api::render',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CBC00'
	}
},

['Casino::LuaScript::API::RenderParameters'] = {
	ApplyParameterCurves = 'function: 00000001403EB120',
	ApplyParameterCurvesTo = 'function: 00000001403EB400',
	ApplyParameters = 'function: 00000001403EAD50',
	ApplyParametersTo = 'function: 00000001403EAEF0',
	BlendParameters = 'function: 00000001403EB6C0',
	BlendParametersTo = 'function: 00000001403EB9F0',
	CreateEmptyParameters = 'function: 00000001403EA2B0',
	CreateParameterCurveFromResource = 'function: 00000001403EAA80',
	CreateParameterFromResource = 'function: 00000001403EA7B0',
	CreateParameterFromTable = 'function: 00000001403EA4D0',
	['userdata: 00000001431C3078'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001880A0C0'
	},
	_NAME = 'casino::luascript::api::renderparameters',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880A0C0'
	}
},

['Casino::LuaScript::API::Save'] = {
	ClearBigScreenshotDataFromSaveToken = 'function: 00000001403E4060',
	CombineAndSortSaveTokens = 'function: 00000001403E2990',
	CreateSaveSuspensionControl = 'function: 00000001403E3700',
	GetAutosave = 'function: 00000001403DA4E0',
	GetBigScreenshotDataFromSaveToken = 'function: 00000001403E3C80',
	GetExistingSaves = 'function: 00000001403D63D0',
	GetLocationStatus = 'function: 00000001403E4580',
	GetMetadataHasThumbnail = 'function: 00000001403D8130',
	GetModifiedTimeAsTable = 'function: 00000001403D7580',
	GetNumAutosaveSlotsForType = 'function: 00000001403E2750',
	GetSaveCustomName = 'function: 00000001403D7290',
	GetSaveIdentifier = 'function: 00000001403D7D30',
	GetSaveLocation = 'function: 00000001403D73A0',
	GetSaveMetadata = 'function: 00000001403D8280',
	GetSaveMetadataID = 'function: 00000001403D7FE0',
	GetSaveType = 'function: 00000001403D7EB0',
	GetSaveTypeMaxSize = 'function: 00000001403E4350',
	GetSaveUser = 'function: 00000001403D7160',
	IsBusy = 'function: 00000001403E1DB0',
	IsDisabled = 'function: 00000001403E1E60',
	IsSaveCorrupt = 'function: 00000001403D7020',
	IsSaveToken = 'function: 00000001403D6EE0',
	IsSavingSuspended = 'function: 00000001403E3860',
	MarkSaveTokenForBigScreenshotLoad = 'function: 00000001403E3AA0',
	RegisterAutosaveCallback = 'function: 00000001403E23A0',
	RegisterExceptionCallback = 'function: 00000001403E1FF0',
	RequestAutosave = 'function: 00000001403DAB90',
	RequestBackup = 'function: 00000001403E03D0',
	RequestCopy = 'function: 00000001403DF220',
	RequestDelete = 'function: 00000001403DE5D0',
	RequestLoad = 'function: 00000001403DD880',
	RequestRecreate = 'function: 00000001403E10C0',
	RequestSave = 'function: 00000001403DB140',
	RequestSize = 'function: 00000001403E4780',
	ResetAutosaveTimer = 'function: 00000001403DAEA0',
	SetAutosave = 'function: 00000001403D86C0',
	SetNewAutosave = 'function: 00000001403D9530',
	SetSaveMetadata = 'function: 00000001403D83B0',
	UnregisterAutosaveCallback = 'function: 00000001403E25C0',
	UnregisterExceptionCallback = 'function: 00000001403E2210',
	UnsetAutosave = 'function: 00000001403DA920',
	UpdateSaveErrorDialog = 'function: 00000001403E4210',
	['userdata: 00000001431C3058'] = true,
	BigScreenshot_LoadNothing = 0,
	BigScreenshot_LoadTexture = 1,
	BigScreenshot_LoadJPEGData = 2,
	BigScreenshot_LoadBoth = 3,
	GetExistingSaves_SortMostRecentFirst = 0,
	GetExistingSaves_SortOldestFirst = 1,
	LocationStatus_OK = 0,
	LocationStatus_DoesNotExist = 1,
	LocationStatus_Invalid = 2,
	LocationStatus_NoSpace = 3,
	NoAutosaveSlotSelected = 4294967295,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CC0C0'
	},
	_NAME = 'casino::luascript::api::save',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CC0C0'
	}
},

['Casino::LuaScript::API::SceneGraph'] = {
	CreateCompletionToken = 'function: 00000001403ED050',
	ExportGlobalIBL = 'function: 00000001403EDD30',
	HaveRequestsCompleted = 'function: 00000001403ED200',
	ResetColourGrading = 'function: 00000001403EDA80',
	SetColourGrading = 'function: 00000001403EDB50',
	SetHidden = 'function: 00000001403ED420',
	SetSceneColourCacheBounds = 'function: 00000001403ED640',
	UpdateVisibilityGroup = 'function: 00000001403ED880',
	['userdata: 00000001431C3080'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001880CC00'
	},
	_NAME = 'casino::luascript::api::scenegraph',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880CC00'
	}
},

['Casino::LuaScript::API::Spatial'] = {
	AABBQuery = 'function: 00000001403EEF60',
	BoxQuery = 'function: 00000001403EF3F0',
	CapsuleQuery = 'function: 00000001403EFA20',
	DrawAllAABB = 'function: 00000001402E2EB0',
	DrawShape = 'function: 00000001403F1A40',
	DrawShapeRed = 'function: 00000001403F1A40',
	GetShapeAABB = 'function: 00000001403F1860',
	OverlapQuery = 'function: 00000001403F0190',
	PointQuery = 'function: 00000001403F05B0',
	PointQueryAnyHit = 'function: 00000001403F09C0',
	RayQuery = 'function: 00000001403F0D00',
	SphereQuery = 'function: 00000001403F12C0',
	['userdata: 00000001431C3090'] = true,
	Box = 0,
	Capsule = 1,
	ConvexHull = 2,
	Sphere = 4,
	CompoundShape = 6,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CC600'
	},
	_NAME = 'casino::luascript::api::spatial',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CC600'
	}
},

['Casino::LuaScript::API::Steam'] = {
	CancelAuthSessionTicket = 'function: 00000001403F4E80',
	GetAPIAuthString = 'function: 00000001403F4D50',
	GetAppID = 'function: 00000001403F6840',
	GetAuthSessionTicket = 'function: 00000001403F49D0',
	GetAvatarImageForSteamID = 'function: 00000001403F6DB0',
	GetFriendPersonaName = 'function: 00000001403F6450',
	GetFriendPersonaState = 'function: 00000001403F6300',
	GetFriendSteamIDs = 'function: 00000001403F5FD0',
	GetMyAvatarImage = 'function: 00000001403F6B80',
	GetMySteamID = 'function: 00000001403F6780',
	GetMySteamPersonaName = 'function: 00000001403F6900',
	GetPersonaNameForUser = 'function: 00000001403F7BB0',
	IsAchievementUnlockedForUser = 'function: 00000001403F6FF0',
	IsAvailable = 'function: 00000001403F4620',
	IsFriendPlayingThisGame = 'function: 00000001403F65B0',
	IsInBigPictureMode = 'function: 00000001403F4850',
	IsOnSteamDeck = 'function: 00000001403F4910',
	IsOnline = 'function: 00000001403F46B0',
	IsOverlayEnabled = 'function: 00000001403F4790',
	IsRequired = 'function: 00000001402E2FE0',
	OpenProfilePageForUser = 'function: 00000001403F69F0',
	OpenWorkshop = 'function: 00000001403F5060',
	OpenWorkshopForUser = 'function: 00000001403F5810',
	['userdata: 00000001431C30A0'] = true,
	Achievement_Awarded = 0,
	Achievement_NotAwarded = 1,
	Achievement_Unknown = 2,
	AvatarSize_Small = 0,
	AvatarSize_Medium = 1,
	AvatarSize_Large = 2,
	k_EPersonaStateOffline = 0,
	k_EPersonaStateOnline = 1,
	k_EPersonaStateBusy = 2,
	k_EPersonaStateAway = 3,
	k_EPersonaStateSnooze = 4,
	k_EPersonaStateLookingToTrade = 5,
	k_EPersonaStateLookingToPlay = 6,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CAE40'
	},
	_NAME = 'casino::luascript::api::steam',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CAE40'
	}
},

['Casino::LuaScript::API::Task::Task'] = {
	Cancel = 'function: 00000001403F9BF0',
	Join = 'function: 00000001403F9E40',
	JoinAsync = 'function: 00000001403F9D50',
	Spawn = 'function: 00000001403F9A00',
	YieldFrame = 'function: 00000001403F9F30',
	['userdata: 00000001431C30D8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CCA40'
	},
	_NAME = 'casino::luascript::api::task::task',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CCA40'
	}
},

['Casino::LuaScript::API::Telemetry'] = {
	Send = 'function: 00000001403FCC30',
	SetEnabled = 'function: 00000001403FD050',
	['userdata: 00000001431C30F0'] = true,
	Diagnostics = 1,
	Marketing = 2,
	Rendering = 4,
	Animation = 8,
	Error = 16,
	Physics = 32,
	Audio = 64,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CCB40'
	},
	_NAME = 'casino::luascript::api::telemetry',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CCB40'
	}
},

['Casino::LuaScript::API::Time'] = {
	AcquireTimeScaler = 'function: 0000000140401250',
	ClearAllTimers = 'function: 0000000140400490',
	ClearTimer = 'function: 0000000140400280',
	CurrentLocalDateAndTimeString = 'function: 0000000140403800',
	CurrentUTCDateAndTimeString = 'function: 00000001404034A0',
	DiffPerformanceTimers = 'function: 00000001404031E0',
	FormatDateString = 'function: 0000000140401FE0',
	FormatTimeString = 'function: 0000000140402190',
	FormatTimeTableString = 'function: 0000000140402340',
	GetCurrentTimeString = 'function: 0000000140401C70',
	GetCurrentTimeTable = 'function: 0000000140401800',
	GetDeltaTime = 'function: 0000000140400550',
	GetDeltaTimeUnscaled = 'function: 0000000140400710',
	GetPerformanceTimer = 'function: 0000000140403140',
	GetRunningTimeString = 'function: 0000000140403C50',
	GetTimeNowInSeconds = 'function: 0000000140403B70',
	GetTimeScaleRate = 'function: 0000000140401620',
	GetTotalTime = 'function: 0000000140400630',
	GetTotalTimeUnscaled = 'function: 00000001404007F0',
	Pause = 'function: 0000000140400E30',
	PerformanceTimeToMilliseconds = 'function: 0000000140403330',
	ReleaseTimeScaler = 'function: 00000001404013A0',
	SetTimeScaler = 'function: 00000001404014B0',
	SetTimer = 'function: 00000001403FFF30',
	Sleep = 'function: 0000000113EA1580',
	SleepUnscaled = 'function: 0000000113EA2680',
	Unpause = 'function: 0000000140400FB0',
	['userdata: 00000001431C3108'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CCC40'
	},
	_NAME = 'casino::luascript::api::time',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CCC40'
	}
},

['Casino::LuaScript::API::Transform'] = {
	CalculateWorldPosition = 'function: 0000000140406110',
	CalculateWorldTransform = 'function: 0000000140405FC0',
	DebugReportHierarchy = 'function: 0000000140406810',
	GetOrientation = 'function: 0000000140405E40',
	GetParent = 'function: 00000001404062B0',
	GetPosition = 'function: 0000000140405CA0',
	GetTransform = 'function: 0000000140405B20',
	HasTransform = 'function: 0000000140405180',
	SetOrientation = 'function: 0000000140405720',
	SetParent = 'function: 0000000140406430',
	SetParentToRoot = 'function: 0000000140406650',
	SetPosition = 'function: 0000000140405520',
	SetScale = 'function: 0000000140405910',
	SetTransform = 'function: 0000000140405350',
	['userdata: 00000001431C3120'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CF580'
	},
	_NAME = 'casino::luascript::api::transform',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CF580'
	}
},

['Casino::LuaScript::API::UI'] = {
	BreakAudioSymbolIntoTimedChunks = 'function: 00000001402E2EB0',
	CreateDataStoreContext = 'function: 00000001402E2EB0',
	DeleteDataStoreContext = 'function: 00000001402E2EB0',
	DoesIconExistAtAll = 'function: 00000001402E2EB0',
	DoesTextExistAtAll = 'function: 00000001402E2EB0',
	DoesTextSymbolExist = 'function: 00000001402E2EB0',
	EscapeString = 'function: 00000001402E2EB0',
	FormatAsString = 'function: 00000001402E2EB0',
	FormatAsSubstring = 'function: 00000001402E2EB0',
	GetDataStoreContext = 'function: 00000001402E2EB0',
	GetDataStoreElement = 'function: 00000001402E2EB0',
	GetEntityName = 'function: 00000001402E2EB0',
	GetLocalisedText = 'function: 00000001402E2EB0',
	GetWrapperForEntity = 'function: 00000001402E2EB0',
	HasEntityName = 'function: 00000001402E2EB0',
	IsCommunityTranslationActive = 'function: 00000001402E2EB0',
	IsCursorInsideGameWindow = 'function: 00000001402E2EB0',
	IsProfane = 'function: 00000001402E2EB0',
	MakeLongInteger = 'function: 00000001402E2EB0',
	SetDataStoreElement = 'function: 00000001402E2EB0',
	SetEntityName = 'function: 00000001402E2EB0',
	['userdata: 00000001431C3130'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CF640'
	},
	_NAME = 'casino::luascript::api::ui',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CF640'
	}
},

['Casino::LuaScript::API::UI2'] = {
	AreResourcesUnmapped = 'function: 0000000140414C10',
	BindCall = 'function: 000000014040EB00',
	BindCallGlobal = 'function: 000000014040ECB0',
	BreakAudioSymbolIntoTimedChunks = 'function: 0000000140415EC0',
	CreateDataStoreContext = 'function: 0000000140411400',
	CreateView = 'function: 000000014040B070',
	DeleteDataStoreContext = 'function: 0000000140411EC0',
	DestroyView = 'function: 000000014040B2A0',
	DisableViewRenderToScreen = 'function: 000000014040B560',
	EnableViewRenderToScreen = 'function: 000000014040B460',
	EscapeString = 'function: 0000000140415860',
	GetDataStoreContext = 'function: 0000000140411890',
	GetDataStoreContextElementIDs = 'function: 0000000140413280',
	GetDataStoreElement = 'function: 0000000140412B70',
	GetDataStoreElementID = 'function: 0000000140412F30',
	GetEntityName = 'function: 0000000140414F20',
	GetViewHeight = 'function: 000000014040C8F0',
	GetViewURL = 'function: 000000014040C650',
	GetViewWidth = 'function: 000000014040C7B0',
	HasEntityName = 'function: 0000000140414D90',
	IsOverlayLoaded = 'function: 0000000140413CB0',
	IsViewReadyForBindings = 'function: 000000014040D340',
	LoadOverlay = 'function: 0000000140413A00',
	MapResources = 'function: 0000000140414770',
	RegisterForEvent = 'function: 000000014040E130',
	RegisterForEventGlobal = 'function: 000000014040E2E0',
	RequestBindCall = 'function: 0000000140410E10',
	RequestBindCallGlobal = 'function: 0000000140411050',
	RequestRegisterForEvent = 'function: 0000000140410060',
	RequestRegisterForEventGlobal = 'function: 00000001404102A0',
	RequestTriggerEvent = 'function: 000000014040EFC0',
	RequestUnbindCall = 'function: 00000001404112A0',
	RequestUnregisterFromEvent = 'function: 00000001404104F0',
	RequestViewLoad = 'function: 000000014040C130',
	RequestViewResize = 'function: 000000014040C4C0',
	SetDataStoreElement = 'function: 0000000140412010',
	SetDataStoreElementByID = 'function: 0000000140412810',
	SetDataStoreElementSet = 'function: 0000000140412480',
	SetDataStoreElementSetByID = 'function: 0000000140412A80',
	SetEntityName = 'function: 0000000140415100',
	SetViewBindingsReleasedCallback = 'function: 000000014040CFB0',
	SetViewBindingsReleasedCallbackGlobal = 'function: 000000014040D170',
	SetViewReadyForBindingsCallback = 'function: 000000014040CC20',
	SetViewReadyForBindingsCallbackGlobal = 'function: 000000014040CDE0',
	TriggerEventAtNextAdvance = 'function: 000000014040D490',
	UnbindCall = 'function: 000000014040EE60',
	UnloadOverlay = 'function: 0000000140414080',
	UnmapResources = 'function: 00000001404148F0',
	UnregisterFromEvent = 'function: 000000014040E490',
	UpdateViewRenderToScreenAlphaExponent = 'function: 000000014040B970',
	UpdateViewRenderToScreenDepth = 'function: 000000014040B660',
	UpdateViewRenderToScreenFullScreen = 'function: 000000014040BAF0',
	UpdateViewRenderToScreenPos = 'function: 000000014040B7E0',
	ViewLoad = 'function: 000000014040BC70',
	ViewReload = 'function: 000000014040C030',
	ViewResize = 'function: 000000014040C330',
	ViewUnload = 'function: 000000014040BE70',
	['userdata: 00000001431C3168'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CF740'
	},
	_NAME = 'casino::luascript::api::ui2',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CF740'
	}
},

['Casino::LuaScript::API::Undo'] = {
	AbandonPreview = 'function: 0000000140351EC0',
	AddChildrenToChangeList = 'function: 0000000140351390',
	CanCommitPreview = 'function: 00000001403517E0',
	CanCommitPreviewApprox = 'function: 00000001403519B0',
	CanRedo = 'function: 00000001403530E0',
	CanUndo = 'function: 0000000140352FD0',
	CancelPreview = 'function: 0000000140351D00',
	Checkpoint = 'function: 00000001403526D0',
	ClearHistory = 'function: 0000000140352A60',
	CommitPreview = 'function: 0000000140351B40',
	CreateChangeList = 'function: 0000000140351050',
	CreateSequentialChangeList = 'function: 00000001403511F0',
	GetCheckpointData = 'function: 0000000140352840',
	GetCommitedTag = 'function: 0000000140352470',
	GetMagicTestNumber = 'function: 00000001403532C0',
	GetMagicTestPreviewNumber = 'function: 00000001403532C0',
	GetMostRecentOperation = 'function: 00000001403531F0',
	GetUndoneCheckpointData = 'function: 0000000140352940',
	IsBusy = 'function: 0000000140352350',
	IsOperationComplete = 'function: 00000001403521E0',
	IsPreviewingChangeList = 'function: 00000001403525E0',
	MagicTestOperationAdd = 'function: 00000001402E2EB0',
	MagicTestOperationMultiply = 'function: 00000001402E2EB0',
	MagicTestOperationSlow = 'function: 00000001402E2EB0',
	PreviewChangeList = 'function: 0000000140351570',
	Redo = 'function: 0000000140352DD0',
	RestoreState = 'function: 0000000140352020',
	Undo = 'function: 0000000140352BD0',
	['userdata: 00000001431C2BF0'] = true,
	Operation_None = 0,
	Operation_Add = 1,
	Operation_Undo = 2,
	Operation_Redo = 3,
	_M = {
		_CYCLE = 'Reference to table: 00000000187D00C0'
	},
	_NAME = 'casino::luascript::api::undo',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187D00C0'
	}
},

['Casino::LuaScript::API::UserContent'] = {
	AddAdditionalPlatform = 'function: 00000001419E3590',
	AddCollectionToSaved = 'function: 00000001419ED020',
	AddDLC = 'function: 00000001419E2650',
	AddDLCFromMask = 'function: 00000001419E2B20',
	AddItemToFavourites = 'function: 00000001419E8AB0',
	AddItemToFavouritesAsync = 'function: 00000001419E8800',
	AddTags = 'function: 00000001419E1A60',
	BeginEditNewItem = 'function: 00000001419E09B0',
	ClearPreviewImageUITexture = 'function: 00000001419ED660',
	ClearPreviewThumbnailUITexture = 'function: 00000001419ED9E0',
	CollectionIDFromString = 'function: 00000001419EEBA0',
	CollectionIDToString = 'function: 00000001403A2040',
	CreateAllQuery = 'function: 00000001419EB2B0',
	CreateCollectionChangelist = 'function: 00000001419EBDA0',
	CreateCollectionIDQuery = 'function: 00000001419EC210',
	CreateCollectionUserQuery = 'function: 00000001419EC410',
	CreateItemContent = 'function: 00000001419E0C80',
	CreateItemDetailsQuery = 'function: 00000001419EAA50',
	CreateNewItem = 'function: 00000001419E0650',
	CreateUserQuery = 'function: 00000001419EA690',
	CreatorIDFromString = 'function: 00000001419EE950',
	CreatorIDToString = 'function: 00000001419EE800',
	DeleteCollection = 'function: 00000001419ECE20',
	DeleteItem = 'function: 00000001419E3BF0',
	DirectDownloadItem = 'function: 00000001419E7080',
	DisplayDebugImage = 'function: 00000001402E2EB0',
	DownVoteItem = 'function: 00000001419E9CE0',
	DownVoteItemAsync = 'function: 00000001419E9AE0',
	FlushUseItems = 'function: 00000001419EA2E0',
	FlushUseItemsAsync = 'function: 00000001419EA610',
	GetDefaultModVisibility = 'function: 00000001419EE490',
	GetItemAvailability = 'function: 00000001419E5D60',
	GetItemID = 'function: 00000001419E5670',
	GetItemInstallInfo = 'function: 00000001419E5EC0',
	GetItemMetadata = 'function: 00000001419E5540',
	GetItemMetadataHasThumbnail = 'function: 00000001419E5AC0',
	GetItemMetadataID = 'function: 00000001419E5C10',
	GetItemSaveType = 'function: 00000001419E5980',
	GetItemType = 'function: 00000001419E5850',
	GetLockedSpace = 'function: 00000001419EDFA0',
	GetMaxModVisibility = 'function: 00000001419EE520',
	GetModSpace = 'function: 00000001419EE160',
	GetModTypeForSaveToken = 'function: 00000001419E7870',
	GetSubscriptionSpace = 'function: 00000001419EE080',
	GetTotalSpace = 'function: 00000001419EDEC0',
	GetUsedSpace = 'function: 00000001419EDFA0',
	GetUserItemFavourited = 'function: 00000001419E5120',
	GetUserItemVote = 'function: 00000001419E3F20',
	HasCurrentUser = 'function: 00000001419EDC30',
	IsCurrentUser = 'function: 00000001419EDD20',
	IsEnabled = 'function: 00000001419E01A0',
	IsItemToken = 'function: 00000001419E04A0',
	IsKepler = 'function: 00000001419E03A0',
	IsSteamWorkshop = 'function: 00000001419E02A0',
	IsSubscribedToItem = 'function: 00000001419E69D0',
	ModIDFromString = 'function: 00000001419EE5B0',
	ModIDToString = 'function: 00000001403A2040',
	OpenItemPage = 'function: 00000001407A9690',
	OpenLegalAgreementPage = 'function: 000000014032E210',
	ReleaseDebugImage = 'function: 00000001402E2EB0',
	ReleaseLockedItems = 'function: 00000001419E7590',
	RemoveAdditionalPlatform = 'function: 00000001419E3740',
	RemoveCollectionFromSaved = 'function: 00000001419ED220',
	RemoveDLC = 'function: 00000001419E2D30',
	RemoveDLCFromMask = 'function: 00000001419E31F0',
	RemoveItemFromFavourites = 'function: 00000001419E9170',
	RemoveItemFromFavouritesAsync = 'function: 00000001419E8EC0',
	RemoveTags = 'function: 00000001419E2050',
	ReportCollection = 'function: 00000001419E4CD0',
	ReportCreator = 'function: 00000001419E4890',
	ReportItem = 'function: 00000001419E4440',
	RequestPreviewImageAsUITexture = 'function: 00000001419ED420',
	RequestPreviewThumbnailAsUITexture = 'function: 00000001419ED8B0',
	RunCollectionQuery = 'function: 00000001419EC760',
	RunQuery = 'function: 00000001419EB670',
	SetDescription = 'function: 00000001419E1210',
	SetTitle = 'function: 00000001419E0FF0',
	SetUserData = 'function: 00000001419E1430',
	SetVisibility = 'function: 00000001419E33E0',
	SubmitCollectionChangelist = 'function: 00000001419EBF60',
	SubmitItemUpdate = 'function: 00000001419E38F0',
	SubscribeToItem = 'function: 00000001419E7D20',
	SubscribeToItemAsync = 'function: 00000001419E7A80',
	SuspendDownloads = 'function: 00000001419EE240',
	UnsubscribeFromItem = 'function: 00000001419E83D0',
	UnsubscribeFromItemAsync = 'function: 00000001419E8130',
	UpVoteItem = 'function: 00000001419E9780',
	UpVoteItemAsync = 'function: 00000001419E9580',
	UpdateAll = 'function: 00000001419E6F90',
	UpdateInstalledItem = 'function: 00000001419E6CB0',
	UseItem = 'function: 00000001419EA040',
	['userdata: 00000001431C3E60'] = true,
	AllQueryFilter_Any = 0,
	AllQueryFilter_CreatedByFollowedUsers = 1,
	AllQueryFilter_HighlightedMods = 2,
	AllQueryFilter_TrendingMods = 3,
	AllQuerySortOrder_PublicationDateDesc = 0,
	AllQuerySortOrder_VotesUpDesc = 1,
	AllQuerySortOrder_TextSearchMatch = 2,
	AllQuerySortOrder_TotalUniqueSubscriptions = 3,
	AllQuerySortOrder_AllTimeUses = 4,
	AllQuerySortOrder_DailyUses = 5,
	AllQuerySortOrder_WeeklyUses = 6,
	AllQuerySortOrder_MonthlyUses = 7,
	AllQuerySortOrder_YearlyUses = 8,
	AllQuerySortOrder_AllTimeDownloads = 9,
	AllQuerySortOrder_DailyDownloads = 10,
	AllQuerySortOrder_WeeklyDownloads = 11,
	AllQuerySortOrder_MonthlyDownloads = 12,
	AllQuerySortOrder_YearlyDownloads = 13,
	CollectionUserQueryDirection_Ascending = 0,
	CollectionUserQueryDirection_Descending = 1,
	CollectionUserQueryFilter_Saved = 0,
	CollectionUserQueryFilter_Created = 1,
	CollectionUserQuerySort_Name = 0,
	CollectionUserQuerySort_CreatedTime = 1,
	CollectionUserQuerySort_UpdatedTime = 2,
	CollectionUserQuerySort_ModCount = 3,
	CollectionUserQuerySort_SaveCount = 4,
	CollectionVisibility_Public = 0,
	CollectionVisibility_Private = 1,
	CreateContentResult_Success = 0,
	CreateContentResult_SaveSystemBusy = 1,
	CreateContentResult_FailedToCreateStaging = 2,
	CreateContentResult_FailedToLoadSave = 3,
	CreateContentResult_UnknownError = 4,
	CreateContentResult_Interrupted = 5,
	DownloadError_None = 0,
	DownloadError_OutOfSpace = 1,
	DownloadError_UnknownError = 2,
	DownloadError_Interrupted = 3,
	EditResult_Success = 0,
	EditResult_SuccessNeedsToAcceptLA = 1,
	EditResult_NotAcceptedLA = 2,
	EditResult_UserAccountBanned = 3,
	EditResult_InsufficientPermission = 4,
	EditResult_ItemNotFound = 5,
	EditResult_Offline = 6,
	EditResult_UserContentUnavailable = 7,
	EditResult_UnknownError = 8,
	EditResult_Interrupted = 9,
	ImagePreviewError_Success = 0,
	ImagePreviewError_Interrupted = 1,
	ImagePreviewError_NoImageData = 2,
	ModAvailability_Unavailable = 0,
	ModAvailability_UnavailableDownloading = 1,
	ModAvailability_PendingChanges = 2,
	ModAvailability_AvailableNeedsUpdate = 3,
	ModAvailability_Available = 4,
	ModPlatform_Steam = 0,
	ModPlatform_Epic = 1,
	ModPlatform_Frontier = 2,
	ModPlatform_WindowsStore = 3,
	ModPlatform_XboxOne = 4,
	ModPlatform_XboxSeriesX = 5,
	ModPlatform_PS4 = 6,
	ModPlatform_PS5 = 7,
	ModPlatform_Unknown = 8,
	ModReportReason_NuditySexualContent = 0,
	ModReportReason_MaliciousHateSpeech = 1,
	ModReportReason_Spam = 2,
	ModReportReason_Harassment = 3,
	ModReportReason_ViolenceTowardsChildren = 4,
	ModReportReason_CopyrightInfringement = 5,
	ModReportReason_OtherReason = 6,
	ModVisibility_Public = 0,
	ModVisibility_FriendsOnly = 1,
	ModVisibility_Private = 2,
	QueryError_Success = 0,
	QueryError_NotAcceptedLA = 1,
	QueryError_UserAccountBanned = 2,
	QueryError_InsufficientPermission = 3,
	QueryError_Offline = 4,
	QueryError_UserContentUnavailable = 5,
	QueryError_UnknownError = 6,
	QueryError_Interrupted = 7,
	QueryTimePeriod_All = 0,
	QueryTimePeriod_Today = 1,
	QueryTimePeriod_Week = 2,
	QueryTimePeriod_Month = 3,
	QueryTimeStampFilterBy_UpdatedTime = 0,
	QueryTimeStampFilterBy_CreatedTime = 1,
	QueryTimeStampFilterOperator_GreaterThan = 0,
	QueryTimeStampFilterOperator_GreaterThanOrEqualTo = 1,
	QueryTimeStampFilterOperator_LessThan = 2,
	QueryTimeStampFilterOperator_LessThanOrEqualTo = 3,
	ReportReason_NuditySexualContent = 0,
	ReportReason_MaliciousHateSpeech = 1,
	ReportReason_Spam = 2,
	ReportReason_Harassment = 3,
	ReportReason_ViolenceTowardsChildren = 4,
	ReportReason_CopyrightInfringement = 5,
	ReportReason_OtherReason = 6,
	UpdateAllStage_Complete = 0,
	UpdateAllStage_Continue = 1,
	UpdateAllStage_UnknownError = 2,
	UpdateAllStage_Interrupted = 3,
	UserItemList_Published = 0,
	UserItemList_Favourited = 1,
	UserItemList_Subscribed = 2,
	UserItemList_VotedOn = 3,
	UserItemList_Followed = 4,
	UserItemListSortOrder_CreationOrderDesc = 0,
	UserItemListSortOrder_CreationOrderAsc = 1,
	UserItemListSortOrder_TitleAsc = 2,
	UserItemListSortOrder_LastUpdatedDesc = 3,
	UserItemListSortOrder_SubscriptionDateDesc = 4,
	UserItemListSortOrder_VoteScoreDesc = 5,
	UserItemListSortOrder_AllTimeDownloadsAsc = 6,
	UserItemListSortOrder_AllTimeDownloadsDesc = 7,
	UserItemListSortOrder_DailyDownloadsAsc = 8,
	UserItemListSortOrder_DailyDownloadsDesc = 9,
	UserItemListSortOrder_WeeklyDownloadsAsc = 10,
	UserItemListSortOrder_WeeklyDownloadsDesc = 11,
	UserItemListSortOrder_MonthlyDownloadsAsc = 12,
	UserItemListSortOrder_MonthlyDownloadsDesc = 13,
	UserItemListSortOrder_YearlyDownloadsAsc = 14,
	UserItemListSortOrder_YearlyDownloadsDesc = 15,
	UserItemListSortOrder_AllTimeUsageAsc = 16,
	UserItemListSortOrder_AllTimeUsageDesc = 17,
	UserItemListSortOrder_DailyUsageAsc = 18,
	UserItemListSortOrder_DailyUsageDesc = 19,
	UserItemListSortOrder_WeeklyUsageAsc = 20,
	UserItemListSortOrder_WeeklyUsageDesc = 21,
	UserItemListSortOrder_MonthlyUsageAsc = 22,
	UserItemListSortOrder_MonthlyUsageDesc = 23,
	UserItemListSortOrder_YearlyUsageAsc = 24,
	UserItemListSortOrder_YearlyUsageDesc = 25,
	LatestModVersion = -1,
	CurrentModPlatform = 0,
	ModType_Invalid = 0,
	InvalidModVersion = 0,
	QueryPageSize = 100,
	_M = {
		_CYCLE = 'Reference to table: 00000000187D0300'
	},
	_NAME = 'casino::luascript::api::usercontent',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187D0300'
	}
},

['Casino::LuaScript::API::VoxelTerrain'] = {
	AddTerrainToPhysicsWorld = 'function: 000000014042AD50',
	BoxTest = 'function: 000000014042A240',
	CapsuleTest = 'function: 0000000140429CC0',
	CoarseCapsuleTest = 'function: 0000000140429130',
	CoarseRayCast = 'function: 0000000140428710',
	CoarseRayCastAll = 'function: 0000000140427C70',
	CoarseSphereOutsideAllTerrainsTest = 'function: 00000001404294B0',
	CoarseSphereTest = 'function: 0000000140428E30',
	CompleteWorldSerialisationLoad = 'function: 0000000140427820',
	GetAuxDataOfClosestVoxel = 'function: 000000014042BAB0',
	GetClosestVoxelCoordToWorldPoint = 'function: 000000014042A760',
	GetLayerCount = 'function: 000000014042C1B0',
	GetMaterialName = 'function: 000000014042BF80',
	GetPrimaryVoxelTerrainEntityID = 'function: 0000000140427610',
	GetSmoothIsoValuePartialDerivatives = 'function: 000000014042A9E0',
	GetWorldBounds = 'function: 000000014042A560',
	PlaceTestDecal = 'function: 000000014042B840',
	PointTest = 'function: 00000001404296C0',
	RayCast = 'function: 00000001404283C0',
	RayCastAll = 'function: 0000000140427990',
	RemoveTerrainFromPhysicsWorld = 'function: 000000014042AEE0',
	SetPrimaryVoxelTerrainEntityID = 'function: 00000001404276E0',
	SetupCollisionTest = 'function: 00000001402E2EB0',
	SphereSweep = 'function: 0000000140428A50',
	SphereSweepAll = 'function: 0000000140427F80',
	SphereTest = 'function: 0000000140429900',
	['userdata: 00000001431C3180'] = true,
	Intersecting = 0,
	Outside = 1,
	Inside = 4294967295,
	_M = {
		_CYCLE = 'Reference to table: 000000001881C180'
	},
	_NAME = 'casino::luascript::api::voxelterrain',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001881C180'
	}
},

['Casino::LuaScript::API::World'] = {
	AbortLoad = 'function: 000000014042E3B0',
	Activate = 'function: 00000000FAEA9C00',
	Deactivate = 'function: 00000000FAEAA000',
	GetActive = 'function: 000000014042FBA0',
	GetCurrent = 'function: 000000014042FDD0',
	GetLoadStatus = 'function: 0000000140430630',
	GetScript = 'function: 00000001404307D0',
	GetStatus = 'function: 0000000140430400',
	GetValidWorldNames = 'function: 0000000140430250',
	GetWorldAPIs = 'function: 000000014042FCD0',
	Invoke = 'function: 0000000140430B50',
	IsActive = 'function: 000000014042F9E0',
	IsLoaded = 'function: 000000014042E8C0',
	IsManagerIdle = 'function: 000000014042FF80',
	IsRunning = 'function: 000000014042F220',
	IsRunningInBackground = 'function: 000000014042F410',
	IsShuttingDown = 'function: 0000000140430D00',
	Load = 'function: 00000000FAEA8A80',
	LoadAsync = 'function: 000000014042E200',
	Start = 'function: 00000000FAEA9580',
	StartAsync = 'function: 000000014042EC80',
	Stop = 'function: 00000000FAEA9600',
	StopAsync = 'function: 000000014042F030',
	Unload = 'function: 00000000FAEA9180',
	UnloadAsync = 'function: 000000014042E710',
	['userdata: 00000001431C3188'] = true,
	LoadStatus_Loaded = 0,
	LoadStatus_Fail = 1,
	LoadStatus_Pending = 2,
	LoadStatus_Aborted = 3,
	LoadStatus_NotLoaded = 4,
	LoadStatus_Unloading = 5,
	_M = {
		_CYCLE = 'Reference to table: 00000000187D2000'
	},
	_NAME = 'casino::luascript::api::world',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187D2000'
	}
},

['Casino::LuaScript::API::WorldSerialisation'] = {
	CompleteClientLoad = 'function: 00000001419B0700',
	CreateSaveSelection = 'function: 00000001419B0C80',
	HasSaveToFileCompleted = 'function: 00000001419B0DE0',
	LoadEntityID = 'function: 00000001419B0AA0',
	RegisterWorldSerialisationClient = 'function: 00000001419AFC10',
	SaveEntityID = 'function: 00000001419B08B0',
	UnregisterWorldSerialisationClient = 'function: 00000001419B0420',
	['userdata: 00000001431C3E50'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001881DE40'
	},
	_NAME = 'casino::luascript::api::worldserialisation',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001881DE40'
	}
},

['Casino::LuaScript::API::XMLConfig'] = {
	ResetAll = 'function: 0000000140431620',
	ResetSaveConfigs = 'function: 00000001402E2EB0',
	SaveAll = 'function: 0000000140431430',
	['userdata: 00000001431C3198'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187D2680'
	},
	_NAME = 'casino::luascript::api::xmlconfig',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187D2680'
	}
},

['Casino::Player::PlayerSource'] = {
	['userdata: 00000001431C2F98'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CB440'
	},
	_NAME = 'casino::player::playersource',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__gc = 'function: 0000000140386F50',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CB440'
	}
},

['Casino::RenderParameters::RenderParameter'] = {
	['userdata: 00000001431C3070'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001882C240'
	},
	_NAME = 'casino::renderparameters::renderparameter',
	_PACKAGE = '',
	__eq = 'function: 00000001403EBD70',
	__gc = 'function: 00000001403539A0',
	__index = {
		_CYCLE = 'Reference to table: 000000001882C240'
	}
},

['Casino::UserInterface2::DataStore::ContextHandle'] = {
	['userdata: 00000001431C3170'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000109BDA6C0'
	},
	_NAME = 'casino::userinterface2::datastore::contexthandle',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__gc = 'function: 000000014041CB40',
	__index = {
		_CYCLE = 'Reference to table: 0000000109BDA6C0'
	}
},

['Casino::WorldLoader'] = {
	GetWorldName = 'function: 000000014030F950',
	IsAbortRequested = 'function: 000000014030FA60',
	['userdata: 00000001431C2A98'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000109BBED00'
	},
	_NAME = 'casino::worldloader',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000109BBED00'
	}
},

CinematicsAPI = {
	GetPlaybackTimeRemaining = 'function: 0000000140330AC0',
	GetPropThrough = 'function: 0000000140330C70',
	IsCinematicBeingPlayed = 'function: 0000000140330530',
	IsCinematicReady = 'function: 0000000140330130',
	PauseCinematic = 'function: 0000000140330720',
	PlayCinematic = 'function: 0000000140330350',
	PrepareCinematic = 'function: 000000014032FD70',
	ResumeCinematic = 'function: 00000001403308F0',
	SkipCinematic = 'function: 0000000140330E20',
	UnloadCinematic = 'function: 000000014032FFD0',
	['userdata: 00000001431C2B18'] = true,
	CameraControl_Start = 2,
	CameraControl_End = 3,
	Cinematic_Start = 0,
	Cinematic_End = 1,
	Event_ReleaseCamera = 14,
	Event_CinematicEnding = 15,
	Event_Custom_Start = 12,
	Event_Custom_End = 13,
	GUI_Caption_Start = 6,
	GUI_Caption_End = 7,
	GUI_Subtitle_Start = 8,
	GUI_Subtitle_End = 9,
	VFX_ScreenFade = 4,
	VFX_LetterBox = 5,
	MobiusInstanceID = -1,
	Audio_Music_Start = 10,
	_M = {
		_CYCLE = 'Reference to table: 00000000187F71C0'
	},
	_NAME = 'cinematicsapi',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187F71C0'
	}
},

ControlContext = {
	GetAxis = 'function: 000000014035EC40',
	GetButton = 'function: 000000014035E800',
	GetPosition = 'function: 000000014035EE60',
	GetValue = 'function: 000000014035EA20',
	IsPlayerMostRecentlyUsingGamePad = 'function: 000000014035F080',
	Register = 'function: 000000014035E710',
	Unregister = 'function: 000000014035E7A0',
	['userdata: 00000001431C2CA0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001882D540'
	},
	_NAME = 'controlcontext',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__gc = 'function: 00000001402E4430',
	__index = {
		_CYCLE = 'Reference to table: 000000001882D540'
	}
},

['DebugUI::Window'] = {
	Focus = 'function: 000000014156C8B0',
	GetExtraWindowFlags = 'function: 000000014156C7B0',
	IsActive = 'function: 000000014156C6C0',
	SetActive = 'function: 000000014156C730',
	SetExtraWindowFlags = 'function: 000000014156C820',
	['userdata: 00000001431C3C48'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001881CB80'
	},
	_NAME = 'debugui::window',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__gc = 'function: 00000001402E4430',
	__index = {
		_CYCLE = 'Reference to table: 000000001881CB80'
	}
},

['Game::LuaScript::API::Attractions'] = {
	AddNoGuestsReason = 'function: 0000000140433E60',
	AddNoOpenReason = 'function: 00000001404336F0',
	AddNoTestingReason = 'function: 0000000140433BE0',
	CanBeOpened = 'function: 00000001404340E0',
	CanBeTested = 'function: 00000001404342C0',
	CloseAttraction = 'function: 00000001404335B0',
	CountVacantBenches = 'function: 0000000140434C80',
	GetPlayerRequestedOpenState = 'function: 0000000140434490',
	GetRestaurantMonitorData = 'function: 0000000140435070',
	HasEverOpened = 'function: 0000000140434670',
	HasNoOpenReason = 'function: 00000001404339D0',
	IsClosed = 'function: 0000000140433150',
	IsOpen = 'function: 0000000140432D90',
	IsTesting = 'function: 0000000140432F70',
	OpenAttraction = 'function: 0000000140433330',
	RemoveNoGuestsReason = 'function: 0000000140433FA0',
	RemoveNoOpenReason = 'function: 0000000140433860',
	RemoveNoTestingReason = 'function: 0000000140433D20',
	SetShouldAutoHire = 'function: 0000000140434A30',
	ShouldAutoHire = 'function: 0000000140434850',
	TestAttraction = 'function: 0000000140433470',
	['userdata: 00000001431C31A0'] = true,
	AttractionsOpenStateReason_NotCreated = 0,
	AttractionsOpenStateReason_Moving = 1,
	AttractionsOpenStateReason_NoQueue = 2,
	AttractionsOpenStateReason_IncompleteFlume = 3,
	AttractionsOpenStateReason_Maintenance = 4,
	AttractionsOpenStateReason_InvalidRide = 5,
	AttractionsOpenStateReason_NoPower = 6,
	AttractionsOpenStateReason_TooExtreme = 7,
	AttractionClosed = 0,
	AttractionTesting = 1,
	AttractionOpen = 2,
	_M = {
		_CYCLE = 'Reference to table: 00000000187E5940'
	},
	_NAME = 'game::luascript::api::attractions',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187E5940'
	}
},

['Game::LuaScript::API::AvatarCapture'] = {
	Activate = 'function: 0000000140435CF0',
	Deactivate = 'function: 0000000140435EE0',
	GetCaptureResult = 'function: 0000000140436360',
	IsCaptureInProgress = 'function: 0000000140436200',
	TriggerCapture = 'function: 0000000140436010',
	['userdata: 00000001431C31B8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018808580'
	},
	_NAME = 'game::luascript::api::avatarcapture',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018808580'
	}
},

['Game::LuaScript::API::AvatarPatternControls'] = {
	UpdateColour = 'function: 0000000140436A90',
	UpdatePattern = 'function: 0000000140436D70',
	['userdata: 00000001431C31B0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018809380'
	},
	_NAME = 'game::luascript::api::avatarpatterncontrols',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018809380'
	}
},

['Game::LuaScript::API::BakedAnimControl'] = {
	AddDebugControls = 'function: 00000001402E2EB0',
	GetEvent = 'function: 0000000140439800',
	GetVariableIdx = 'function: 0000000140438CA0',
	SetBool = 'function: 0000000140439170',
	SetEnum = 'function: 00000001404395D0',
	SetFloat = 'function: 00000001404393A0',
	SetTrigger = 'function: 0000000140438F60',
	['userdata: 00000001431C31D0'] = true,
	EmotionState_Bored = 0,
	EmotionState_Neutral = 1,
	EmotionState_Excited = 2,
	EmotionState_Scared = 3,
	EmotionState_Sick = 4,
	GuestActivity_Locomotion = 0,
	GuestActivity_OnRide = 1,
	GuestActivity_SOS = 2,
	RideSeatType_FLO_LBS = 1,
	RideSeatType_FLO_OSR = 2,
	RideSeatType_FLO_OSB = 3,
	RideSeatType_KRT_STR = 12,
	RideSeatType_KRT_NSR = 13,
	RideSeatType_LOW_LBL = 4,
	RideSeatType_LOW_LLN = 5,
	RideSeatType_STA_LBS = 6,
	RideSeatType_STA_OSR = 7,
	RideSeatType_STA_SSN = 9,
	RideSeatType_STA_TCR = 11,
	RideSeatType_STA_SHO = 18,
	RideSeatType_SUP_OSR = 10,
	RideSeatType_SUP_NSR = 16,
	RideSeatType_CSW_LBS = 0,
	RideSeatType_STP_SCF = 8,
	RideSeatType_MBK_HND = 14,
	RideSeatType_TOB_NSR = 15,
	RideSeatType_SIT_NSR = 17,
	RideSeatType_WTR_SLD = 19,
	_M = {
		_CYCLE = 'Reference to table: 00000000187DC440'
	},
	_NAME = 'game::luascript::api::bakedanimcontrol',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187DC440'
	}
},

['Game::LuaScript::API::Balloons'] = {
	EntityIsBalloon = 'function: 0000000140439DC0',
	IsBoneValid = 'function: 000000014043A110',
	PlayerInteract = 'function: 0000000140439F50',
	['userdata: 00000001431C31D8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187E4580'
	},
	_NAME = 'game::luascript::api::balloons',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187E4580'
	}
},

['Game::LuaScript::API::BillboardUIWidgets'] = {
	ClearBillboardData = 'function: 0000000140539B30',
	SetBillboardData = 'function: 0000000140539890',
	['userdata: 00000001431C3458'] = true,
	WidgetType_CoasterLabels = 0,
	WidgetType_TutorialMarkers = 1,
	WidgetType_TrackEditSelection = 2,
	WidgetType_TrackSequenceTriggerMarkers = 3,
	WidgetType_FrontEndGlobeMarkers = 4,
	WidgetType_ParkExpansionMarkers = 5,
	WidgetType_ParkZoneMarkers = 6,
	WidgetType_RidePhotoTriggerMarkers = 7,
	_M = {
		_CYCLE = 'Reference to table: 00000000187E4780'
	},
	_NAME = 'game::luascript::api::billboarduiwidgets',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187E4780'
	}
},

['Game::LuaScript::API::Boundary'] = {
	AddCashDeltaOperation = 'function: 000000014044E0B0',
	AddPostToPanel = 'function: 0000000140445210',
	AttachHighlightRequestToSystem = 'function: 0000000140441110',
	CompleteWorldSerialisationLoad = 'function: 000000014044E2B0',
	CreateHighlightRequest = 'function: 0000000140440F40',
	CreateNewAttachableProp = 'function: 0000000140440710',
	CreateNewControlPost = 'function: 00000001404404D0',
	CreateNewPanel = 'function: 00000001404402F0',
	DeleteAttachableProp = 'function: 000000014044A720',
	DeleteMultiSelection = 'function: 000000014044AAC0',
	DeletePanel = 'function: 000000014044A2D0',
	DeletePost = 'function: 0000000140449F30',
	DetachHighlightRequestFromSystem = 'function: 00000001404412E0',
	FindBestJoinDirection = 'function: 000000014044E460',
	FindSnapLengthForStraightLine = 'function: 000000014044EA60',
	GetAllConnectedBoundaryObjects = 'function: 0000000140443A20',
	GetBoundaryAndPropTypesFromMultiSelect = 'function: 0000000140445C60',
	GetBoundaryDataForMultiSelection = 'function: 000000014044BC70',
	GetBoundaryDataForType = 'function: 000000014044AF60',
	GetBoundaryObjectFromEntity = 'function: 0000000140443670',
	GetBoundaryPanelLength = 'function: 000000014044DE20',
	GetBoundaryPartsFromNearRay = 'function: 0000000140442450',
	GetBoundaryPartsFromRayCast = 'function: 0000000140441F90',
	GetBoundaryPartsInSelectionFromRayCast = 'function: 0000000140442A50',
	GetClosestPointPropAlongAndTangentOnPanel = 'function: 0000000140449C70',
	GetDefaultWindowDists = 'function: 0000000140444DE0',
	GetMaxPostDistance = 'function: 0000000140444D50',
	GetMinHeight = 'function: 0000000140444C30',
	GetMinPostDistance = 'function: 0000000140444CC0',
	GetPanelForAttachableProp = 'function: 0000000140443420',
	GetPanelsConnectedToControlPost = 'function: 0000000140443100',
	GetPropDataFromResource = 'function: 000000014044D7A0',
	GetRandomUVOffsetRange = 'function: 0000000140444EA0',
	GroundPoint = 'function: 0000000140444F30',
	IsCommittedAttachableProp = 'function: 0000000140440D40',
	IsCommittedControlPost = 'function: 0000000140440B40',
	IsCommittedPanel = 'function: 0000000140440940',
	MultiSelectChangeDualSidedExtra = 'function: 0000000140449840',
	MultiSelectChangeHeightAngles = 'function: 0000000140447EC0',
	MultiSelectChangePanelMode = 'function: 0000000140448590',
	MultiSelectChangeSingleSidedExtra = 'function: 0000000140449440',
	MultiSelectChangeSmoothness = 'function: 00000001404478E0',
	MultiSelectChangeType = 'function: 0000000140447090',
	MultiSelectChangeWindowDists = 'function: 0000000140448980',
	MultiSelectLowerBottom = 'function: 0000000140446C20',
	MultiSelectMove = 'function: 00000001404474B0',
	MultiSelectRaise = 'function: 00000001404467B0',
	MultiSelectSetEnumExtra = 'function: 0000000140449040',
	PlaceAttachableProp = 'function: 00000001404456D0',
	SetBoundaryEditEnabled = 'function: 0000000140442FA0',
	SetHighlightOnNullOrUndergroundProximityParts = 'function: 00000001404414A0',
	SetNullBarrierGUICustomColour = 'function: 0000000140441D90',
	SetNullBarrierGUIEditingColour = 'function: 0000000140441B90',
	SetNullBarrierGUIOcclusionColour = 'function: 0000000140441990',
	SetNullBarrierGUISelectionColour = 'function: 0000000140441790',
	TrySnapCurveConnection = 'function: 000000014044EE00',
	['userdata: 00000001431C3200'] = true,
	AttachablePropType_Door = 0,
	AttachablePropType_OneWayDoor = 1,
	AttachablePropType_StaffDoor = 2,
	BoundaryExtras_WindowGlass = 1,
	BoundaryExtras_WindowHeightsWorldAligned = 2,
	PanelMode_FlatTop = 0,
	PanelMode_CurvedTop = 1,
	PanelType_Glass = 0,
	PanelType_Null = 1,
	PanelType_OpaqueWall = 3,
	PanelType_MeshViewable = 4,
	PanelType_OpaqueWallWindowCut = 5,
	OpaqueChainedPoles = 2,
	_M = {
		_CYCLE = 'Reference to table: 00000000187E7100'
	},
	_NAME = 'game::luascript::api::boundary',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187E7100'
	}
},

['Game::LuaScript::API::CameraConfigAPI'] = {
	GetBehaviour = 'function: 000000014053E410',
	GetBehaviourPreset = 'function: 000000014053D940',
	GetColourGradingPackages = 'function: 000000014053FFA0',
	GetGamepad = 'function: 000000014053D0A0',
	GetNoClip = 'function: 000000014053FB60',
	GetSensitivity = 'function: 000000014053C240',
	SetBehaviourCustom = 'function: 000000014053ED10',
	SetBehaviourPreset = 'function: 000000014053F910',
	SetGamepad = 'function: 000000014053D4D0',
	SetNoClip = 'function: 000000014053FE10',
	SetSensitivity = 'function: 000000014053C850',
	['userdata: 00000001431C3460'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187FB180'
	},
	_NAME = 'game::luascript::api::cameraconfigapi',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187FB180'
	}
},

['Game::LuaScript::API::CameraLuaHelperAPI'] = {
	ClampPitchAngle = 'function: 000000014053A4F0',
	ClampRollAngle = 'function: 000000014053A0B0',
	ClampYawAngle = 'function: 000000014053A0B0',
	ClampYawAngleAndRemoveRoll = 'function: 000000014053AC70',
	SetRoll = 'function: 000000014053A940',
	['userdata: 00000001431C3410'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187FA5C0'
	},
	_NAME = 'game::luascript::api::cameraluahelperapi',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187FA5C0'
	}
},

['Game::LuaScript::API::Cheats'] = {
	AddGuestForSpeedBoostRacingCheat = 'function: 000000014045FCC0',
	AddRideForUserControlledRacingCheat = 'function: 000000014045F990',
	IgnoreFearAndNausea = 'function: 00000001404601C0',
	SetPathClutterEnabled = 'function: 000000014045F590',
	SetSecurityChaseCollisionsEnabled = 'function: 000000014045F820',
	SetStaffRecoveryRateMultiplier = 'function: 0000000140460060',
	TrainStaffMember = 'function: 000000014045F250',
	TriggerGuestNausea = 'function: 000000014045FE10',
	UnlockScenery = 'function: 000000014045F400',
	UserControlledRacingCheatActiveForRide = 'function: 000000014045FAE0',
	['userdata: 00000001431C3248'] = true,
	RenameMessage_Type_Guest = 1,
	RenameMessage_Type_FlatRide = 2,
	RenameMessage_Type_TrackedRide = 3,
	RenameMessage_Type_TransportRide = 4,
	RenameMessage_Type_SceneryPart = 5,
	RenameMessage_Type_SceneryBuilding = 6,
	RenameMessage_Type_Shop = 7,
	RenameMessage_Type_Facility = 8,
	RenameMessage_Type_Entertainer = 9,
	RenameMessage_Type_Staff = 10,
	RenameMessage_Type_Vendor = 11,
	RenameMessage_Type_TransportRideStation = 12,
	RenameMessage_Type_Pool = 13,
	RenameMessage_Type_FlumePlatform = 15,
	_M = {
		_CYCLE = 'Reference to table: 00000000187FA700'
	},
	_NAME = 'game::luascript::api::cheats',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187FA700'
	}
},

['Game::LuaScript::API::Community'] = {
	['userdata: 00000001431C3258'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C2C00'
	},
	_NAME = 'game::luascript::api::community',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C2C00'
	}
},

['Game::LuaScript::API::Complex'] = {
	AddRelevantComplexBodyEntitiesToBlueprintSelection = 'function: 00000001404689E0',
	AttachComplexItemHighlightRequest = 'function: 0000000140465E60',
	ClearComplexIDForMoveObject = 'function: 0000000140467BE0',
	CompleteWorldSerialisationLoad = 'function: 0000000140464C30',
	CouldAddItemToMultiSelectionOfComplexItems = 'function: 00000001404666E0',
	CountItemsOfInteractableType = 'function: 0000000140468620',
	CreateComplex = 'function: 0000000140465540',
	CreateComplexItemHighlightRequest = 'function: 0000000140465B90',
	Debug_ComplexTypeToString = 'function: 00000001402E2F20',
	DetachComplexItemHighlightRequest = 'function: 0000000140466000',
	GetAllItemsInComplexByInteractableType = 'function: 00000001404680A0',
	GetAllPartsInComplex = 'function: 0000000140467D40',
	GetAnyComplexItem = 'function: 0000000140468820',
	GetComplexBodyEntityID = 'function: 0000000140465870',
	GetComplexID = 'function: 0000000140465220',
	GetComplexIDForBodyEntity = 'function: 0000000140465A10',
	GetComplexItemsToDisconnectFromDeadComplexesWhenDeletingParts = 'function: 0000000140466FC0',
	GetComplexType = 'function: 00000001404656E0',
	GetComplexTypeForItem = 'function: 00000001404653A0',
	GetInteractableType = 'function: 0000000140464E70',
	GetMaxCountPerComplexInteractableType = 'function: 00000001404660C0',
	GetWarningPopupForSelectedItems = 'function: 00000001404669F0',
	IsComplexItem = 'function: 0000000140464CE0',
	IsItemOfInteractableType = 'function: 0000000140465000',
	SanitiseMultiSelectionOfComplexItems = 'function: 0000000140466490',
	SetComplexIDForMoveObject = 'function: 0000000140467A20',
	ShowDebugUIForPartSet = 'function: 00000001402E2EB0',
	['userdata: 00000001431C3268'] = true,
	ComplexInteractableType_None = 0,
	ComplexInteractableType_ChangingRoom = 1,
	ComplexInteractableType_Extra = 2,
	ComplexInteractableType_FoodOrDrinkPurchase = 3,
	ComplexInteractableType_RestaurantPurchase = 4,
	ComplexInteractableType_PicnicTable = 5,
	ComplexInteractableType_SouvenirDisplay = 6,
	ComplexInteractableType_SouvenirPurchase = 7,
	ComplexType_Invalid = 0,
	ComplexType_ChangingVillage = 1,
	ComplexType_Restaurant = 2,
	ComplexType_SouvenirShop = 3,
	ComplexType_Count = 4,
	_M = {
		_CYCLE = 'Reference to table: 00000000187F7340'
	},
	_NAME = 'game::luascript::api::complex',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187F7340'
	}
},

['Game::LuaScript::API::Content'] = {
	BuyNowLocString = '[OptionsMenu_BuyNow]',
	GetDLCProductIDForDLCID = 'function: 000000014046CF10',
	GetIsValidSingleProductID = 'function: 000000014046D150',
	GetStreamedIconForDLCProduct = 'function: 000000014046CB60',
	IsAllContentFree = 'function: 000000014046CDC0',
	IsContentFree = 'function: 000000014046CC70',
	IsContentNew = 'function: 000000014046D530',
	IsGameModded = 'function: 000000014046D450',
	OpenDefaultGameStorePage = 'function: 000000014046D310',
	['userdata: 00000001431C3280'] = true,
	DLC_BaseGame = 0,
	DLC_Preorder = 2,
	DLC_Deluxe = 4,
	DLC_PDLC1 = 8,
	DLC_PDLC2 = 16,
	DLC_AllStoreContent = 30,
	DLC_AllAvailableContent = 30,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C3040'
	},
	_NAME = 'game::luascript::api::content',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C3040'
	}
},

['Game::LuaScript::API::ControlsConfigAPI'] = {
	GetGamepad = 'function: 0000000140541990',
	GetGamepadDoubleClickTime = 'function: 0000000140541DA0',
	GetGamepadHoldTime = 'function: 0000000140541E70',
	GetGamepadShortcutType = 'function: 0000000140541CD0',
	GetMouse = 'function: 0000000140540F60',
	GetMouseDoubleClickTime = 'function: 0000000140541370',
	GetMouseHoldTime = 'function: 0000000140541440',
	GetMouseShortcutType = 'function: 00000001405412A0',
	SetGamepad = 'function: 0000000140541510',
	SetMouse = 'function: 0000000140540AE0',
	['userdata: 00000001431C3470'] = true,
	ShortcutType_Off = 0,
	ShortcutType_DoubleClick = 1,
	ShortcutType_Hold = 2,
	_M = {
		_CYCLE = 'Reference to table: 00000000187F6340'
	},
	_NAME = 'game::luascript::api::controlsconfigapi',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187F6340'
	}
},

['Game::LuaScript::API::CrowdSimulation'] = {
	AddPeepsToCrowdParticle = 'function: 0000000140460890',
	AreAnyParkEntrancesConnectedToASpawnPoint = 'function: 0000000140461600',
	ArePathSectionsPending = 'function: 00000001404618B0',
	CanBeReachedFromSpawnPoint = 'function: 0000000140460E70',
	CanReachSpawnPointFrom = 'function: 0000000140460D00',
	CompleteCrowdGoalPoolWorldSerialisationLoad = 'function: 0000000140461C30',
	CreateBakedDijkstraGraphsOnLoad = 'function: 0000000140461B30',
	CreatePropagationGraphsOnLoad = 'function: 00000001404619B0',
	GetParticlesStillAwaitingInitialAnim = 'function: 0000000140461D90',
	GetPathAreaEstimate = 'function: 00000001404617D0',
	IsEntityConnectedToSpawnPoint = 'function: 0000000140460FE0',
	IsPointOnPath = 'function: 0000000140461370',
	IsPositionConnectedToSpawnPoint = 'function: 0000000140461150',
	ParkEntranceExists = 'function: 00000001404616E0',
	RemovePeepsFromCrowdParticle = 'function: 0000000140460BC0',
	SetUpdateFlowWhileInactive = 'function: 0000000140460720',
	SetVoxelTerrain = 'function: 00000001404605D0',
	['userdata: 00000001431C3250'] = true,
	Age_Child = 0,
	Age_Teen = 1,
	Age_Adult = 2,
	GroupPos_MiddleCenter = 0,
	GroupPos_MiddleLeft = 1,
	GroupPos_MiddleRight = 2,
	GroupPos_FrontCenter = 3,
	GroupPos_FrontLeft = 4,
	GroupPos_FrontRight = 5,
	GroupPos_BackCenter = 6,
	GroupPos_BackLeft = 7,
	GroupPos_BackRight = 8,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C3280'
	},
	_NAME = 'game::luascript::api::crowdsimulation',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C3280'
	}
},

['Game::LuaScript::API::DebugAnimationData'] = {
	DrawChainDynamicsControls = 'function: 00000001402E2EB0',
	DrawFootplantControls = 'function: 00000001402E2EB0',
	DrawHeadlookControls = 'function: 00000001402E2EB0',
	DrawSpineFlexControls = 'function: 00000001402E2EB0',
	GetEntityAnimations = 'function: 00000001402E2EB0',
	GetModelBones = 'function: 000000014046DD40',
	['userdata: 00000001431C3288'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187F3F80'
	},
	_NAME = 'game::luascript::api::debuganimationdata',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187F3F80'
	}
},

['Game::LuaScript::API::DebugImGui'] = {
	TableGetSortSpecs = 'function: 00000001402E2EB0',
	['userdata: 00000001431C3290'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187F4080'
	},
	_NAME = 'game::luascript::api::debugimgui',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187F4080'
	}
},

['Game::LuaScript::API::DebugPrefabTools'] = {
	DebugEditableComponent = 'function: 00000001402E2EB0',
	GetEnumValues = 'function: 00000001402E2EB0',
	['userdata: 00000001431C3298'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187F4E40'
	},
	_NAME = 'game::luascript::api::debugprefabtools',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187F4E40'
	}
},

['Game::LuaScript::API::Editors'] = {
	AngleSnapDirection = 'function: 0000000140476740',
	CalculateBlueprintInfo = 'function: 00000001402E2EB0',
	Can3DRotateMoveObject = 'function: 0000000140475190',
	CopyToClipboard = 'function: 00000001404771C0',
	CreateCollectedSnapEdges = 'function: 0000000140472A50',
	CreateCylinder3DCursor = 'function: 0000000140475E20',
	CreateEntityBoxSelect2D = 'function: 00000001404724F0',
	CreateEntityCylinderSelect = 'function: 0000000140472680',
	CreateLineDistanceGUIShape = 'function: 0000000140473D90',
	CreateMultiSelectCursor2D = 'function: 0000000140472CA0',
	CreateMultiSelection = 'function: 00000001404728C0',
	CreateUndoOperationsHierarchy = 'function: 0000000140472350',
	GetFlumePlatformsInMoveObject = 'function: 0000000140474610',
	GetFromClipboard = 'function: 00000001404773A0',
	GetRideStairsInMoveObject = 'function: 0000000140474C10',
	GetSemanticIndexName = 'function: 00000001404758C0',
	GetTrackedRideStationsInMoveObject = 'function: 0000000140474960',
	HideCylinder3DCursor = 'function: 00000001404762C0',
	HideMultiSelectCursor2D = 'function: 0000000140473530',
	OverrideLights_ApartFrom = 'function: 0000000140475A70',
	RemoveLightOverrides = 'function: 0000000140475C20',
	SetNonModelHighlightStateEdgeColour = 'function: 0000000140476A20',
	SetNonModelHighlightStateFillColour = 'function: 0000000140476CE0',
	SetStairsHighlighted = 'function: 0000000140476FA0',
	SetTerrainActionOnMoveObject = 'function: 00000001404752C0',
	ShowCylinder3DCursor = 'function: 0000000140476170',
	ShowMultiSelectCursor2D = 'function: 00000001404733D0',
	TryGetBuildingEntityFromMoveObject = 'function: 0000000140474EC0',
	TryGetRideEntitiesFromMoveObject = 'function: 00000001404740B0',
	TryGetUtilityEntitiesFromMoveObject = 'function: 0000000140474360',
	UpdateCylinder3DCursor = 'function: 0000000140476410',
	UpdateMultiSelectCursor2D = 'function: 0000000140473690',
	['userdata: 00000001431C32A0'] = true,
	MultiSelectCursorType_Add = 0,
	MultiSelectCursorType_Subtract = 1,
	MultiSelectCursorType_New = 2,
	MultiSelectCursorType_Clear = 3,
	TerrainActionType_None = 0,
	TerrainActionType_FlattenGroundForPath = 1,
	TerrainActionType_Tunnel = 2,
	TerrainActionType_PathJoinPartFlatten = 3,
	_M = {
		_CYCLE = 'Reference to table: 00000000187F5000'
	},
	_NAME = 'game::luascript::api::editors',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187F5000'
	}
},

['Game::LuaScript::API::Facilities'] = {
	AddSouvenirShopDisplayCheckboxSelectedItem = 'function: 00000001404A6130',
	CanBeOpened = 'function: 000000014049BCD0',
	CleanlinessDirtyProp = 'function: 00000001404ACB60',
	CleanlinessFilthyProp = 'function: 00000001404ACBF0',
	CompleteWorldSerialisationLoad = 'function: 000000014049B2B0',
	EjectStaffMemberFromStaffBuilding = 'function: 00000001404AA580',
	EjectStaffMemberFromWorkshop = 'function: 00000001404AA6F0',
	ExpectsVendor = 'function: 00000001404A7290',
	GetAllDietarySatisfaction = 'function: 000000014049EDE0',
	GetAllFacilityEntityIDs = 'function: 00000001404A11D0',
	GetAllFacilityTypesAsString = 'function: 00000001404A1C30',
	GetAllPossibleFacilityTypes = 'function: 00000001404A1610',
	GetAllShopEntityIDs = 'function: 00000001404A7450',
	GetAllShopTagNames = 'function: 00000001404A1980',
	GetAllStaffBuildingEntityIDs = 'function: 00000001404A8C60',
	GetAverageTimeServing = 'function: 00000001404A82D0',
	GetCombinedDietarySatisfaction = 'function: 000000014049F140',
	GetCostForStaffBuildingCapcityChange = 'function: 00000001404A9E90',
	GetCostForWorkshopCapacityChange = 'function: 00000001404AA050',
	GetCurrentStaffResearchPoints = 'function: 00000001404AA860',
	GetDailyAverageWorkshopResearchPoints = 'function: 00000001404AAD40',
	GetDateShopBecameEmpty = 'function: 00000001404A7960',
	GetEntranceExitEntity = 'function: 00000001404A6980',
	GetExtraDietaryOptions = 'function: 000000014049EA30',
	GetExtraEffectData = 'function: 000000014049DB50',
	GetFacilitiesUsingShopInventory = 'function: 000000014049C4B0',
	GetFacilityCleanliness = 'function: 00000001404AB410',
	GetFacilityCleanlinessDisabled = 'function: 00000001404AB870',
	GetFacilityCost = 'function: 00000001404A2690',
	GetFacilityCounts = 'function: 00000001404A1DE0',
	GetFacilityDayOpened = 'function: 00000001404A2830',
	GetFacilityFinanceDataForToday = 'function: 00000001404A2990',
	GetFacilityType = 'function: 00000001404A6E80',
	GetFacilityTypeCount = 'function: 00000001404A6780',
	GetFacilityTypeCountYesterday = 'function: 00000001404A6880',
	GetFacilityTypeToString = 'function: 00000001404A6FF0',
	GetItemDietaryOptions = 'function: 000000014049E680',
	GetItemEffectData = 'function: 000000014049D4C0',
	GetLifetimeStats = 'function: 00000001404A2500',
	GetMostPopularFacilityYesterday = 'function: 00000001404A6480',
	GetMostProfitableFacilityYesterday = 'function: 00000001404A6600',
	GetNearestStaffBuilding = 'function: 00000001404A84C0',
	GetRunningCostForStaffBuildingCapcityChange = 'function: 00000001404AA210',
	GetRunningCostsForStaffBuilding = 'function: 00000001404AA3C0',
	GetRunningCostsForWorkshop = 'function: 00000001404AA3C0',
	GetShopAttendedLastMonth = 'function: 00000001404A7FC0',
	GetShopAttendedThisMonth = 'function: 00000001404A7E70',
	GetShopDietaryOptions = 'function: 000000014049E220',
	GetShopInventory = 'function: 000000014049C9A0',
	GetShopInventoryEntityID = 'function: 000000014049C320',
	GetShopInventoryItem = 'function: 000000014049CD50',
	GetShopInventoryItemIndexesForCategory = 'function: 000000014049CFE0',
	GetShopInventorySync = 'function: 000000014049F5D0',
	GetShopIsFairPrice = 'function: 000000014049F940',
	GetShopItemIndexInShop = 'function: 00000001404AC110',
	GetShopType = 'function: 00000001404A6D10',
	GetShopVendor = 'function: 00000001404A03F0',
	GetSouvenirShopDisplayAllSelectedItems = 'function: 00000001404A4800',
	GetSouvenirShopDisplayAutoFilled = 'function: 00000001404A4000',
	GetSouvenirShopDisplayCompatibleCategories = 'function: 00000001404A3250',
	GetSouvenirShopDisplayCompatibleItems = 'function: 00000001404A4F50',
	GetSouvenirShopDisplayIsItemSelected = 'function: 00000001404A4B60',
	GetSouvenirShopDisplaySelectedCategory = 'function: 00000001404A36C0',
	GetSouvenirShopDisplayShowVisuals = 'function: 00000001404A43E0',
	GetSouvenirShopDisplaySlotCount = 'function: 00000001404A4DF0',
	GetSouvenirShopDisplaySlotSelectedItem = 'function: 00000001404A57C0',
	GetStaffBuildingCapacity = 'function: 00000001404A91C0',
	GetStaffBuildingRestingStaffMembers = 'function: 00000001404A9CC0',
	GetTimeServingThisMonth = 'function: 00000001404A8180',
	GetTodaysWorkshopResearchPoints = 'function: 00000001404AAB10',
	GetToiletCleanlinessDisabled = 'function: 00000001404ABC50',
	GetTrivia = 'function: 00000001404A0B00',
	GetVendorShop = 'function: 00000001404A05E0',
	GetWorkshopCapacity = 'function: 00000001404A9B50',
	GetWorkshopEnrouteStaffMemebers = 'function: 00000001404A9810',
	GetWorkshopResearchingStaffMembers = 'function: 00000001404A9330',
	HasFacilityCleanliness = 'function: 00000001404AAF70',
	HasOpened = 'function: 000000014049B5A0',
	HasPriorityPassFacilities = 'function: 00000001404A2110',
	HasRadio = 'function: 00000001404A87C0',
	HasVendor = 'function: 00000001404A7120',
	IsConnectedToStaffPath = 'function: 00000001404AB150',
	IsDLCItemAvailableFromSave = 'function: 00000001404AC940',
	IsFacility = 'function: 00000001404A07B0',
	IsFacilityConnectedToPath = 'function: 000000014049C080',
	IsInformationBooth = 'function: 00000001404A2200',
	IsItemDisplayedInSouvenirShop = 'function: 00000001404A53E0',
	IsOpen = 'function: 000000014049B440',
	IsPhotoKiosk = 'function: 00000001404A2380',
	IsPickedUp = 'function: 00000001404A0940',
	IsShop = 'function: 00000001404A6B30',
	IsShopNotifiedAsUnmanned = 'function: 00000001404A7B10',
	IsSouvenirShopDisplay = 'function: 00000001404A3080',
	IsStaffBuilding = 'function: 00000001404A8980',
	IsStaffBuildingFull = 'function: 00000001404A9670',
	IsWorkshop = 'function: 00000001404A8AF0',
	ParkReset = 'function: 000000014049B390',
	RemoveSouvenirShopDisplayCheckboxSelectedItem = 'function: 00000001404A5E00',
	SetAllShopItemPrice = 'function: 000000014049FE40',
	SetCapcityOnStaffBuildingMoveObject = 'function: 00000001402E2EB0',
	SetFacilityCleanliness = 'function: 00000001404ABD40',
	SetFacilityCleanlinessDisabled = 'function: 00000001404AB580',
	SetIsChallengeMode = 'function: 00000001404AB2B0',
	SetOpen = 'function: 000000014049BE40',
	SetPriorityPassSold = 'function: 00000001404A2EB0',
	SetShopInventorySync = 'function: 000000014049F790',
	SetShopIsFairPrice = 'function: 000000014049FAD0',
	SetShopItemCustomName = 'function: 00000001404ABEF0',
	SetShopItemExtraUsed = 'function: 00000001404A0210',
	SetShopItemPrice = 'function: 000000014049FC80',
	SetShopItemProbabilityWeight = 'function: 00000001404AC340',
	SetShopItemSold = 'function: 00000001404A0050',
	SetShopNotifiedAsUnmanned = 'function: 00000001404A7CF0',
	SetShouldAutoHire = 'function: 000000014049B800',
	SetSouvenirShopDisplayAutoFilled = 'function: 00000001404A4230',
	SetSouvenirShopDisplaySelectedCategory = 'function: 00000001404A3B90',
	SetSouvenirShopDisplayShowVisuals = 'function: 00000001404A4540',
	SetSouvenirShopDisplaySlotSelectedItem = 'function: 00000001404A59A0',
	SetToiletCleanlinessDisabled = 'function: 00000001404AB960',
	SetWeightedShopItemProbabilityWeight = 'function: 00000001404AC510',
	ShouldAutoHire = 'function: 000000014049BA70',
	UpdateFacilityConnectedToPath = 'function: 000000014049C1E0',
	['userdata: 00000001431C3358'] = true,
	FacilityType_Hotel = 0,
	FacilityType_Restaurant = 1,
	FacilityType_InfoBooth = 2,
	FacilityType_Toilet = 3,
	FacilityType_FirstAid = 4,
	FacilityType_Shop = 5,
	FacilityType_StaffBuilding = 6,
	FacilityType_VendingMachine = 7,
	FacilityType_ATM = 8,
	FacilityType_Dryer = 9,
	FacilityType_Workshop = 10,
	FacilityType_ChangingRoom = 11,
	_M = {
		_CYCLE = 'Reference to table: 00000000187E8640'
	},
	_NAME = 'game::luascript::api::facilities',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187E8640'
	}
},

['Game::LuaScript::API::FlatRides'] = {
	AddFlatRide = 'function: 00000001404B0330',
	AddRideAndRecursiveSequenceItemsToMultiSelection = 'function: 00000001404B4640',
	CanDeleteRideSequenceOptionElement = 'function: 00000001404B30B0',
	CountRideSequenceEvents = 'function: 00000001404B4400',
	CreateFlatRideEditToken = 'function: 00000001404AFBA0',
	Debug_LoadFlatRide = 'function: 00000001404B7040',
	DeleteRideSequenceOptionElement = 'function: 00000001404B3280',
	GetAllRideVariants = 'function: 00000001404B5C90',
	GetCurrentRideVariant = 'function: 00000001404B5A80',
	GetCustomTexture = 'function: 00000001404B8260',
	GetFlatRideDatabaseName = 'function: 00000001404B00F0',
	GetFlatRideEditToken = 'function: 00000001404AFE90',
	GetFlatRidePrefabName = 'function: 00000001404B7F50',
	GetFlatRideSpatialEntities = 'function: 00000001404B6980',
	GetMaterialCustomisationData = 'function: 00000001404B72D0',
	GetRideIDForToken = 'function: 00000001404B6830',
	GetRideMusic = 'function: 00000001404B5280',
	GetRideOperations = 'function: 00000001404B12F0',
	GetRideSequenceIDs = 'function: 00000001404B1450',
	GetRideSequenceOptionElement = 'function: 00000001404B2650',
	GetRideTriggerSequence = 'function: 00000001404B3830',
	GetSemanticTagHasPattern = 'function: 00000001404B7540',
	GetVariantConstructionCost = 'function: 00000001404B6590',
	HasCustomTextureEntity = 'function: 00000001404B80B0',
	HasRideSequenceOptionWithID = 'function: 00000001404B2490',
	HasRideVariants = 'function: 00000001404B5920',
	HidePreviewVariants = 'function: 00000001404B6360',
	IsFlatRide = 'function: 00000001404B5590',
	IsLoadComplete = 'function: 00000001404B71D0',
	IsLoadingPreviewVariants = 'function: 00000001404B64A0',
	IsTriggerShow = 'function: 00000001404B5700',
	MoveFlatRide = 'function: 00000001404B0B70',
	ParkReset = 'function: 00000001404B8890',
	RemoveFlatRide = 'function: 00000001404B0940',
	ResetRideSequence = 'function: 00000001404B3EB0',
	SetCustomTexture = 'function: 00000001404B8460',
	SetFlexiColourForSemanticTag = 'function: 00000001404B7760',
	SetPatternForSemanticTag = 'function: 00000001404B7B40',
	SetRideDesignerOverride = 'function: 00000001404B4DC0',
	SetRideMusic = 'function: 00000001404B5070',
	SetRideMusicVolume = 'function: 00000001404B5420',
	SetRideName = 'function: 00000001404B4B80',
	SetRideSequenceIDs = 'function: 00000001404B1730',
	SetRideSequenceOptionElement = 'function: 00000001404B28B0',
	SetRideTriggerSequence = 'function: 00000001404B3A70',
	SetRideVariant = 'function: 00000001404B5FF0',
	SetupPreviewVariants = 'function: 00000001404B6220',
	StopRideTriggerSequences = 'function: 00000001404B4230',
	['userdata: 00000001431C3368'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187DCF40'
	},
	_NAME = 'game::luascript::api::flatrides',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187DCF40'
	}
},

['Game::LuaScript::API::Flumes'] = {
	AddEntrance = 'function: 000000014064A880',
	AddFlumePlatformSection = 'function: 0000000140646B20',
	AttachFlumeToPlatform = 'function: 0000000140648EB0',
	CalcBestSnappedMoveObjectTransform = 'function: 000000014064C7B0',
	CanRemoveFlumePlatformSection = 'function: 0000000140646F00',
	CreateFlumePlatformSectionEditToken = 'function: 0000000140646440',
	DeleteFlumePlatform = 'function: 0000000140647B70',
	DetachFlumeFromPlatform = 'function: 0000000140649030',
	GetEntranceEditToken = 'function: 000000014064A650',
	GetEntranceGateEntity = 'function: 000000014064A460',
	GetFlumePlatformEditToken = 'function: 0000000140646660',
	GetFlumePlatformEntities = 'function: 000000014064B870',
	GetFlumePlatformName = 'function: 000000014064BFA0',
	GetFlumePlatformOrSectionLocalGrid = 'function: 000000014064D140',
	GetFlumePlatformSectionEditToken = 'function: 00000001406468D0',
	GetFlumePlatformSectionEntities = 'function: 000000014064B9D0',
	GetFlumesForPlatform = 'function: 00000001406488B0',
	GetMainFlumePlatformForSection = 'function: 0000000140648610',
	GetNumFlumePlatformsInPark = 'function: 000000014064B7A0',
	GetPathJoinPartGroupIDForToken = 'function: 0000000140648080',
	GetPlatformForAttachedRide = 'function: 0000000140648AE0',
	GetPlatformForAttachedStation = 'function: 0000000140648CD0',
	GetPlatformIDForToken = 'function: 0000000140647DE0',
	GetPlatformMaterialFlexicolour = 'function: 000000014064C1F0',
	GetPlatformPurchasePrice = 'function: 000000014064B1D0',
	GetPlatformSectionIDForToken = 'function: 0000000140647F30',
	GetQueueCrowdGoal = 'function: 000000014064A1C0',
	GetTotalPlatformPriceWithFlumes = 'function: 000000014064B3B0',
	HasConnectedQueue = 'function: 0000000140649FD0',
	HasEntranceGate = 'function: 0000000140649D50',
	HasPlatformEverOpened = 'function: 000000014064CA90',
	IsFlumePlatform = 'function: 00000001406481B0',
	IsFlumePlatformOrSection = 'function: 0000000140648490',
	IsFlumePlatformSection = 'function: 0000000140648320',
	IsOnlyFlumePlatformSectionInPlatform = 'function: 0000000140649170',
	IsPlatformEditable = 'function: 0000000140649460',
	MoveEntrance = 'function: 000000014064AE80',
	MoveFlumePlatform = 'function: 0000000140647410',
	RemoveEntrance = 'function: 000000014064ABD0',
	RemoveFlumePlatformSection = 'function: 0000000140647260',
	SetAllPlatformsEditable = 'function: 0000000140649B00',
	SetFlumePlatformName = 'function: 000000014064BBF0',
	SetPlatformEditable = 'function: 00000001406498A0',
	SetPlatformMaterialFlexicolourForSemanticTag = 'function: 000000014064C460',
	SetShouldPlatformAutoHire = 'function: 000000014064CEF0',
	ShouldPlatformAutoHire = 'function: 000000014064CCC0',
	['userdata: 00000001431C35F8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187DF580'
	},
	_NAME = 'game::luascript::api::flumes',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187DF580'
	}
},

['Game::LuaScript::API::Franchise'] = {
	AcceptApplication = 'function: 00000001404E6320',
	AcceptInvitation = 'function: 00000001404E71A0',
	AddFriend = 'function: 00000001404FAFD0',
	AddParkCollaborator = 'function: 00000001404F8880',
	ApplyToFranchise = 'function: 00000001404E5E40',
	AssignParkCollaborationGroupManager = 'function: 00000001404F8E40',
	BlockPlayer = 'function: 00000001404FC010',
	BuildOnlineSandboxPark = 'function: 00000001404F3C70',
	BuildPark = 'function: 00000001404E95D0',
	CancelFranchiseApplication = 'function: 00000001404E60B0',
	CancelFranchiseOwnerClaim = 'function: 00000001404E8760',
	CancelInFlightRequests = 'function: 00000001404EF140',
	CancelInvitation = 'function: 00000001404E6F30',
	CancelParkCollaborationGroupManagerClaim = 'function: 00000001404F93B0',
	CheckProfanity = 'function: 00000001404FEA90',
	ClaimFranchiseOwner = 'function: 00000001404E8500',
	ClaimParkCollaborationGroupManager = 'function: 00000001404F9120',
	ClearImage = 'function: 00000001404E3720',
	ConfirmParkCollaboration = 'function: 00000001404F85E0',
	ConvertTimeToUnixTimeStamp = 'function: 00000001404ED100',
	CopyPark = 'function: 00000001404F2FD0',
	CreateForumPost = 'function: 00000001404EB490',
	CreateInvitation = 'function: 00000001404E6CC0',
	CreateNewFranchise = 'function: 00000001404E4660',
	DeclineApplication = 'function: 00000001404E6590',
	DeclineInvitation = 'function: 00000001404E7400',
	DeleteForumPost = 'function: 00000001404EBF40',
	DeleteForumPostReply = 'function: 00000001404EC6A0',
	DeleteFranchise = 'function: 00000001404EABB0',
	DeletePark = 'function: 00000001404EA930',
	DeleteParkVersion = 'function: 00000001404F3430',
	DeleteStoredNotification = 'function: 0000000140502F70',
	DisconnectIRC = 'function: 00000001404E22B0',
	DownloadAndCacheImage = 'function: 00000001404F28A0',
	DownloadAndCachePark = 'function: 00000001404F2580',
	DownloadImage = 'function: 00000001404E2360',
	DownloadPark = 'function: 00000001404F2260',
	EditForumPost = 'function: 00000001404EBA80',
	EditForumPostReply = 'function: 00000001404EC1E0',
	EndEditSession = 'function: 0000000140502A30',
	EnsureServerConfig = 'function: 00000001404ED510',
	EnsureServerResources = 'function: 00000001404ED230',
	GetActivityLog = 'function: 00000001404EC940',
	GetAllFranchises = 'function: 00000001404E3840',
	GetBlockedPlayers = 'function: 00000001404FB6F0',
	GetCollaborativeParks = 'function: 00000001404EF1F0',
	GetCrossPlayEnabled = 'function: 00000001404EEA40',
	GetCurrentFranchise = 'function: 00000001404EDF10',
	GetCurrentParkID = 'function: 00000001404EDB60',
	GetCurrentUser = 'function: 00000001404ECBA0',
	GetDefaultFranchiseMap = 'function: 00000001404E0F60',
	GetEntitlements = 'function: 00000001404FFED0',
	GetForumPosts = 'function: 00000001404EB0A0',
	GetFranchiseApplicants = 'function: 00000001404E3CC0',
	GetFranchiseInvitees = 'function: 00000001404E3F20',
	GetFranchiseLeaderboard = 'function: 00000001404F9B60',
	GetFranchiseMembers = 'function: 00000001404E4180',
	GetFranchiseMembersPublic = 'function: 00000001404E43F0',
	GetFranchiseMembership = 'function: 00000001404EEEE0',
	GetFranchiseOverworld = 'function: 00000001404E9370',
	GetFranchiseProfile = 'function: 00000001404FEE30',
	GetFranchiseStatistics = 'function: 00000001404FF090',
	GetFranchiseTagLocString = 'function: 00000001404EE820',
	GetFranchiseTags = 'function: 00000001404EE030',
	GetFriends = 'function: 00000001404FA6B0',
	GetHatHairForAvatarHairModel = 'function: 0000000140503180',
	GetLeaderboard = 'function: 00000001404F9FC0',
	GetLeaderboardSummary = 'function: 00000001404FA1E0',
	GetMemberApplications = 'function: 00000001404E6800',
	GetMemberInvitations = 'function: 00000001404E6A60',
	GetParkCollaborators = 'function: 00000001404F8350',
	GetParkLeaderboardEntry = 'function: 00000001404F9D70',
	GetParkState = 'function: 00000001404F5420',
	GetParkTagDefinitions = 'function: 00000001404F6ED0',
	GetParkTagValueDefinitions = 'function: 00000001404F75D0',
	GetParkVersionList = 'function: 00000001404EF4D0',
	GetParkVersionListOverride = 'function: 00000001402E2EB0',
	GetPastLeaderboardPark = 'function: 00000001404FA490',
	GetPlayerProfile = 'function: 00000001404FF2F0',
	GetPlayerProfiles = 'function: 00000001404FF580',
	GetServerConfig = 'function: 00000001404ED810',
	GetServerDefinedResources = 'function: 00000001404E34D0',
	GetSignedUpForNewsletter = 'function: 00000001404EEC90',
	GetStoredNotifications = 'function: 0000000140502D10',
	GetTime = 'function: 00000001404ED010',
	GetTrophyCabinet = 'function: 00000001404FFC70',
	HeartbeatEditSession = 'function: 0000000140502750',
	InitialisePlayer = 'function: 00000001404E26A0',
	LeaveFranchise = 'function: 00000001404E7660',
	LeaveParkCollaboration = 'function: 00000001404F98D0',
	LoadOnlineParkFromFile = 'function: 00000001402E2EB0',
	LockPark = 'function: 00000001404F7B10',
	MuteFranchiseMember = 'function: 00000001404E8E90',
	OwnerResign = 'function: 00000001404E78C0',
	RefreshFranchiseOwnerClaim = 'function: 00000001404E89C0',
	RefreshParkCollaborationGroupManagerClaim = 'function: 00000001404F9640',
	RemoveFranchiseMember = 'function: 00000001404E8C20',
	RemoveFriend = 'function: 00000001404FB230',
	RemoveParkCollaborator = 'function: 00000001404F8B60',
	ReportContent = 'function: 00000001404FC530',
	ReserveJoinCode = 'function: 00000001404EAE10',
	RevokeParkLock = 'function: 00000001404F8090',
	RollbackPark = 'function: 00000001404F39A0',
	SaveCachedPark = 'function: 00000001404F2BC0',
	SearchForFranchise = 'function: 00000001404E39F0',
	SearchPlayers = 'function: 00000001404FB4A0',
	SetCrossPlayEnabled = 'function: 00000001404EEB30',
	SetCurrentParkID = 'function: 00000001404EDA30',
	SetSignedUpForNewsletter = 'function: 00000001404EED80',
	SignInFranchise = 'function: 00000001404EDC50',
	SignInUser = 'function: 00000001404E1D90',
	SignOutFranchise = 'function: 00000001404EDDB0',
	SignOutUser = 'function: 00000001404E2020',
	StartEditSession = 'function: 00000001405024C0',
	SubmitLatestParkVersion = 'function: 00000001404F3710',
	SyncWithServerTime = 'function: 00000001404ECD90',
	UnblockPlayer = 'function: 00000001404FC2A0',
	UnlockPark = 'function: 00000001404F7DD0',
	UnmuteFranchiseMember = 'function: 00000001404E9100',
	UpdateAvatar = 'function: 0000000140500130',
	UpdateCapabilities = 'function: 00000001404E7BD0',
	UpdateFranchise = 'function: 00000001404FD880',
	UpdateFranchiseCustomisation = 'function: 0000000140501060',
	UpdateParkSettings = 'function: 00000001404F56B0',
	UpdateProfileCustomisation = 'function: 00000001405007A0',
	UpdateProfileSettings = 'function: 0000000140501920',
	UploadPark = 'function: 00000001404EF760',
	['userdata: 00000001431C3380'] = true,
	ConnectionChangedReason_SignIn = 0,
	ConnectionChangedReason_SignOut = 1,
	ConnectionChangedReason_Disconnect = 2,
	ConnectionChangedReason_VersionForbidden = 3,
	Ecosystem_Global = 1,
	Ecosystem_PsnOnly = 2,
	Ecosystem_XblOnly = 3,
	GameNetwork_Frontier = 1,
	GameNetwork_XboxLive = 2,
	GameNetwork_PSN = 3,
	GameNetwork_Epic = 4,
	GameNetwork_Steam = 5,
	ProfilePrivacy_Public = 0,
	ProfilePrivacy_Private = 1,
	ProfilePrivacy_FriendsOnly = 2,
	ProfilePrivacy_FranchiseOnly = 3,
	ProfilePrivacy_FriendsAndFranchiseOnly = 4,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C3F80'
	},
	_NAME = 'game::luascript::api::franchise',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C3F80'
	}
},

['Game::LuaScript::API::GameAPI'] = {
	DebugUIImage = 'function: 00000001402E2EB0',
	GetCurrentGameComplexityPercentage = 'function: 00000001405181D0',
	GetCurrentGameComplexityPercentageUnclamped = 'function: 00000001405182E0',
	GetCurrentGameComplexityScoreClamped = 'function: 00000001405184A0',
	GetCurrentLocale = 'function: 0000000140517DE0',
	GetOnlineProfileIDForGameOwner = 'function: 0000000140518650',
	GetPS4AuthCodeForGameOwner = 'function: 00000001402E2EB0',
	GetPS4ClientID = 'function: 00000001402E2EB0',
	GetPS4IDTokenForGameOwner = 'function: 00000001402E2EB0',
	GetPublisherRegion = 'function: 0000000140517CC0',
	GetXboxUserHashForGameOwner = 'function: 00000001402E2EB0',
	IsUsingStagingData = 'function: 0000000140517BC0',
	OverComplexityLimit = 'function: 00000001405180C0',
	ReleaseDebugUIImage = 'function: 00000001402E2EB0',
	SHA1Hash = 'function: 0000000140518770',
	SetSlowLoaderEnabled = 'function: 0000000140517F30',
	['userdata: 00000001431C3390'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C4880'
	},
	_NAME = 'game::luascript::api::gameapi',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C4880'
	}
},

['Game::LuaScript::API::GameAudio'] = {
	AddLakeEditAudioOperation = 'function: 0000000140522E70',
	AmbienceFavouriteChange = 'function: 0000000140529DF0',
	AvatarVoiceChanged = 'function: 00000001405211B0',
	CanCustomiseAmbience = 'function: 00000001402E2EB0',
	CanCustomiseMusic = 'function: 00000001405294A0',
	CanCustomiseTriggeredAudio = 'function: 000000014052A7C0',
	CancelDialogueRequest = 'function: 000000014052F4C0',
	CashSpentPopup = 'function: 0000000140524900',
	CashSpentPopupLoopBegin = 'function: 0000000140524D60',
	CashSpentPopupLoopEnd = 'function: 0000000140524F90',
	ChangeCamera = 'function: 0000000140523800',
	CommitOptionChanges = 'function: 0000000140522520',
	CreateDemolishOperation = 'function: 0000000140532050',
	CreatePlacementOperation = 'function: 0000000140531C40',
	CreateTrackEditOperation = 'function: 0000000140532300',
	CreateVolumeRoundingOperation = 'function: 00000001405326F0',
	CurrentMusicHighlighted = 'function: 00000001402E2EB0',
	FlattenLandscapeAudio = 'function: 0000000140522930',
	GetCurrentMusicEvent = 'function: 0000000140528CF0',
	GetCurrentMusicEventIndex = 'function: 0000000140529030',
	GetCurrentMusicEventNoSuffix = 'function: 0000000140528E90',
	GetCurrentOptions = 'function: 00000001405212F0',
	GetCurrentPitch = 'function: 000000014052BC90',
	GetCurrentPlacementModulationType = 'function: 000000014052FFA0',
	GetCurrentVolume = 'function: 000000014052BEC0',
	GetCustomMusicOverride = 'function: 0000000140526C60',
	GetCustomMusicType = 'function: 0000000140529230',
	GetCustomTrackNameFromUIName = 'function: 000000014052C3E0',
	GetCustomTrigger = 'function: 000000014052BA70',
	GetDisplayNameForDialogueCharacter = 'function: 000000014052F0F0',
	GetDisplayNameForUserAudioEvent = 'function: 0000000140528860',
	GetDropDownTab = 'function: 0000000140529930',
	GetIconForDialogueCharacter = 'function: 000000014052F2B0',
	GetMusicVolume = 'function: 0000000140527090',
	GetPlaceableAmbience = 'function: 000000014052A5C0',
	GetPlaceableAmbienceIndex = 'function: 00000001402E2EB0',
	GetPlacementAffectsSoundtrackFromEntity = 'function: 00000001405312F0',
	GetPlacementCustomEventFromEntity = 'function: 00000001405314B0',
	GetPlacementFlagsFromEntity = 'function: 0000000140531690',
	GetPlacementMaterialFromEntity = 'function: 0000000140531830',
	GetPlacementSizeFromEntity = 'function: 00000001405319D0',
	GetScenarioDialogueCharacters = 'function: 000000014052DCD0',
	GetScenarioDialogueLines = 'function: 000000014052E2B0',
	GetSequencerEvent = 'function: 0000000140534610',
	GetShootingDropDownTab = 'function: 000000014052D960',
	GetShootingSoundForRide = 'function: 000000014052D410',
	GetShopRadioDisabled = 'function: 000000014052CA60',
	GetSpeakerEvent = 'function: 0000000140534260',
	GetSpeakerPitch = 'function: 0000000140534D30',
	GetSpeakerRepeat = 'function: 0000000140535550',
	GetSpeakerType = 'function: 0000000140533DD0',
	GetSpeakerVolume = 'function: 0000000140535140',
	GetSupportMediaFoundation = 'function: 00000001405276C0',
	GetUINameFromCustomTrackName = 'function: 000000014052C0F0',
	GunFavouriteChange = 'function: 0000000140529FD0',
	InShootingRideCamera = 'function: 000000014052DB90',
	InitCamera = 'function: 0000000140523740',
	InvalidTerrainEditAudio = 'function: 0000000140523360',
	IsPlacableMusicSpeaker = 'function: 0000000140529640',
	IsPlacementMaterialPool = 'function: 0000000140530090',
	IsUserAudio = 'function: 0000000140527310',
	ListFavouriteAmbience = 'function: 00000001405281E0',
	ListFavouriteMusic = 'function: 0000000140527820',
	ListFavouriteSFXTriggers = 'function: 0000000140527F40',
	ListFavouriteUserAudio = 'function: 0000000140527CA0',
	ListFavouriteUserGuns = 'function: 0000000140325680',
	ListSequencersForSpeaker = 'function: 0000000140527AC0',
	ListUserAudioFiles = 'function: 0000000140528480',
	ListenToSpeakerEvent = 'function: 00000001405347C0',
	MusicFavouriteChange = 'function: 0000000140529A00',
	MuteRumble = 'function: 0000000140520B50',
	NotifyInitialGuestsLoadedIn = 'function: 00000001402E2EB0',
	OnGuestSelected = 'function: 0000000140525280',
	OnTerrainEditModeEntered = 'function: 00000001405234A0',
	OnTerrainEditModeExited = 'function: 00000001402E2EB0',
	OnTerrainEditStopped = 'function: 0000000140523220',
	PaintLandscapeAudio = 'function: 0000000140522D20',
	PerformPlacement = 'function: 0000000140532990',
	PlacementAuxiliaryPlace = 'function: 00000001405301D0',
	PlacementModulationLimitHit = 'function: 00000001405307C0',
	PlacementModulationNinetyDegreeRotation = 'function: 00000001405308F0',
	PlacementModulationSnapOff = 'function: 0000000140530D40',
	PlacementModulationSnapTo = 'function: 0000000140530C10',
	PlacementModulationStep = 'function: 0000000140530A20',
	PlacementPaintStyle = 'function: 0000000140530E70',
	PlacementPreviewHighlight = 'function: 00000001405310B0',
	PostPlacementInvalidEvent = 'function: 0000000140530410',
	PullLandscapeAudio = 'function: 00000001405227E0',
	PushLandscapeAudio = 'function: 0000000140522690',
	RefreshUserAudioFiles = 'function: 00000001405277A0',
	ReportParkManagementScreenOpen = 'function: 000000014032E120',
	RequestScenarioDialogueLines = 'function: 000000014052E770',
	RoughenLandscapeAudio = 'function: 0000000140522BD0',
	SendGuestEvent = 'function: 00000001405251C0',
	SendPathPlacementEventRTPC = 'function: 00000001402E2EB0',
	SendPathPlacementRTPC = 'function: 00000001402E2EB0',
	SendPathPlacementSwitch = 'function: 00000001402E2EB0',
	SendPlacementEvent = 'function: 00000001402E2EB0',
	SendPlacementEventEntity = 'function: 0000000140524840',
	SendStaffInfoEmote = 'function: 000000014052C920',
	SendStopTestSequencerRequest = 'function: 00000001402E2EB0',
	SendTestMusicRequest = 'function: 00000001402E2EB0',
	SendTestSequencerRequest = 'function: 00000001402E2EB0',
	SendUnplacementEventEntity = 'function: 0000000140524840',
	SetAmbienceVolume = 'function: 000000014052A4D0',
	SetAudioOptions = 'function: 000000014051E4B0',
	SetAvatarVoiceIndex = 'function: 0000000140521010',
	SetCustomMusic = 'function: 0000000140528B20',
	SetCustomMusicOverride = 'function: 00000001405255C0',
	SetDropDownTab = 'function: 00000001405297F0',
	SetFirstPersonCameraGuest = 'function: 00000001405253C0',
	SetInOptionsMenu = 'function: 0000000140520D30',
	SetInParkManagementMenu = 'function: 0000000140520EA0',
	SetMusicSpeakerEffect = 'function: 0000000140527220',
	SetMusicVolume = 'function: 0000000140526ED0',
	SetPlaceableAmbienceList = 'function: 000000014052A1A0',
	SetPlaceableAmbienceListExcludingUnownedDLC = 'function: 000000014052A350',
	SetPlaceableAmbienceOverride = 'function: 00000001402E2EB0',
	SetPlacementModulationMaterialComposition = 'function: 000000014052F850',
	SetPlacementModulationPosition = 'function: 000000014052FA80',
	SetPlacementModulationSpeed = 'function: 000000014052FC60',
	SetPrimaryBackgroundType = 'function: 00000001402E2EB0',
	SetSceneryBrushPosition = 'function: 0000000140533A10',
	SetSceneryBrushSpeed = 'function: 0000000140532F90',
	SetSceneryBrushWidth = 'function: 0000000140533310',
	SetShootingDropDownTab = 'function: 000000014052DA30',
	SetShootingSoundForRide = 'function: 000000014052D750',
	SetShopRadioEnabled = 'function: 000000014052CBF0',
	SetSpeakerEvent = 'function: 0000000140533F40',
	SetSpeakerPitch = 'function: 0000000140534B00',
	SetSpeakerRepeat = 'function: 0000000140535320',
	SetSpeakerType = 'function: 0000000140533BA0',
	SetSpeakerVolume = 'function: 0000000140534F10',
	SetState = 'function: 0000000140520910',
	SetTriggeredEventOnEntity = 'function: 000000014052AB60',
	SetTriggeredEventPitchOnEntity = 'function: 000000014052AEB0',
	SetTriggeredEventRepeatOnEntity = 'function: 000000014052B490',
	SetTriggeredEventVolumeOnEntity = 'function: 000000014052B1A0',
	SetTriggeredEventsList = 'function: 000000014052A9C0',
	SmoothLandscapeAudio = 'function: 0000000140522A80',
	StartInvalidModulation = 'function: 0000000140530540',
	StartPlacementModulation = 'function: 000000014052F630',
	StartSceneryBrush = 'function: 0000000140532C10',
	StartSecurityCamMoveSounds = 'function: 000000014052CE50',
	StopInvalidModulation = 'function: 0000000140530680',
	StopPlacementModulation = 'function: 000000014052FE40',
	StopSceneryBrush = 'function: 0000000140533690',
	StopSecurityCamMoveSounds = 'function: 000000014052CFD0',
	StopSpeakerEvent = 'function: 00000001405349F0',
	TestTriggerOnEntity = 'function: 000000014052B780',
	TriggerFavouriteChange = 'function: 0000000140529C10',
	UpdateLakePlacementAudio = 'function: 0000000140523560',
	UpdateSecurityCamMoveSounds = 'function: 000000014052D140',
	['userdata: 00000001431C33E8'] = true,
	AudioParkBrushMode_Scenery = 0,
	AudioParkBrushMode_Demolish = 1,
	AudioParkBrushMode_ZoneAdd = 2,
	AudioParkBrushMode_ZoneRemove = 3,
	AudioParkBrushMode_PathPoolModify = 4,
	PlacementMaterial_Infrastructure_PowerCable = 0,
	PlacementMaterial_Infrastructure_PowerNode = 1,
	PlacementMaterial_Infrastructure_WaterNode = 2,
	PlacementMaterial_Infrastructure_WaterPipe = 3,
	PlacementMaterial_PathPool_None = 4,
	PlacementMaterial_PathPool_Asphalt = 5,
	PlacementMaterial_PathPool_Brick = 6,
	PlacementMaterial_PathPool_Gravel = 7,
	PlacementMaterial_PathPool_Metal = 8,
	PlacementMaterial_PathPool_MetalRail = 9,
	PlacementMaterial_PathPool_Natural = 10,
	PlacementMaterial_PathPool_NoRails = 11,
	PlacementMaterial_PathPool_PoolTile = 12,
	PlacementMaterial_PathPool_PoolWood = 13,
	PlacementMaterial_PathPool_Stone = 14,
	PlacementMaterial_PathPool_Vinyl = 15,
	PlacementMaterial_PathPool_Wood = 16,
	PlacementMaterial_PathPool_WoodRail = 17,
	PlacementMaterial_Special_FlumePlatform = 41,
	PlacementMaterial_Special_Guest = 42,
	PlacementMaterial_Special_MultiItem = 43,
	PlacementMaterial_Special_PathPoolCut = 44,
	PlacementMaterial_Special_Staff = 45,
	PlacementMaterial_TrackedRide_Hybrid = 46,
	PlacementMaterial_TrackedRide_Metal = 47,
	PlacementMaterial_TrackedRide_Plastic = 48,
	PlacementMaterial_TrackedRide_Pylon = 49,
	PlacementMaterial_TrackedRide_Station = 50,
	PlacementMaterial_TrackedRide_Stone = 51,
	PlacementMaterial_TrackedRide_WaterSlide = 52,
	PlacementMaterial_TrackedRide_WaterTrack = 53,
	PlacementMaterial_TrackedRide_Wood = 54,
	PlacementModulationType_FreeMovement = 0,
	PlacementModulationType_Rotation = 1,
	PlacementModulationType_Scale = 2,
	PlacementModulationType_TrackCurve = 3,
	PlacementModulationType_TrackSlope = 4,
	PlacementModulationType_Translation = 5,
	SpeakerExpression_Angry = 0,
	SpeakerExpression_Bored = 1,
	SpeakerExpression_Confident = 2,
	SpeakerExpression_Confused = 3,
	SpeakerExpression_Contemptuous = 4,
	SpeakerExpression_Disgusted = 5,
	SpeakerExpression_Fearful = 6,
	SpeakerExpression_Happy = 7,
	SpeakerExpression_Sad = 8,
	SpeakerExpression_Shocked = 9,
	SpeakerType_Ambience = 0,
	SpeakerType_Music = 1,
	SpeakerType_SFX = 2,
	TrackEditType_ParameterChange = 0,
	TrackEditType_PieceTypeChange = 1,
	TrackEditType_Smooth = 2,
	DialogueClientContext_Career = 3,
	_M = {
		_CYCLE = 'Reference to table: 00000000187DFF00'
	},
	_NAME = 'game::luascript::api::gameaudio',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187DFF00'
	}
},

['Game::LuaScript::API::GameCursor3D'] = {
	Create2DCursorReticule = 'function: 0000000140561580',
	Create3DCursor = 'function: 0000000140560A20',
	Hide2DCursorReticule = 'function: 0000000140561FD0',
	Hide3DCursor = 'function: 0000000140560E40',
	Show2DCursorReticule = 'function: 0000000140561E70',
	Show3DCursor = 'function: 0000000140560CE0',
	Update2DCursorReticule = 'function: 0000000140561A50',
	Update3DCursor = 'function: 0000000140560FA0',
	['userdata: 00000001431C3430'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187E01C0'
	},
	_NAME = 'game::luascript::api::gamecursor3d',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187E01C0'
	}
},

['Game::LuaScript::API::GameVolatileConfigAPI'] = {
	AddRecentlyUsedBrowserBlueprintItem = 'function: 0000000140553010',
	AddRecentlyUsedBrowserItem = 'function: 0000000140552CA0',
	AddRecentlyUsedBrowserUGCItem = 'function: 0000000140553380',
	AddRecentlyUsedFlexiColour = 'function: 0000000140552A80',
	GetAdvancedMoveAlignmentType = 'function: 00000001405469D0',
	GetAdvancedMoveToggle = 'function: 00000001405467F0',
	GetAdvancedMoveToggleUpdated = 'function: 00000001405468E0',
	GetAlignToSurfaceBuildings = 'function: 0000000140545E40',
	GetAlignToSurfaceOfBelongingOrPlatformOwner = 'function: 0000000140546020',
	GetAlignToSurfaceScenery = 'function: 0000000140545D50',
	GetAlignToSurfaceShops = 'function: 0000000140545F30',
	GetAllowAutoStack = 'function: 00000001405458A0',
	GetAllowSupportsOnPaths = 'function: 0000000140549330',
	GetAutoAddPartToBuildings = 'function: 0000000140546110',
	GetAutosaveInterval = 'function: 0000000140549420',
	GetBoundaryHighlightModeIndex = 'function: 0000000140546720',
	GetBreakdownsEnabled = 'function: 0000000140548CA0',
	GetBrowserRows = 'function: 00000001405510E0',
	GetBrowserView = 'function: 0000000140551380',
	GetDefaultToBoundingBoxAlignment = 'function: 0000000140548AC0',
	GetDistanceSnapEnabled = 'function: 00000001405456C0',
	GetDistanceSnapGridSize = 'function: 0000000140545430',
	GetDistanceSnapSize = 'function: 0000000140545360',
	GetEnableCoasterObstruction = 'function: 0000000140547FA0',
	GetEnableFlatRideObstruction = 'function: 0000000140548090',
	GetEnableFlumeObstruction = 'function: 0000000140548180',
	GetEnablePathObstruction = 'function: 0000000140548360',
	GetEnablePoolObstruction = 'function: 0000000140548450',
	GetEnableSceneryObstruction = 'function: 0000000140547EB0',
	GetEnableTerrainObstruction = 'function: 0000000140548270',
	GetEnableTerrainWaterObstruction = 'function: 0000000140548540',
	GetEnableVerticalGrid = 'function: 000000014032E210',
	GetFacilityCleanlinessEnabled = 'function: 0000000140548D90',
	GetFlatRideCamMode = 'function: 0000000140544F10',
	GetFlumeGlobalFrictionEnabled = 'function: 000000014032E210',
	GetFlumeGlobalFrictionValue = 'function: 00000001405497A0',
	GetGlobeFilterType = 'function: 0000000140547A20',
	GetHideAutosaves = 'function: 0000000140547AF0',
	GetLitterEnabled = 'function: 0000000140548F70',
	GetPathSettingsHeight = 'function: 00000001405450F0',
	GetRandomPitchMax = 'function: 00000001405463C0',
	GetRandomPitchMin = 'function: 00000001405462F0',
	GetRandomScaleMax = 'function: 0000000140546650',
	GetRandomScaleMin = 'function: 0000000140546580',
	GetRecentlyUsedBrowserBlueprintItems = 'function: 0000000140552260',
	GetRecentlyUsedBrowserItems = 'function: 0000000140551E50',
	GetRecentlyUsedFlexiColours = 'function: 0000000140551AF0',
	GetRecentlyUsedUGCItems = 'function: 0000000140552670',
	GetReputationEnabled = 'function: 00000001405494F0',
	GetRideDeclineEnabled = 'function: 0000000140547CD0',
	GetRotationSnapEnabled = 'function: 00000001405455D0',
	GetRotationSnapSize = 'function: 0000000140545290',
	GetScaleSnapEnabled = 'function: 00000001405496B0',
	GetScaleSnapSize = 'function: 00000001405495E0',
	GetSecurityFeaturesEnabled = 'function: 0000000140547DC0',
	GetSeenDLCProducts = 'function: 0000000140548720',
	GetShouldFlattenTerrain = 'function: 00000001405457B0',
	GetShowDLCItems = 'function: 0000000140548630',
	GetShowExtraInterchangeableTrains = 'function: 00000001405489D0',
	GetStickToSurfaceBuildings = 'function: 0000000140545A80',
	GetStickToSurfaceOfBelongingOrPlatformOwner = 'function: 0000000140545C60',
	GetStickToSurfaceScenery = 'function: 0000000140545990',
	GetStickToSurfaceShops = 'function: 0000000140545B70',
	GetTerrainSettingsHeight = 'function: 00000001405451C0',
	GetTestDummiesEnabled = 'function: 0000000140549150',
	GetTestOffTrackEnabled = 'function: 0000000140549240',
	GetToiletCleanlinessEnabled = 'function: 0000000140548E80',
	GetTrackEditAlignDistance = 'function: 0000000140547620',
	GetTrackEditAlignEnabled = 'function: 0000000140547530',
	GetTrackEditAngleSnapToggle = 'function: 0000000140546BB0',
	GetTrackEditAngleSnapValue = 'function: 0000000140546AE0',
	GetTrackEditCameraFixedPitch = 'function: 0000000140546D70',
	GetTrackEditCameraMode = 'function: 0000000140546CA0',
	GetTrackEditFalloffModifier = 'function: 00000001405476F0',
	GetTrackEditHeightMarkerMode = 'function: 0000000140547040',
	GetTrackEditHorizontalModifier = 'function: 0000000140547800',
	GetTrackEditShowTrackDirectionArrows = 'function: 0000000140547150',
	GetTrackEditSmoothingDirection = 'function: 0000000140547420',
	GetTrackEditSmoothingStrength = 'function: 0000000140547350',
	GetTrackEditSmoothingType = 'function: 0000000140547240',
	GetTrackEditTrackRelativeDragging = 'function: 0000000140546F50',
	GetTrackEditTunnelling = 'function: 0000000140546E60',
	GetTrackEditVerticalModifier = 'function: 0000000140547910',
	GetTrackedRideCamMode = 'function: 0000000140545000',
	GetTrackedRideGlobalFrictionEnabled = 'function: 00000001402E2FE0',
	GetTrackedRideGlobalFrictionValue = 'function: 00000001405497A0',
	GetTutorialDismissed = 'function: 0000000140556800',
	GetTutorialHideAll = 'function: 0000000140547BE0',
	GetUseRandomRotation = 'function: 0000000140546200',
	GetUseRandomScale = 'function: 0000000140546490',
	GetUseSnapPointUpDirection = 'function: 00000001405488E0',
	GetUseSnapPoints = 'function: 00000001405487F0',
	GetUseStaffHappiness = 'function: 0000000140548BB0',
	GetVerticalGridSize = 'function: 0000000140545500',
	GetVomitEnabled = 'function: 0000000140549060',
	LoadBoundaryConfig = 'function: 0000000140556B60',
	LoadMultiSelectConfig = 'function: 0000000140555AD0',
	LoadQuickToolsConfig = 'function: 0000000140554780',
	LoadTerrainConfig = 'function: 00000001405536F0',
	SaveBoundaryConfig = 'function: 0000000140557180',
	SaveMultiSelectConfig = 'function: 0000000140556060',
	SaveQuickToolsConfig = 'function: 0000000140554F60',
	SaveTerrainConfig = 'function: 0000000140553E50',
	SetAdvancedMoveAlignmentType = 'function: 000000014054C600',
	SetAdvancedMoveToggle = 'function: 000000014054C320',
	SetAdvancedMoveToggleUpdated = 'function: 000000014054C490',
	SetAlignToSurfaceBuildings = 'function: 000000014054BA80',
	SetAlignToSurfaceOfBelongingOrPlatformOwner = 'function: 000000014054BD60',
	SetAlignToSurfaceScenery = 'function: 000000014054B910',
	SetAlignToSurfaceShops = 'function: 000000014054BBF0',
	SetAllowAutoStack = 'function: 000000014054A940',
	SetAllowSupportsOnPaths = 'function: 00000001405509B0',
	SetAutoAddPartToBuildings = 'function: 000000014054BED0',
	SetAutosaveInterval = 'function: 0000000140550B20',
	SetBoundaryHighlightModeIndex = 'function: 000000014054C1B0',
	SetBreakdownsEnabled = 'function: 000000014054FFA0',
	SetBrowserRows = 'function: 0000000140551620',
	SetBrowserView = 'function: 0000000140551840',
	SetDefaultToBoundingBoxAlignment = 'function: 000000014054FCC0',
	SetDistanceSnapEnabled = 'function: 000000014054A660',
	SetDistanceSnapGridSize = 'function: 000000014054A210',
	SetDistanceSnapSize = 'function: 000000014054A0A0',
	SetEnableCoasterObstruction = 'function: 000000014054EB80',
	SetEnableFlatRideObstruction = 'function: 000000014054ECF0',
	SetEnableFlumeObstruction = 'function: 000000014054EE60',
	SetEnablePathObstruction = 'function: 000000014054F140',
	SetEnablePoolObstruction = 'function: 000000014054F2B0',
	SetEnableSceneryObstruction = 'function: 000000014054EA10',
	SetEnableTerrainObstruction = 'function: 000000014054EFD0',
	SetEnableTerrainWaterObstruction = 'function: 000000014054F420',
	SetEnableVerticalGrid = 'function: 000000014054C040',
	SetFacilityCleanlinessEnabled = 'function: 0000000140550110',
	SetFlatRideCamMode = 'function: 0000000140549830',
	SetGlobeFilterType = 'function: 000000014054E2D0',
	SetHideAutosaves = 'function: 000000014054E440',
	SetLitterEnabled = 'function: 00000001405503F0',
	SetPathSettingsHeight = 'function: 0000000140549C50',
	SetRandomPitchMax = 'function: 000000014054AD90',
	SetRandomPitchMin = 'function: 000000014054AC20',
	SetRandomScaleMax = 'function: 000000014054B1E0',
	SetRandomScaleMin = 'function: 000000014054B070',
	SetReputationEnabled = 'function: 0000000140550C90',
	SetRideDeclineEnabled = 'function: 000000014054E730',
	SetRotationSnapEnabled = 'function: 000000014054A4F0',
	SetRotationSnapSize = 'function: 0000000140549F30',
	SetScaleSnapEnabled = 'function: 0000000140550F70',
	SetScaleSnapSize = 'function: 0000000140550E00',
	SetSecurityFeaturesEnabled = 'function: 000000014054E8A0',
	SetSeenDLCProducts = 'function: 000000014054F700',
	SetShouldFlattenTerrain = 'function: 000000014054A7D0',
	SetShowDLCItems = 'function: 000000014054F590',
	SetShowExtraInterchangeableTrains = 'function: 000000014054FB50',
	SetStickToSurfaceBuildings = 'function: 000000014054B4C0',
	SetStickToSurfaceOfBelongingOrPlatformOwner = 'function: 000000014054B7A0',
	SetStickToSurfaceScenery = 'function: 000000014054B350',
	SetStickToSurfaceShops = 'function: 000000014054B630',
	SetTerrainSettingsHeight = 'function: 0000000140549DC0',
	SetTestDummiesEnabled = 'function: 00000001405506D0',
	SetTestOffTrackEnabled = 'function: 0000000140550840',
	SetToiletCleanlinessEnabled = 'function: 0000000140550280',
	SetTrackEditAlignDistance = 'function: 000000014054DB30',
	SetTrackEditAlignEnabled = 'function: 000000014054D9C0',
	SetTrackEditAngleSnapToggle = 'function: 000000014054C980',
	SetTrackEditAngleSnapValue = 'function: 000000014054C810',
	SetTrackEditCameraFixedPitch = 'function: 000000014054CC60',
	SetTrackEditCameraMode = 'function: 000000014054CAF0',
	SetTrackEditFalloffModifier = 'function: 000000014054DCA0',
	SetTrackEditHeightMarkerMode = 'function: 000000014054D0B0',
	SetTrackEditHorizontalModifier = 'function: 000000014054DEB0',
	SetTrackEditShowTrackDirectionArrows = 'function: 000000014054D2C0',
	SetTrackEditSmoothingDirection = 'function: 000000014054D7B0',
	SetTrackEditSmoothingStrength = 'function: 000000014054D640',
	SetTrackEditSmoothingType = 'function: 000000014054D430',
	SetTrackEditTrackRelativeDragging = 'function: 000000014054CF40',
	SetTrackEditTunnelling = 'function: 000000014054CDD0',
	SetTrackEditVerticalModifier = 'function: 000000014054E0C0',
	SetTrackedRideCamMode = 'function: 0000000140549A40',
	SetTutorialDismissed = 'function: 00000001405569B0',
	SetTutorialHideAll = 'function: 000000014054E5B0',
	SetUseRandomRotation = 'function: 000000014054AAB0',
	SetUseRandomScale = 'function: 000000014054AF00',
	SetUseSnapPointUpDirection = 'function: 000000014054F9E0',
	SetUseSnapPoints = 'function: 000000014054F870',
	SetUseStaffHappiness = 'function: 000000014054FE30',
	SetVerticalGridSize = 'function: 000000014054A380',
	SetVomitEnabled = 'function: 0000000140550560',
	['userdata: 00000001431C3438'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187E28C0'
	},
	_NAME = 'game::luascript::api::gamevolatileconfigapi',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187E28C0'
	}
},

['Game::LuaScript::API::Globe'] = {
	AddSpinGlobeTweenFromLatLongDegrees = 'function: 000000014056A610',
	BringToFront = 'function: 0000000140569570',
	BringToTop = 'function: 0000000140569750',
	CreateGlobeConnectionShape = 'function: 000000014056B380',
	EndDrag = 'function: 0000000140569D90',
	EndTween = 'function: 000000014056A9C0',
	FreePins = 'function: 0000000140569220',
	GetCurrentLatLongDegrees = 'function: 000000014056ABD0',
	GetGlobeRadius = 'function: 000000014056ADD0',
	GetHaversineDistanceFromLatLong = 'function: 000000014056B110',
	GetLatLongDegreesFromRayCast = 'function: 0000000140569ED0',
	GetPositionFromLatLongDegrees = 'function: 000000014056A150',
	GetScreenPosition = 'function: 0000000140567D20',
	HideGlobeConnection = 'function: 000000014056B700',
	SelectPinRayCast = 'function: 0000000140569360',
	SetGlobeAttachments = 'function: 000000014056AF40',
	SetPins = 'function: 00000001405688E0',
	SetPositionFromLatLongDegrees = 'function: 000000014056A370',
	SetWidgets = 'function: 0000000140567F90',
	ShowGlobeConnection = 'function: 000000014056B5A0',
	StartDrag = 'function: 0000000140569930',
	TweenInProgress = 'function: 000000014056A7E0',
	UpdateDrag = 'function: 0000000140569B60',
	UpdateGlobeConnection = 'function: 000000014056B860',
	['userdata: 00000001431C34A8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C4CC0'
	},
	_NAME = 'game::luascript::api::globe',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C4CC0'
	}
},

['Game::LuaScript::API::Guests'] = {
	AllocateGroup = 'function: 00000001405C0470',
	CalculateAndGetRatioOfGuestsWithMood = 'function: 00000001405BE7C0',
	CalculateAndGetRatioOfGuestsWithSunburn = 'function: 00000001405B5D50',
	CanSuspendGroup = 'function: 00000001405C66F0',
	CompleteMiscreantSystemWorldSerialisationLoad = 'function: 00000001405C0C70',
	CompleteSerialisationAfterEntitiesCreated = 'function: 00000001405C0B70',
	CompleteWorldSerialisationLoad = 'function: 00000001405C0880',
	DebugRequestDespawnGroup = 'function: 00000001405C9440',
	EjectGuestsFromPark = 'function: 00000001405C8140',
	GenerateNewUIName = 'function: 00000001405C6F60',
	GetActiveMoodReasons = 'function: 00000001405BDAD0',
	GetAllGuestNeedTypesAsString = 'function: 00000001405AEE60',
	GetAllPossibleMoodReasons = 'function: 00000001405BDF90',
	GetAllThoughtVariantUIStrings = 'function: 00000001405BFD90',
	GetAreInitialDecisionsMade = 'function: 00000001405C8E60',
	GetAverageGuestSceneryScore = 'function: 00000001405C36E0',
	GetBaseGroupSpawnWeights = 'function: 00000001405C10A0',
	GetChildGroupsWeightedRatio = 'function: 00000001405C2110',
	GetDebugTrivia = 'function: 00000001405C6DD0',
	GetDestinationEntrance = 'function: 00000001405C02E0',
	GetDestinationType = 'function: 00000001405C0100',
	GetEntertainmentRateMultiplier = 'function: 00000001405C7170',
	GetFirstGuestInGroup = 'function: 00000001405C9250',
	GetGlobalAverageNeeds = 'function: 00000001405B4070',
	GetGlobalThoughtSummary = 'function: 00000001405BF470',
	GetGlobalThoughtsDebug = 'function: 00000001405BF020',
	GetGroupCash = 'function: 00000001405BA050',
	GetGroupDecisionState = 'function: 00000001405B9830',
	GetGroupFavouriteBrand = 'function: 00000001405BC340',
	GetGroupFavouriteRide = 'function: 00000001405BC730',
	GetGroupFavouriteRideType = 'function: 00000001405BC940',
	GetGroupFavouriteTheme = 'function: 00000001405BC510',
	GetGroupFoodRestrictions = 'function: 00000001405BCF10',
	GetGroupGenderSpawnRules = 'function: 00000001405C21E0',
	GetGroupNeeds = 'function: 00000001405B32C0',
	GetGroupParkStayLength = 'function: 00000001405BB330',
	GetGroupRideExperience = 'function: 00000001405BCCE0',
	GetGroupRideTolerances = 'function: 00000001405BB6E0',
	GetGroupSpawnWeightModifiers = 'function: 00000001405C18B0',
	GetGroupSuccessfulRideHistory = 'function: 00000001405BD2C0',
	GetGroupTimeInPark = 'function: 00000001405BB150',
	GetGroupTypeName = 'function: 00000001405B8260',
	GetGroupWaterAttractionType = 'function: 00000001405BCB10',
	GetGuestAilments = 'function: 00000001405B50E0',
	GetGuestAilmentsToString = 'function: 00000001405B4CE0',
	GetGuestBrainStats = 'function: 00000001405AF960',
	GetGuestCurrentComplex = 'function: 00000001405CA3C0',
	GetGuestData = 'function: 00000001405B0860',
	GetGuestDemographicData = 'function: 00000001405AF570',
	GetGuestDestinationNeedSatisfaction = 'function: 00000001405B4430',
	GetGuestHasMoodReason = 'function: 00000001405BDD80',
	GetGuestInventory = 'function: 00000001405B70E0',
	GetGuestMood = 'function: 00000001405BD680',
	GetGuestMoodQualitiesAsTable = 'function: 00000001405BD830',
	GetGuestMoodTypesAsTable = 'function: 00000001405BE600',
	GetGuestNeeds = 'function: 00000001405B1B20',
	GetGuestNeedsCriticalThreshold = 'function: 00000001405B24B0',
	GetGuestNeedsGoodThreshold = 'function: 00000001405B2E10',
	GetGuestNeedsPressingThreshold = 'function: 00000001405B2960',
	GetGuestRideTolerances = 'function: 00000001405B61D0',
	GetGuestStatusForPhysicsState = 'function: 00000001405CA0C0',
	GetGuestThoughts = 'function: 00000001405BEC80',
	GetGuestUIName = 'function: 00000001405B6D40',
	GetGuestVisualEntityID = 'function: 00000001405B1230',
	GetGuestsDefaultGroupOffsets = 'function: 00000001405B0C70',
	GetGuestsEjectedFromParkReason = 'function: 00000001405C7F60',
	GetGuestsInGroup = 'function: 00000001405B1560',
	GetGuestsNeedStatesPortions = 'function: 00000001405B4170',
	GetHavePendingCrowdParticlesLoadedFromSave = 'function: 00000001405C8F60',
	GetHighestPriorityReasonOnGuest = 'function: 00000001405BE2B0',
	GetMaxPossibleTolerances = 'function: 00000001405B69A0',
	GetMoodExperience = 'function: 00000001405C3C30',
	GetMoodReasonLocString = 'function: 00000001405BE420',
	GetNeedUIThresholds = 'function: 00000001405B8490',
	GetNextTrappedGuest = 'function: 00000001405C7C50',
	GetNumGuests = 'function: 00000001405AF0B0',
	GetNumGuestsEnteredParkPerDay = 'function: 00000001405AF250',
	GetNumGuestsInsidePark = 'function: 00000001405AF180',
	GetNumTheftVictims = 'function: 00000001405CAC50',
	GetNumTheftVictimsLastMonth = 'function: 00000001405CAD50',
	GetNumTheftVictimsThisMonth = 'function: 00000001405CAE20',
	GetNumberOfGuestsWatchingFireworks = 'function: 00000001405C6510',
	GetOverallGuestExperience = 'function: 00000001405C38A0',
	GetPoolAreaProportionCoveredByLifeguardPosts = 'function: 00000001405C9AD0',
	GetSceneryIdealWeight = 'function: 00000001405C6CF0',
	GetSpecificGuestExperiences = 'function: 00000001405C4030',
	GetThoughtExperience = 'function: 00000001405C3D50',
	GetTotalAreaProportionCoveredByLifeguardPosts = 'function: 00000001405C9CE0',
	GetTrappedGuestCount = 'function: 00000001405C7B70',
	GetUmbrellaCount = 'function: 00000001405B83C0',
	GetVomitChanceThresholdMultiplier = 'function: 00000001405C7920',
	GetVomitProbabilityPerSecondMultiplier = 'function: 00000001405C76D0',
	GetWaterPanicMultiplier = 'function: 00000001405C73C0',
	GetWetnessState = 'function: 00000001405B4920',
	GiveBalloonsCheat = 'function: 00000001405C8340',
	GroupHasGoodPoolEntrance = 'function: 00000001405C97B0',
	HideThoughtIcons = 'function: 00000001405C8BF0',
	InstantiateRandomGroup = 'function: 00000001405C9050',
	IsCreatingWanderPointsFromLoad = 'function: 00000001405C9FD0',
	IsGroupInsidePark = 'function: 00000001405BB510',
	IsGuestTrapped = 'function: 00000001405C7DE0',
	IsMiscreant = 'function: 00000001405CB1A0',
	IsValidGroup = 'function: 00000001405B13C0',
	MakeGuestPanicInWater = 'function: 00000001405C7610',
	MiscreantLeaveParkNow = 'function: 00000001405CAEF0',
	OnRideReactions_GetDebugString = 'function: 00000001402E2EB0',
	OnRideReactions_RideInputOverride = 'function: 00000001402E2EB0',
	ParkReset = 'function: 00000001405C0620',
	ProgressGuestExperienceDay = 'function: 00000001405C3E60',
	ReGenerateAllGuestPreferences = 'function: 00000001405C3450',
	ReleaseBalloonsCheat = 'function: 00000001405C8420',
	RequestParkClothes = 'function: 00000001405B9700',
	RequestSuspendGroup = 'function: 00000001405C68D0',
	RequestSwimClothes = 'function: 00000001405B95D0',
	SetAllPreferenceWeights = 'function: 00000001405C2C30',
	SetBaseGroupSpawnWeights = 'function: 00000001405C12C0',
	SetBoostSunburnThoughts = 'function: 00000001405B5EE0',
	SetEntertainmentRateMultiplier = 'function: 00000001405C7250',
	SetGroupCanBecomeVandalChance = 'function: 00000001405CB030',
	SetGroupGenderSpawnRules = 'function: 00000001405C2560',
	SetGroupPreferenceSpawners = 'function: 00000001405C54B0',
	SetGroupPreferenceWeights = 'function: 00000001405C4370',
	SetGroupSpawnWeightModifiers = 'function: 00000001405C1AC0',
	SetGuestHatVisual = 'function: 00000001405B8A00',
	SetGuestLuxuryNeed = 'function: 00000001405B4A90',
	SetGuestMoodsEnabled = 'function: 00000001405BEA00',
	SetGuestNeed = 'function: 00000001405B3AF0',
	SetGuestNeedAlwaysSatisfied = 'function: 00000001405B3D50',
	SetGuestNeedSandboxMultiplier = 'function: 00000001405B3EE0',
	SetGuestRefundMultiplier = 'function: 00000001405CA5D0',
	SetGuestSpawnData = 'function: 00000001405C0E90',
	SetGuestUIName = 'function: 00000001405B6ED0',
	SetGuestWeatherEffectsEnabled = 'function: 00000001405B6050',
	SetMiscreantSpawnData = 'function: 00000001405CA730',
	SetMiscreantSpawnLimits = 'function: 00000001405CAAB0',
	SetParkClothesHidden = 'function: 00000001405B9350',
	SetPeepHeadHidden = 'function: 00000001405B8F50',
	SetPeepHidden = 'function: 00000001405B8D10',
	SetPreferenceCountWeights = 'function: 00000001405C2DB0',
	SetPreferenceEffectMultiplier = 'function: 00000001405C3580',
	SetSunburnEnabled = 'function: 00000001405B5A90',
	SetSunburnMultiplier = 'function: 00000001405B5BF0',
	SetSwimClothesHidden = 'function: 00000001405B9190',
	SetTutorialOverrideIconForGuest = 'function: 00000001405C8CA0',
	SetVomitChanceThresholdMultiplier = 'function: 00000001405C7A00',
	SetVomitEnabled = 'function: 00000001405B5910',
	SetVomitProbabilityPerSecondMultiplier = 'function: 00000001405C77B0',
	SetWaterPanicMultiplier = 'function: 00000001405C74A0',
	ShowThoughtIconsForDestination = 'function: 00000001405C89C0',
	ShowThoughtIconsForGuest = 'function: 00000001405C8540',
	ShowThoughtIconsForStaff = 'function: 00000001405C8780',
	StartUnsuspendGroup = 'function: 00000001405C6B20',
	SwitchToExternallyHandled = 'function: 00000001405C9610',
	TryGetGuestGroupID = 'function: 00000001405B1910',
	['userdata: 00000001431C3500'] = true,
	EjectedFromParkReason_NotEjected = 0,
	EjectedFromParkReason_BySecurity = 1,
	EjectedFromParkReason_FlumeJettison = 2,
	EjectedFromParkReason_PickpocketVictim = 3,
	EjectedFromParkReason_PickpocketEscape = 4,
	EjectedFromParkReason_ByPlayer = 5,
	GuestPreference_FavouriteRide = 0,
	GuestPreference_FavouriteBrand = 1,
	GuestPreference_FavouriteTheme = 2,
	GuestPreference_RideHeight = 3,
	GuestPreference_RideSpeed = 4,
	GuestPreference_RideLength = 5,
	GuestPreference_Intensity = 6,
	GuestPreference_Nausea = 7,
	GuestPreference_RepeatRide = 8,
	GuestPreference_RideType = 9,
	GuestPreference_RideExperience = 10,
	GuestPreference_WaterAttractionType = 11,
	GuestPreference_ShowType = 12,
	GuestPreference_Vanity = 13,
	GuestThoughtQuality_Good = 0,
	GuestThoughtQuality_Neutral = 1,
	GuestThoughtQuality_Bad = 2,
	GuestThoughtType_NeedCritical_Destination_First = 0,
	GuestThoughtType_NeedCritical_Destination_Last = 6,
	GuestThoughtType_NeedSatisfied_Destination_First = 14,
	GuestThoughtType_NeedSatisfied_Destination_Last = 20,
	GuestThoughtType_Drowning = 29,
	GuestThoughtType_Assessment_GoodRide = 36,
	GuestThoughtType_Assessment_RideTooIntense = 39,
	GuestThoughtType_Assessment_RideNotIntenseEnough = 40,
	GuestThoughtType_Assessment_DestinationExpensive = 41,
	GuestThoughtType_Assessment_DestinationCheap = 42,
	GuestThoughtType_Assessment_ShopExpensive = 43,
	GuestThoughtType_Assessment_ShopCheap = 44,
	GuestThoughtType_Assessment_FacilityExpensive = 45,
	GuestThoughtType_Assessment_FacilityCheap = 46,
	GuestThoughtType_Assessment_QueueTooLong = 48,
	GuestThoughtType_Assessment_RideUntested = 49,
	GuestThoughtType_Assessment_RideExpensive_ParkEntryHigh = 50,
	GuestThoughtType_Assessment_RideFree_ParkEntryLow = 51,
	GuestThoughtType_Assessment_RideCheap_ParkEntryLow = 52,
	GuestThoughtType_QueueFull = 182,
	GuestThoughtType_ShopQueueFull = 183,
	GuestThoughtType_FacilityQueueFull = 184,
	GuestThoughtType_Trapped = 188,
	GuestThoughtType_FacilityCleanlinessMin = 195,
	GuestThoughtType_FacilityCleanlinessMax = 197,
	Guests_Age_Child = 0,
	Guests_Age_Teen = 1,
	Guests_Age_Adult = 2,
	Guests_Gender_Male = 0,
	Guests_Gender_Female = 1,
	Guests_GroupPos_MiddleCenter = 0,
	Guests_GroupPos_MiddleLeft = 1,
	Guests_GroupPos_MiddleRight = 2,
	Guests_GroupPos_FrontCenter = 3,
	Guests_GroupPos_FrontLeft = 4,
	Guests_GroupPos_FrontRight = 5,
	Guests_GroupPos_BackCenter = 6,
	Guests_GroupPos_BackLeft = 7,
	Guests_GroupPos_BackRight = 8,
	Guests_GroupType_SingleTeen = 0,
	Guests_GroupType_SingleAdult = 1,
	Guests_GroupType_TeenCouple = 2,
	Guests_GroupType_AdultCouple = 3,
	Guests_GroupType_TeenGroup = 4,
	Guests_GroupType_AdultGroup = 5,
	Guests_GroupType_FamilyChild = 6,
	Guests_GroupType_FamilyTeen = 7,
	Guests_GroupType_FamilyTeenChild = 8,
	Guests_GroupType_Count = 9,
	Guests_SpecialGuestType_None = 0,
	Guests_SpecialGuestType_ProstheticLimb = 1,
	Guests_SpecialGuestType_WalkingStick = 2,
	Guests_SpecialGuestType_HearingAid = 3,
	Guests_SpecialGuestType_HiddenDisability = 4,
	Guests_SpecialGuestType_COUNT = 6,
	Guests_VoiceActor_V_01 = 0,
	Guests_VoiceActor_V_02 = 1,
	Guests_VoiceActor_V_03 = 2,
	Guests_VoiceActor_V_04 = 3,
	Guests_VoiceActor_V_05 = 4,
	Guests_VoiceActor_V_06 = 5,
	Guests_VoiceActor_V_07 = 6,
	Guests_VoiceActor_V_08 = 7,
	Guests_VoiceActor_V_09 = 8,
	InventorySlot_Drink = 0,
	InventorySlot_Food = 1,
	InventorySlot_Hat = 2,
	InventorySlot_FastPass = 3,
	InventorySlot_DrinkLitter = 4,
	InventorySlot_FoodLitter = 5,
	InventorySlot_Balloon = 6,
	InventorySlot_Souvenir = 7,
	InventorySlot_MobilePhone = 8,
	InventorySlot_HotelKey = 9,
	InventorySlot_WaterToy = 10,
	InventorySlot_PoolPass = 11,
	InventorySlot_Tray = 15,
	InventorySlot_SouvenirMug = 17,
	InventorySlot_SouvenirPlush = 18,
	InventorySlot_SouvenirKeyring = 19,
	InventorySlot_SouvenirMascotProp = 20,
	InventorySlot_SouvenirJigsaw = 21,
	InventorySlot_SouvenirTshirt = 22,
	InventorySlot_SouvenirPosters = 23,
	InventorySlot_SouvenirPostcard = 24,
	InventorySlot_Count = 25,
	InventorySlot_Pockets = 254,
	InventorySlot_None = 255,
	InventoryVisualSlot_LeftHand = 0,
	InventoryVisualSlot_RightHand = 1,
	InventoryVisualSlot_Head = 2,
	InventoryVisualSlot_Count = 5,
	InventoryVisualSlot_Invalid = 255,
	Mood_Content = 0,
	Mood_Happy = 1,
	Mood_Excited = 2,
	Mood_Bored = 3,
	Mood_Uncomfortable = 4,
	Mood_Unhappy = 5,
	Mood_Desperate = 6,
	MoodQuality_Good = 0,
	MoodQuality_Neutral = 1,
	MoodQuality_Bad = 2,
	Need_Entertainment = 0,
	Need_Energy = 1,
	Need_Hunger = 2,
	Need_Thirst = 3,
	Need_Toilet = 4,
	Need_Nausea = 5,
	Need_Panic = 6,
	NeedVeryLow_Hunger = 6,
	NeedVeryLow_Thirst = 7,
	NeedVeryLow_Toilet = 8,
	NeedVeryLow_Nausea = 9,
	NeedVeryLow_Energy = 10,
	NeedVeryLow_Panic = 11,
	NeedVeryLow_Entertainment = 12,
	PoolSafetyLevel_Low = 0,
	PoolSafetyLevel_Med = 1,
	PoolSafetyLevel_High = 2,
	RideExperience_Inversion = 0,
	RideExperience_AirTime = 1,
	RideExperience_Ducking = 2,
	RideExperience_Splashing = 3,
	RideExperience_LocalSpinning = 4,
	RideExperience_SceneryReaction = 5,
	RideExperience_TriggedEvents = 6,
	SuspendGroupResult_Success = 0,
	SuspendGroupResult_NotYet = 1,
	SuspendGroupResult_Failure = 2,
	WetnessState_Dry = 0,
	WetnessState_Splashed = 1,
	WetnessState_Soaked = 2,
	Default = 0,
	OnRide = 2,
	GoodRideExit = 3,
	InVomit = 4,
	SpecialGuestType_Miscreant = 5,
	InLitter = 5,
	SeveralNeedsLowOverTime = 13,
	DirtyFacility = 14,
	FilthyFacility = 15,
	UnusableFacility = 16,
	SoakedTooLong = 17,
	Splashed = 18,
	VistaPoint = 20,
	WatchingFireworks = 21,
	RidePriceChangeTooExpensive = 22,
	QueueingForFavouriteRide = 23,
	GoodQueueScenery = 24,
	NotRescuedByLifeguard = 25,
	BoughtFood = 26,
	BoughtDrink = 27,
	BoughtSouvenir = 28,
	BadSceneryForTime_1 = 29,
	BadSceneryForTime_2 = 30,
	GoodScenery = 31,
	Sunburn = 32,
	Pickpocketed = 33,
	Count = 37,
	_M = {
		_CYCLE = 'Reference to table: 00000000187E5C40'
	},
	_NAME = 'game::luascript::api::guests',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187E5C40'
	}
},

['Game::LuaScript::API::HeightMap'] = {
	AddAssetPackage = 'function: 00000001405D1850',
	AddGeoLayer = 'function: 00000001405D31A0',
	AddPaintingLayer = 'function: 00000001405D2A80',
	AddStaticImageLayer = 'function: 00000001405D1BE0',
	ApplyHeightMapToolBrushAtPoint = 'function: 00000001405D8470',
	ClearBoolDataSetPaint = 'function: 00000001405DBC10',
	ClearDataGrid = 'function: 00000001405D9300',
	ClearDataGridSelection = 'function: 00000001405DB710',
	ClearHeightMap = 'function: 00000001405D0D80',
	CreateBoolDataSet = 'function: 00000001405DAA30',
	CreateDataGrid = 'function: 00000001405DA6C0',
	DisplaceHeightMap = 'function: 00000001405D4A50',
	FindBoolDataSetID = 'function: 00000001405DA270',
	FindDataGridID = 'function: 00000001405D9E70',
	GetDataGridDrawType = 'function: 00000001405DBEC0',
	GetLoadedDataGridFilePath = 'function: 00000001405D94C0',
	GetLoadedHeightMapFilePath = 'function: 00000001405D0F30',
	GetSelectedBoolDataSetName = 'function: 00000001405DB320',
	GetWorldCoordBoundsForHeightMapSector = 'function: 00000001405D4FB0',
	IsBusy = 'function: 00000001405DC5D0',
	IsDataGridBusy = 'function: 00000001405D9C70',
	IsFootplantObject = 'function: 000000014032E210',
	IsHeightMapBusy = 'function: 00000001405D45F0',
	IsHeightMapFlatteningObject = 'function: 000000014032E210',
	LoadDataGrid = 'function: 00000001405D8DB0',
	LoadHeightMap = 'function: 00000001405D0760',
	RemoveDataGrid = 'function: 00000001405DB090',
	ResetHeightMapToolRamp = 'function: 00000001405D7990',
	SaveDataGrid = 'function: 00000001405D9050',
	SaveHeightMap = 'function: 00000001405D0A00',
	SelectBoolDataSet = 'function: 00000001405DADA0',
	SelectLineOfSightFlyableBoolDataSet = 'function: 0000000140524840',
	SelectLineOfSightWalkableBoolDataSet = 'function: 0000000140524840',
	SelectNavFlyableBoolDataSet = 'function: 0000000140524840',
	SelectNavWalkableBoolDataSet = 'function: 0000000140524840',
	SelectSlowHeightMapBoolDataSet = 'function: 0000000140524840',
	SetCameraMovementModifierDown = 'function: 00000001405D47E0',
	SetCurrentLayer = 'function: 00000001405D1400',
	SetDataGridDrawTypeNav = 'function: 00000001402E2EB0',
	SetDataGridDrawTypeNone = 'function: 00000001405DC370',
	SetDataGridDrawTypeSelection = 'function: 00000001405DC110',
	SetDataGridNextOpNoCheckpoint = 'function: 00000001405D9A70',
	SetHeightMapToolBrushAsset = 'function: 00000001405D5D80',
	SetHeightMapToolBrushMode = 'function: 00000001405D5AD0',
	SetHeightMapToolBrushSize = 'function: 00000001405D55B0',
	SetHeightMapToolBrushType = 'function: 00000001405D5870',
	SetHeightMapToolCompoundBrushMaterial = 'function: 00000001405D8650',
	SetHeightMapToolFalloff = 'function: 00000001405D61E0',
	SetHeightMapToolFlattenMode = 'function: 00000001405D64A0',
	SetHeightMapToolIntensity = 'function: 00000001405D6750',
	SetHeightMapToolMirroringSettings = 'function: 00000001405D8180',
	SetHeightMapToolPositionSnap = 'function: 00000001405D7B60',
	SetHeightMapToolRampAngleClamped = 'function: 00000001405D7660',
	SetHeightMapToolRampFalloff = 'function: 00000001405D73A0',
	SetHeightMapToolRampWidth = 'function: 00000001405D70E0',
	SetHeightMapToolRotationSnap = 'function: 00000001405D7E80',
	SetHeightMapToolVariantType = 'function: 00000001405D8A00',
	SetHeightMapToolWaterDepth = 'function: 00000001405D6E00',
	SetHeightMapToolWaterMaterial = 'function: 00000001405D6A50',
	SetHeightMapWidgetType = 'function: 00000001405D5300',
	SetRegionToolRemoveOverlap = 'function: 00000001405DB960',
	ToggleHeightMapDataGridEditorDebugControls = 'function: 00000001402E2EB0',
	ToggleHeightMapDataGridEditorPlayerControls = 'function: 00000001405D97D0',
	ToggleHeightMapEditorDebugControls = 'function: 00000001402E2EB0',
	ToggleHeightMapEditorPlayerControls = 'function: 00000001405D1240',
	['userdata: 00000001431C3518'] = true,
	nDataGridDrawType_Selection = 1,
	nDataGridDrawType_Nav = 2,
	nFlattenAuto = 0,
	nBrushModePaint = 0,
	nBlendModeMin = 0,
	nPaintTypeHeight = 0,
	nWidgetTypeBrush = 0,
	nBlendModeMax = 1,
	nPaintTypeMaterial = 1,
	nFlattenAutoWithGradient = 1,
	nBlendModeOffset = 2,
	nBrushModeReplace = 2,
	nWidgetTypeRamp = 4,
	_M = {
		_CYCLE = 'Reference to table: 00000000187EB280'
	},
	_NAME = 'game::luascript::api::heightmap',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187EB280'
	}
},

['Game::LuaScript::API::IRC'] = {
	AddIRCNotificationListener = 'function: 0000000140583290',
	RemoveIRCNotificationListener = 'function: 0000000140583530',
	['userdata: 00000001431C34D8'] = true,
	Notif_Any = 0,
	Notif_FranchiseClosed = 1,
	Notif_FranchiseInvitationCancelled = 2,
	Notif_FranchiseInvitationCreated = 3,
	Notif_FranchiseInvitationDeclined = 4,
	Notif_FranchiseMemberCapabilitiesUpdated = 5,
	Notif_FranchiseMemberRemoved = 6,
	Notif_FranchiseMembershipRequestCancelled = 7,
	Notif_FranchiseMembershipRequestCreated = 8,
	Notif_FranchiseMembershipRequestDeclined = 9,
	Notif_FranchiseOwnerClaimCancelled = 10,
	Notif_FranchiseOwnerClaimCooldownExpired = 11,
	Notif_FranchiseOwnerClaimInitiated = 12,
	Notif_FranchiseOwnerClaimPaused = 13,
	Notif_FranchiseOwnerReassigned = 14,
	Notif_FranchiseParkBuilt = 15,
	Notif_FranchiseParkDeleted = 16,
	Notif_FranchiseParkEstablished = 17,
	Notif_FranchiseParkRestored = 18,
	Notif_FranchiseParkUnestablished = 19,
	Notif_FranchisePlayerJoined = 20,
	Notif_FranchisePlayerLeft = 21,
	Notif_FranchiseRestored = 22,
	Notif_ParkGroupManagerClaimCancelled = 23,
	Notif_ParkGroupManagerClaimExpired = 24,
	Notif_ParkGroupManagerClaimInitiated = 25,
	Notif_ParkGroupManagerReassigned = 26,
	Notif_ParkPlayerJoined = 27,
	Notif_ParkPlayerLeft = 28,
	Notif_ParkPlayerRemoved = 29,
	Notif_ParkDeleted = 30,
	Notif_ParkEditingLockRevoked = 31,
	Notif_ParkLockedForEditing = 32,
	Notif_ParkRestored = 33,
	Notif_ParkSettingsUpdated = 34,
	Notif_ParkUnlockedForEditing = 35,
	Notif_ParkVersionDeleted = 36,
	Notif_ParkVersionNotesUpdated = 37,
	Notif_ParkVersionRetracted = 38,
	Notif_ParkVersionRolledBack = 39,
	Notif_ParkVersionSubmitted = 40,
	Notif_ParkVersionUploaded = 41,
	Notif_LoggedIn = 42,
	Notif_LoggedOut = 43,
	Notif_ChallengeReward = 44,
	Notif_FriendshipAccepted = 45,
	Notif_FriendshipRequested = 46,
	Notif_ChallengeEnd = 47,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C1AC0'
	},
	_NAME = 'game::luascript::api::irc',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C1AC0'
	}
},

['Game::LuaScript::API::Infrastructure'] = {
	CanBeOpened = 'function: 0000000140572D20',
	CompleteBlueprintLoad = 'function: 00000001405778C0',
	CompleteWorldSerialisationLoad = 'function: 0000000140577980',
	CreatePlacementPreview = 'function: 0000000140576DA0',
	EntityIsUtilityComponent = 'function: 000000014056F420',
	GetAllDistributorEntities = 'function: 0000000140578630',
	GetAllPowerGeneratorEntities = 'function: 0000000140578180',
	GetAllWaterGeneratorEntities = 'function: 0000000140577CD0',
	GetComponentType = 'function: 000000014056F970',
	GetConnectComponentsData = 'function: 0000000140576B80',
	GetConnectionPoint = 'function: 000000014056FAD0',
	GetConsumerRecievedUtilityQuantity = 'function: 0000000140571860',
	GetConsumersOwnedByDistributor = 'function: 00000001405710D0',
	GetCostPerUtilityPerHour = 'function: 00000001405761D0',
	GetCurrentlyRequiredUtilityQuantity = 'function: 0000000140572550',
	GetDistributorsAvailableToComponent = 'function: 0000000140573AE0',
	GetDistributorsSuppliedByGenerator = 'function: 0000000140576360',
	GetFirstUtilityType = 'function: 000000014056F810',
	GetGenerationCostToday = 'function: 00000001405765E0',
	GetGeneratorMaxProducedUtilityQuantity = 'function: 0000000140572290',
	GetGeneratorProducedUtilityQuantity = 'function: 0000000140572060',
	GetGeneratorTotalUsedUtilityQuantity = 'function: 0000000140571B80',
	GetGeneratorUsedByConditionUtilityQuantity = 'function: 0000000140571ED0',
	GetGeneratorUsedByNetworkUtilityQuantity = 'function: 0000000140571D40',
	GetGeneratorsAvailableToComponent = 'function: 0000000140573600',
	GetGeneratorsSupplyingDistributor = 'function: 0000000140571450',
	GetMaintenanceLevel = 'function: 00000001405744B0',
	GetPlacementPosition = 'function: 0000000140576930',
	GetPowerScalarTweakableValue = 'function: 0000000140578950',
	GetPredictedCleanlinessDeltaOverNextHour = 'function: 0000000140576770',
	GetProjectedCostForDay = 'function: 0000000140576040',
	GetReceivedUtilityQuantity = 'function: 00000001405716D0',
	GetRecievedWaterTreatmentRate = 'function: 0000000140573EF0',
	GetRefurbishmentCost = 'function: 0000000140575190',
	GetRequiredPower = 'function: 00000001405728D0',
	GetRequiredUtilityQuantity = 'function: 00000001405726B0',
	GetRequiredWaterTreatmentRate = 'function: 0000000140573D50',
	GetSurroundingDistributorsForConsumer = 'function: 0000000140574230',
	GetTimeTillNextService = 'function: 0000000140574630',
	GetTotalRecievedPower = 'function: 0000000140572A30',
	GetTotalUtilityInNetworkForComponent = 'function: 00000001405734A0',
	GetTotalVolume = 'function: 0000000140574090',
	GetUnpowerableConsumerDataForDistributor = 'function: 0000000140572FE0',
	GetUtilitiesYesterdayStats = 'function: 0000000140578CA0',
	GetUtilityAvailableToComponent = 'function: 0000000140573340',
	GetWaterCleanliness = 'function: 0000000140570370',
	GetWaterTreatmentPerConsumer = 'function: 0000000140572E80',
	HasRefurbishBeenRequested = 'function: 0000000140574FB0',
	HasRepairBeenRequested = 'function: 00000001405759B0',
	HasServiceBeenRequested = 'function: 0000000140574A90',
	HasSufficientPower = 'function: 0000000140572BC0',
	HasWaterCleanliness = 'function: 00000001405701E0',
	HidePlacementPreview = 'function: 0000000140577130',
	InsertConnection = 'function: 000000014056FC90',
	IsBrokenDown = 'function: 00000001405753A0',
	IsConnectedToGenerator = 'function: 0000000140573980',
	IsConnectedToPath = 'function: 00000001405756C0',
	IsDistributor = 'function: 0000000140570C90',
	IsDistributorOn = 'function: 0000000140575D30',
	IsGenerator = 'function: 0000000140570E00',
	IsGeneratorOn = 'function: 0000000140575EE0',
	IsRegionalSupplier = 'function: 0000000140570F70',
	IsUtilityType = 'function: 000000014056F5C0',
	RefreshAndGetConsumerRequiredUtilityQuantity = 'function: 00000001405719F0',
	RemoveConnection = 'function: 000000014056FE00',
	RequestCancelRefurbishment = 'function: 0000000140574E10',
	RequestCancelService = 'function: 00000001405748F0',
	RequestRefurbishment = 'function: 0000000140574C70',
	RequestRepair = 'function: 0000000140575520',
	RequestService = 'function: 00000001405747B0',
	RequestShouldDrawNetworks = 'function: 000000014056FF70',
	SetComponentOnState = 'function: 0000000140575B90',
	SetFlatRidePowerEnabled = 'function: 00000001405709D0',
	SetFlumeCleanlinessEnabled = 'function: 0000000140578B40',
	SetIconViewForUtility = 'function: 00000001405706B0',
	SetPoolCleanlinessEnabled = 'function: 00000001405789E0',
	SetPowerEnabled = 'function: 0000000140570870',
	SetShouldDrawNetworks = 'function: 0000000140570030',
	SetTrackedRidePowerEnabled = 'function: 0000000140570B30',
	ShowIconsForUtility = 'function: 0000000140570510',
	ShowPlacementPreview = 'function: 0000000140576FD0',
	UpdateInRemoveSubmode = 'function: 00000001405776A0',
	UpdateIsConnectedToPath = 'function: 0000000140575850',
	UpdatePlacementPreview = 'function: 0000000140577290',
	['userdata: 00000001431C34C8'] = true,
	UtilityType_None = 0,
	UtilityType_Water = 1,
	UtilityType_Power = 2,
	WaterCleanlinessThreshold_Clean = 0,
	WaterCleanlinessThreshold_Dirty = 1,
	WaterCleanlinessThreshold_Polluted = 2,
	_M = {
		_CYCLE = 'Reference to table: 00000000187EBF40'
	},
	_NAME = 'game::luascript::api::infrastructure',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187EBF40'
	}
},

['Game::LuaScript::API::Messaging'] = {
	['userdata: 00000001431C34F8'] = true,
	ChangeType_ItemPrice = 0,
	ChangeType_Sold = 1,
	ChangeType_ExtraUsed = 2,
	ChangeType_CustomName = 3,
	ChangeType_FullReset = 4,
	MsgType_PlayerBlueprintSavedDeletedMessage = 2,
	MsgType_PlayerParkSavedDeletedMessage = 3,
	MsgType_GameServerConnectionChangedMessage = 4,
	MsgType_IRCConnectionChangedMessage = 5,
	MsgType_PoolColourDataChangeMessage = 5,
	MsgType_DLCLicencesChangedMessage = 6,
	MsgType_ParkThemingUpdatedMessage = 8,
	MsgType_PuppetUpdatedMessage = 10,
	MsgType_FacilityClosedMessage = 15,
	MsgType_FacilityDemolishedMessage = 16,
	MsgType_FacilityInventoryDataChangedMessage = 17,
	MsgType_FacilityDayOpenedChangedMessage = 18,
	MsgType_FacilityOpenedMessage = 19,
	MsgType_FacilityPlacedMessage = 21,
	MsgType_FacilityRunningCostChangedMessage = 22,
	MsgType_FacilityServiceStateChangedMessage = 23,
	MsgType_GroupEnteredBenchMessage = 24,
	MsgType_GroupRejectedFacilityMessage = 26,
	MsgType_ShopInventoryItemChangedMessage = 27,
	MsgType_ShopItemPriceChangedMessage = 28,
	MsgType_ShopFairPriceMessage = 29,
	MsgType_ShopPriceSyncMessage = 30,
	MsgType_SmallAttractionProbabilityChangedMessage = 32,
	MsgType_RideVariationChangedMessage = 48,
	MsgType_TrainCanLeaveMessage = 54,
	MsgType_FlumeChangedPlatformMessage = 58,
	MsgType_RideEditedMessage = 59,
	MsgType_TrainAddedRemovedMessage = 60,
	MsgType_TrainInStationMessage = 62,
	MsgType_UpdateRideStatsMessage = 64,
	MsgType_FirstTimeEntityTypeSelectedMessage = 66,
	MsgType_MultiSelectionMessage = 68,
	MsgType_PlayerBonusLockStateChangedMessage = 69,
	MsgType_SimulationSpeedChangedMessage = 70,
	MsgType_StartScreenGlobeMovementCompleted = 71,
	MsgType_TutorialEventMessage = 72,
	MsgType_GroupRequestDebugPoolEntryMessage = 91,
	MsgType_GuestCashModifiedMessage = 97,
	MsgType_GuestDestinationBecameAccessibleMessage = 99,
	MsgType_GuestDrowningStoppedMessage = 101,
	MsgType_GuestGroupEnteredParkMessage = 107,
	MsgType_GuestHiddenMessage = 108,
	MsgType_GuestInventoryAddedRemovedMessage = 109,
	MsgType_GuestInventoryChangedMessage = 110,
	MsgType_GuestMoodRecordedMessage = 112,
	MsgType_GuestPhysicsIncidentEndedMessage = 115,
	MsgType_GuestSuccessfulRideMessage = 118,
	MsgType_GuestSunburnMessage = 119,
	MsgType_GuestThoughtsUpdatedMessage = 120,
	MsgType_PoolStatsUpdatedMessage = 123,
	MsgType_RequestModifyAllNeedsMessage = 126,
	MsgType_ShowDrowningGroupIconMessage = 127,
	MsgType_FacilityTicketPriceChangedMessage = 129,
	MsgType_AdvertisedDestinationChangedMessage = 130,
	MsgType_CashSpentMessage = 131,
	MsgType_CoasterFrictionOptionChangedMessage = 132,
	MsgType_ExtraTrainTypeOptionChangedMessage = 133,
	MsgType_GuestGroupEnteredHotelMessage = 134,
	MsgType_GuestGroupLeftHotelMessage = 135,
	MsgType_HotelPerksChangedMessage = 138,
	MsgType_HotelPlacementPartReadyMessage = 139,
	MsgType_HotelRoomCountChangedMessage = 140,
	MsgType_HotelRoomDataChangedMessage = 141,
	MsgType_HotelRoomPlacedMessage = 142,
	MsgType_LoadingScreenFinishedMessage = 143,
	MsgType_LoanRepaidMessage = 144,
	MsgType_LoansPaymentPreviewMessage = 145,
	MsgType_LoansPreviewMessage = 146,
	MsgType_LoansStageChangedMessage = 147,
	MsgType_LoansUpdateMessage = 148,
	MsgType_LocationPointUpdatedMessage = 149,
	MsgType_MarketingUpdateMessage = 150,
	MsgType_ParkBoundaryPlotUnlockStateChangedMessage = 151,
	MsgType_ParkDatastoreUpdateMessage = 153,
	MsgType_ParkManagementSecurityUpdateMessage = 154,
	MsgType_ParkManagementSpecialEffectsUpdateMessage = 155,
	MsgType_ParkNotificationMessage = 156,
	MsgType_ParkRatingsAtNewDayMessage = 157,
	MsgType_RequestParkZoneSelectionModeMessage = 159,
	MsgType_HotelExtensionRenamedMessage = 160,
	MsgType_SaveSuspendedMessage = 161,
	MsgType_SettingsUnitsChangeMessage = 162,
	MsgType_StaffMoraleFeaturesChanged = 164,
	MsgType_StatsDatastoreUpdateMessage = 165,
	MsgType_MissingUserContentMessage = 168,
	MsgType_PlacementPartCommittedMessage = 169,
	MsgType_HeatmapOptionChangedMessage = 172,
	MsgType_NonStopTrainCountChangedMessage = 173,
	MsgType_RideCameraEnteredOrExited = 177,
	MsgType_RideDeletedMessage = 178,
	MsgType_RideMaterialChangedMessage = 181,
	MsgType_RideObjectiveLinksChanged = 182,
	MsgType_RideOpenStateChangedMessage = 183,
	MsgType_RideOperatorChangedMessage = 184,
	MsgType_RideStationDeletedMessage = 186,
	MsgType_RideStatsUpdatedMessage = 187,
	MsgType_StationMaintenanceLevelUpdatedMessage = 189,
	MsgType_StationServiceStateChangedMessage = 191,
	MsgType_StationStatsUpdatedMessage = 192,
	MsgType_StationTicketFairPriceChangedMessage = 193,
	MsgType_TrainActivatedMessage = 194,
	MsgType_TrainTypeChangedMessage = 196,
	MsgType_UpdateFlumeStatsMessage = 197,
	MsgType_ParkEntrancePlacedMessage = 198,
	MsgType_SceneryPlacedMessage = 199,
	MsgType_MusicTrackChangedMessage = 200,
	MsgType_SignTextChangedMessage = 201,
	MsgType_DisplaySequencerPlacedMessage = 203,
	MsgType_RideCamPropDataChangedMessage = 204,
	MsgType_SequencerPropDataChangedMessage = 205,
	MsgType_TimeMachineChangedMessage = 206,
	MsgType_TriggerTargetPropDataChangedMessage = 207,
	MsgType_SequenceChangedMessage = 208,
	MsgType_LifeguardAssignedAtPostMessage = 213,
	MsgType_LifeguardPostUpdatedMessage = 214,
	MsgType_RideAttendantAssignmentChangedMessage = 219,
	MsgType_StaffAtHomeStatusChangeMessage = 221,
	MsgType_StaffBuildingAvailableMessage = 222,
	MsgType_StaffBuildingChangedMessage = 223,
	MsgType_StaffCostMultiplierChangedMessage = 224,
	MsgType_StaffCreatedOrDeletedMessage = 225,
	MsgType_StaffFlexiColoursChangedMessage = 227,
	MsgType_StaffLeftStaffBuildingMessage = 230,
	MsgType_StaffLeftWorkshopMessage = 231,
	MsgType_StaffMemberMoraleChangedMessage = 232,
	MsgType_StaffMemberOnStrikeMessage = 233,
	MsgType_StaffMemberPatrolZoneChangedMessage = 234,
	MsgType_StaffMemberQuitMessage = 235,
	MsgType_StaffMemberRestInfluenceChangedMessage = 236,
	MsgType_StaffMemberTaskChangedMessage = 238,
	MsgType_StaffMemberTrainingDateChangedMessage = 239,
	MsgType_StaffMemberTrainingLevelChangedMessage = 240,
	MsgType_StaffMemberWageChangedMessage = 241,
	MsgType_StaffRestStatusChangedMessage = 244,
	MsgType_StaffScheduleBuildingFilterChangedMessage = 245,
	MsgType_StaffScheduleCopyBlockMessage = 246,
	MsgType_StaffScheduleCurrentBlockChangeMessage = 247,
	MsgType_StaffScheduledLevelUpMessage = 248,
	MsgType_StaffScheduleParkZoneChangeMessage = 249,
	MsgType_StaffScheduleStaffFilterChangedMessage = 250,
	MsgType_StaffScheduleParkZoneFilterChangedMessage = 251,
	MsgType_StaffScheduleStaffTypeFilterChangedMessage = 252,
	MsgType_StaffScheduleErrorChangeMessage = 253,
	MsgType_StaffScheduleTaskChangeMessage = 254,
	MsgType_StaffScheduleViewModeFilterChangedMessage = 255,
	MsgType_StaffSpecificRestLocationChangeMessage = 256,
	MsgType_StaffSpecificJobLocationChangeMessage = 257,
	MsgType_StaffThoughtsChangedMessage = 260,
	MsgType_StaffTrainingDisabledMessage = 261,
	MsgType_JanitorHeadingToFacilityChangedMessage = 263,
	MsgType_VendorHeadingToFacilityMessage = 264,
	MsgType_VendorLeftFacilityMessage = 265,
	MsgType_WorkshopChangedMessage = 267,
	MsgType_NodePurchaseUpdatedMessage = 268,
	MsgType_ResearchPointsUpdatedMessage = 269,
	MsgType_CoasterStationSelectedFromBrowserMessage = 272,
	MsgType_PlayerSubmitShootingScoreMessage = 273,
	MsgType_RaceOverMessage = 274,
	MsgType_ShootableTargetPlacementPartReadyMessage = 275,
	MsgType_UseLooseTrackRestrictionsMessage = 280,
	MsgType_UserRenameMessage = 286,
	MsgType_GroupExitedBenchMessage = 288,
	MsgType_GroupExitedShopMessage = 289,
	MsgType_OpenStateChangedMessage = 290,
	MsgType_CrowdFeatureAddedMessage = 293,
	MsgType_CrowdFeatureMovedMessage = 294,
	MsgType_CrowdFeatureRemovedMessage = 295,
	MsgType_FlatRideCreatedMessage = 304,
	MsgType_EntranceExitDeletedMessage = 318,
	MsgType_EntranceExitPickedUpPlacedMessage = 319,
	MsgType_StationAccessChangedMessage = 320,
	MsgType_StationTicketPremiumTargetQueueChangedMessage = 321,
	MsgType_StationTicketPriceChangedMessage = 322,
	MsgType_StationTicketPriceStateChangedMessage = 323,
	MsgType_VehicleModeChangedMessage = 326,
	MsgType_TestMessage2 = 373,
	MsgType_ComplexItemMembershipChangedMessage = 402,
	MsgType_ComplexMembershipChangedMessage = 403,
	MsgType_CustomTextureRidePhotoMessage = 404,
	MsgType_DifficultySettingUpdatedMessage = 405,
	MsgType_HighPriorityStaffAlertAssignmentMessage = 406,
	MsgType_MaterialChangedGameMessage = 407,
	MsgType_ParkTimeBlockIndexChangedMessage = 408,
	MsgType_ParkTimeRegularMessage = 409,
	MsgType_ParkTimeStartOfMonthMessage = 410,
	MsgType_ParkTimeNewDayMessage = 411,
	MsgType_NextGuestMetricTickMessage = 412,
	MsgType_RenderEffectChangedMessage = 413,
	MsgType_SandboxSettingsUpdatedMessage = 414,
	MsgType_SecurityGuardAssignedAtPostMessage = 415,
	MsgType_SecurityPostUpdatedMessage = 416,
	MsgType_SouvenirShopDisplayedItemsInComplexChangedMessage = 417,
	MsgType_ParkZoneAreaChangedMessage = 418,
	MsgType_ParkZoneCreatedOrDeletedMessage = 419,
	MsgType_ParkZoneIconChangedMessage = 420,
	MsgType_ParkZoneLockStateChangedMessage = 421,
	MsgType_ParkZoneMembershipChangedMessage = 422,
	MsgType_ParkZoneNameChangedMessage = 423,
	MsgType_ParkZoneShapeChangedMessage = 424,
	MsgType_ParkZoneStyleChangedMessage = 425,
	MsgType_ParkZoneVisibilityChangedMessage = 426,
	MsgType_ParkZoneWidgetChangedMessage = 427,
	MsgType_ParkZoneThemingUpdatedMessage = 428,
	MsgType_UpdateUtilityConsumptionFromDistributorMessage = 429,
	MsgType_FacilityUtilityChangedMessage = 430,
	MsgType_OnPlotSelectedMessage = 431,
	MsgType_PoolEntrancePlacedRemovedMessage = 432,
	MsgType_UtilitiesVisibilityChangedMessage = 433,
	MsgType_ScenarioCompleteMessage = 434,
	MsgType_SceneryBelongingOwnerAttachmentsChangedMessage = 435,
	MsgType_SceneryPlatformOwnerAttachmentsChangedMessage = 436,
	MsgType_RestaurantMonitorUpdateMessage = 437,
	MsgType_SouvenirShopDisplayItemChangedMessage = 438,
	MsgType_PhotoKioskRideLinkChangedMessage = 439,
	MsgType_RidePhotoQualityChangedMessage = 440,
	ParkBoundaryPlotUnlockStateChangedMessage_Purchased = 0,
	ParkBoundaryPlotUnlockStateChangedMessage_NarrativeUnlock = 1,
	ParkBoundaryPlotUnlockStateChangedMessage_UnlockForPurchase = 2,
	SceneryPlacedMessage_Piece = 0,
	SceneryPlacedMessage_Blueprint = 1,
	TutorialEventType_BuildNeedSatisfaction = 0,
	TutorialEventType_HiredStaff = 1,
	TutorialEventType_OpenedStaffManagementUI = 2,
	TutorialEventType_PlaceBench = 3,
	TutorialEventType_PlaceSunLounger = 4,
	TutorialEventType_PlaceBin = 5,
	TutorialEventType_PlaceRide = 6,
	TutorialEventType_PlaceRideExitPath = 7,
	TutorialEventType_PlaceScenery = 8,
	TutorialEventType_PlaceStaffBuilding = 9,
	TutorialEventType_PreviewRide = 10,
	TutorialEventType_StaffSalaryIncreased = 11,
	TutorialEventType_TrainedStaff = 12,
	TutorialEventType_ViewGuestNeeds = 13,
	TutorialEventType_ViewGuestThoughts = 14,
	TutorialEventType_ViewParkRatingBreakdown = 15,
	TutorialEventType_ViewFinancePanel = 16,
	TutorialEventType_ViewGuestThoughtsSummary = 17,
	TutorialEventType_ViewShopsList = 18,
	TutorialEventType_ViewFacilitiesList = 19,
	TutorialEventType_ViewNotificationList = 20,
	TutorialEventType_FixRide = 21,
	TutorialEventType_ViewCoasterBrowser = 22,
	TutorialEventType_CoasterPopupOpenTestingTab = 23,
	TutorialEventType_CoasterPopupVewTestingResults = 24,
	TutorialEventType_CoasterPopupVewTestingHeatmaps = 25,
	TutorialEventType_ViewPopUpMarker = 26,
	TutorialEventType_ClosePopUpMarker = 27,
	TutorialEventType_PlaceFlumePlatform = 28,
	TutorialEventType_ChooseFlatRideBluePrintFromBrowser = 29,
	TutorialEventType_ChooseTrackedRideBluePrintFromBrowser = 30,
	TutorialEventType_ChooseCoasterBluePrintFromBrowser = 31,
	TutorialEventType_SaveBlueprint = 32,
	TutorialEventType_EnterCoasterCamera = 33,
	TutorialEventType_ViewStaffMorale = 34,
	TutorialEventType_InspectStaffInfoPanel = 35,
	TutorialEventType_ViewUtilityGeneratorInfoPanel = 36,
	TutorialEventType_StaffFullyRested = 37,
	TutorialEventType_PlaceFlatRideBlueprint = 38,
	TutorialEventType_PlaceTrackedRideBlueprint = 39,
	TutorialEventType_PlaceCoasterBlueprint = 40,
	TutorialEventType_PlacePoolBlueprint = 41,
	TutorialEventType_InspectParkExpansion = 42,
	TutorialEventType_InspectParkZone = 43,
	TutorialEventType_SelectFlumeFromCustomBrowser = 44,
	TutorialEventType_PlaceFlume = 45,
	TutorialEventType_PlaceFlumeEndPiece = 46,
	TutorialEventType_PlaceFlumeTrack = 47,
	TutorialEventType_InspectPoolSafetyInfoPanel = 48,
	TutorialEventType_InspectParkManagementResearchTab = 49,
	TutorialEventType_ClearEnforcedPlacementAreaOfEntities = 50,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C6480'
	},
	_NAME = 'game::luascript::api::messaging',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C6480'
	}
},

['Game::LuaScript::API::Money'] = {
	AddDeltaToModifyCashOperation = 'function: 00000001405E1020',
	AddModifyCashOperation = 'function: 00000001405E0D90',
	CanModifyCash = 'function: 00000001405E09F0',
	ClearActiveLoan = 'function: 00000001405EF4C0',
	CompleteWorldSerialisationLoad = 'function: 00000001405E11B0',
	Distribute = 'function: 00000001405EF580',
	GetBasePathsCostMultiplier = 'function: 00000001405EE440',
	GetBasePathsRefundMultiplier = 'function: 00000001405EDFE0',
	GetBasePoolsCostMultiplier = 'function: 00000001405EE760',
	GetBasePoolsRefundMultiplier = 'function: 00000001405EDDB0',
	GetBaseRefundMultiplier = 'function: 00000001405ED710',
	GetBaseSceneryRefundMultiplier = 'function: 00000001405EE210',
	GetBaseTrackRefundMultiplier = 'function: 00000001405EDA20',
	GetCash = 'function: 00000001405E0920',
	GetChallengeTaxMultiplier = 'function: 00000001405EECF0',
	GetExpenditureForMonth = 'function: 00000001405E1500',
	GetGuestSpendingSummaryForDay = 'function: 00000001405E75A0',
	GetLifetimeSummary = 'function: 00000001405EA180',
	GetLoanDebt = 'function: 00000001405ED640',
	GetLoanInterestRate = 'function: 00000001405ECA70',
	GetLoanOffer = 'function: 00000001405EC370',
	GetLoanOneOffMaxPaymentData = 'function: 00000001405ED250',
	GetLoanProfitCutPercentage = 'function: 00000001405ECB50',
	GetLoanStage = 'function: 00000001405ED180',
	GetLoansDisabled = 'function: 00000001405EF3D0',
	GetMaxLoanSizeMultiplier = 'function: 00000001405EC2A0',
	GetNumMonthsOfFinanceData = 'function: 00000001405E1430',
	GetParkValue = 'function: 00000001405EE510',
	GetProfitCutMinMaxMultipler = 'function: 00000001405ECF30',
	GetSummaryForDay = 'function: 00000001405E56B0',
	GetSummaryForLastNMonths = 'function: 00000001405E3600',
	GetSummaryForMonth = 'function: 00000001405E1710',
	GetSummaryHoursForDay = 'function: 00000001405E81A0',
	GetTicketTypeAvailable = 'function: 00000001405EE830',
	GetTrackRefundMultiplier = 'function: 00000001405ED940',
	HasUnlimitedCash = 'function: 00000001405E06D0',
	ModifyCash = 'function: 00000001405E0BA0',
	ParkReset = 'function: 00000001405E12B0',
	PayLoan = 'function: 00000001405ED4C0',
	SetChallengeTaxMultiplier = 'function: 00000001405EEB90',
	SetLoanInterestRate = 'function: 00000001405EC910',
	SetLoanStage = 'function: 00000001405ED020',
	SetLoansDisabled = 'function: 00000001405EF250',
	SetMaxLoanSizeMultiplier = 'function: 00000001405EC140',
	SetNoCashChangesFromShopSales = 'function: 00000001405EEE30',
	SetNoCashChangesFromTicketSales = 'function: 00000001405EEF90',
	SetNoCashChangesFromUpkeepCosts = 'function: 00000001405EF0F0',
	SetPathsCostMultiplier = 'function: 00000001405EE0B0',
	SetPathsRefundMultiplier = 'function: 00000001405EDE80',
	SetPoolsCostMultiplier = 'function: 00000001405EE600',
	SetPoolsRefundMultiplier = 'function: 00000001405EDC50',
	SetProfitCutMinMaxMultipler = 'function: 00000001405ECD20',
	SetRefundMultiplier = 'function: 00000001405ED7E0',
	SetSceneryRefundMultiplier = 'function: 00000001405EE2E0',
	SetTicketTypeAvailable = 'function: 00000001405EE9F0',
	SetTrackRefundMultiplier = 'function: 00000001405EDAF0',
	SetUnlimitedCash = 'function: 00000001405E07C0',
	TakeLoan = 'function: 00000001405ED340',
	['userdata: 00000001431C3528'] = true,
	LoanStage_InitialNoLoan = 0,
	LoanStage_ConfirmLoan = 1,
	LoanStage_IncreaseLoanStep1 = 2,
	LoanStage_IncreaseLoanStep2 = 3,
	LoanStage_PayOffLoan = 4,
	LoanStage_StatusUpdate = 5,
	LoanStage_PaymentComplete = 6,
	_M = {
		_CYCLE = 'Reference to table: 00000000187ED0C0'
	},
	_NAME = 'game::luascript::api::money',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187ED0C0'
	}
},

['Game::LuaScript::API::Park'] = {
	ActivateParkEditConstraints = 'function: 000000014061E8A0',
	AddHotelPerk_MoveObject = 'function: 00000001402E2EB0',
	AddObjectToBrush = 'function: 0000000140622420',
	AreSecurityFeaturesEnabled = 'function: 000000014060B780',
	AreStaffMoraleFeatureEnabled = 'function: 000000014060D6D0',
	AreStaffRequireBreaksFeaturesEnabled = 'function: 000000014060D970',
	CanEditEntityAgainstParkBoundary = 'function: 0000000140601590',
	CanToggleParkOpenState = 'function: 00000001402E2FE0',
	ChangeCurrentBrushName = 'function: 0000000140624040',
	ClearAllPlotRestrictions = 'function: 00000001405FBB10',
	ClearEnforcedPlacementArea = 'function: 000000014060E280',
	ClearMinTimeBetweenServices = 'function: 000000014061B710',
	CompleteParkThemingSerialisationLoad = 'function: 000000014060D120',
	CompletePathClutterSerialisationLoad = 'function: 000000014060D020',
	CompleteWorldSerialisationLoad = 'function: 000000014060CDF0',
	CopyNewBrush = 'function: 0000000140623790',
	CreateNewBrush = 'function: 0000000140623590',
	CreateScenarioLocationPoint = 'function: 000000014061E040',
	CreateTimeOfMonth = 'function: 00000001405FEB00',
	DeactivateParkEditConstraints = 'function: 000000014061E960',
	Debug_GetAllParkZones = 'function: 00000001402E2EB0',
	Debug_GetGroupAgnosticIdealRoomPrices = 'function: 0000000140613580',
	Debug_GetRawHotelPrestigeValue = 'function: 00000001406138D0',
	DeleteCurrentBrush = 'function: 0000000140623C20',
	DeleteScenarioLocationPoint = 'function: 000000014061D2F0',
	ExportCurrentBrushToClipboard = 'function: 00000001406252A0',
	FillBin = 'function: 0000000140606350',
	FlagStationForRezoning = 'function: 0000000140619390',
	GetAllHotelPerks = 'function: 000000014060FE30',
	GetAllHotelRoomRunningCosts = 'function: 00000001406114D0',
	GetAllHotelRoomsInWorldCount = 'function: 0000000140611A90',
	GetAllHotelRoomsInWorldOutsideRadius = 'function: 0000000140611780',
	GetAllHotels = 'function: 000000014060EDA0',
	GetAllParkEntrancePriceOptionsAsString = 'function: 000000014061EA20',
	GetAllParkZoneIcons = 'function: 0000000140617180',
	GetAllParkZoneWidgetData = 'function: 00000001406154E0',
	GetAllPoolEntities = 'function: 0000000140624DD0',
	GetAllScenarioLocationPointNames = 'function: 000000014061C000',
	GetAllScenarioLocationPointNamesCategorised = 'function: 000000014061C1E0',
	GetAllScenarioLocationPointsForCategory = 'function: 000000014061CA10',
	GetAllThemes = 'function: 0000000140608700',
	GetAllVendingMachineEntityIDs = 'function: 0000000140619520',
	GetAverageAndMaxPoolPrestige = 'function: 00000001406247C0',
	GetAverageAndMinPoolCleanliness = 'function: 0000000140624B20',
	GetAverageNumberOfRidesPerGuestYesterday = 'function: 0000000140603F90',
	GetAverageThemingForFlatRide = 'function: 0000000140607930',
	GetAverageThemingForRide = 'function: 00000001406075A0',
	GetAverageThemingForTrackRide = 'function: 0000000140607B70',
	GetAverageThemingForZone = 'function: 0000000140607F20',
	GetBaseAudioDistortionActive = 'function: 00000001406013F0',
	GetBaseAudioDistortionIntensity = 'function: 0000000140601310',
	GetBaseAudioDistortionName = 'function: 00000001406010F0',
	GetBaseAudioDistortionSFXName = 'function: 0000000140601200',
	GetBinDesirabilityMultiplier = 'function: 0000000140606700',
	GetBlockIndex = 'function: 00000001405FE870',
	GetBrushNames = 'function: 0000000140622B40',
	GetBrushTags = 'function: 0000000140625930',
	GetCamerasOfType = 'function: 000000014060B450',
	GetCostForHotelPerkChange = 'function: 0000000140610430',
	GetCurrentBrushIndex = 'function: 0000000140623280',
	GetCurrentBrushObjectList = 'function: 0000000140621BF0',
	GetCurrentBrushSettings = 'function: 0000000140621530',
	GetDayDurationInSeconds = 'function: 00000001405FF770',
	GetDebugSettings = 'function: 0000000140623D10',
	GetDifficultySettingValue = 'function: 0000000140626210',
	GetDifficultySettingsAsTable = 'function: 00000001406263A0',
	GetEnforcedPlacementArea = 'function: 000000014060DE70',
	GetEntityName = 'function: 0000000140613B40',
	GetFacilitiesVandalisedCount = 'function: 00000001406276E0',
	GetFastPassTicketPrice = 'function: 0000000140603970',
	GetFastPassTicketPriceState = 'function: 0000000140603B70',
	GetFlatRideSceneryPrestigeBonus = 'function: 0000000140606F40',
	GetFoliageBrushPoints = 'function: 0000000140620A00',
	GetFreeParkEntrance = 'function: 0000000140603730',
	GetGroupAverageTimeInParkYesterday = 'function: 0000000140602380',
	GetHotelAttractivenessMultiplier = 'function: 0000000140612D80',
	GetHotelAvailableRoomCounts = 'function: 0000000140612080',
	GetHotelHasPerk = 'function: 0000000140610270',
	GetHotelPerk = 'function: 000000014060F880',
	GetHotelRoomCosts = 'function: 0000000140610E70',
	GetHotelRoomOwner = 'function: 0000000140610C30',
	GetHotelRoomRadius = 'function: 000000014060EB80',
	GetHotelRoomRunningCost = 'function: 0000000140611330',
	GetHotelRoomType = 'function: 000000014060EC10',
	GetHotelRooms = 'function: 000000014060EFE0',
	GetHotelRoomsCount = 'function: 000000014060F380',
	GetHotelRoomsOfType = 'function: 000000014060F590',
	GetHotelRunningCostMultiplier = 'function: 0000000140612FC0',
	GetHotelSceneryProp = 'function: 0000000140613200',
	GetHotelSeperateRoomCounts = 'function: 0000000140611CF0',
	GetHotelStarCount = 'function: 00000001406133F0',
	GetInitialCashMultiplier = 'function: 0000000140626B20',
	GetLastBreakdownDate = 'function: 000000014061AEF0',
	GetLastValidWear = 'function: 000000014061ACE0',
	GetLifetimeApprehendedPickpockets = 'function: 0000000140627950',
	GetLifetimeApprehendedVandals = 'function: 0000000140627A20',
	GetLifetimeClutterQuantities = 'function: 00000001406051F0',
	GetLifetimePickpockets = 'function: 00000001406277B0',
	GetLifetimeVandals = 'function: 0000000140627880',
	GetLightingFixedEnabled = 'function: 00000001405FF2F0',
	GetLightingFixedTime = 'function: 00000001405FF210',
	GetLightingStartEndTime = 'function: 00000001405FF110',
	GetListOfCameras = 'function: 0000000140609CC0',
	GetLitterClutterDisabled = 'function: 000000014060E410',
	GetLitterGenerationMultiplier = 'function: 00000001406064D0',
	GetLocTagForTheme = 'function: 0000000140608A30',
	GetMaxParkZoneCount = 'function: 0000000140614A30',
	GetMaxPossibleThemingForRide = 'function: 0000000140607E90',
	GetMinPossibleThemingForRide = 'function: 0000000140607E00',
	GetMinTimeBetweenServices = 'function: 000000014061B290',
	GetMonthDurationInSeconds = 'function: 00000001405FF6A0',
	GetNextBlockIndex = 'function: 00000001405FE940',
	GetNumberOfBinsAndOverflowingBins = 'function: 00000001406052E0',
	GetNumberOfHoursInDay = 'function: 00000001405FFC40',
	GetOpenConnectedPoolCount = 'function: 0000000140624530',
	GetOpenConnectedPoolCountYesterday = 'function: 0000000140624610',
	GetOpeningClosingProps = 'function: 00000001405FEC60',
	GetOpeningClosingTime = 'function: 00000001405FED50',
	GetParkAssetCost = 'function: 0000000140601D40',
	GetParkBoundaryPlotUIData = 'function: 00000001405FC7C0',
	GetParkDay = 'function: 00000001405FDD80',
	GetParkEfficiency = 'function: 0000000140603DD0',
	GetParkEntranceAdultTicketPrice = 'function: 00000001406028A0',
	GetParkEntranceChildTicketPrice = 'function: 0000000140602C60',
	GetParkEntranceFocus = 'function: 0000000140601700',
	GetParkEntrancePriceOptionAsString = 'function: 000000014061EBE0',
	GetParkEntrancePriceState = 'function: 0000000140602E60',
	GetParkGeome = 'function: 0000000140604750',
	GetParkMonthsOpen = 'function: 00000001406027D0',
	GetParkName = 'function: 0000000140604A60',
	GetParkRatingsYesterday = 'function: 0000000140602460',
	GetParkScale = 'function: 0000000140601C70',
	GetParkThemes = 'function: 0000000140608490',
	GetParkThemingCoverage = 'function: 00000001406083B0',
	GetParkThemingCumulativeWeight = 'function: 00000001406082D0',
	GetParkVisitorStats = 'function: 0000000140601EC0',
	GetParkVisitorTodayStats = 'function: 0000000140601FD0',
	GetParkVisitorYesterdayRefundStats = 'function: 0000000140602250',
	GetParkVisitorYesterdayStats = 'function: 0000000140602110',
	GetParkZoneArea = 'function: 0000000140615B70',
	GetParkZoneColour = 'function: 0000000140616B80',
	GetParkZoneCount = 'function: 0000000140614960',
	GetParkZoneDatastoreData = 'function: 0000000140614D60',
	GetParkZoneEntityIDFromStableID = 'function: 00000001406173E0',
	GetParkZoneFallbackID = 'function: 0000000140614720',
	GetParkZoneFocusPos = 'function: 0000000140617E00',
	GetParkZoneForFlumePlatform = 'function: 0000000140619170',
	GetParkZoneForPatrolPoint = 'function: 0000000140618BA0',
	GetParkZoneForScenery = 'function: 0000000140618DC0',
	GetParkZoneForStation = 'function: 0000000140618F50',
	GetParkZoneIDFromPoint = 'function: 0000000140614AC0',
	GetParkZoneIcon = 'function: 0000000140616DE0',
	GetParkZoneName = 'function: 0000000140615D00',
	GetParkZoneName_DesignOverride = 'function: 00000001406166E0',
	GetParkZoneName_PlayerOverride = 'function: 0000000140616490',
	GetParkZoneStableIDFromEntityID = 'function: 0000000140617570',
	GetParkZonesLocked = 'function: 00000001406178C0',
	GetParkZonesRenderPlaneHeight = 'function: 0000000140617D70',
	GetParkZonesWithNoShape = 'function: 0000000140616930',
	GetPathClutterQuantities = 'function: 0000000140604FF0',
	GetPlacementPartNames = 'function: 000000014060C0D0',
	GetPlayerControlledCameraData = 'function: 0000000140608E90',
	GetPlayerOwnedPlotsOfLandCount = 'function: 00000001405FA4A0',
	GetPlotData = 'function: 00000001405FACF0',
	GetPlotIDForPosition = 'function: 00000001405FAB50',
	GetPlotUIData = 'function: 00000001405FD1B0',
	GetPoolCount = 'function: 00000001406242E0',
	GetPoolPassPrice = 'function: 0000000140604180',
	GetPoolPassPriceState = 'function: 00000001406044F0',
	GetPriorityPassRequired = 'function: 0000000140612AF0',
	GetPropAsHours = 'function: 00000001405FFE00',
	GetRepairAllVandalisedCost = 'function: 0000000140628070',
	GetRepairVandalisedCost = 'function: 0000000140627E20',
	GetRideStationParkZone = 'function: 0000000140618980',
	GetSafePositionForGuests = 'function: 000000014060CC30',
	GetScenarioLocationPoint = 'function: 000000014061C7C0',
	GetSceneryScore = 'function: 0000000140606D30',
	GetSceneryWeight = 'function: 0000000140606B80',
	GetSpawnPoints = 'function: 000000014060C9D0',
	GetTimeNumberOfBlocks = 'function: 00000001405FFBB0',
	GetTimeOfDayActual = 'function: 00000001405FDE50',
	GetTimeOfDayApparent = 'function: 00000001405FE2A0',
	GetTimeOfDayForBlockIndex = 'function: 00000001405FE610',
	GetTimeOfDayLighting = 'function: 00000001405FE460',
	GetTimeOfDayRideCamOverride = 'function: 00000001405FE120',
	GetTimeOfDayUserOverride = 'function: 00000001405FDFA0',
	GetTimeOfMonth = 'function: 00000001405FEA30',
	GetTimePropBrokenDown = 'function: 000000014061A670',
	GetTimeSinceRefurbishment = 'function: 000000014061B0F0',
	GetTimeUntilService = 'function: 000000014061A8D0',
	GetTotalCriminalsInPark = 'function: 0000000140627AF0',
	GetTotalLandCount = 'function: 00000001405FD9B0',
	GetTotalPoolPrestige = 'function: 00000001406246E0',
	GetTrackedRideSceneryPrestigeBonus = 'function: 0000000140607240',
	GetUIListOfCameras = 'function: 000000014060A700',
	GetUnownedHotelRooms = 'function: 0000000140612810',
	GetVC_ParkZoneBrushRadius = 'function: 0000000140617B20',
	GetVandalisedFurnitureCount = 'function: 0000000140627CA0',
	GetVendingMachineDebug = 'function: 0000000140619C90',
	GetVendingMachineMaintenanceLevel = 'function: 000000014061A090',
	GetVendingMachineType = 'function: 0000000140619B20',
	GetVisualPathClutterQuantities = 'function: 00000001406050E0',
	GetVomitClutterDisabled = 'function: 000000014060E500',
	GetWear = 'function: 000000014061AAD0',
	GetZoneRideStations = 'function: 00000001406185B0',
	GetZonedFacilities = 'function: 0000000140618070',
	GreyOutAllPlots = 'function: 00000001405FC660',
	HasHighPriorityStaffAlert = 'function: 0000000140626F90',
	HasSpawnPoint = 'function: 000000014060C8F0',
	HideSceneryPiece = 'function: 000000014061BC20',
	ImportBrushFromClipboard = 'function: 0000000140625620',
	IsAreaClearOfDeletableEntities = 'function: 000000014060E330',
	IsBench = 'function: 0000000140606030',
	IsBin = 'function: 00000001406061C0',
	IsDifficultySettingActive = 'function: 0000000140626C00',
	IsDifficultySettingOnlyOnMainMenu = 'function: 0000000140626D90',
	IsGuestDestinationAdvert = 'function: 000000014060D510',
	IsHotel = 'function: 000000014060E8B0',
	IsHotelRoom = 'function: 000000014060EA10',
	IsHotelSynced = 'function: 0000000140612440',
	IsParkEntrance = 'function: 0000000140601830',
	IsParkOpenForGuests = 'function: 0000000140601A20',
	IsParkZoneEntity = 'function: 00000001406147F0',
	IsPlayerControlledCamera = 'function: 0000000140608CA0',
	IsPositionWithinParkBoundary = 'function: 00000001405FA9C0',
	IsVandalised = 'function: 0000000140627580',
	IsVendingMachine = 'function: 00000001406197C0',
	IsVendingMachineBrokenDown = 'function: 000000014061A4D0',
	IsZoltran = 'function: 00000001406199A0',
	ParkBoundaryFlagToString = 'function: 00000001405FDB80',
	ParkReset = 'function: 000000014060D1D0',
	ReloadBrushes = 'function: 0000000140624230',
	RemoveAllObjectsFromBrush = 'function: 0000000140622A50',
	RemoveHotelPerk_MoveObject = 'function: 00000001402E2EB0',
	RemoveObjectFromBrush = 'function: 0000000140622810',
	RenameScenarioLocationPoint = 'function: 000000014061E540',
	RepairAllVandalisedItems = 'function: 0000000140628520',
	RepairVandalisedItem = 'function: 00000001406282A0',
	RequestBreakdown = 'function: 000000014061B580',
	RequestService = 'function: 000000014061B410',
	ResetAudioDistortion = 'function: 0000000140600790',
	ResetColourGrading = 'function: 0000000140600690',
	ResetEntityName = 'function: 0000000140613E80',
	ResetFilmGrain = 'function: 0000000140600500',
	ResetVignette = 'function: 00000001406005C0',
	SaveBrushes = 'function: 0000000140623B70',
	SendHighPriorityStaffAlert = 'function: 0000000140627220',
	SendSandboxSettingsUpdatedMessage = 'function: 0000000140626ED0',
	SetAudioDistortion = 'function: 0000000140600E10',
	SetBinDesirabilityMultiplier = 'function: 00000001406067D0',
	SetBrushIntensity = 'function: 000000014061F5D0',
	SetBrushSize = 'function: 000000014061F460',
	SetBrushTagsToSave = 'function: 0000000140625B70',
	SetCanPlaceOnPaths = 'function: 000000014061F010',
	SetCanPlaceOnSteep = 'function: 000000014061EEA0',
	SetCanPlaceToSurface = 'function: 000000014061ED30',
	SetCheckForCollisions = 'function: 000000014061F180',
	SetClosingProp = 'function: 00000001405FEFB0',
	SetColourGrading = 'function: 0000000140600BC0',
	SetCreateNewGroup = 'function: 000000014061F2F0',
	SetCurrentBrushUsingName = 'function: 0000000140623350',
	SetDifficultySettingsFromTable = 'function: 00000001406267A0',
	SetEnforcedPlacementArea = 'function: 000000014060DC10',
	SetEntityDesignerNameOverride = 'function: 00000001406142C0',
	SetFastPassTicketPrice = 'function: 0000000140603800',
	SetFastPassTicketPriceState = 'function: 0000000140603C40',
	SetFilmGrain = 'function: 00000001406008C0',
	SetFreeFastPass = 'function: 00000001406033C0',
	SetFreeParkEntrance = 'function: 00000001406030C0',
	SetFreePoolPass = 'function: 0000000140603240',
	SetHotelAttractivenessMultiplier = 'function: 0000000140612E60',
	SetHotelRoomCost_MoveObject = 'function: 00000001402E2EB0',
	SetHotelRooms_MoveObject = 'function: 00000001402E2EB0',
	SetHotelRunningCostMultiplier = 'function: 00000001406130A0',
	SetHotelSynced = 'function: 0000000140612530',
	SetHoveredPlotID = 'function: 00000001405FC020',
	SetLightingEndProp = 'function: 00000001405FF540',
	SetLightingStartProp = 'function: 00000001405FF3E0',
	SetLightingTimeOfDayUserOverride = 'function: 00000001405FFF40',
	SetLightingTimeOfDayUserOverrideEnabled = 'function: 0000000140600150',
	SetLitterClutterDisabled = 'function: 000000014060E5F0',
	SetLitterEnabled = 'function: 0000000140606930',
	SetLitterGenerationMultiplier = 'function: 00000001406065A0',
	SetLockedSceneryContributesToTheming = 'function: 0000000140608160',
	SetMinTimeBetweenServices = 'function: 000000014061B850',
	SetObjectRadius = 'function: 000000014061FDC0',
	SetObjectToBrush = 'function: 0000000140622600',
	SetOnlyCheckSameObject = 'function: 00000001406208A0',
	SetOpeningProp = 'function: 00000001405FEE50',
	SetParkBoundaryPlotLockForPurchase = 'function: 00000001405FBD30',
	SetParkEntranceAdultTicketPrice = 'function: 0000000140602AA0',
	SetParkEntrancePriceState = 'function: 0000000140602F30',
	SetParkGeome = 'function: 0000000140604860',
	SetParkName = 'function: 0000000140604B70',
	SetParkOpenForGuests = 'function: 0000000140601B10',
	SetParkRatingForHotels = 'function: 0000000140611B60',
	SetParkRatingManager = 'function: 0000000140604DE0',
	SetParkZoneIcon = 'function: 0000000140616F80',
	SetParkZoneName_DesignOverride = 'function: 00000001406161E0',
	SetParkZoneName_PlayerOverride = 'function: 0000000140615EA0',
	SetParkZonesLocked = 'function: 00000001406176E0',
	SetParkZonesVisibility = 'function: 0000000140617C10',
	SetPointsPerPlacement = 'function: 00000001406205E0',
	SetPoolPassPrice = 'function: 0000000140604380',
	SetPoolPassPriceState = 'function: 00000001406045C0',
	SetPreviewEnabled = 'function: 0000000140620740',
	SetPriorityPassRequired_MoveObject = 'function: 00000001402E2EB0',
	SetRandomRotationAll = 'function: 000000014061FC10',
	SetRandomRotationYaw = 'function: 000000014061FA60',
	SetRandomScale = 'function: 000000014061FF70',
	SetRotateToSurface = 'function: 000000014061F8B0',
	SetScaleMax = 'function: 00000001406202D0',
	SetScaleMin = 'function: 0000000140620120',
	SetSecurityFeatureSettings = 'function: 000000014060B890',
	SetSelectedPlotID = 'function: 00000001405FC1B0',
	SetShowParkBoundary = 'function: 00000001405FA5D0',
	SetStaffMoraleFeatureSettings = 'function: 000000014060D7C0',
	SetStaffRequireBreaksFeaturesEnabled = 'function: 000000014060DA60',
	SetTicketTypeAvailable = 'function: 0000000140603540',
	SetTimeOfDayNarrativeOverride = 'function: 000000014061BA00',
	SetTimeOfDayUserOverride = 'function: 00000001406002B0',
	SetTimeToClosing = 'function: 00000001405FF930',
	SetTimeToOpening = 'function: 00000001405FF840',
	SetTooSteepValue = 'function: 000000014061F740',
	SetTriesBeforeFailure = 'function: 0000000140620480',
	SetVC_ParkZoneBrushRadius = 'function: 00000001406179B0',
	SetVendingMachineMaintenanceLevel = 'function: 000000014061A230',
	SetVignette = 'function: 0000000140600A30',
	SetVomitClutterDisabled = 'function: 000000014060E750',
	SetVoxelTerrainEntityID = 'function: 00000001405FA7E0',
	ShouldCreatePlotSpatials = 'function: 00000001405FBEB0',
	ShouldEntityShowCrimeAffecterGuiShapesWhenPlacing = 'function: 000000014060BA20',
	ShowHideAllPlots = 'function: 00000001405FC3C0',
	ShowSceneryPiece = 'function: 000000014061BE10',
	TakeFallbackParkZoneCompletionToken = 'function: 0000000140614630',
	TestConvexParkBoundaryForCamera = 'function: 00000001405FB5E0',
	ToggleAllCrimeAffecterGUIShapes = 'function: 000000014060BF70',
	ToggleCrimeAffecterGUIShape = 'function: 000000014060BD10',
	UnlockAllPlots = 'function: 00000001405FB9B0',
	UnlockParkBoundaryPlot = 'function: 00000001405FB830',
	UpdateAllBrushObjectLists = 'function: 0000000140621480',
	UpdateCollisionIgnoreFlags = 'function: 0000000140627430',
	UpdateCurrentBrushMinObjectRadius = 'function: 0000000140622300',
	UpdateScenarioLocationPoint = 'function: 000000014061E2D0',
	UpdateTime = 'function: 00000001405FFA20',
	['userdata: 00000001431C3550'] = true,
	DifficultySettingName_LandCosts = 0,
	DifficultySettingName_UniquePiecesOfLand = 1,
	DifficultySettingName_StartingCashMultiplier = 2,
	DifficultySettingName_FairPriceMultiplier = 3,
	DifficultySettingName_LoanRepaymentAmountMultiplier = 4,
	DifficultySettingName_RefundCostMultiplier = 5,
	DifficultySettingName_GuestTolerances = 7,
	DifficultySettingName_GuestPreferences = 8,
	DifficultySettingName_GuestRideExpectations = 9,
	DifficultySettingName_StaffWageMultiplier = 10,
	DifficultySettingName_StaffBreaks = 11,
	DifficultySettingName_SecurityFeaturesEnabled = 12,
	ExpenditureCategory_RideConstruction = 0,
	ExpenditureCategory_RideRefurbishment = 1,
	ExpenditureCategory_SceneryConstruction = 2,
	ExpenditureCategory_SceneryRunningCosts = 3,
	ExpenditureCategory_FacilityConstruction = 4,
	ExpenditureCategory_FacilityRunningCosts = 5,
	ExpenditureCategory_BarrierConstruction = 6,
	ExpenditureCategory_ParkEntranceTickets = 7,
	ExpenditureCategory_RideTickets = 8,
	ExpenditureCategory_CoasterTickets = 9,
	ExpenditureCategory_FacilitySales = 10,
	ExpenditureCategory_FastPassSales = 11,
	ExpenditureCategory_PoolPassSales = 12,
	ExpenditureCategory_JanitorWages = 13,
	ExpenditureCategory_MechanicWages = 14,
	ExpenditureCategory_EntertainerWages = 15,
	ExpenditureCategory_LifeguardWages = 16,
	ExpenditureCategory_VendorWages = 17,
	ExpenditureCategory_RideAttendantWages = 18,
	ExpenditureCategory_SecurityWages = 19,
	ExpenditureCategory_LoanRecieved = 20,
	ExpenditureCategory_LoanLumpRepayment = 21,
	ExpenditureCategory_LoanProfitCutRepayment = 22,
	ExpenditureCategory_Marketing = 23,
	ExpenditureCategory_Terraforming = 24,
	ExpenditureCategory_PathPlacement = 25,
	ExpenditureCategory_Rewards = 26,
	ExpenditureCategory_RideRebrand = 27,
	ExpenditureCategory_TriggeredSceneryCosts = 28,
	ExpenditureCategory_HotelCosts = 29,
	ExpenditureCategory_HotelSales = 30,
	ExpenditureCategory_SmallAttractionsSales = 31,
	ExpenditureCategory_SmallAttractionsRunningCosts = 32,
	ExpenditureCategory_RestaurantCosts = 33,
	ExpenditureCategory_RestaurantSales = 34,
	ExpenditureCategory_ChallengeTax = 35,
	ExpenditureCategory_AttractionPower = 36,
	ExpenditureCategory_AttractionWater = 37,
	ExpenditureCategory_FoodPower = 38,
	ExpenditureCategory_DrinkPower = 39,
	ExpenditureCategory_SouvenirPower = 40,
	ExpenditureCategory_InfoPower = 41,
	ExpenditureCategory_RidePhotoPower = 42,
	ExpenditureCategory_TransportPower = 43,
	ExpenditureCategory_InfrastructurePower = 44,
	ExpenditureCategory_SceneryPower = 45,
	ExpenditureCategory_RestaurantPower = 46,
	ExpenditureCategory_ModularSouvenirPower = 47,
	ExpenditureCategory_FoodSales = 48,
	ExpenditureCategory_DrinkSales = 49,
	ExpenditureCategory_SouvenirSales = 50,
	ExpenditureCategory_InfoSales = 51,
	ExpenditureCategory_RidePhotoSales = 52,
	ExpenditureCategory_ModularSouvenirSales = 53,
	ExpenditureCategory_FoodStock = 54,
	ExpenditureCategory_DrinkStock = 55,
	ExpenditureCategory_SouvenirStock = 56,
	ExpenditureCategory_InfoStock = 57,
	ExpenditureCategory_RidePhotoStock = 58,
	ExpenditureCategory_ModularSouvenirStock = 59,
	ExpenditureCategory_ParkEntranceRefund = 60,
	ExpenditureCategory_PoolPassRefund = 61,
	ExpenditureCategory_RideRefund = 62,
	ExpenditureCategory_CoasterRefund = 63,
	ExpenditureCategory_FastPassRefund = 64,
	ExpenditureCategory_CriminalFines = 65,
	ExpenditureCategory_CriminalTheft = 66,
	ExpenditureCategory_Uncategorised = 67,
	Fail_BrushAlreadyExists = 0,
	Fail_BrushSettings = 1,
	Fail_BrushObjectSettings = 2,
	Fail_BadXML = 3,
	FoliageBrush_MinBrushScale = 0.5,
	FoliageBrush_MinBrushSize = 1,
	FoliageBrush_MinBrushIntensity = 1,
	FoliageBrush_MaxBrushScale = 3.0,
	FoliageBrush_MaxObjectsInBrush = 20,
	FoliageBrush_MaxBrushes = 28,
	FoliageBrush_MaxBrushSize = 30,
	FoliageBrush_MaxBrushIntensity = 100,
	HotelPerk_RoomService = 0,
	HotelPerk_Restaurant = 1,
	HotelPerk_WiFi = 2,
	HotelPerk_Spa = 3,
	HotelPerk_Gym = 4,
	HotelPerk_Arcade = 5,
	HotelPerk_Count = 6,
	MarketingActionType_OpenNewAdPanel = 0,
	MarketingActionType_AdActiveChange = 1,
	MarketingActionType_CostChange = 2,
	NotificationContextType_None = 0,
	NotificationContextType_InfoPanelEntity = 1,
	NotificationContextType_InfoPanelRideStation = 2,
	NotificationContextType_InfoPanelPlacementPart = 3,
	NotificationContextType_EODSummaryData = 4,
	NotificationContextType_HireMoreStaff = 5,
	NotificationContextType_HireMoreStaffAndInfoPanel = 6,
	NotificationContextType_GuestThoughtsData = 7,
	NotificationContextType_VendorEntityAndShopInfoPanelPlacementPart = 8,
	NotificationContextType_InfoPanelEntityAndNumber = 9,
	NotificationContextType_AddStaffBuilding = 10,
	NotificationContextType_Number = 11,
	NotificationContextType_InfoPanelQueueForRide = 12,
	NotificationContextType_HeatmapOnly = 13,
	NotificationContextType_Advertisement = 14,
	NotificationContextType_Loan = 15,
	NotificationContextType_ParkRating = 16,
	NotificationContextType_SouvenirShopComplex = 17,
	NotificationContextType_AddRidePhotoBuilding = 18,
	NotificationContextType_AddRideCameraToRide = 19,
	NotificationContextType_Count = 20,
	NotificationType_StaffWantsToQuit = 0,
	NotificationType_StaffQuit = 1,
	NotificationType_RideBroken = 2,
	NotificationType_RideNeedsMaintenance = 3,
	NotificationType_RideIncomplete = 4,
	NotificationType_RideUntested = 5,
	NotificationType_RideNoEntrance = 6,
	NotificationType_RideNoExit = 7,
	NotificationType_RideLongQueueTime = 8,
	NotificationType_RideLongRideTime = 9,
	NotificationType_RideTooExpensive = 10,
	NotificationType_RideTooCheap = 11,
	NotificationType_ToiletsTooExpensive = 12,
	NotificationType_BodyDryerTooExpensive = 13,
	NotificationType_GuestsHungry = 14,
	NotificationType_GuestsThirsty = 15,
	NotificationType_GuestsTired = 16,
	NotificationType_GuestsTrapped = 17,
	NotificationType_GuestsStuckInPark = 18,
	NotificationType_GuestsToiletNeed = 19,
	NotificationType_GuestsEntertainment = 20,
	NotificationType_AilmentNausea = 21,
	NotificationType_AilmentPanic = 22,
	NotificationType_AilmentSunburn = 23,
	NotificationType_ParkLitter = 24,
	NotificationType_NoStaffBuilding = 25,
	NotificationType_InsufficentStaffRooms = 26,
	NotificationType_ShopEmptyInitial = 27,
	NotificationType_RideNoPower = 28,
	NotificationType_RideMissingStaff = 29,
	NotificationType_ShopMissingStaff = 30,
	NotificationType_StaffLongWalkTimes = 31,
	NotificationType_StaffLongIdleTimes = 32,
	NotificationType_ToiletUnusable = 33,
	NotificationType_ToiletDirty = 34,
	NotificationType_ChangingRoomUnusable = 35,
	NotificationType_ChangingRoomDirty = 36,
	NotificationType_PoolUnsafe = 37,
	NotificationType_PoolGettingUnsafe = 38,
	NotificationType_PoolDirty = 39,
	NotificationType_PoolGettingDirty = 40,
	NotificationType_CantReachRide = 41,
	NotificationType_CantReachPool = 42,
	NotificationType_ShopNoPower = 43,
	NotificationType_GuestsDesperate = 44,
	NotificationType_PumpBroken = 45,
	NotificationType_PumpNeedsRepairs = 46,
	NotificationType_GeneratorBroken = 47,
	NotificationType_GeneratorNeedsRepairs = 48,
	NotificationType_StaffNoBreak = 49,
	NotificationType_StaffNotTakingBreaks = 50,
	NotificationType_RideTooScary = 51,
	NotificationType_RideTooNauseating = 52,
	NotificationType_StallNoPathTo = 53,
	NotificationType_LifeguardPostEmpty = 54,
	NotificationType_ScheduledTaskOverridenTemporarily = 55,
	NotificationType_ScheduledTaskOverriden = 56,
	NotificationType_ScheduledTaskNoLongerAvailable = 57,
	NotificationType_RideQueuePaused = 58,
	NotificationType_ShopQueuePaused = 59,
	NotificationType_StaffLowPay = 60,
	NotificationType_ParkComplexityWarning = 61,
	NotificationType_NoWorkshop = 62,
	NotificationType_NoChangingRoom = 63,
	NotificationType_NoInfoKiosk = 64,
	NotificationType_LowLifeguardCoverage = 65,
	NotificationType_FlumeDirty = 66,
	NotificationType_RideServiceExpired = 67,
	NotificationType_GeneratorServiceExpired = 68,
	NotificationType_PumpServiceExpired = 69,
	NotificationType_RideCriticalCondition = 70,
	NotificationType_GeneratorCriticalCondition = 71,
	NotificationType_PumpCriticalCondition = 72,
	NotificationType_AdvertCancelledLackOfFunds = 73,
	NotificationType_AdvertMaxAwareness = 74,
	NotificationType_RideFinishedTesting = 75,
	NotificationType_LoanRepaid = 76,
	NotificationType_ParkDailySummary = 77,
	NotificationType_LowGuestsOnRides = 78,
	NotificationType_PoolOverCapacity = 79,
	NotificationType_ParkProfitNegative = 80,
	NotificationType_ParkRatingUp = 81,
	NotificationType_ParkRatingDown = 82,
	NotificationType_GeneratorInaccessible = 83,
	NotificationType_PumpInaccessible = 84,
	NotificationType_RideNoPathToExit = 85,
	NotificationType_RideNoEntrancePath = 86,
	NotificationType_RideAutoRefurbish = 87,
	NotificationType_StationLoadingMissing = 88,
	NotificationType_StationUnloadingMissing = 89,
	NotificationType_StaffTrappedInPark = 90,
	NotificationType_FlumeNoPathToExit = 91,
	NotificationType_FlumeNoEntrancePath = 92,
	NotificationType_FlumeUntested = 93,
	NotificationType_FlumeNoEntrance = 94,
	NotificationType_FlumeNoExit = 95,
	NotificationType_FlumeMissingStaff = 96,
	NotificationType_MultipleParkEntryRefunds = 97,
	NotificationType_MultiplePoolPassRefunds = 98,
	NotificationType_FlumeJettison = 99,
	NotificationType_StaffLongWaitAssignment = 100,
	NotificationType_RestaurantNoTables = 101,
	NotificationType_RestaurantNotEnoughTables = 102,
	NotificationType_RestaurantDirtyTableSome = 103,
	NotificationType_RestaurantDirtyTableLots = 104,
	NotificationType_RestaurantDirtyTableAll = 105,
	NotificationType_RestaurantTableInaccessibleSingle = 106,
	NotificationType_RestaurantTableInaccessibleMultiple = 107,
	NotificationType_RestaurantTableInaccessibleAll = 108,
	NotificationType_ThiefReported = 109,
	NotificationType_HighNumberOfThefts = 110,
	NotificationType_FacilityVandalised = 111,
	NotificationType_MultipleFacilitiesVandalised = 112,
	NotificationType_SecurityGuardsNeeded = 113,
	NotificationType_CaughtOnCamera = 114,
	NotificationType_PickpocketEjected = 115,
	NotificationType_VandalEjected = 116,
	NotificationType_ModularSouvenirShopNoDisplays = 117,
	NotificationType_ModularSouvenirShopCounterInaccessibleSingle = 118,
	NotificationType_ModularSouvenirShopCounterInaccessibleMultiple = 119,
	NotificationType_ModularSouvenirShopCounterInaccessibleAll = 120,
	NotificationType_ModularSouvenirShopDisplayInaccessibleSingle = 121,
	NotificationType_ModularSouvenirShopDisplayInaccessibleMultiple = 122,
	NotificationType_ModularSouvenirShopDisplayInaccessibleAll = 123,
	NotificationType_ModularSouvenirShopLongQueue = 124,
	NotificationType_NoKioskLinkedToRideCamera = 125,
	NotificationType_NoRideCameraLinkedToKiosk = 126,
	NotificationType_Count = 127,
	PBF_NarrativeUnlock = 0,
	PBF_PurchaseUnlock = 1,
	PBF_NoFlatRides = 2,
	PBF_NoTrackedRides = 3,
	PBF_NoTrack = 4,
	PBF_NoScenery = 5,
	PBF_NoTerrain = 6,
	PBF_NoWaterVolumes = 7,
	PBF_NoPathVolumes = 8,
	PBF_NoFlumePlatform = 10,
	PBF_NoFlumeTrack = 11,
	PBF_OverrideTopHeight = 12,
	PBF_OverrideBottomHeight = 13,
	PBF_SIZE = 14,
	Park_Misc = 0,
	Park_Ticket = 1,
	Park_Details = 2,
	Park_State = 3,
	PriceState_SET = 0,
	PriceState_FAIR = 1,
	RoomType_Normal = 0,
	RoomType_Luxury = 1,
	RoomType_Count = 2,
	ScenarioLocationPoint_TrainEventType_Pause = 1,
	ScenarioLocationPoint_TrainEventType_NormalSpeed = 2,
	ScenarioLocationPoint_TrainEventType_FastSpeed = 3,
	ScenarioLocationPoint_TrainEventType_VeryFastSpeed = 4,
	ScenarioLocationPoint_Type_Blank = 0,
	ScenarioLocationPoint_Type_Camera = 1,
	ScenarioLocationPoint_Type_PopUpText = 2,
	ScenarioLocationPoint_Type_TrainEvent = 3,
	SecurityTabType_Security = 0,
	SecurityTabType_Camera = 1,
	SecurityTabType_Vandalise = 2,
	SpecialEffectsTabType_Speaker = 0,
	SpecialEffectsTabType_Sequence = 1,
	Stats_Staff = 0,
	Stats_RidesAndFacilities = 1,
	Stats_Security = 2,
	Stats_Vandalism = 3,
	TicketExpensiveState_NotExpensive = 0,
	TicketExpensiveState_Expensive = 1,
	TicketExpensiveState_VeryExpensive = 2,
	TicketState_ParkEntry = 0,
	TicketState_PoolPass = 1,
	TicketState_FastPass = 2,
	TrendState_Hidden = 0,
	TrendState_Up = 1,
	TrendState_Down = 2,
	TrendState_Unchanged = 3,
	VendingMachineType_VendingMachine = 0,
	VendingMachineType_RandomItem = 1,
	CameraType_SecurityCamera = 0,
	Success = 4,
	_M = {
		_CYCLE = 'Reference to table: 00000000187ED900'
	},
	_NAME = 'game::luascript::api::park',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187ED900'
	}
},

['Game::LuaScript::API::Physics'] = {
	['userdata: 00000001431C3558'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CAD80'
	},
	_NAME = 'game::luascript::api::physics',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CAD80'
	}
},

['Game::LuaScript::API::Placement'] = {
	EntityIDToPlacementID = 'function: 000000014062CBF0',
	FinishWorldSerialisationLoad = 'function: 000000014062D560',
	GetPartResourceName = 'function: 000000014062D670',
	GetRequiredDLC = 'function: 000000014062C600',
	GetUGCPack = 'function: 000000014062C770',
	HasCommittedData = 'function: 000000014062D9E0',
	HasPartsRequiringUpdate = 'function: 000000014062D470',
	HasPresentedData = 'function: 000000014062D880',
	IsUGCPlaced = 'function: 000000014062C310',
	MakeGridDrawScope = 'function: 000000014062C1C0',
	MakeRuler3AxisDrawer = 'function: 000000014062CA70',
	MakeVerticalLineDrawer = 'function: 000000014062C8F0',
	PlacementIDToAllEntityIDs = 'function: 000000014062D090',
	PlacementIDToEntityID = 'function: 000000014062CD70',
	PlacementPartExists = 'function: 000000014062D310',
	RotatePreviewAroundY = 'function: 000000014062DE10',
	UpdateIsGrounded = 'function: 000000014062DF80',
	UpdatePreviewPosition = 'function: 000000014062DCB0',
	UpdatePreviewTransform = 'function: 000000014062DB40',
	['userdata: 00000001431C3560'] = true,
	MissingUserContent_Audio = 0,
	MissingUserContent_Texture = 1,
	_M = {
		_CYCLE = 'Reference to table: 00000000188023C0'
	},
	_NAME = 'game::luascript::api::placement',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000188023C0'
	}
},

['Game::LuaScript::API::Player'] = {
	HasController = 'function: 00000001406351F0',
	['userdata: 00000001431C35B8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CB540'
	},
	_NAME = 'game::luascript::api::player',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CB540'
	}
},

['Game::LuaScript::API::Pools'] = {
	AllPoolScoresInitialised = 'function: 0000000140637E70',
	AreAnyPoolEdgeCellGeneratorsDirty = 'function: 000000014063B690',
	CanBeReachedFromSpawnPoint = 'function: 000000014063A1D0',
	CanReachSpawnPointFrom = 'function: 000000014063A3C0',
	GetAllPools = 'function: 0000000140636C00',
	GetHighestPoolSceneryRating = 'function: 0000000140638DE0',
	GetIsPoolOpen = 'function: 0000000140638EF0',
	GetLifeguardPostsForPool = 'function: 000000014063B020',
	GetMinimumPoolCapacity = 'function: 0000000140637DE0',
	GetOverallPoolSafetyValue = 'function: 0000000140638C40',
	GetPoolCapacity = 'function: 0000000140637430',
	GetPoolColourData = 'function: 0000000140637770',
	GetPoolDefaultColourData = 'function: 0000000140637B70',
	GetPoolOccupancy = 'function: 00000001406372A0',
	GetPoolPrestige = 'function: 00000001406375E0',
	GetPoolScoringData = 'function: 0000000140637FA0',
	GetPoolSurfaceArea = 'function: 00000001406370F0',
	GetTotalPoolSurfaceArea = 'function: 0000000140636EE0',
	HasPendingPoolEntranceGoalCreations = 'function: 000000014063B5A0',
	IsAChangingRoomWithDistance = 'function: 000000014063A5B0',
	IsAnInfoKioskWithDistance = 'function: 000000014063AA30',
	IsPool = 'function: 0000000140639BB0',
	IsPoolExtra = 'function: 0000000140639D20',
	IsWaterPump = 'function: 0000000140639EB0',
	IsWaveMachine = 'function: 000000014063A040',
	SamplePoolWaterHeight = 'function: 000000014063B3C0',
	SetPoolDesignerOverrideName = 'function: 0000000140639280',
	SetPoolName = 'function: 0000000140639050',
	SetPoolOpen = 'function: 00000001406394E0',
	SetPoolSafetyEnabled = 'function: 000000014063AEB0',
	SetPoolWaterColourData = 'function: 00000001406396E0',
	['userdata: 00000001431C35C0'] = true,
	PoolEntranceType_PoolEdge = 0,
	PoolEntranceType_Ladder = 1,
	PoolEntranceType_DivingBoardStandard = 2,
	PoolEntranceType_DivingBoardHigh = 3,
	_M = {
		_CYCLE = 'Reference to table: 0000000018802680'
	},
	_NAME = 'game::luascript::api::pools',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018802680'
	}
},

['Game::LuaScript::API::Render'] = {
	DisableBillboardMedia = 'function: 000000014063ED00',
	EnableBillboardMedia = 'function: 000000014063EC40',
	GetPatternTextureList = 'function: 000000014063E0D0',
	GetPresentInterval = 'function: 000000014063DA50',
	IconRenderProcessCapture = 'function: 000000014063DDF0',
	RequestClearColourGradingLUT = 'function: 000000014063D930',
	RequestColourGradingLUT = 'function: 000000014063D510',
	RequestColourGradingWeight = 'function: 000000014063D760',
	ScreenDropsOneShot = 'function: 000000014063EA50',
	SetPresentInterval = 'function: 000000014063DB70',
	['userdata: 00000001431C35D8'] = true,
	IconRenderBackground_Green = 0,
	IconRenderBackground_Magenta = 1,
	_M = {
		_CYCLE = 'Reference to table: 00000000187C4AC0'
	},
	_NAME = 'game::luascript::api::render',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187C4AC0'
	}
},

['Game::LuaScript::API::RidePhotos'] = {
	ActivateForPhoto = 'function: 00000001402E2EB0',
	ActivateForVideo = 'function: 0000000140641AC0',
	CalculatePhotoQuality = 'function: 0000000140643340',
	Deactivate = 'function: 0000000140641F20',
	DoesRideAllowCamera = 'function: 00000001406421C0',
	DoesRideHaveCamera = 'function: 0000000140642050',
	GetCameraDistance = 'function: 00000001406441E0',
	GetCameraOrientationWS = 'function: 00000001406445A0',
	GetDefaultCameraDistance = 'function: 0000000140643ED0',
	GetPhotoEFN = 'function: 0000000140642A60',
	GetPhotoQualitySettings = 'function: 0000000140642C10',
	GetPlacementTransform = 'function: 0000000140643A90',
	GetRideCameraModelEntity = 'function: 0000000140642330',
	GetRidePhotoQuality = 'function: 00000001406431E0',
	GetTrackEFN = 'function: 0000000140642860',
	GetViewTransform = 'function: 0000000140643CB0',
	SetCameraDistance = 'function: 0000000140643F60',
	SetCameraOrientationWS = 'function: 0000000140644420',
	TrackLocationOffsetForPhoto = 'function: 0000000140642580',
	UpdateCameraPlacement = 'function: 0000000140643590',
	UpdateVideoCamera = 'function: 0000000140641CF0',
	['userdata: 00000001431C35E0'] = true,
	RidePhotoQuality_Poor = 0,
	RidePhotoQuality_Average = 1,
	RidePhotoQuality_High = 2,
	RidePhotoQuality_Best = 3,
	_M = {
		_CYCLE = 'Reference to table: 000000001880A300'
	},
	_NAME = 'game::luascript::api::ridephotos',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880A300'
	}
},

['Game::LuaScript::API::RideStation'] = {
	AddEntranceExit = 'function: 0000000140667DA0',
	CheckRideExitConnectedToParkEntrance = 'function: 0000000140668A40',
	CompleteWorldSerialisationLoad = 'function: 0000000140670620',
	CreateEntranceExitEditToken = 'function: 00000001406676D0',
	CreateSetTicketPriceEditOperation = 'function: 000000014066A710',
	DoesRideExitHaveSomePath = 'function: 0000000140668F70',
	GetAllRidePriceOptionsAsString = 'function: 00000001406727F0',
	GetAllRideStationEditTokens = 'function: 00000001406669A0',
	GetBreakdownsDisabled = 'function: 000000014066FFC0',
	GetBreakdownsDisabledForRideStation = 'function: 0000000140670220',
	GetEntranceExitEditToken = 'function: 0000000140667A40',
	GetEntranceExitIDForToken = 'function: 0000000140667C70',
	GetFlumeEntranceAndRunoutLaneStations = 'function: 0000000140671E50',
	GetFlumeExitPool = 'function: 0000000140672F10',
	GetIdealTicketPrice = 'function: 000000014066AA70',
	GetLastBreakdownDate = 'function: 000000014066F1B0',
	GetMaintenanceLevel = 'function: 000000014066D8E0',
	GetMaximumGroupSize = 'function: 000000014066D4D0',
	GetPathJoinPartGroupIDForToken = 'function: 0000000140668910',
	GetPlatformMaterialFlexicolour = 'function: 0000000140670E60',
	GetPoolEntryTransformForFlume = 'function: 0000000140671670',
	GetPriceSyncEnabled = 'function: 000000014066AC00',
	GetRefurbishmentCost = 'function: 000000014066F030',
	GetRideAttendantForRideStation = 'function: 000000014066D660',
	GetRideCategoryForStation = 'function: 0000000140672DC0',
	GetRideEntityIDFromStationEntityID = 'function: 0000000140667120',
	GetRideEntranceExitInfoPrefabName = 'function: 0000000140669100',
	GetRideGateEntity = 'function: 0000000140668720',
	GetRidePlatformEntranceAndExitWidth = 'function: 0000000140669240',
	GetRidePriceOptionAsString = 'function: 0000000140672A90',
	GetRideStationEditToken = 'function: 0000000140666DB0',
	GetRideStationEntityIDFromEditToken = 'function: 0000000140666FF0',
	GetRunoutLaneExitTransform = 'function: 0000000140672240',
	GetSelectedTicketType = 'function: 0000000140669430',
	GetServiceInterval = 'function: 000000014066EB80',
	GetStationDesignerOverrideName = 'function: 000000014066C930',
	GetStationName = 'function: 000000014066BCD0',
	GetStationPremiumTargetTime = 'function: 000000014066C790',
	GetStationPriceOfTicketType = 'function: 000000014066BFC0',
	GetStationTicketTypeAvailable = 'function: 000000014066C220',
	GetStationType = 'function: 000000014066BE90',
	GetSumFairPrice = 'function: 000000014066B0F0',
	GetSupportsChildGuests = 'function: 000000014066D340',
	GetTicketCustomData = 'function: 0000000140669A70',
	GetTicketPrice = 'function: 0000000140669770',
	GetTicketPriceLockReason = 'function: 000000014066B9D0',
	GetTicketPriceLocked = 'function: 000000014066B450',
	GetTimePropBrokenDown = 'function: 000000014066F3A0',
	GetTimeSinceRefurbishment = 'function: 000000014066ED10',
	GetTimeUntilServiceOverdue = 'function: 000000014066E9F0',
	GetTrainLeavingTrackVelocity = 'function: 00000001406725F0',
	GetWear = 'function: 000000014066EEA0',
	GetWearHighLowReliabilityThresholds = 'function: 000000014066FB50',
	HasBullWheel = 'function: 0000000140670AE0',
	HasConnectedQueue = 'function: 00000001406674E0',
	HasDriveStation = 'function: 0000000140670900',
	HasPathOnExitGate = 'function: 0000000140670CC0',
	HasRefurbishBeenRequested = 'function: 000000014066E3C0',
	HasRepairBeenRequested = 'function: 000000014066E7D0',
	HasRideGate = 'function: 0000000140667310',
	HasServiceBeenRequested = 'function: 000000014066DFA0',
	IsBrokenDown = 'function: 000000014066F510',
	IsEndLoopedComplete = 'function: 00000001406707A0',
	IsEntranceGateAccessType = 'function: 00000001406692F0',
	IsFlumeEntranceStation = 'function: 0000000140671410',
	IsGateConnectedToParkEntrance = 'function: 0000000140668C60',
	IsRideStation = 'function: 000000014066CD70',
	IsTrackedRide = 'function: 000000014066CF90',
	IsWaterSlide = 'function: 000000014066D1D0',
	MoveEntranceExit = 'function: 00000001406683C0',
	RemoveEntranceExit = 'function: 0000000140668100',
	RequestBreakdown = 'function: 000000014066F8B0',
	RequestCancelRefurbish = 'function: 000000014066DDB0',
	RequestCancelService = 'function: 000000014066DBC0',
	RequestRefurbishment = 'function: 000000014066E1C0',
	RequestRepair = 'function: 000000014066E5F0',
	RequestService = 'function: 000000014066DA70',
	SetAllCurrentRidesPriceLock = 'function: 0000000140672BF0',
	SetBreakdownsDisabled = 'function: 000000014066FCF0',
	SetBreakdownsDisabledForRideStation = 'function: 00000001406700B0',
	SetMaintenanceLevel = 'function: 000000014066F6A0',
	SetPlatformMaterialFlexicolourForSemanticTag = 'function: 00000001406710D0',
	SetPriceSyncEnabled = 'function: 000000014066AE30',
	SetSelectedTicketType = 'function: 00000001406695D0',
	SetServiceAndMaintenanceTickDisabled = 'function: 00000001406704C0',
	SetServiceIntervalDisabled = 'function: 0000000140670360',
	SetStationDesignerOverrideName = 'function: 000000014066CAF0',
	SetStationName = 'function: 000000014066C4E0',
	SetTicketCustomMaxPrice = 'function: 0000000140669F30',
	SetTicketCustomMaxQueue = 'function: 000000014066A470',
	SetTicketCustomMinPrice = 'function: 0000000140669C90',
	SetTicketCustomMinQueue = 'function: 000000014066A1D0',
	SetTicketPrice = 'function: 00000001406698D0',
	SetTicketPriceAndStateLocked = 'function: 000000014066B620',
	SetTicketPriceLockReason = 'function: 000000014066B7E0',
	SetTicketPriceLocked = 'function: 000000014066B2B0',
	TicketPriceLockReasonToString = 'function: 000000014066BB70',
	TriggerBreakdown = 'function: 000000014066FA00',
	['userdata: 00000001431C3668'] = true,
	RideCompleteResponse_NoReason = 0,
	RideCompleteResponse_NoEndCaps = 1,
	RideCompleteResponse_DuplicateEndCaps = 2,
	RideCompleteResponse_MultipleStations = 3,
	RideCompleteResponse_NotEnoughStations = 4,
	RideCompleteResponse_NoBullWheelEndCap = 5,
	RideCompleteResponse_NoDriveWheelEndCap = 6,
	RideGateType_Entrance = 0,
	RideGateType_Exit = 1,
	RideGateType_FastPass = 2,
	RideGateType_Count = 3,
	RidePriceLockReason_Default = 0,
	RidePriceLockReason_Scenario = 1,
	RidePriceLockReason_Debugview = 2,
	RidePriceLockReason_Count = 3,
	StationType_FlatRide = 0,
	StationType_Coaster = 1,
	StationType_FlumeEntrance = 2,
	StationType_RunoutLane = 3,
	StationType_TriggerShow = 4,
	StationType_LoadOnly = 5,
	StationType_UnloadOnly = 6,
	RidePricingSet = 0,
	RidePricingFair = 1,
	RidePricingPremium = 2,
	RidePricingCustom = 3,
	_M = {
		_CYCLE = 'Reference to table: 000000001880AD80'
	},
	_NAME = 'game::luascript::api::ridestation',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880AD80'
	}
},

['Game::LuaScript::API::RideStats'] = {
	GetArrivalsDepartures = 'function: 00000001406788D0',
	GetEFN = 'function: 00000001406782E0',
	GetNumGuestRidesCompletedPerDay = 'function: 0000000140678F60',
	GetNumGuestRidesTypeCompleteOnDay = 'function: 00000001406791F0',
	GetParkWideStats = 'function: 0000000140677FB0',
	GetPrestigeAndDeteriorationMultiplier = 'function: 00000001406780F0',
	GetQueueTime = 'function: 0000000140678720',
	GetRideStats = 'function: 0000000140675AE0',
	GetRideTriggerShowStats = 'function: 0000000140676F90',
	GetStationStats = 'function: 0000000140677A40',
	GetStationStatsLastOnly = 'function: 0000000140677DE0',
	ParkReset = 'function: 0000000140675A20',
	SetYesterdaysSumChildRideAvailability = 'function: 0000000140678E00',
	SetYesterdaysSumRideAvailability = 'function: 0000000140678CA0',
	['userdata: 00000001431C3630'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001880BCC0'
	},
	_NAME = 'game::luascript::api::ridestats',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880BCC0'
	}
},

['Game::LuaScript::API::Rides'] = {
	AddCar = 'function: 000000014065C6C0',
	AddRideObjectiveLinkID = 'function: 0000000140661DD0',
	AddSeat = 'function: 000000014065C090',
	AssignRideSequentialID = 'function: 0000000140663210',
	BuildQueuesOnLoad = 'function: 00000001406509D0',
	CanBeOpened = 'function: 000000014065DBA0',
	CanBeTested = 'function: 000000014065DD80',
	ClearPendingBreakdowns = 'function: 000000014065ED60',
	CloseRide = 'function: 000000014065E280',
	CompleteWorldSerialisationLoad = 'function: 0000000140650780',
	ComputeParkRatingData = 'function: 0000000140651140',
	GetAllRides = 'function: 000000014065BB30',
	GetCarByIndex = 'function: 0000000140654CE0',
	GetCarByLayout = 'function: 0000000140655470',
	GetCarForSeat = 'function: 000000014065B230',
	GetCarIndex = 'function: 0000000140659CB0',
	GetCarInfo = 'function: 0000000140657800',
	GetCarLayout = 'function: 0000000140659F70',
	GetCarShowName = 'function: 0000000140660D60',
	GetCarStatus = 'function: 0000000140658230',
	GetCarType = 'function: 0000000140658570',
	GetCarsForRide = 'function: 0000000140656160',
	GetCarsForTrain = 'function: 0000000140656300',
	GetDayOpened = 'function: 00000001406610C0',
	GetDummyInSeat = 'function: 0000000140658710',
	GetDummyLocation = 'function: 00000001406588F0',
	GetFlumeFrictionEnabled = 'function: 0000000140663710',
	GetGuestInSeat = 'function: 0000000140658E80',
	GetGuestLocation = 'function: 0000000140659060',
	GetGuestsInCar = 'function: 00000001406597F0',
	GetGuestsInRow = 'function: 0000000140659990',
	GetGuestsOnRide = 'function: 00000001406594B0',
	GetGuestsOnTrain = 'function: 0000000140659650',
	GetIsNameable = 'function: 00000001406608E0',
	GetLifecyclePopularityMultiplier = 'function: 0000000140660770',
	GetLifecycleStageUIString = 'function: 0000000140660470',
	GetMaxAndTotalRideStationPrestige = 'function: 0000000140652610',
	GetMostPopularRideLastMonth = 'function: 0000000140651BF0',
	GetMostProfitableRideLastMonth = 'function: 0000000140651CF0',
	GetNumberOfFlatRides = 'function: 0000000140651A50',
	GetNumberOfRidesOfName = 'function: 0000000140651820',
	GetNumberOfUniqueRides = 'function: 00000001406511F0',
	GetNumberOfUniqueRidesOfTypes = 'function: 00000001406512C0',
	GetObjectiveLinkIDsFromRideID = 'function: 0000000140662300',
	GetPrestigeDeclineNodesUI = 'function: 000000014065F2F0',
	GetPrestigeDeclineProgressProp = 'function: 00000001406602B0',
	GetPurchasePrice = 'function: 0000000140650F90',
	GetRebrandCost = 'function: 0000000140661230',
	GetRequiredDLC = 'function: 0000000140650AD0',
	GetRequiredLevel = 'function: 00000001406615A0',
	GetResalePrice = 'function: 0000000140650DD0',
	GetRideForCar = 'function: 000000014065A9E0',
	GetRideForSeat = 'function: 000000014065A860',
	GetRideForStation = 'function: 000000014065AD80',
	GetRideForTrain = 'function: 000000014065AC10',
	GetRideFrictionEnabled = 'function: 0000000140663490',
	GetRideIDFromObjectiveLinkID = 'function: 0000000140662010',
	GetRideIcon = 'function: 0000000140654940',
	GetRideInfo = 'function: 0000000140656C80',
	GetRideKey = 'function: 0000000140653FE0',
	GetRideManufacturer = 'function: 0000000140654740',
	GetRideName = 'function: 00000001406541E0',
	GetRidePrestigeVisibleValue = 'function: 000000014065F000',
	GetRideSimID = 'function: 0000000140650C30',
	GetRideStairsFromPhysics = 'function: 0000000140662CA0',
	GetRideStairsLocalGrid = 'function: 0000000140662E10',
	GetRideType = 'function: 0000000140654540',
	GetRideTypeCounts = 'function: 0000000140651DF0',
	GetRideTypeName = 'function: 0000000140654340',
	GetRideTypesAsString = 'function: 00000001406523E0',
	GetSeatByIndex = 'function: 0000000140655030',
	GetSeatByLayout = 'function: 0000000140655850',
	GetSeatIndex = 'function: 0000000140659E10',
	GetSeatInfo = 'function: 0000000140657C40',
	GetSeatLayout = 'function: 000000014065A290',
	GetSeatRow = 'function: 000000014065A700',
	GetSeatSituation = 'function: 0000000140652700',
	GetSeatStatus = 'function: 00000001406583D0',
	GetSeatsForCar = 'function: 0000000140656870',
	GetSeatsForRide = 'function: 0000000140656530',
	GetSeatsForRow = 'function: 0000000140656A10',
	GetSeatsForTrain = 'function: 00000001406566D0',
	GetStationLoadRules = 'function: 00000001406528A0',
	GetStationMergeRules = 'function: 0000000140653920',
	GetStationTrain = 'function: 000000014065BF30',
	GetStationsForRide = 'function: 0000000140655E20',
	GetThemingMaximums = 'function: 0000000140660F10',
	GetTrainByIndex = 'function: 0000000140654AE0',
	GetTrainForCar = 'function: 000000014065B0D0',
	GetTrainForSeat = 'function: 000000014065AF70',
	GetTrainIndex = 'function: 0000000140659B60',
	GetTrainInfo = 'function: 0000000140657490',
	GetTrainStation = 'function: 000000014065BDD0',
	GetTrainStatus = 'function: 0000000140658090',
	GetTrainsForRide = 'function: 0000000140655FC0',
	GuestsAreOnRide = 'function: 0000000140661800',
	HasPrestigeDeclineComponent = 'function: 000000014065EE70',
	HasRequiredStaff = 'function: 000000014065D760',
	IsClosed = 'function: 000000014065DA30',
	IsEditable = 'function: 000000014065E3C0',
	IsFlatRide = 'function: 000000014065B6E0',
	IsOpen = 'function: 000000014065D8C0',
	IsPrestigeClassic = 'function: 0000000140660140',
	IsRide = 'function: 000000014065B390',
	IsRideGate = 'function: 0000000140661AE0',
	IsRideStairs = 'function: 0000000140662830',
	IsRideStairsPhysics = 'function: 00000001406629A0',
	IsRideStairsSpatial = 'function: 0000000140662B20',
	IsTested = 'function: 000000014065D350',
	IsTesting = 'function: 000000014065D5F0',
	IsTrackedRide = 'function: 000000014065B570',
	IsTransportRide = 'function: 000000014065B850',
	IsTransportRideNavGraphOutOfDate = 'function: 0000000140663800',
	OpenRide = 'function: 000000014065DF60',
	ParkReset = 'function: 0000000140661680',
	PurgeAllRideGuests = 'function: 0000000140661960',
	Rebrand = 'function: 0000000140661440',
	RemoveCar = 'function: 000000014065CA00',
	RemoveGuests = 'function: 000000014065CC80',
	RemoveRide = 'function: 000000014065CB40',
	RemoveRideObjectiveLinkID = 'function: 0000000140662500',
	RemoveSeat = 'function: 000000014065C240',
	RequiresEndLoops = 'function: 000000014065B9C0',
	SetAllRidesEditable = 'function: 000000014065E7C0',
	SetBreakdownChanceMultiplier = 'function: 000000014065EC00',
	SetBreakdownRateMultiplier = 'function: 000000014065EAA0',
	SetCarRotatable = 'function: 000000014065C8B0',
	SetCarShowName = 'function: 0000000140660B70',
	SetDarkRideVolumeEnabled = 'function: 00000001406630B0',
	SetDummyInSeat = 'function: 000000014065C4F0',
	SetEditable = 'function: 000000014065E5A0',
	SetEditingRideID = 'function: 0000000140662F60',
	SetGlobalFlumeFrictionMultiplier = 'function: 0000000140663580',
	SetGlobalRideFrictionMultiplier = 'function: 0000000140663300',
	SetPeepInSeat = 'function: 000000014065C380',
	SetPrestigeEnabled = 'function: 0000000140663900',
	SetStationLoadRules = 'function: 0000000140653020',
	SetStationMergeRules = 'function: 0000000140653C80',
	StoreRidesNotEligibleForAchievements = 'function: 00000001402E2EB0',
	TestRide = 'function: 000000014065E0F0',
	['userdata: 00000001431C3640'] = true,
	RideCategory_Coaster = 0,
	RideCategory_FlatRide = 1,
	RideCategory_PoweredTracked = 2,
	RideCategory_Transport = 3,
	RideCategory_Flume = 4,
	RideLifecycleState_New = 0,
	RideLifecycleState_Dated = 2,
	RideLifecycleState_Resurgence = 4,
	RideLifecycleState_OldClassic = 6,
	RouteType_NoRoute = 0,
	RouteType_EntranceToTarget = 1,
	RouteType_TargetToExit = 2,
	RideLifecycleState_New_Late = 1,
	RideLifecycleState_Dated_Late = 3,
	RideLifecycleState_Resurgence_Late = 5,
	_M = {
		_CYCLE = 'Reference to table: 000000001880A500'
	},
	_NAME = 'game::luascript::api::rides',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880A500'
	}
},

['Game::LuaScript::API::Save'] = {
	RequestSavePlayerData = 'function: 00000001406953F0',
	TokenHasSaveData = 'function: 0000000140695B60',
	['userdata: 00000001431C3678'] = true,
	SavePartFlag_None = 0,
	SavePartFlag_ParkMain = 1,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CC500'
	},
	_NAME = 'game::luascript::api::save',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CC500'
	}
},

['Game::LuaScript::API::Scenery'] = {
	AddGroupToBlueprintSelection = 'function: 000000014069BAD0',
	AddSceneryToBlueprintSelection = 'function: 000000014069B910',
	AttachGuestDestinationEntityHighlightRequest = 'function: 00000001406A3B80',
	BillboardListSpeakers = 'function: 00000001406A1820',
	BillboardSetSpeakers = 'function: 00000001406A1BE0',
	CalculateBuildingSetCosts = 'function: 00000001406A45F0',
	CalculatePointOnAxisNearScreenPoint = 'function: 000000014069C6A0',
	ClampPointToVoxelTerrainWidthDepth = 'function: 000000014069C4E0',
	ClearSnapPointVisuals = 'function: 00000001406A00D0',
	CreateBuildingHighlightRequest = 'function: 000000014069C220',
	CreateBuildingPartSet = 'function: 000000014069C000',
	CreateEntityHighlightRequest = 'function: 00000001406A64F0',
	CreateGuestDestinationEntityHighlightRequest = 'function: 00000001406A3940',
	DebugDrawPivotSphere = 'function: 000000014069E700',
	DetatchGuestDestinationEntityHighlightRequest = 'function: 00000001406A3D80',
	DoesMoveObjectContainAnyUnattachedParts = 'function: 00000001406A51B0',
	DoesMoveObjectContainPart = 'function: 00000001406A5400',
	FindSceneryLink = 'function: 00000001406A8E50',
	GetAllCustomTextures = 'function: 00000001406A01B0',
	GetAllVistaPoints = 'function: 00000001406A3ED0',
	GetBillboardIsOn = 'function: 00000001406A2D40',
	GetBillboardMuted = 'function: 00000001406A31C0',
	GetBoothOperator = 'function: 00000001406A5F70',
	GetConfigCategoryForMoveObject = 'function: 000000014069F910',
	GetCustomProvidedTextureCategory = 'function: 00000001406A0BC0',
	GetCustomTextureDisplayName = 'function: 00000001406A09A0',
	GetCustomTextureFavourites = 'function: 00000001406A33E0',
	GetCustomTextureSource = 'function: 00000001406A0730',
	GetCustomTextureType = 'function: 00000001406A0430',
	GetCustomTexture_Off = 'function: 00000001406A26A0',
	GetCustomTexture_On = 'function: 00000001406A2460',
	GetIconPathForTag = 'function: 00000001406A7600',
	GetMinMaxScale = 'function: 00000001406A70B0',
	GetMoveObjectPartIDs = 'function: 00000001406A56F0',
	GetOriginalPropName = 'function: 000000014069D810',
	GetPartScaleData = 'function: 00000001406A7270',
	GetPropCategoryIcon = 'function: 000000014069FBC0',
	GetPropDesignOverrideNameFromEntityID = 'function: 000000014069D490',
	GetPropName = 'function: 000000014069D000',
	GetPropNameFromEntityID = 'function: 000000014069D2D0',
	GetPropResourceName = 'function: 00000001406A58C0',
	GetPropResourceNameFromPuppetID = 'function: 00000001406A5AE0',
	GetRawNameOverride = 'function: 000000014069D660',
	GetRequiredDLCForGroup = 'function: 000000014069B6A0',
	GetRequiredDLCForPart = 'function: 000000014069B530',
	GetRideVendorInfo = 'function: 00000001406A6220',
	GetRootBrowserCategory = 'function: 000000014069F580',
	GetRootBrowserCategoryForMoveObject = 'function: 000000014069F730',
	GetRunningCostApplies = 'function: 00000001406A4AD0',
	GetSceneryLinks = 'function: 00000001406A7F90',
	GetSceneryTagCount = 'function: 00000001406A6E00',
	GetSecurityCameraIsOn = 'function: 00000001406A7B30',
	GetSecurityCameraStats = 'function: 00000001406A7D80',
	GetTotalSceneryPrestige = 'function: 000000014069FDB0',
	GetVistaPointFocusSceneryPart = 'function: 0000000140524840',
	GetWaterPumpSpeed = 'function: 000000014069DF90',
	IsCustomTexturePropData = 'function: 00000001406A28E0',
	IsPartEditable = 'function: 000000014069EC10',
	IsPathExtraPart = 'function: 000000014069F240',
	IsPicnicBench = 'function: 00000001406A4CC0',
	IsPropAssignedWithGivenTag = 'function: 00000001406A5D10',
	IsPuppetEditable = 'function: 000000014069ED80',
	IsSceneryPart = 'function: 000000014069EF00',
	IsSignPart = 'function: 000000014069F3F0',
	IsVistaPoint = 'function: 00000001406A4E70',
	IsVisualPropPart = 'function: 000000014069F0A0',
	OverridePropName = 'function: 000000014069DB20',
	RefreshUserTextures = 'function: 00000001406A0E10',
	RemoveVistaPointFocusSceneryPart = 'function: 00000001406A4460',
	ResetCullingTypeToDefault = 'function: 00000001406A6CA0',
	SendSetMusicOnSequencer = 'function: 000000014069E5D0',
	SetAmbienceOnSpeaker = 'function: 000000014069E3D0',
	SetBillboardIsOn = 'function: 00000001406A2AE0',
	SetBillboardMuted = 'function: 00000001406A2F60',
	SetBreakdownsEnabled = 'function: 000000014069EA90',
	SetConditionEnabled = 'function: 000000014069E8A0',
	SetCullingType = 'function: 00000001406A6950',
	SetCustomTextureFavourite = 'function: 00000001406A3610',
	SetCustomTexture_Off = 'function: 00000001406A1370',
	SetCustomTexture_On = 'function: 00000001406A0EC0',
	SetMusicOnSpeaker = 'function: 000000014069E5D0',
	SetSceneryLinks = 'function: 00000001406A8400',
	SetSecurityCameraIsOn = 'function: 00000001406A78B0',
	SetTriggerOnSpeaker = 'function: 000000014069E5D0',
	SetTriggerPitchOnSpeaker = 'function: 000000014069E5D0',
	SetTriggerVolumeOnSpeaker = 'function: 000000014069E5D0',
	SetVistaPointFocusSceneryPart = 'function: 00000001406A4260',
	SetVoxelTerrainEntity = 'function: 000000014069B3C0',
	SetWaterPumpSpeed = 'function: 000000014069E160',
	UpdateSnapPointVisuals = 'function: 000000014069FE80',
	['userdata: 00000001431C3758'] = true,
	AdvancedModeType_None = 0,
	AdvancedModeType_Translate = 1,
	AdvancedModeType_Rotate = 2,
	AdvancedModeType_Scale = 3,
	CullingType_None = 0,
	CullingType_Static = 1,
	CullingType_Platform = 2,
	CustomFileType_Image = 0,
	CustomFileType_Video = 1,
	CustomFileType_RenderTarget = 2,
	CustomFileType_RidePhoto = 3,
	PlayerAccessCrowdRasterisationType_Box = 0,
	PlayerAccessCrowdRasterisationType_Sphere = 1,
	ProvidedTextureCategory_Default = 0,
	ProvidedTextureCategory_FlatRideVideos = 1,
	TextureSource_Provided = 0,
	TextureSource_User = 1,
	TextureSource_Camera = 2,
	_M = {
		_CYCLE = 'Reference to table: 000000001880D400'
	},
	_NAME = 'game::luascript::api::scenery',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880D400'
	}
},

['Game::LuaScript::API::SceneryBelonging'] = {
	AddAllPartsBelongingToBelongingOwnerToPartSet = 'function: 00000001406BAFE0',
	AreAnyPartsBelongingToBelongingOwner = 'function: 00000001406BB240',
	ClearMoveObjectBelongingOwnerID = 'function: 00000001406BBC50',
	DoesPartBelongToBelongingOwner = 'function: 00000001406BAA60',
	FindBelongingOwnerForEntity = 'function: 00000001406BA7F0',
	GetAllPartsBelongingToBelongingOwner = 'function: 00000001406BAD00',
	GetBelongingOwnerID = 'function: 00000001406BA640',
	GetMoveObjectBelongingOwnerID = 'function: 00000001406BB710',
	GetMoveObjectSupportsBelonging = 'function: 00000001406BB490',
	IsValidBelongingOwner = 'function: 0000000140464CE0',
	SetMoveObjectBelongingOwnerID = 'function: 00000001406BB9D0',
	['userdata: 00000001431C3748'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001880E380'
	},
	_NAME = 'game::luascript::api::scenerybelonging',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880E380'
	}
},

['Game::LuaScript::API::SceneryEditConstraint'] = {
	ClearEditConstraintsForAllParts = 'function: 00000001406BCEE0',
	Debug_EditConstraintToString = 'function: 00000001406BD5C0',
	Debug_GetMoveObjectEditConstraintCounts = 'function: 00000001406BCB40',
	Debug_GetPartSetEditConstraintCounts = 'function: 00000001406BC4D0',
	SetMoveObjectEditConstraint = 'function: 00000001406BD400',
	SetPartSetEditConstraint = 'function: 00000001406BCFE0',
	['userdata: 00000001431C3708'] = true,
	EditConstraint_None = 0,
	EditConstraint_Locked = 1,
	_M = {
		_CYCLE = 'Reference to table: 000000001880E680'
	},
	_NAME = 'game::luascript::api::sceneryeditconstraint',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880E680'
	}
},

['Game::LuaScript::API::SceneryFacility'] = {
	GetPhotoKioskConnectedToRide = 'function: 00000001406BE130',
	GetRideConnectedToPhotoKiosk = 'function: 00000001406BE2B0',
	ResetShopInventory = 'function: 00000001406BDC60',
	SetRideConnectedToPhotoKiosk = 'function: 00000001406BE500',
	['userdata: 00000001431C3728'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001880EF40'
	},
	_NAME = 'game::luascript::api::sceneryfacility',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880EF40'
	}
},

['Game::LuaScript::API::SceneryFlexiColour'] = {
	GetAssignedSlotForSemanticTag = 'function: 00000001406C0810',
	GetAttendantFlexiColours = 'function: 00000001406C0DE0',
	GetDefaultAttendantFlexiColourForChannel = 'function: 00000001406C15C0',
	GetDefaultFlexiColourChannelForPartID = 'function: 00000001406C0A10',
	GetDefaultFlexiColourForPartID = 'function: 00000001406BF7D0',
	GetFlexiColourForPartID = 'function: 00000001406BF550',
	GetFlexiColourForPartSet = 'function: 00000001406BF150',
	GetFlexiColourForSignText = 'function: 00000001406BFBE0',
	SetFlexiColourForPartID = 'function: 00000001406C03F0',
	SetFlexiColourForPartSet = 'function: 00000001406BFE30',
	SetRideTicketBoothAttendantFlexiColours = 'function: 00000001406C1020',
	['userdata: 00000001431C36F8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001880F080'
	},
	_NAME = 'game::luascript::api::sceneryflexicolour',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880F080'
	}
},

['Game::LuaScript::API::SceneryGrid'] = {
	AlignLocalGridForMoveObject = 'function: 00000001406C4E80',
	CalculateGlobalGrid = 'function: 00000001406C5240',
	CalculateGridRegionForGroup = 'function: 00000001406C4780',
	CalculateGridRegionForMoveObject = 'function: 00000001406C4B40',
	CalculateLocalGridForMoveObject = 'function: 00000001406C5070',
	HasSnapPoints = 'function: 00000001406C3160',
	IsGridPart = 'function: 00000001406C2800',
	RaycastForVerticalStack = 'function: 00000001406C3E00',
	SnapToSnapPoint = 'function: 00000001406C3380',
	SnapToSurfaceBoundingBox = 'function: 00000001406C29B0',
	SnapToSurfaceCentre = 'function: 00000001406C2E30',
	TryStackGridObjectVertically = 'function: 00000001406C3A80',
	['userdata: 00000001431C36A8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001880F400'
	},
	_NAME = 'game::luascript::api::scenerygrid',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880F400'
	}
},

['Game::LuaScript::API::SceneryGroup'] = {
	AreOnlyPartsInGroup = 'function: 00000001406C66F0',
	CalculateBuildingGroupAABB = 'function: 00000001406C88E0',
	CalculateDefaultGridForGroup = 'function: 00000001406C86B0',
	Debug_GetGroupName_DesignerOverride = 'function: 00000001406C7A10',
	Debug_GetGroupName_PlayerName = 'function: 00000001406C7C90',
	GetGroupHasGridObject = 'function: 00000001406C8360',
	GetGroupMembers = 'function: 00000001406C8B40',
	GetGroupName = 'function: 00000001406C75C0',
	GetNumGridPartsInGroup = 'function: 00000001406C84F0',
	GetResourceNamesFromGroup = 'function: 00000001406C7EC0',
	GroupResourceName = 'PartDataBuildingGroup',
	IsBuildingGroup = 'function: 00000001406C7220',
	IsOnlyPartInGroup = 'function: 00000001406C64B0',
	IsSceneryGroup = 'function: 00000001406C73B0',
	IsSceneryObjectPartOfBuilding = 'function: 00000001406C62F0',
	PartSetContainsOnlyPartsInGroup = 'function: 00000001406C6F80',
	SetGroupName = 'function: 00000001406C77F0',
	TryGetBuildingGroupForPart = 'function: 00000001406C6160',
	['userdata: 00000001431C3730'] = true,
	GroupType_Building = 0,
	GroupType_Scenery = 1,
	_M = {
		_CYCLE = 'Reference to table: 000000001880F640'
	},
	_NAME = 'game::luascript::api::scenerygroup',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880F640'
	}
},

['Game::LuaScript::API::SceneryPlatforms'] = {
	AddAllPartsAttachedToPlatformOwnerToPartSet = 'function: 00000001406CCBC0',
	AreAnyPartsAttachedToPlatformOwner = 'function: 00000001406CC750',
	ClearActiveSceneryPlatformFinders = 'function: 00000001406CB520',
	ClearHighlightedSceneryPlatforms = 'function: 00000001406CB280',
	ClearMoveObjectPlatformAttachment = 'function: 00000001406CE560',
	Debug_SetAllowDynamicPlatformTwinningGroupChanges = 'function: 00000001402E2EB0',
	DoPlatformAttachmentRemapForClonedPartsInMoveObject = 'function: 00000001406CEB00',
	ExpandPartIDsToIncludeAllPartsAttachedToPlatformOwningParts = 'function: 00000001406CCE30',
	FindPlatformOwnerForEntity = 'function: 00000001406CB920',
	FindPlatformOwnerOfEntityOrAncestor = 'function: 00000001406CBE50',
	FindSceneryPlatform = 'function: 00000001406CA500',
	GetAllPartsAttachedToPlatformOwner = 'function: 00000001406CC8E0',
	GetMoveObjectAttachmentPlatform = 'function: 00000001406CDF40',
	GetMoveObjectSupportsPlatformAttachment = 'function: 00000001406CD990',
	GetNumTwinningSetsForPlatformOwner = 'function: 00000001406CD3F0',
	GetOnlySceneryPlatformForPlatformOwner = 'function: 00000001406CD5A0',
	GetPlatformOwnerID = 'function: 00000001406CB770',
	GetPlatformOwnerPartIsAttachedTo = 'function: 00000001406CC5C0',
	GetSceneryPlatformID = 'function: 00000001406CA2C0',
	IsPartAttachedToPlatformOwner = 'function: 00000001406CC2D0',
	IsPartPlatformOwner = 'function: 00000001406CC000',
	IsSceneryPlatform = 'function: 00000001406CA130',
	IsValidPlatformOwner = 'function: 00000001406CB5E0',
	SetFindersActiveForPlatformOwner = 'function: 00000001406CB3C0',
	SetHighlightedSceneryPlatformsFromMoveObject = 'function: 00000001406CA880',
	SetHighlightedSceneryPlatformsFromPartSet = 'function: 00000001406CAA10',
	SetMoveObjectAttachmentPlatform = 'function: 00000001406CE2E0',
	SetMoveObjectShouldBeAttachedToPlatform = 'function: 00000001406CDBF0',
	['userdata: 00000001431C3690'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001880F980'
	},
	_NAME = 'game::luascript::api::sceneryplatforms',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880F980'
	}
},

['Game::LuaScript::API::SceneryPuppets'] = {
	CanEditPuppetDuplicationRulesForMoveObject = 'function: 00000001406CF7F0',
	GetIndexForPuppet = 'function: 00000001406CF500',
	GetNumPuppetsForPart = 'function: 00000001406CF380',
	GetPuppetDuplicationRulesForMoveObject = 'function: 00000001406CFC80',
	ResetPuppetDuplicationRulesForMoveObject = 'function: 00000001406D04D0',
	SetPuppetDuplicationRulesForMoveObject = 'function: 00000001406D00E0',
	['userdata: 00000001431C36F0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001880FF40'
	},
	_NAME = 'game::luascript::api::scenerypuppets',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001880FF40'
	}
},

['Game::LuaScript::API::ScenerySignage'] = {
	CreateSetTextEditOperation = 'function: 00000001406D19B0',
	GetFontOnSign = 'function: 00000001406D1490',
	GetGuestDestinationAdvertDestinations = 'function: 00000001406D1BC0',
	GetTextOnSign = 'function: 00000001406D0F30',
	HasUpdatedSigns = 'function: 00000001406D18C0',
	RemoveGuestDestinationAdvertEntity = 'function: 00000001406D25C0',
	RemoveGuestDestinationAdvertEntityByIndex = 'function: 00000001406D2950',
	RemoveGuestDestinationAdvertPartIDByIndex = 'function: 00000001406D2C70',
	SetFontOnSign = 'function: 00000001406D1650',
	SetGuestDestinationAdvertDestinations = 'function: 00000001406D2040',
	SetTextOnSign = 'function: 00000001406D1190',
	['userdata: 00000001431C36A0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000188100C0'
	},
	_NAME = 'game::luascript::api::scenerysignage',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000188100C0'
	}
},

['Game::LuaScript::API::SceneryVolumeExtras'] = {
	CalculateBestPlacementPosition = 'function: 00000001406D3CD0',
	CalculateBestPlacementPositionFromPreviewChangelist = 'function: 00000001406D4570',
	CalculatePlacementTransformsAlongVolumeSpline = 'function: 00000001406D51F0',
	FindFirstPhysicsRayVolumeHit = 'function: 00000001406D3770',
	GetVC_Path_Spline = 'function: 00000001406D65A0',
	GetVC_Pool_Spline = 'function: 00000001406D6760',
	SetCurbSnappedForMoveObject = 'function: 00000001406D4FC0',
	SetVC_Path_Spline = 'function: 00000001406D6220',
	SetVC_Pool_Spline = 'function: 00000001406D63E0',
	['userdata: 00000001431C3720'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018810EC0'
	},
	_NAME = 'game::luascript::api::sceneryvolumeextras',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018810EC0'
	}
},

['Game::LuaScript::API::Sequence'] = {
	AddAllRecursiveSequencerItemsToMultiSelection = 'function: 00000001406E64E0',
	AttachSequencerSpeakerEntityHighlightRequest = 'function: 00000001402E2EB0',
	AttachTriggerableEntityHighlightRequest = 'function: 00000001406E8D10',
	CompleteWorldSerialisationLoad = 'function: 00000001406F05F0',
	CountAllSequencePartIDs = 'function: 00000001406E5D20',
	CountTriggerGroupsAndEvents = 'function: 00000001406E61D0',
	CreateEditOperationForDatastoreChange = 'function: 00000001406F1580',
	CreateEditOperationForRideCamDatastoreChange = 'function: 00000001406F1AA0',
	CreateEditOperationForSequencerDatastoreChange = 'function: 00000001406F1820',
	CreateEditOperationForTimeMachineChange = 'function: 00000001406F1D20',
	CreateSequencerSpeakerEntityHighlightRequest = 'function: 00000001406E8FC0',
	CreateTriggerableEntityHighlightRequest = 'function: 00000001406E8AD0',
	DetatchSequencerSpeakerEntityHighlightRequest = 'function: 00000001402E2EB0',
	DetatchTriggerableEntityHighlightRequest = 'function: 00000001406E8EC0',
	EndEditingSequencer = 'function: 00000001406ED4F0',
	EndRideCamPreview = 'function: 00000001406F1420',
	GetAllBillboards = 'function: 00000001406EDF70',
	GetAllSequencePartIDs = 'function: 00000001406E5650',
	GetAllSequences = 'function: 00000001406ED970',
	GetAllSpeakers = 'function: 00000001406EDCB0',
	GetAttachedCameras = 'function: 00000001406E9F40',
	GetAttachedSpeakers = 'function: 00000001406EA500',
	GetConnectedSequencers = 'function: 00000001406F0760',
	GetDurationOfSequence = 'function: 00000001406E6D40',
	GetDurationOfSequenceItem = 'function: 00000001406E6F90',
	GetIsAnimatedTriggerTarget = 'function: 00000001406EF6B0',
	GetIsBillboard = 'function: 00000001406EF3D0',
	GetIsDoorTriggerTarget = 'function: 00000001406EFC00',
	GetIsFirework = 'function: 00000001406EF240',
	GetIsMotionGraphTriggerTarget = 'function: 00000001406EF9F0',
	GetIsParticleTriggerTarget = 'function: 00000001406EF850',
	GetIsRideCamTimeBox = 'function: 00000001406EF530',
	GetIsTriggerSequenceRunningAndCurrentTime = 'function: 00000001406E4D00',
	GetIsVideoBillboard = 'function: 000000014032E210',
	GetMinWaitTime = 'function: 00000001406F0BA0',
	GetPartID = 'function: 00000001406E54E0',
	GetPartTriggerControlled = 'function: 00000001406E77B0',
	GetPartTriggerDuration = 'function: 00000001406E7990',
	GetPartTriggerStrobe = 'function: 00000001406E7B60',
	GetRideCamAudioDistortionActive = 'function: 0000000140524840',
	GetRideCamAudioDistortionIntensity = 'function: 0000000140524840',
	GetRideCamAudioDistortionLinkedToVisual = 'function: 0000000140524840',
	GetRideCamAudioDistortionName = 'function: 0000000140524840',
	GetRideCamAudioDistortionSFXName = 'function: 0000000140524840',
	GetRideCamBlendActive = 'function: 0000000140524840',
	GetRideCamBlendTime = 'function: 0000000140524840',
	GetRideCamColourGradingActive = 'function: 0000000140524840',
	GetRideCamColourGradingIntensity = 'function: 0000000140524840',
	GetRideCamColourGradingPackage = 'function: 0000000140524840',
	GetRideCamFilmGrainActive = 'function: 0000000140524840',
	GetRideCamFilmGrainStrength = 'function: 0000000140524840',
	GetRideCamTime = 'function: 0000000140524840',
	GetRideCamTimeActive = 'function: 0000000140524840',
	GetRideCamVignetteActive = 'function: 0000000140524840',
	GetRideCamVignetteOpacity = 'function: 0000000140524840',
	GetRideCamVignetteStrength = 'function: 0000000140524840',
	GetSequenceData = 'function: 00000001406EE0A0',
	GetSequencerCamerasLocalised = 'function: 00000001406ED5C0',
	GetSequencerSpeakerEntitiesCount = 'function: 000000014034F110',
	GetSequencerTriggerSequence = 'function: 00000001406E93A0',
	GetSequencerTriggerSettings = 'function: 00000001406E9690',
	GetShootableTargetTriggerSequence = 'function: 0000000140524840',
	GetSpeakerData = 'function: 00000001406EED70',
	GetStatisticsDataForSequencer = 'function: 00000001406ED170',
	GetTriggerTargetLoopAnimOptions = 'function: 00000001406EFE00',
	GetTriggerTargetPropData = 'function: 00000001406E73B0',
	GetTriggerUIMode = 'function: 00000001406F0930',
	GetTriggerableEntitiesCount = 'function: 00000001406E4600',
	HasMultipleTriggerTargets = 'function: 00000001406E43A0',
	IsEntityTriggerSource = 'function: 00000001406E4170',
	IsEntityTriggerTarget = 'function: 00000001406E3FE0',
	IsSequencerPropData = 'function: 00000001406E9200',
	IsTriggerTargetPropData = 'function: 00000001406E7220',
	NewTriggerSequence = 'function: 00000001406E46D0',
	PlayTriggerSequence = 'function: 00000001406E4850',
	PlayTriggerSequenceEvent = 'function: 00000001406F0360',
	PreviewRideCamEffects = 'function: 00000001406F12A0',
	RemoveDeadItemsFromSequence = 'function: 00000001406E4FC0',
	RemovedAttachedSpeaker = 'function: 00000001406EA900',
	RequiresUniqueTrack = 'function: 000000014032E210',
	SetAttachedCamerasMoveObject = 'function: 00000001406EBF70',
	SetAttachedSpeakersMoveObject = 'function: 00000001406EC9F0',
	SetLoopAnim = 'function: 00000001406F00D0',
	SetRideCamAudioDistortionActive = 'function: 00000001402E2EB0',
	SetRideCamAudioDistortionIntensity = 'function: 00000001402E2EB0',
	SetRideCamAudioDistortionLinkedToVisual = 'function: 00000001402E2EB0',
	SetRideCamAudioDistortionName = 'function: 00000001402E2EB0',
	SetRideCamAudioDistortionSFXName = 'function: 00000001402E2EB0',
	SetRideCamBlendActive = 'function: 00000001402E2EB0',
	SetRideCamBlendTime = 'function: 00000001402E2EB0',
	SetRideCamColourGradingActive = 'function: 00000001402E2EB0',
	SetRideCamColourGradingIntensity = 'function: 00000001402E2EB0',
	SetRideCamColourGradingPackage = 'function: 00000001402E2EB0',
	SetRideCamEnabled = 'function: 00000001406F1F30',
	SetRideCamFilmGrainActive = 'function: 00000001402E2EB0',
	SetRideCamFilmGrainStrength = 'function: 00000001402E2EB0',
	SetRideCamTime = 'function: 00000001402E2EB0',
	SetRideCamTimeActive = 'function: 00000001402E2EB0',
	SetRideCamVignetteActive = 'function: 00000001402E2EB0',
	SetRideCamVignetteOpacity = 'function: 00000001402E2EB0',
	SetRideCamVignetteStrength = 'function: 00000001402E2EB0',
	SetSequencerCamerasLocal = 'function: 00000001406ED7A0',
	SetSequencerCustomMusicMoveObject = 'function: 00000001406EBAF0',
	SetSequencerMusicVolumeMoveObject = 'function: 00000001406EBD50',
	SetSequencerTriggerSequenceMoveObject = 'function: 00000001406EAAC0',
	SetSequencerTriggerSettingsMoveObject = 'function: 00000001406EAD70',
	SetShootableTargetTriggerSequenceMoveObject = 'function: 00000001402E2EB0',
	SetTargetPointsMoveObject = 'function: 00000001402E2EB0',
	SetTriggerBehaviourMoveObject = 'function: 00000001406E8690',
	SetTriggerControlledMoveObject = 'function: 00000001406E8470',
	SetTriggerDurationMoveObject = 'function: 00000001406E88B0',
	SetTriggerDurationPart = 'function: 00000001406E7F70',
	SetTriggerStrobePart = 'function: 00000001406E81B0',
	SetTriggerType = 'function: 00000001406E7D30',
	SetupFlexiColourEvent = 'function: 00000001406F0D10',
	StartEditingSequencer = 'function: 00000001406ED3A0',
	StopTriggerSequence = 'function: 00000001406E4B10',
	['userdata: 00000001431C3780'] = true,
	DatastoreChange_TriggerControlled = 0,
	DatastoreChange_Duration = 1,
	DatastoreChange_Strobe = 2,
	DatastoreChange_Behaviour = 3,
	DatastoreChange_ShootablePoints = 4,
	DatastoreChange_ConnectedRides = 5,
	DatastoreChange_LoopAnim = 6,
	RideCamDatastoreChange_TimeActive = 0,
	RideCamDatastoreChange_Time = 1,
	RideCamDatastoreChange_FilmGrainActive = 2,
	RideCamDatastoreChange_FilmGrain = 3,
	RideCamDatastoreChange_VignetteActive = 4,
	RideCamDatastoreChange_VignetteStrength = 5,
	RideCamDatastoreChange_VignetteOpacity = 6,
	RideCamDatastoreChange_ColourGradingActive = 7,
	RideCamDatastoreChange_ColourGradingIntensity = 8,
	RideCamDatastoreChange_ColourGradingPackage = 9,
	RideCamDatastoreChange_AudioDistortionActive = 10,
	RideCamDatastoreChange_AudioDistortionIntensity = 11,
	RideCamDatastoreChange_AudioDistortionName = 12,
	RideCamDatastoreChange_AudioDistortionSFXName = 13,
	RideCamDatastoreChange_AudioDistortionLinkedToVisual = 14,
	RideCamDatastoreChange_RideCamBlendTime = 15,
	SequencerDatastoreChange_TriggerControlled = 0,
	SequencerDatastoreChange_TriggerSettings = 1,
	SequencerDatastoreChange_DisplayCameras = 2,
	SequencerDatastoreChange_DisplaySpeakers = 3,
	SequencerLoopMode_Hourly = 0,
	SequencerLoopMode_EveryTwoHours = 1,
	SequencerLoopMode_EveryThreeHours = 2,
	SequencerLoopMode_EveryFourHours = 3,
	SequencerPlayStates_Stop = 0,
	SequencerPlayStates_Play = 1,
	SequencerPlayStates_Pause = 2,
	SequencerTriggerMode_OnTriggerOnly = 0,
	SequencerTriggerMode_LoopingAndTrigger = 1,
	SequencerTriggerMode_SetTimesAndTrigger = 2,
	SequencerTriggerMode_ContinuousLoop = 3,
	TriggerEventMessageType_PlayForDuration = 0,
	TriggerEventMessageType_Activate = 1,
	TriggerEventMessageType_Deactivate = 2,
	TriggerEventMessageType_Strobe = 3,
	TriggerEventMessageType_PlayOnce = 4,
	TriggerEventMessageType_ChangeFlexiColour = 5,
	TriggerEventMessageType_RevertFlexiColour = 6,
	TriggerEventMessageType_ChangeThenRevertFlexiColour = 7,
	TriggerEventMessageType_OpenDoor = 8,
	TriggerEventMessageType_CloseDoor = 9,
	TriggerEventMessageType_OpenWaitCloseDoor = 10,
	TriggerEventMessageType_MAX = 11,
	TriggerType_Loop = 0,
	TriggerType_Stationary = 1,
	TriggerType_ToggleState = 2,
	TriggerType_PlayOnce = 3,
	TriggerType_Deactivated = 4,
	TriggerType_Opened = 5,
	TriggerType_Closed = 6,
	TriggerType_OpenCloseDelay = 7,
	TriggerType_NightOnly = 11,
	TriggerType_Shootable_ActiveTillShot = 8,
	TriggerType_Shootable_Deactivated = 9,
	TriggerType_Shootable_ToggleState = 10,
	TriggerUIMode_Hidden = 1,
	TriggerUIMode_Continuous = 2,
	TriggerUIMode_ContinuousAllowStrobe = 3,
	TriggerUIMode_Single = 4,
	TriggerUIMode_SingleAllowLoop = 5,
	TriggerUIMode_Door = 6,
	TriggerUIMode_Screen = 7,
	TriggerUIMode_Speaker = 8,
	TriggerUIMode_Light = 9,
	_M = {
		_CYCLE = 'Reference to table: 0000000018811180'
	},
	_NAME = 'game::luascript::api::sequence',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018811180'
	}
},

['Game::LuaScript::API::Spatial'] = {
	CylinderQuery = 'function: 0000000140701AE0',
	GetFlagsFromEntityID = 'function: 0000000140701960',
	['userdata: 00000001431C3798'] = true,
	Flag_Path = 1,
	Flag_Scenery = 2,
	Flag_FlatRide = 4,
	Flag_Track = 8,
	Flag_TrackSpace = 16,
	Flag_Tree = 32,
	Flag_ParkBoundary = 64,
	Flag_ElevatedPath = 128,
	Flag_PreviewRemovedPath = 256,
	Flag_PathExtra = 512,
	Flag_Support = 1024,
	Flag_Lake = 2048,
	Flag_TrackScenery = 4096,
	Flag_PreviewRemovedRidePath = 8192,
	Flag_PreviewPath = 16384,
	Flag_CrimeAffecter = 32768,
	Flag_Preview = 65536,
	Flag_PicnicBench = 131072,
	Flag_WaterBasedTrack = 262144,
	Flag_PreviewRemovedElevatedPath = 524288,
	Flag_HotelRoomObstruction = 1048576,
	Flag_CrowdObstruction = 2097152,
	Flag_FlatRideScenery = 4194304,
	Flag_DEPRECATED_23 = 8388608,
	Flag_TemperatureModifier = 16777216,
	Flag_Facility = 33554432,
	Flag_SwimmingPool = 67108864,
	Flag_BlockLandscapeEditPrecise = 134217728,
	Flag_PoolWater = 268435456,
	Flag_Boundary = 536870912,
	Flag_BoundaryObstructive = 1073741824,
	Flag_PlacementSuggestion = 2147483648,
	Flag_PlotBlockFlatRides = 4294967296,
	Flag_PlotBlockTrackStations = 8589934592,
	Flag_PlotBlockTrack = 17179869184,
	Flag_PlotBlockScenery = 34359738368,
	Flag_PlotBlockTerrain = 68719476736,
	Flag_PlotBlockPools = 137438953472,
	Flag_PlotBlockPaths = 274877906944,
	Flag_FlumePlatform = 549755813888,
	Flag_PathSurface = 1099511627776,
	Flag_PoolSafety = 2199023255552,
	Flag_plotBlockFlumePlatform = 70368744177664,
	Flag_PlotBlockFlumeTrack = 140737488355328,
	Flag_UtilityConnection = 281474976710656,
	Flag_AttachedToSceneryPlatform = 562949953421312,
	Flag_VisitorCameraInteractable = 1125899906842624,
	Flag_EnforcedPlacementArea = 2251799813685248,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CC640'
	},
	_NAME = 'game::luascript::api::spatial',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CC640'
	}
},

['Game::LuaScript::API::Staff'] = {
	AssignBlockAllDay = 'function: 000000014071F230',
	BlacklistLocation = 'function: 000000014071A0A0',
	CanStaffMemberBeTrainedNow = 'function: 000000014070DFE0',
	CanStaffTypeAssignToSpecificLocation = 'function: 000000014071F530',
	CancelJanitorCleanRequest = 'function: 0000000140712CB0',
	ClearOverridenStaffName = 'function: 000000014070B440',
	CompleteSerialisationAfterEntitiesCreated = 'function: 00000001407101F0',
	CompleteWorldSerialisationLoad = 'function: 00000001407100F0',
	CouldAnyJanitorCleanFacility = 'function: 0000000140712960',
	CouldAnyMechanicCheckInfrastructure = 'function: 0000000140712280',
	CouldAnyMechanicCheckRide = 'function: 0000000140712000',
	CreateManualLocomotionData = 'function: 0000000140714490',
	Debug_SetStaffPerk = 'function: 00000001407161D0',
	DoAllStaffMembersHaveSalaryTierOrAbove = 'function: 000000014070C2C0',
	DoesSpecificLocationSupportWorkTypeCategory = 'function: 000000014071F9C0',
	DoesStaffTypeSupportWorkTypeCategory = 'function: 000000014071F7A0',
	EntertainerTypeToString = 'function: 0000000140718BB0',
	FireStaffMember = 'function: 000000014070EC50',
	GenerateRandomNameSeed = 'function: 000000014070B660',
	GenerateRandomStaff = 'function: 000000014070B800',
	GetAllEntertainerTypesAsString = 'function: 0000000140718CE0',
	GetAllLifeguardPostsData = 'function: 000000014071B3E0',
	GetAllLifeguardPostsOfType = 'function: 000000014071B010',
	GetAllPossibleMoraleTypes = 'function: 0000000140719660',
	GetAllStaffEntities = 'function: 000000014070F4E0',
	GetAllStaffSalaryTiersAsString = 'function: 0000000140719140',
	GetAllStaffTypesAsString = 'function: 0000000140718790',
	GetApprehendedPickpockets = 'function: 0000000140724D10',
	GetApprehendedVandals = 'function: 0000000140724ED0',
	GetAssignedLifeguardForPost = 'function: 000000014071A680',
	GetAssignedRideAttendantForRideDestination = 'function: 000000014071C220',
	GetAssignedSecurityForPost = 'function: 000000014071C080',
	GetAudienceSize = 'function: 0000000140711A50',
	GetBrand = 'function: 0000000140714140',
	GetBuildingPatrolPoints = 'function: 00000001407111E0',
	GetChasedPickpockets = 'function: 0000000140725090',
	GetChasedVandals = 'function: 0000000140725250',
	GetDistanceToNearestStaffBuilding = 'function: 0000000140713290',
	GetGeneralStaffConfiguration = 'function: 0000000140716910',
	GetHighestStaffBuildingCapacity = 'function: 00000001407142B0',
	GetHoursStaffed = 'function: 0000000140713F50',
	GetIsScheduleParkZoneOverridden = 'function: 000000014071D420',
	GetIsStaffMember = 'function: 00000001407096F0',
	GetJanitorOnRouteToFacility = 'function: 0000000140712EE0',
	GetLastMonthsTimeSpentValues = 'function: 0000000140715C80',
	GetLifeguardPostInfo = 'function: 000000014071A9E0',
	GetMaterialCustomisationData = 'function: 0000000140716F60',
	GetMechanicAssignedToEntity = 'function: 0000000140712460',
	GetNextFreeSlotAtLocation = 'function: 0000000140720A10',
	GetNextSlotAndStaffAssignedToLocation = 'function: 0000000140720730',
	GetNumberOfStaff = 'function: 000000014070FE70',
	GetNumberOfStaffAssignedAtRestLocationAtIndex = 'function: 000000014071EBF0',
	GetNumberOfStaffAssignedToWorkType = 'function: 0000000140723B20',
	GetNumberOfStaffOfType = 'function: 000000014070FF40',
	GetParkZoneCounts = 'function: 0000000140710CF0',
	GetParkZoneMoraleBreakdown = 'function: 0000000140710660',
	GetPatrolPointType = 'function: 0000000140711530',
	GetPostSafetyValueLevel = 'function: 000000014071A830',
	GetScheduleAssignedParkZone = 'function: 000000014071D210',
	GetScheduleBlockErrors = 'function: 0000000140720CC0',
	GetScheduleBlockForStaffMember = 'function: 000000014071C780',
	GetScheduleBlocksForStaffMember = 'function: 000000014071C420',
	GetScheduleCategoryForBlock = 'function: 000000014071F030',
	GetScheduleCopyBlockStaffType = 'function: 000000014071E000',
	GetScheduleSalaryPerBlock = 'function: 000000014071E0D0',
	GetScheduleShortShiftMaxBlocks = 'function: 000000014071E270',
	GetScheduleSpecificLocation = 'function: 000000014071EDE0',
	GetSpecificLocationsSupportingWorkTypeCategory = 'function: 000000014071FB50',
	GetSpecificRestLocations = 'function: 000000014071FFE0',
	GetSprintingEnergy = 'function: 0000000140724B50',
	GetStaffAssignedToSpecificLocation = 'function: 00000001407204E0',
	GetStaffBreaksEnabled = 'function: 0000000140724600',
	GetStaffBuildingCapacityCosts = 'function: 0000000140713B40',
	GetStaffCountOfTypeYesterday = 'function: 0000000140725410',
	GetStaffEnRouteToFacility = 'function: 00000001407127B0',
	GetStaffHappinessDisabled = 'function: 000000014032E210',
	GetStaffMemberCurrentTrainingLevel = 'function: 000000014070DBF0',
	GetStaffMemberLastStaffBuilding = 'function: 0000000140716D90',
	GetStaffMemberLowPayCounter = 'function: 0000000140719D50',
	GetStaffMemberMaxSalary = 'function: 000000014070D390',
	GetStaffMemberMiserableCounter = 'function: 0000000140719BB0',
	GetStaffMemberMonthlySalary = 'function: 000000014070D1F0',
	GetStaffMemberMorale = 'function: 0000000140719A10',
	GetStaffMemberNumTrainingLevels = 'function: 000000014070DA40',
	GetStaffMemberOnFirstDay = 'function: 0000000140723D50',
	GetStaffMemberOnStrike = 'function: 0000000140716A30',
	GetStaffMemberParkZone = 'function: 0000000140710FF0',
	GetStaffMemberPerk = 'function: 0000000140716BF0',
	GetStaffMemberProjectedMorale = 'function: 0000000140719EF0',
	GetStaffMemberProjectedSalary = 'function: 000000014070CA00',
	GetStaffMemberRestFoundStaffRoom = 'function: 000000014070CF00',
	GetStaffMemberRestStatus = 'function: 000000014070CD60',
	GetStaffMemberRested = 'function: 000000014070CBA0',
	GetStaffMemberSalaryForTier = 'function: 000000014070C490',
	GetStaffMemberSalaryTier = 'function: 000000014070C680',
	GetStaffMemberStateTrivia = 'function: 000000014070BC70',
	GetStaffMemberSuspendedPos = 'function: 000000014070A590',
	GetStaffMemberTrainingCost = 'function: 000000014070DD90',
	GetStaffMemberType = 'function: 000000014070BAD0',
	GetStaffMembersSummary = 'function: 000000014070FC80',
	GetStaffRawName = 'function: 0000000140709B80',
	GetStaffScheduleData = 'function: 0000000140723640',
	GetStaffTimeEmployed = 'function: 0000000140722A50',
	GetStaffTypeConfiguration = 'function: 0000000140716780',
	GetStaffTypeFairSalary = 'function: 000000014070D550',
	GetStaffUIName = 'function: 0000000140709880',
	GetStaffWorkStatsYesterday = 'function: 00000001407214B0',
	GetThoughts = 'function: 000000014070E8F0',
	GetTimeSpentValues = 'function: 00000001407148F0',
	GetTotalSuccessfulPickpocketChasesYesterday = 'function: 00000001407259F0',
	GetVendorLifetimeStatsAttended = 'function: 0000000140722EE0',
	GetWorkshopCapacityCosts = 'function: 0000000140713B40',
	HasStaffBrain = 'function: 00000001407116A0',
	HasStaffMemberQuit = 'function: 000000014070EDD0',
	IsAnyRAFreeForRide = 'function: 0000000140713800',
	IsFacilityCleaningTaskAssigned = 'function: 0000000140712AD0',
	IsScheduledForWork = 'function: 00000001407212E0',
	IsScheduledLevelUp = 'function: 000000014070E730',
	IsStaffMemberHired = 'function: 000000014070F310',
	IsStaffMemberMoveable = 'function: 000000014070A910',
	IsStaffMemberOutOfPark = 'function: 000000014070B270',
	IsStaffMemberPreviewOnly = 'function: 000000014070B0B0',
	IsStaffMemberSuspended = 'function: 000000014070A750',
	IsStaffMemberTrappedInPark = 'function: 000000014070F150',
	IsStaffNameOverriden = 'function: 000000014070AEA0',
	IsStaffSearchingForFreeStaffBuilding = 'function: 00000001407130C0',
	ManualMoveTowardsTarget = 'function: 0000000140714670',
	MoraleTypeToString = 'function: 00000001407194F0',
	ParkReset = 'function: 0000000140710450',
	ResetScheduleBlockErrors = 'function: 0000000140721060',
	ScheduleAssignSpecificLocation = 'function: 000000014071E300',
	ScheduleAssignSpecificRestLocation = 'function: 000000014071E850',
	ScheduleChangeWorkTaskCategory = 'function: 000000014071CA10',
	ScheduleCopyBlock = 'function: 000000014071DAC0',
	SchedulePasteBlock = 'function: 000000014071DDC0',
	ScheduleSetParkZone = 'function: 000000014071CF70',
	ScheduleToggleBlockActive = 'function: 000000014071D850',
	ScheduleToggleIsBreak = 'function: 000000014071D5F0',
	ScheduleToggleWorkTask = 'function: 000000014071CC20',
	ScheduleUnassignSpecificLocation = 'function: 000000014071E5C0',
	ScheduleUnassignSpecificRestLocation = 'function: 000000014071EA20',
	SendHighPriorityAlertForWorkArea = 'function: 0000000140713BE0',
	SendHighPriorityRepairAlertForJanitor = 'function: 0000000140713DB0',
	SetDeductStaffPayEnabled = 'function: 0000000140724070',
	SetEnableMechanicAutoAssign = 'function: 0000000140712650',
	SetFairPriceMultiplier = 'function: 00000001407241D0',
	SetFlexiColourForTag = 'function: 00000001407171C0',
	SetGeneralStaffConfiguration = 'function: 0000000140716590',
	SetLifeguardAssignedPost = 'function: 000000014071A460',
	SetLifeguardHighPriority = 'function: 000000014071A2B0',
	SetPostIsPathSnapPlacementMode = 'function: 000000014071BB50',
	SetPostName = 'function: 000000014071BCB0',
	SetSafetyViewEnabled = 'function: 000000014071AE50',
	SetScheduledLevelUp = 'function: 000000014070E5B0',
	SetSecurityAssignedPost = 'function: 000000014071BEE0',
	SetSecurityDetectionChance = 'function: 00000001407249B0',
	SetStaffBreaksEnabled = 'function: 0000000140724490',
	SetStaffCostMultiplier = 'function: 0000000140711C60',
	SetStaffHappinessDisabled = 'function: 00000001402E2EB0',
	SetStaffInitialMorale = 'function: 0000000140724850',
	SetStaffMemberMonthlySalary = 'function: 000000014070D840',
	SetStaffMemberParkZone = 'function: 0000000140710F00',
	SetStaffMemberSalaryTier = 'function: 000000014070C820',
	SetStaffMemberSuspended = 'function: 000000014070A360',
	SetStaffMoraleEnabled = 'function: 0000000140724330',
	SetStaffPayEnabled = 'function: 0000000140723F10',
	SetStaffQuitingEnabled = 'function: 00000001407246F0',
	SetStaffTrainingDisabled = 'function: 000000014070E260',
	SetStaffTypeConfiguration = 'function: 0000000140716380',
	SetStaffUIName = 'function: 0000000140709F80',
	SetWagePayRangeMultiplier = 'function: 0000000140711E40',
	StaffSalaryTierToString = 'function: 0000000140718FE0',
	StaffTypeToString = 'function: 00000001407185F0',
	StaffWageExpenditureCategory = 'function: 0000000140719340',
	TrainToNextLevel = 'function: 000000014070E430',
	UpdateStaffThoughtsInDataStore = 'function: 0000000140717630',
	WasStaffMemberFired = 'function: 000000014070EF90',
	['userdata: 00000001431C37A8'] = true,
	EntertainerType_Bard = 0,
	EntertainerType_ChiefBeef = 1,
	EntertainerType_CosmicCow = 2,
	EntertainerType_Diver = 3,
	EntertainerType_Gulpee = 4,
	EntertainerType_KingCoaster = 5,
	EntertainerType_QueenSplash = 6,
	EntertainerType_SharkMascot = 7,
	EntertainerType_Viking = 8,
	EntertainerType_VivaLaVegan = 9,
	EntertainerType_Count = 10,
	PatrolPointType_Generic = 0,
	PatrolPointType_RideStation = 1,
	PatrolPointType_Facility = 2,
	PatrolPointType_Shop = 3,
	PatrolPointType_MeetAndGreet = 4,
	PatrolPointType_ParkEntrance = 5,
	PatrolPointType_CleanableFacility = 7,
	StaffLifeguardPostType_Short = 0,
	StaffLifeguardPostType_Tall = 1,
	StaffLifeguardPostType_FlagPole = 2,
	StaffMorale_Miserable = 0,
	StaffMorale_Unhappy = 1,
	StaffMorale_Content = 2,
	StaffMorale_Happy = 3,
	StaffMorale_VeryHappy = 4,
	StaffRestStatus_Unscheduled = 0,
	StaffRestStatus_Scheduled = 1,
	StaffRestStatus_MissedNoStaffRoom = 2,
	StaffRestStatus_MissedEnteredStaffRoom = 3,
	StaffRestStatus_InProgressWalking = 4,
	StaffRestStatus_InProgressInStaffRoom = 5,
	StaffRestStatus_InProgressHitTarget = 6,
	StaffRestStatus_Complete = 7,
	StaffRestStatus_ShortShift = 8,
	StaffSalaryTier_Low = 0,
	StaffSalaryTier_Fair = 1,
	StaffSalaryTier_High = 2,
	StaffSalaryTier_Count = 3,
	StaffTaskLocation_Unspecified = 0,
	StaffTaskLocation_StaffBuilding = 1,
	StaffTaskLocation_Shop = 2,
	StaffTaskLocation_DrinkShop = 3,
	StaffTaskLocation_FoodShop = 4,
	StaffTaskLocation_GiftShop = 5,
	StaffTaskLocation_InfoBooth = 6,
	StaffTaskLocation_FlatRide = 7,
	StaffTaskLocation_TrackedRide = 8,
	StaffTaskLocation_Coaster = 9,
	StaffTaskLocation_TransportRide = 10,
	StaffTaskLocation_Hotel = 11,
	StaffTaskLocation_Restaurant = 12,
	StaffTaskLocation_Toilet = 13,
	StaffTaskLocation_Bin = 14,
	StaffTaskLocation_Vomit = 15,
	StaffTaskLocation_Bench = 16,
	StaffTaskLocation_Litter = 17,
	StaffTaskLocation_FlumePlatform = 18,
	StaffTaskLocation_Workshop = 19,
	StaffTaskLocation_ChangingRoom = 20,
	StaffTaskLocation_Generator = 22,
	StaffType_Vendor = 0,
	StaffType_Entertainer = 1,
	StaffType_Janitor = 2,
	StaffType_Mechanic = 3,
	StaffType_Lifeguard = 4,
	StaffType_RideAttendant = 5,
	StaffType_Security = 6,
	StaffType_Count = 7,
	WorkType_FoodServed = 0,
	WorkType_DrinkServed = 1,
	WorkType_SouvenirServed = 2,
	WorkType_PoolServed = 3,
	WorkType_KioskServed = 4,
	WorkType_RestaurantServed = 5,
	WorkType_BinEmptied = 6,
	WorkType_LitterCleared = 7,
	WorkType_VomitCleared = 8,
	WorkType_BenchCleaned = 9,
	WorkType_ToiletCleaned = 10,
	WorkType_FacilityCleaned = 11,
	WorkType_MultiTaskClutterCleared = 12,
	WorkType_RideServiced = 14,
	WorkType_RideRefurbished = 15,
	WorkType_RideRepaired = 16,
	WorkType_VendingMachineServiced = 17,
	WorkType_VendingMachineRepaired = 18,
	WorkType_Research = 19,
	WorkType_VendingMachineRefurbished = 20,
	WorkType_InfrastructureServiced = 21,
	WorkType_InfrastructureRefurbished = 22,
	WorkType_InfrastructureRepaired = 23,
	WorkType_GuestEntertained = 24,
	WorkType_SavedDrowningGuest = 25,
	WorkType_CoasterOperated = 26,
	WorkType_FlatRideOperated = 27,
	WorkType_PoweredTrackedOperated = 28,
	WorkType_TransportOperated = 29,
	WorkType_FlumeOperated = 30,
	WorkType_ChasedPickpocket = 31,
	WorkType_ChasedVandal = 32,
	WorkTypeCategory_VendorAttendShop = 0,
	WorkTypeCategory_JanitorClean = 1,
	WorkTypeCategory_MechanicsServiceAndRepair = 2,
	WorkTypeCategory_MechanicsResearch = 3,
	WorkTypeCategory_EntertainerEntertain = 4,
	WorkTypeCategory_LifeguardGuard = 5,
	WorkTypeCategory_RideAttendantAttendRide = 6,
	WorkTypeCategory_SecurityGuard = 7,
	_M = {
		_CYCLE = 'Reference to table: 0000000018815340'
	},
	_NAME = 'game::luascript::api::staff',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018815340'
	}
},

['Game::LuaScript::API::TechTree'] = {
	GetAllNodeData = 'function: 00000001407CCC10',
	GetAllNodeNames = 'function: 00000001407CC840',
	GetCurrentAct = 'function: 00000001407CB020',
	GetNameFromNodeID = 'function: 00000001407CE040',
	GetNodeIDFromName = 'function: 00000001407CDD30',
	GetResearchPoints = 'function: 00000001407CB0F0',
	GetRootNodeID = 'function: 00000001407CE250',
	GetScenarioOverrideData = 'function: 00000001407CB380',
	IsNodePurchased = 'function: 00000001407CD800',
	PurchaseNode = 'function: 00000001407CDA00',
	ResetTechTree = 'function: 00000001407CE580',
	SaveTechTreeAndResearchPoints = 'function: 00000001407CE630',
	SetResearchPoints = 'function: 00000001407CB1C0',
	SetSandboxResearchDisabled = 'function: 00000001407CE420',
	SetScenarioOverrideData = 'function: 00000001407CBAA0',
	UpdatePerScenarioData = 'function: 00000001407CAE20',
	['userdata: 00000001431C3980'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018818540'
	},
	_NAME = 'game::luascript::api::techtree',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018818540'
	}
},

['Game::LuaScript::API::Telemetry'] = {
	['userdata: 00000001431C37C0'] = true,
	OriginalGame = 2147483648,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CCB80'
	},
	_NAME = 'game::luascript::api::telemetry',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CCB80'
	}
},

['Game::LuaScript::API::Terrain'] = {
	AddAutoPaintVoxelColoursToChangeList = 'function: 000000014072D8C0',
	AddDrawWithTestBrushToChangeList = 'function: 000000014072ADF0',
	AddFlattenToChangeList = 'function: 000000014072B160',
	AddLowerToPlaneToChangeList = 'function: 000000014072B720',
	AddPaintVoxelColoursToChangeList = 'function: 000000014072D3B0',
	AddPaintVoxelColoursTowardsDataToChangeList = 'function: 000000014072DE00',
	AddPlaneFlattenToChangeList = 'function: 000000014072BDC0',
	AddPushPullToChangeList = 'function: 000000014072C460',
	AddRaiseToPlaneToChangeList = 'function: 000000014072C8E0',
	AddRemoveCapsuleToChangeList = 'function: 000000014072E8E0',
	AddRemoveSphereToChangeList = 'function: 000000014072E640',
	AddRemoveTestHullToChangeList = 'function: 0000000140733F90',
	AddRoughenToChangeList = 'function: 000000014072EC10',
	AddSkirtRevealFillToChangeList = 'function: 000000014072F620',
	AddSkirtRevealToChangeList = 'function: 000000014072F240',
	AddSmoothToChangeList = 'function: 000000014072CF80',
	ClearCustomGeome = 'function: 0000000140737140',
	ClearMaterialOverride = 'function: 0000000140736E90',
	ClearPreviewRenderGeometry = 'function: 000000014072F930',
	CreateCursor = 'function: 0000000140731890',
	CreateLake = 'function: 000000014072FAF0',
	CreateLakesCursor = 'function: 0000000140732300',
	CreateTerrainChangeList = 'function: 000000014072ACA0',
	CreateTerrainEditOperation = 'function: 000000014072A110',
	CreateWaterfall = 'function: 0000000140730F70',
	DestroyLake = 'function: 00000001407300B0',
	DestroyWaterfall = 'function: 0000000140731480',
	FindFlatGroundNearPoint = 'function: 00000001407346A0',
	FindGroundInVerticalLocality = 'function: 00000001407343D0',
	FindLake = 'function: 0000000140730510',
	FindLakesWithSphereCheck = 'function: 0000000140730820',
	ForceUpdatePreview = 'function: 00000001407371F0',
	GetChangeListFromTerrainEditOp = 'function: 000000014072A3F0',
	GetIsoValueChangeCost = 'function: 00000001407361F0',
	GetLakeSurfaceLevel = 'function: 0000000140730DC0',
	GetLakesCursorHasLinesVisible = 'function: 0000000140732D10',
	HideCursor = 'function: 0000000140731CB0',
	HideLakesCursor = 'function: 00000001407327A0',
	LakeCompleteWorldSerialisationLoad = 'function: 0000000140729F50',
	ReplaceChangeListOnTerrainEditOp = 'function: 000000014072A5F0',
	ResetAutoPainting = 'function: 0000000140732EA0',
	SetAutoPaintingEnclosedColour = 'function: 00000001407339C0',
	SetAutoPaintingEnclosedScaleOffset = 'function: 0000000140733E10',
	SetAutoPaintingExposedColour = 'function: 00000001407336F0',
	SetAutoPaintingExposureScaleOffset = 'function: 0000000140733C90',
	SetAutoPaintingSideColour = 'function: 0000000140733290',
	SetAutoPaintingTopColour = 'function: 0000000140732FD0',
	SetAutoPaintingTopToSideTransition = 'function: 0000000140733560',
	SetCustomGeome = 'function: 0000000140736F40',
	SetIsoValueChangeCost = 'function: 00000001407362C0',
	SetMaterialOverride = 'function: 0000000140736580',
	SetTerrainEditOpCollisionFlags = 'function: 000000014072A880',
	SetTerrainEditOpGridRenderingEnabled = 'function: 000000014072AB70',
	ShowCursor = 'function: 0000000140731B50',
	ShowLakesCursor = 'function: 0000000140732640',
	SnapLakeFillPoint = 'function: 0000000140730B80',
	TerrainSkirtHasSeaPlane = 'function: 0000000140736420',
	TestAABBForFlatGround = 'function: 0000000140734930',
	TestCapsuleForFlatGround = 'function: 0000000140735100',
	TestSpatialEntityIsAwayFromGround = 'function: 00000001407357C0',
	TestSpatialEntityIsOnFlatGround = 'function: 0000000140735A80',
	TestSphereForFlatGround = 'function: 0000000140734CC0',
	TryUnembed = 'function: 0000000140735DF0',
	UpdateCursor = 'function: 0000000140731E10',
	UpdateLakesCursor = 'function: 0000000140732900',
	['userdata: 00000001431C3800'] = true,
	NotEmbedded = 0,
	GroundOk = 0,
	GroundNotOk = 1,
	FoundUnembed = 1,
	NoGround = 2,
	NoUnembed = 2,
	_M = {
		_CYCLE = 'Reference to table: 00000000187E14C0'
	},
	_NAME = 'game::luascript::api::terrain',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187E14C0'
	}
},

['Game::LuaScript::API::Track'] = {
	AddAndMoveTrack = 'function: 000000014075DB00',
	AddGatesToEmptyStations = 'function: 000000014076C130',
	AddHolder = 'function: 000000014075D440',
	AddRideAndRecursiveSequenceItemsToMultiSelection = 'function: 0000000140768F10',
	AddRideConnectedTargetsToMultiSelection = 'function: 0000000140769490',
	AddSelection = 'function: 000000014075B9F0',
	AddSelectionImmeditate = 'function: 000000014075B840',
	AreEntitiesStable = 'function: 000000014076BCE0',
	CalcSectionLength = 'function: 0000000140764070',
	CanPerformConstrainableAction = 'function: 000000014076CCF0',
	CanRemoveSection = 'function: 000000014076CEF0',
	CancelActiveTrackDirectionArrows = 'function: 000000014076DF40',
	ClearAllTrackEditConstraints = 'function: 000000014076CB60',
	ClearGUIShapeHighlightCurrentEditingTrack = 'function: 0000000140765C40',
	ClearGUIShapeSelectionHighlight = 'function: 00000001407657D0',
	ClearTrackElementCache = 'function: 000000014076E520',
	CombineSelection = 'function: 00000001407524C0',
	CombineSelectionShortest = 'function: 00000001407526C0',
	CompleteWorldSerialisationLoad = 'function: 0000000140766460',
	ComputeApproxLocalAABB = 'function: 0000000140762C50',
	CountTrackEvents = 'function: 0000000140768D20',
	CreateAutoComplete = 'function: 0000000140767440',
	CreateAutoCompleteParams = 'function: 00000001407676E0',
	CreateHolder = 'function: 000000014075CD80',
	CreateJoinPoint = 'function: 0000000140751CE0',
	CreateModifiedBankSelection = 'function: 0000000140756D80',
	CreateModifiedStartSelection = 'function: 0000000140756AD0',
	CreateModifiedStation = 'function: 0000000140757750',
	CreateModifiedTypeSelection = 'function: 00000001407570F0',
	CreatePerJoinTranslatedSelection = 'function: 00000001407584C0',
	CreateRescaledSelection = 'function: 0000000140757AA0',
	CreateSectionTriggerOperation = 'function: 0000000140767870',
	CreateSelection = 'function: 00000001407554F0',
	CreateSelectionOfSingleSection = 'function: 0000000140753D80',
	CreateSelectionOfWholeTrack = 'function: 0000000140752C70',
	CreateSelectionOfWholeTrack_CommittedOnly = 'function: 0000000140753080',
	CreateSelectionOfWholeTrack_VisibleOnly = 'function: 0000000140752E40',
	CreateSelectionsOfLogicallyConnectedTrack_CommittedOnly = 'function: 00000001407532C0',
	CreateSmoothedSelection = 'function: 0000000140757440',
	CreateSpecial = 'function: 00000001407561D0',
	CreateStation = 'function: 0000000140754740',
	CreateTrackTriggerLocation = 'function: 0000000140767B80',
	CreateTranslatedSelection = 'function: 0000000140757E10',
	DebugDrawImGuiGraph = 'function: 0000000140765DF0',
	DebugExportSelection = 'function: 00000001407660F0',
	DebugGetRailDataForSection = 'function: 00000001402E2EB0',
	DebugRender = 'function: 0000000140765D00',
	Debug_TrackEditConstraintToString = 'function: 000000014076CA00',
	DoesTrackContainElementType = 'function: 000000014076E840',
	FindJoinDirection = 'function: 000000014075B340',
	FindJoinDirectionForIndexOnSection = 'function: 000000014075B640',
	FindStation = 'function: 0000000140754240',
	FinishedEditing = 'function: 000000014076C040',
	ForceSetTrackedRideOperationMode = 'function: 000000014076C4A0',
	GetElementJoinDirection = 'function: 000000014075A890',
	GetElementJoinPointsForTransform = 'function: 000000014075AD90',
	GetElementJoinTypes = 'function: 000000014075A0B0',
	GetElementName = 'function: 0000000140763B50',
	GetElementNumRails = 'function: 000000014075A300',
	GetElementRailJoinPriorities = 'function: 000000014075A540',
	GetElementTransformToMatchPoint = 'function: 000000014075AAA0',
	GetEntityForEntranceExitPlacement = 'function: 0000000140766950',
	GetFreeEnds = 'function: 0000000140760CD0',
	GetFrictionMultiplier = 'function: 000000014076B9F0',
	GetHeatmapLive = 'function: 0000000140769FD0',
	GetHeatmapPass = 'function: 0000000140769BD0',
	GetHeightSamples = 'function: 000000014076AAC0',
	GetIsNonStop = 'function: 0000000140762210',
	GetIsRacing = 'function: 00000001407620D0',
	GetIsWaterSlide = 'function: 0000000140762350',
	GetLogicalID = 'function: 0000000140763C90',
	GetMassOfAllCars = 'function: 000000014076F000',
	GetMaterialFlexiColourForCars = 'function: 000000014075F5E0',
	GetMaterialFlexiColourForTrack = 'function: 000000014075F0F0',
	GetMaxNumberOfPassesThroughStation = 'function: 0000000140762870',
	GetMaxTrains_BlockSectioned = 'function: 0000000140761A50',
	GetMinAllowedUseableStationLength = 'function: 0000000140764530',
	GetMinMaxCarsPerTrain = 'function: 0000000140761590',
	GetMinMaxTrains = 'function: 00000001407617C0',
	GetMinNumberOfPassesThroughStation = 'function: 0000000140762740',
	GetNumCarsPerTrain = 'function: 0000000140761330',
	GetNumTrains = 'function: 0000000140761460',
	GetNumberOfPassesThroughStation = 'function: 00000001407629A0',
	GetOperators = 'function: 000000014076BE00',
	GetOtherEnd = 'function: 0000000140763960',
	GetPlayerTrainTriggersOnly = 'function: 000000014076DBD0',
	GetPoweredTrainsSpeed_Current_Min_Max = 'function: 0000000140761C30',
	GetPoweredTrainsTypeAndCanChange = 'function: 0000000140761F50',
	GetRailLocation = 'function: 0000000140764740',
	GetRawTrackEditConstraint = 'function: 000000014076C8D0',
	GetRideMusic = 'function: 0000000140760140',
	GetRideType = 'function: 0000000140760A50',
	GetSelectionByRayCast = 'function: 0000000140762E40',
	GetSelectionBySphereSweep = 'function: 00000001407633D0',
	GetSelectionMaterialCustomisationData = 'function: 000000014075DD90',
	GetShownHeatmap = 'function: 000000014076A1B0',
	GetSpotSamples = 'function: 000000014076A3B0',
	GetStationEntityForSection = 'function: 0000000140767280',
	GetStationIDs = 'function: 00000001407545A0',
	GetStationJoinPointsForExtend = 'function: 000000014075B100',
	GetStationLocalGrid = 'function: 0000000140766EC0',
	GetTrackAndStationLengths = 'function: 000000014076EC50',
	GetTrackEntity = 'function: 0000000140760450',
	GetTrackHolder = 'function: 00000001407605A0',
	GetTrackHolderFromSection = 'function: 0000000140760750',
	GetTrackLocationFromRailLocation = 'function: 0000000140764970',
	GetTrackLocationFromSection = 'function: 0000000140764CB0',
	GetTrackParams = 'function: 0000000140763E00',
	GetTrackSectionBaseEntity = 'function: 00000001407540D0',
	GetTrackTransform = 'function: 0000000140760930',
	GetTrackTriggerLocation = 'function: 00000001407686A0',
	GetTrackTriggerLocations = 'function: 0000000140767F70',
	GetTrackedRideOperationMode = 'function: 000000014076C620',
	GetTrainType = 'function: 0000000140761220',
	GetUseFlumePhysics = 'function: 0000000140762490',
	GetUseableStationLength = 'function: 00000001407643C0',
	HasAnyPreviewTrackSections = 'function: 000000014076D480',
	HasAnyUnfinishedRequiredTrack = 'function: 000000014076D200',
	HasRotatableCars = 'function: 000000014076E350',
	IsAllowedForAutoComplete = 'function: 0000000140759E40',
	IsBullWheelElement = 'function: 0000000140759730',
	IsDriveStationElement = 'function: 00000001407594C0',
	IsFlexibleElement = 'function: 00000001407599A0',
	IsLoaded = 'function: 000000014076D340',
	IsPointToPointElement = 'function: 0000000140759B90',
	IsRideLayoutValid = 'function: 000000014076D650',
	IsSectionStateVisible = 'function: 0000000140764280',
	IsStationElement = 'function: 00000001407589E0',
	IsStationEndCapElement = 'function: 0000000140758BD0',
	IsStationLoadOnlyElement = 'function: 0000000140758E30',
	IsStationUnloadOnly = 'function: 0000000140759090',
	IsStationUnloadOnlyElement = 'function: 00000001407592D0',
	IsTrackEmpty = 'function: 0000000140760B60',
	IsTrackSection = 'function: 0000000140767120',
	MakeTrackSelectionFromLocation = 'function: 0000000140765210',
	MoveTrack = 'function: 000000014075D870',
	NewSelection = 'function: 0000000140752180',
	ParkReset = 'function: 000000014076BB50',
	RemoveHolder = 'function: 000000014075D5B0',
	RemoveSelection = 'function: 000000014075BD30',
	ReplaceSelection = 'function: 000000014075BF10',
	RetrieveBlueprintTracks = 'function: 0000000140766560',
	ReverseSelection = 'function: 0000000140752350',
	RideEdited = 'function: 000000014076BF50',
	SelectContiguousWithElement = 'function: 0000000140752A60',
	SelectContiguousWithParam = 'function: 00000001407528A0',
	SendEditTriggerMessage = 'function: 000000014076E660',
	SendTrackLoadedMessage = 'function: 000000014076D5A0',
	SetActiveShootingMinigameTrain = 'function: 000000014076D790',
	SetAllPreExistingLogicalIDThresholds = 'function: 000000014076D070',
	SetColourPickers = 'function: 0000000140769900',
	SetFrictionMultiplier = 'function: 000000014076B0B0',
	SetGUIShapeHighlightCurrentEditingTrack = 'function: 0000000140765A10',
	SetGUIShapeSelectionHighlight = 'function: 00000001407655F0',
	SetHeatmapLive = 'function: 0000000140769DB0',
	SetHeatmapPass = 'function: 00000001407699C0',
	SetHighlighted = 'function: 0000000140765420',
	SetMaterialFlexiColourForTrack = 'function: 000000014075EE30',
	SetNewCarsToDefaultColours = 'function: 000000014075F3B0',
	SetNumCarsPerTrain = 'function: 000000014075E6B0',
	SetNumTrains = 'function: 000000014075E890',
	SetNumberOfPassesThroughStation = 'function: 0000000140762AD0',
	SetPlayerTrainTriggersOnly = 'function: 000000014076D9D0',
	SetPoweredTrainsBehaviour = 'function: 000000014075EC50',
	SetPoweredTrainsSpeed = 'function: 000000014075EA70',
	SetPoweredTrainsSpeed_Current = 'function: 0000000140761DD0',
	SetRideDesignerOverride = 'function: 000000014075FC60',
	SetRideMusic = 'function: 000000014075FF00',
	SetRideName = 'function: 000000014075F940',
	SetRideVolume = 'function: 00000001407602E0',
	SetSelectionMaterialColourForSemanticTag = 'function: 000000014075DFA0',
	SetTrackEditConstraint = 'function: 000000014076C750',
	SetTrackFrictionMultiplier = 'function: 000000014076B2F0',
	SetTrackedRideOperationMode = 'function: 000000014076C2C0',
	SetTrainType = 'function: 000000014075E460',
	SetUseFlumePhysics = 'function: 00000001407625D0',
	SetUseLooseFlumeRestrictions = 'function: 000000014076B890',
	SetUseLooseTrackRestrictions = 'function: 000000014076B5C0',
	SetVoxelTerrainForTrackEditor = 'function: 0000000140766320',
	ShowHeatmap = 'function: 0000000140769680',
	StaticBestTwist = 'function: 0000000140751F00',
	StationCount = 'function: 0000000140754430',
	UpdateActiveTrackDirectionArrows = 'function: 000000014076DDA0',
	UpdateAllTrackDirectionArrows = 'function: 000000014076E0A0',
	UseLooseFlumeRestrictions = 'function: 000000014076B7A0',
	UseLooseTrackRestrictions = 'function: 000000014076B4D0',
	['userdata: 00000001431C3898'] = true,
	EditingTrackHighlightFlags_Nodes = 1,
	EditingTrackHighlightFlags_DummyRails = 2,
	EditingTrackHighlightFlags_SectionPreviews = 4,
	EditingTrackHighlightFlags_All = 255,
	Heatmap_None = 0,
	Heatmap_Speed = 1,
	Heatmap_VerticalGs = 2,
	Heatmap_LateralGs = 3,
	Heatmap_LongGs = 4,
	Heatmap_Excitement = 5,
	Heatmap_Fear = 6,
	Heatmap_Nausea = 7,
	SectionTriggerType_Sequence = 0,
	SectionTriggerType_RidePhoto = 1,
	SelectionDebugDrawGraphType_Y = 0,
	SelectionDebugDrawGraphType_Yaw = 1,
	SelectionDebugDrawGraphType_Pitch = 2,
	SelectionDebugDrawGraphType_Roll = 3,
	SelectionDebugDrawGraphType_RollAndTwist = 4,
	SelectionHighlightType_Hover = 0,
	SelectionHighlightType_Select = 1,
	TrackDirection_None = 0,
	TrackDirection_In = 1,
	TrackDirection_Out = 2,
	TrackDirection_Both = 3,
	TrackEditConstrainableAction_Move = 0,
	TrackEditConstrainableAction_Delete = 1,
	TrackEditConstrainableAction_PlaceStation = 2,
	TrackEditConstrainableAction_RemoveStation = 3,
	TrackParam_ChainLiftSpeed = 0,
	TrackParam_BoosterMaxSpeed = 1,
	TrackParam_BoosterAcceleration = 2,
	TrackParam_BrakeMinSpeed = 3,
	TrackParam_BrakeDeceleration = 4,
	TrackParam_StationEntrySpeed = 5,
	TrackParam_StationExitSpeed = 6,
	TrackParam_StationStopLocation = 7,
	TrackParam_BrakeDirection = 8,
	TrackParam_BoosterDirection = 9,
	TrackParam_BlockSectionMaxSpeed = 10,
	TrackParam_HoldingSectionStopLocation = 11,
	TrackParam_HoldingSectionMinTime = 12,
	TrackParam_HoldingSectionMaxTime = 13,
	TrackParam_HoldingSectionReleaseSpeed = 14,
	TrackParam_HoldingSectionReleaseAcceleration = 15,
	TrackParam_HydraulicLaunchLauchSpeed = 16,
	TrackParam_PhotoSectionPhotoLocation = 17,
	TrackParam_HydraulicLaunchDelay = 18,
	TrackParam_HydraulicLaunchAcceleration = 19,
	TrackParam_HydraulicLaunchReturnSpeed = 20,
	TrackParam_CabinAngle = 21,
	TrackParam_HydraulicLaunchReleaseExtraDistance = 22,
	TrackParam_HydraulicLaunchReleaseProportion = 23,
	TrackParam_CabinAngleSet = 24,
	TrackParam_FloatingCarMotionBobScale = 25,
	TrackParam_FloatingCarMotionRockScale = 26,
	TrackParam_TrackWidth = 27,
	TrackParam_CatchOnReturnProportion = 28,
	TrackParam_WaitToReturnDelay = 29,
	TrackParam_ChainLiftDropLocation = 30,
	TrackParam_SplitCatchCarOffset = 31,
	TrackParam_DualDirectionBrakeLap = 32,
	TrackParam_ReverseLaunchOverride = 33,
	TrackParam_CabinYaw = 34,
	TrackParam_CabinYawSet = 35,
	TrackParam_CabinRoll = 36,
	TrackParam_CabinRollSet = 37,
	TrackParam_CabinPitch02 = 38,
	TrackParam_CabinPitch02Set = 39,
	TrackParam_BackwardsBoosterMaxSpeed = 40,
	TrackParam_BackwardsBoosterAcceleration = 41,
	TrackParam_NonStopStationSpeed = 42,
	TrackParam_AltBoosterMaxSpeed = 43,
	TrackParam_AltBoosterAcceleration = 44,
	TrackParam_AnimatedTrackInitialDelay = 45,
	TrackParam_AnimatedTrackPostDepartureDelay = 46,
	TrackParam_AnimatedTrackStartToEndAnimationType = 47,
	TrackParam_AnimatedTrackEndToStartAnimationType = 48,
	TrackParam_AnimatedTrackLaunchDelay = 49,
	TrackParam_CurveRange = 100,
	TrackParam_SlopeRange = 101,
	TrackParam_BankingRange = 102,
	TrackParam_LengthRange = 103,
	TrackParam_ScaleRange = 104,
	TrackParam_BankPivotRange = 105,
	TrackParam_StationEntranceSide = 106,
	TrackParam_StationExitSide = 107,
	TrackParam_TunnelRadius = 108,
	TrackParam_DropSupports = 109,
	TrackParam_OptionalCatwalk = 110,
	TrackParam_TrackMeshIndex = 111,
	TrackParam_HideTrackHandles = 114,
	TrackParam_StopAndHoldWaitTime = 116,
	TrackParam_UseAlternateCabinIcons = 117,
	TrackParam_GridSize = 118,
	TrackParam_BankOnlyIntoTurns = 119,
	TrackParam_CatwalkReliesOnSupports = 120,
	TrackParam_MatchCarRotationToStationEnds = 121,
	TrackParam_UseChairliftSpline = 122,
	TrackParam_StationEndCapSize = 123,
	TrackParam_HiddenInStationList = 124,
	TrackParam_SwapToDefaultWhenSlopedDown = 125,
	TrackParam_OptionalBlockMode = 126,
	TrackParam_ECSDirection = 127,
	TrackParam_ECSSpeed = 128,
	TrackParam_LockSpinning = 129,
	TrackParam_CarArrowOffset = 130,
	TrackParam_StationPitch = 134,
	TrackParam_FlumePlacementOffsetY = 135,
	TrackParam_FlumePlacementOffsetZ = 136,
	TrackParam_DefaultStationLength = 143,
	TrackParam_DefaultTimeBetweenDepartures = 144,
	TrackParam_HideTrackPlacementHandles = 145,
	TrackSmoothType_SmoothAll = 0,
	TrackSmoothType_SmoothBank = 1,
	TrackSmoothType_SmoothHeight = 2,
	TrackSmoothType_SmoothTurn = 3,
	SectionLocation_Station_Front = 0,
	TrackEditConstraint_Count = 3,
	PreviewAdd = 4,
	PreviewReplace = 8,
	PreviewLooksReal = 16,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CCF80'
	},
	_NAME = 'game::luascript::api::track',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CCF80'
	}
},

['Game::LuaScript::API::TrackedRideDatabase'] = {
	AllowsBlockSections = 'function: 000000014068E780',
	AllowsFreeEnds = 'function: 000000014068FC80',
	AllowsShuttleMode = 'function: 000000014068E970',
	BuildTrackResData = 'function: 000000014068D690',
	GetAllElementLists = 'function: 0000000140690290',
	GetAllElementUsesRideParams = 'function: 0000000140690550',
	GetAllFlumeTypes = 'function: 0000000140690AB0',
	GetAllRideParams = 'function: 0000000140690130',
	GetAllTrackElementParams = 'function: 000000014068FFD0',
	GetAllTrackElements = 'function: 000000014068FE70',
	GetAllTrainIDs = 'function: 000000014068EB60',
	GetAllTrainsForRideType = 'function: 000000014068ECB0',
	GetBlueprintTags = 'function: 000000014068E520',
	GetCinematicCameraWeights = 'function: 000000014068E2F0',
	GetDefaultTrainTypeForRideType = 'function: 000000014068F060',
	GetFlumePlatformForRideType = 'function: 00000001406908A0',
	GetRequiredDLCForTrain = 'function: 000000014068F4A0',
	GetRideTrainTypeName = 'function: 000000014068F260',
	GetTrackElements = 'function: 000000014068E090',
	GetTrackParamEnum = 'function: 00000001406903F0',
	IsBoomerangCoaster = 'function: 000000014068F6B0',
	IsCoasterLoopedAsDefault = 'function: 000000014068F8A0',
	IsFlumePlatformType = 'function: 00000001406906B0',
	IsNonstopRide = 'function: 000000014068FA90',
	LookupElementParams = 'function: 000000014068DB50',
	LookupElementParamsFromElementName = 'function: 000000014068DE20',
	LookupRideParams = 'function: 000000014068D8E0',
	['userdata: 00000001431C3620'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018818680'
	},
	_NAME = 'game::luascript::api::trackedridedatabase',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018818680'
	}
},

['Game::LuaScript::API::TrackedRides'] = {
	AddToDuel = 'function: 000000014077B1B0',
	AreAllCarsOnTrack = 'function: 0000000140778BF0',
	AttachShootableTargetHighlightRequest = 'function: 0000000140780C60',
	CanShootTarget = 'function: 000000014077CA50',
	CommitTrainManager = 'function: 000000014077BC70',
	CompleteBlueprintSerialisationLoad = 'function: 000000014077E280',
	CompleteTrainWorldSerialisationLoad = 'function: 0000000140778AF0',
	CompleteWorldSerialisationLoad = 'function: 000000014077E280',
	CreateShootableTargetHighlightRequest = 'function: 0000000140780A20',
	CreateTrainOnTrack = 'function: 0000000140776BC0',
	DetachShootableTargetHighlightRequest = 'function: 0000000140780E20',
	DoesTrackStartAndEndAtStation = 'function: 0000000140778DE0',
	GetAllTrackedRides = 'function: 0000000140778030',
	GetAllTrackedRidesInDuel = 'function: 000000014077B5A0',
	GetAllTrainsOnTrackedRide = 'function: 0000000140777D00',
	GetAmmoLimit = 'function: 000000014077EF40',
	GetCarDistanceFromStation = 'function: 0000000140780580',
	GetCarEFN = 'function: 000000014077A5E0',
	GetCarFrontTrackLocation_Display = 'function: 0000000140779960',
	GetCarIsOnTrack = 'function: 0000000140779580',
	GetCarLocalAcceleration = 'function: 000000014077A0E0',
	GetCarLocalGForce = 'function: 000000014077A360',
	GetCarState = 'function: 0000000140779CD0',
	GetCarTrackSpeed = 'function: 0000000140779EC0',
	GetCarTriggers = 'function: 000000014077A850',
	GetCarsInTrain = 'function: 0000000140779230',
	GetConnectedShootableTargetCount = 'function: 000000014077CBB0',
	GetConnectedShootableTargetParts = 'function: 000000014077CD30',
	GetIsAmmoInfinite = 'function: 000000014077F4D0',
	GetNextTrainToLeaveStation = 'function: 000000014077FDA0',
	GetNumPointsForTarget = 'function: 000000014077EAD0',
	GetNumShootableTargetsMax = 'function: 000000014077DB10',
	GetRidesConnectedToTarget = 'function: 000000014077DE60',
	GetShootingFreeCamEnabled = 'function: 000000014077F860',
	GetShootingMultiplier = 'function: 000000014077F0F0',
	GetShootingSceneryPiercing = 'function: 000000014077FBF0',
	GetShootingScores = 'function: 000000014077E580',
	GetStationBehindTrain = 'function: 0000000140780320',
	GetStationTimeLeft = 'function: 000000014077BD80',
	GetTargetForwardShootVector = 'function: 000000014077EBD0',
	GetTargetPartRideConnected = 'function: 000000014077DC80',
	GetTrackedRideOperationMode = 'function: 000000014077B8D0',
	GetTrainAtStation = 'function: 000000014077FFF0',
	GetTrainContainingCar = 'function: 0000000140779760',
	GetTrainTypeForTrackedRide = 'function: 00000001407763F0',
	IsLoadedTrackedRide = 'function: 00000001407790A0',
	IsShootableTarget = 'function: 000000014077C870',
	IsShootingMinigameEnabled = 'function: 000000014077C450',
	IsShuttleLaunchCoaster = 'function: 000000014077BAA0',
	IsSubtrainOnStation = 'function: 000000014077C1F0',
	IsSubtrainStoppedAtStation = 'function: 000000014077BF70',
	IsUnconnectedStation = 'function: 0000000140778F40',
	LimitNumberOfCarsByTrainLength = 'function: 0000000140776830',
	NotifyTrackedRideOfTrackEdit = 'function: 0000000140778310',
	RemoveFromDuel = 'function: 000000014077B400',
	RemoveTarget = 'function: 000000014077D860',
	RequestRemoveNormalTrainsOnTrackedRide = 'function: 0000000140778670',
	RequestRemoveNormalTrainsOnTrackedRide_IsPending = 'function: 0000000140778890',
	SetAmmoLimit = 'function: 000000014077ED60',
	SetConnectedTargetParts = 'function: 000000014077CFD0',
	SetGuestGunsVisible = 'function: 0000000140780F30',
	SetGuestsCanShoot = 'function: 00000001407807E0',
	SetIsAmmoInfinite = 'function: 000000014077F2F0',
	SetShootingFreeCamEnabled = 'function: 000000014077F680',
	SetShootingSceneryPiercing = 'function: 000000014077FA10',
	SetSubTrainIsUserControlled = 'function: 000000014077AAB0',
	SetSubTrainUserInput = 'function: 000000014077AD60',
	SetTrainTypeForTrackedRide = 'function: 00000001407765B0',
	ShootTarget = 'function: 000000014077C5E0',
	ShowDebugEFNDisplayForCarIfEnabled = 'function: 000000014077B040',
	SubmitShootingScore = 'function: 000000014077E330',
	['userdata: 00000001431C38C8'] = true,
	CarState_TravellingOnTrack = 0,
	CarState_StoppingAtStation = 1,
	CarState_StoppedAtStation = 2,
	CarState_OffTrack = 3,
	PoweredTrackBehaviour_Default = 0,
	PoweredTrackBehaviour_PoweredCoaster = 1,
	TrackedRideOperationMode_Default = 0,
	TrackedRideOperationMode_BlockSectioned = 1,
	TrackedRideOperationMode_Lapping = 2,
	TrackedRideOperationMode_Boomerang = 3,
	TrackedRideOperationMode_ShuttleLaunched = 4,
	TrackedRideOperationMode_ShuttleMode = 5,
	_M = {
		_CYCLE = 'Reference to table: 0000000018818980'
	},
	_NAME = 'game::luascript::api::trackedrides',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018818980'
	}
},

['Game::LuaScript::API::UIOptionsAPI'] = {
	ApplyNotificationsOptionsChanges = 'function: 000000014055BDD0',
	GetAccentColour = 'function: 0000000140559B50',
	GetAccentColourHex = 'function: 0000000140559CB0',
	GetAccentColourIndex = 'function: 0000000140559DF0',
	GetComplexityAppearValue = 'function: 00000001405495E0',
	GetComplexityPopupType = 'function: 00000001405469D0',
	GetComplexityReappearValue = 'function: 000000014055ACF0',
	GetDistanceUnit = 'function: 000000014055A7B0',
	GetGameClient = 'function: 000000014055A060',
	GetHeatmapColourBlindModeEnabled = 'function: 000000014055AB10',
	GetHidePlayerName = 'function: 000000014055A260',
	GetHighlightObjectOnHover = 'function: 000000014055AC00',
	GetLockCursorToFullscreen = 'function: 000000014055A440',
	GetLockCursorToWindow = 'function: 000000014055A350',
	GetNewsEnabled = 'function: 000000014055AA20',
	GetNotificationsOptions = 'function: 000000014055A530',
	GetSafeFrame = 'function: 0000000140559F90',
	GetSafeFrameDefault = 'function: 00000001403532C0',
	GetScale = 'function: 0000000140559EC0',
	GetShowParkBoundary = 'function: 000000014055A170',
	GetSpeedUnit = 'function: 000000014055A880',
	GetTemperatureUnit = 'function: 000000014055A950',
	SetAccentColour = 'function: 000000014055ADC0',
	SetAccentColourIndex = 'function: 000000014055AF80',
	SetComplexityAppearValue = 'function: 000000014055D430',
	SetComplexityPopupType = 'function: 000000014055D200',
	SetComplexityReappearValue = 'function: 000000014055D5C0',
	SetDistanceUnit = 'function: 000000014055C620',
	SetGameClient = 'function: 000000014055B580',
	SetHeatmapColourBlindMode = 'function: 000000014055CD80',
	SetHeatmapColourBlindModeEnabled = 'function: 000000014055CC00',
	SetHidePlayerName = 'function: 000000014055B950',
	SetHighlightObjectOnHover = 'function: 000000014055D080',
	SetLockCursorToFullscreen = 'function: 000000014055BC50',
	SetLockCursorToWindow = 'function: 000000014055BAD0',
	SetNewsEnabled = 'function: 000000014055CA80',
	SetSafeFrame = 'function: 000000014055B400',
	SetScale = 'function: 000000014055B280',
	SetShowAdditionalPrompts = 'function: 000000014055CF00',
	SetShowParkBoundary = 'function: 000000014055B7D0',
	SetSpeedUnit = 'function: 000000014055C7A0',
	SetTemperatureUnit = 'function: 000000014055C920',
	SetThemeIndex = 'function: 000000014055B100',
	['userdata: 00000001431C3468'] = true,
	DistanceUnit_Metres = 0,
	DistanceUnit_Kilometres = 1,
	DistanceUnit_Feet = 2,
	DistanceUnit_Yards = 3,
	DistanceUnit_Miles = 4,
	SpeedUnit_MetresPerSecond = 0,
	SpeedUnit_FeetPerSecond = 1,
	SpeedUnit_KilometresPerHour = 2,
	SpeedUnit_MilesPerHour = 3,
	TemperatureUnit_Celsius = 21,
	TemperatureUnit_Fahrenheit = 22,
	_M = {
		_CYCLE = 'Reference to table: 00000000187CFBC0'
	},
	_NAME = 'game::luascript::api::uioptionsapi',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187CFBC0'
	}
},

['Game::LuaScript::API::Undo'] = {
	AddForcedFailure = 'function: 000000014055F840',
	ClearCurrentUndoStack = 'function: 000000014055F780',
	GetCommitFailReasons = 'function: 000000014055F3C0',
	IsOnlyTooExpensiveReason = 'function: 000000014055F230',
	['userdata: 00000001431C33F0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187D01C0'
	},
	_NAME = 'game::luascript::api::undo',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187D01C0'
	}
},

['Game::LuaScript::API::UserContent'] = {
	GetInstalledBlueprints = 'function: 0000000140783750',
	GetInstalledParks = 'function: 0000000140783810',
	GetInstalledUGCResources = 'function: 00000001407838D0',
	RequestLoadBlueprint = 'function: 0000000140783990',
	RequestLoadPark = 'function: 0000000140783AE0',
	RequestLoadResource = 'function: 0000000140783C30',
	RequestPreviewThumbnailSizeAsUITexture = 'function: 0000000140783D80',
	['userdata: 00000001431C38D0'] = true,
	ThumbnailSize_LandingPage = 0,
	ThumbnailSize_LandingPageThumb = 1,
	ThumbnailSize_Browser = 2,
	ThumbnailSize_BrowserThumb = 3,
	UIContentAge_LastDay = 0,
	UIContentAge_LastWeek = 1,
	UIContentAge_LastMonth = 2,
	UIContentAge_LastYear = 3,
	UIContentAge_AllTime = 4,
	UIContentType_MostSubscribed = 0,
	UIContentType_Highlighted = 1,
	UIContentType_MostUsed = 2,
	UIContentType_HighestRated = 3,
	GameQueryPageSize = 18,
	Park = 1802531703,
	Blueprint = 1885500279,
	UGCResource = 1885562741,
	_M = {
		_CYCLE = 'Reference to table: 00000000187D1C40'
	},
	_NAME = 'game::luascript::api::usercontent',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187D1C40'
	}
},

['Game::LuaScript::API::VFX'] = {
	HasMaterialParametersComponent = 'function: 000000014078CF80',
	SetMaterialParameters = 'function: 000000014078D110',
	['userdata: 00000001431C38F0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018819840'
	},
	_NAME = 'game::luascript::api::vfx',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018819840'
	}
},

['Game::LuaScript::API::VIPGuests'] = {
	SetFriendsData = 'function: 0000000140786E60',
	SetGroupVIPData = 'function: 00000001407875E0',
	SetSingleVIPData = 'function: 0000000140787100',
	SetStaffVIPData = 'function: 00000001407873B0',
	['userdata: 00000001431C38E0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187D1F00'
	},
	_NAME = 'game::luascript::api::vipguests',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187D1F00'
	}
},

['Game::LuaScript::API::Vehicles'] = {
	GetAllVehicles = 'function: 000000014078C840',
	GetCarCurrentLocalVelocity = 'function: 000000014078B690',
	GetCarCurrentVelocity = 'function: 000000014078B410',
	GetCarDrift = 'function: 000000014078C0F0',
	GetCarGroundedWheelCount = 'function: 000000014078B940',
	GetCarMaxVelocity = 'function: 000000014078BE50',
	GetFirstPersonCameraProperties = 'function: 000000014078AA90',
	GetThirdPersonCameraProperties = 'function: 000000014078ADC0',
	GetVehicleInputs = 'function: 0000000140789860',
	GetVehicleOccupiedByPlayer = 'function: 000000014078A690',
	GetVehicleType = 'function: 0000000140789500',
	IsCarUpright = 'function: 000000014078BBE0',
	IsPlayerControlled = 'function: 000000014078C380',
	IsVehicle = 'function: 0000000140789350',
	SetPlayerControlled = 'function: 000000014078C5E0',
	SetVehicleInputs = 'function: 0000000140789D60',
	SetVehicleOccupiedByPlayer = 'function: 000000014078A420',
	ShouldVehicleBeSaved = 'function: 000000014078A8B0',
	['userdata: 00000001431C38E8'] = true,
	VehicleState_EnteringVehicle = 0,
	VehicleState_ExitingVehicle = 1,
	VehicleType_Car = 0,
	_M = {
		_CYCLE = 'Reference to table: 0000000018819500'
	},
	_NAME = 'game::luascript::api::vehicles',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018819500'
	}
},

['Game::LuaScript::API::Visibility'] = {
	['userdata: 00000001431C38F8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000188199C0'
	},
	_NAME = 'game::luascript::api::visibility',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000188199C0'
	}
},

['Game::LuaScript::API::VisualsConfigAPI'] = {
	GetDepthOfFieldMode = 'function: 0000000140541CD0',
	GetMotionBlurMode = 'function: 00000001405412A0',
	SetDepthOfFieldMode = 'function: 0000000140562F00',
	SetMotionBlurMode = 'function: 0000000140562D80',
	['userdata: 00000001431C3440'] = true,
	DepthOfFieldMode_Never = 0,
	DepthOfFieldMode_Contextual = 1,
	DepthOfFieldMode_Always = 2,
	MotionBlurMode_Never = 0,
	MotionBlurMode_Contextual = 1,
	MotionBlurMode_Always = 2,
	_M = {
		_CYCLE = 'Reference to table: 0000000018819B00'
	},
	_NAME = 'game::luascript::api::visualsconfigapi',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018819B00'
	}
},

['Game::LuaScript::API::Volumes'] = {
	AddDrawingFlag = 'function: 0000000140798060',
	AddDrawingHeightStick = 'function: 0000000140798580',
	AddDrawingLine = 'function: 0000000140797DD0',
	AddDrawingPoint = 'function: 0000000140798340',
	AllocDrawingID = 'function: 00000001407973D0',
	AnyPoolChangesInProgress = 'function: 00000001407AA960',
	AppendBrushHandles = 'function: 00000001407998E0',
	BeginDrawing = 'function: 0000000140797550',
	BuildFlexiColours = 'function: 00000001407A7AF0',
	CalcBestSnappedMoveObjectTransform = 'function: 000000014079CED0',
	CalcPathCourseControls = 'function: 00000001407A7360',
	CanClearSplineControlPoint = 'function: 00000001407A7150',
	CanSelectForPipette = 'function: 000000014079A310',
	CanSelectPoint = 'function: 000000014079A520',
	CanSetSplineControlPoint = 'function: 00000001407A6F40',
	Claim = 'function: 000000014079A840',
	ClearSplineControlPoint = 'function: 00000001407A8DB0',
	CreateDrawingShape = 'function: 0000000140797170',
	CreateGridObject = 'function: 0000000140798CB0',
	CreateMoveObjectForVolumeOutline = 'function: 000000014079AB60',
	CreateMoveObjectForVolumeSpline = 'function: 000000014079B000',
	CreateMoveObjectHeightStick = 'function: 000000014079BB30',
	CreateMoveObjectPlatformFlumeJoin = 'function: 000000014079C3E0',
	CreateMoveObjectPlatformGateJoin = 'function: 000000014079BE70',
	CreateMoveObjectsForControlHandles = 'function: 000000014079B310',
	CreateMoveObjectsForSelection = 'function: 000000014079FDD0',
	CreateSelectionAfterTranslation = 'function: 000000014079E600',
	CreateSelectionFromRaycast = 'function: 000000014079DFD0',
	CreateSelectionWithMovedSitePos = 'function: 000000014079FB20',
	CreateTrimmedSelection = 'function: 000000014079F9A0',
	DestroyDrawingShape = 'function: 0000000140797250',
	DrawSelection = 'function: 000000014079E980',
	DrawSelectionWithOffset = 'function: 000000014079EBD0',
	EndDrawing = 'function: 0000000140797730',
	EraseDrawing = 'function: 0000000140797910',
	ExpandSelectionUsingRaycast = 'function: 000000014079E250',
	FindAndDrawControlHandles = 'function: 0000000140799370',
	GetAudioMaterialChangeFromControlHandle = 'function: 00000001407AB4A0',
	GetAudioMaterialFromControlHandle = 'function: 00000001407AB300',
	GetControlHandlesForSelection = 'function: 00000001407A0210',
	GetEdgeAudioPlacementMaterial = 'function: 00000001407AB040',
	GetEdgeStyleColour = 'function: 00000001407A8860',
	GetHasAnyRoundingChangesForAudio = 'function: 00000001407ABA40',
	GetNavPartFromRay = 'function: 00000001407A8F80',
	GetOutlineAudioPlacementMaterial = 'function: 00000001407AAD80',
	GetOutlineStyleColour = 'function: 00000001407A8590',
	GetPlatformGateJoinSuccess = 'function: 00000001407A4D00',
	GetPoolEntityFromVolume = 'function: 00000001407AA780',
	GetSelectionLength = 'function: 000000014079E850',
	GetSelectionNumPoints = 'function: 000000014079F870',
	GetSelectionPositions = 'function: 000000014079F0A0',
	GetSelectionSitePos = 'function: 000000014079EE00',
	GetSelectionWidgets = 'function: 000000014079F470',
	GetSplineAudioData = 'function: 00000001407A5440',
	GetSplineResultData = 'function: 00000001407A51D0',
	GetSplineStartData = 'function: 00000001407A4F10',
	GetVCAddBorder = 'function: 0000000140796A40',
	GetVCAddKerbs = 'function: 00000001407963C0',
	GetVCAddPathSpine = 'function: 0000000140796080',
	GetVCAddRails = 'function: 0000000140796700',
	GetVCAngleSnapActive = 'function: 00000001407A05C0',
	GetVCAngleSnapDegrees = 'function: 00000001407A0830',
	GetVCBrushHeight = 'function: 00000001407A3C40',
	GetVCBrushRadius = 'function: 00000001407A39E0',
	GetVCCameraFollow = 'function: 00000001407A3EA0',
	GetVCCameraFollowCurve = 'function: 00000001407A4110',
	GetVCDeploySupports = 'function: 0000000140795E10',
	GetVCDepth = 'function: 0000000140796F10',
	GetVCEdgeType = 'function: 0000000140795A60',
	GetVCGroundedRequest = 'function: 00000001407A2710',
	GetVCOutlineRenderType = 'function: 00000001407956B0',
	GetVCOutlineType = 'function: 0000000140795300',
	GetVCPriority = 'function: 00000001407A2970',
	GetVCRightAngledJoints = 'function: 00000001407A1150',
	GetVCRoundingRadius = 'function: 0000000140796CB0',
	GetVCSemanticColour = 'function: 00000001407A4380',
	GetVCSharpCorners = 'function: 00000001407A13C0',
	GetVCSplineCurve = 'function: 00000001407A0EE0',
	GetVCSplineHeightSnap = 'function: 00000001407A24B0',
	GetVCSplineHeightSnapActive = 'function: 00000001407A2240',
	GetVCSplineLengthFixed = 'function: 00000001407A1B10',
	GetVCSplineLengthFixedActive = 'function: 00000001407A18A0',
	GetVCSplineLengthSnap = 'function: 00000001407A1FE0',
	GetVCSplineLengthSnapActive = 'function: 00000001407A1D70',
	GetVCSplineRoundedEnds = 'function: 00000001407A1630',
	GetVCSplineWidth = 'function: 00000001407A0A90',
	GetVCStampScale = 'function: 00000001407A3590',
	GetVCUseStampGrid = 'function: 00000001407A30B0',
	GetVCUseStampSnap = 'function: 00000001407A3320',
	GetVCUseWorkingPlane = 'function: 00000001407A2BE0',
	GetVCWorkingPlaneHeight = 'function: 00000001407A2E50',
	GetVolumeIDFromEntityID = 'function: 00000001407A9790',
	GetVolumeOutline = 'function: 000000014079A0F0',
	GetVolumeOutlinesFromMoveObject = 'function: 000000014079DB80',
	GetVolumesWithPreviewChangesForAudio = 'function: 00000001407AB6C0',
	GridObjectsAreCompatible = 'function: 00000001407991E0',
	HasPendingPoolEdgeCreations = 'function: 00000001407AAC90',
	IsEditable = 'function: 00000001407A99C0',
	IsPool = 'function: 00000001407AA5D0',
	IsQueue = 'function: 00000001407AA420',
	IsStaffPath = 'function: 00000001407AA270',
	IsVolumeInsideParkBoundary = 'function: 00000001407A9B60',
	LockUpdateDrawing = 'function: 0000000140797AF0',
	Raycast = 'function: 0000000140799E80',
	Release = 'function: 000000014079A9D0',
	ResetVCSemanticColour = 'function: 00000001407A4870',
	SaveVolatileConfig = 'function: 0000000140795240',
	SendInitialPathAndVolumeMessagesOnLoad = 'function: 00000001407AAB40',
	SetDrawingShapeLabelView = 'function: 0000000140798750',
	SetFlexiColoursFromOutline = 'function: 00000001407A8290',
	SetModifyVolumesLabelView = 'function: 00000001407989F0',
	SetPlatformGateJoinRaycastToGround = 'function: 00000001407A4A90',
	SetSplineBorderData = 'function: 00000001407A63B0',
	SetSplineBuildingOptions = 'function: 00000001407A6C60',
	SetSplineControlPoint = 'function: 00000001407A8B60',
	SetSplinePathData = 'function: 00000001407A5AE0',
	SetToUseGridObject = 'function: 0000000140798FE0',
	SetVCAddBorder = 'function: 0000000140796B40',
	SetVCAddKerbs = 'function: 0000000140796570',
	SetVCAddPathSpine = 'function: 0000000140796230',
	SetVCAddRails = 'function: 00000001407968B0',
	SetVCAngleSnapActive = 'function: 00000001407A06C0',
	SetVCAngleSnapDegrees = 'function: 00000001407A0920',
	SetVCBrushHeight = 'function: 00000001407A3D30',
	SetVCBrushRadius = 'function: 00000001407A3AD0',
	SetVCCameraFollow = 'function: 00000001407A3FA0',
	SetVCCameraFollowCurve = 'function: 00000001407A4210',
	SetVCDeploySupports = 'function: 0000000140795F10',
	SetVCDepth = 'function: 0000000140797000',
	SetVCEdgeType = 'function: 0000000140795BC0',
	SetVCGroundedRequest = 'function: 00000001407A2800',
	SetVCOutlineRenderType = 'function: 0000000140795810',
	SetVCOutlineType = 'function: 0000000140795460',
	SetVCPriority = 'function: 00000001407A2A70',
	SetVCRightAngledJoints = 'function: 00000001407A1250',
	SetVCRoundingRadius = 'function: 0000000140796DA0',
	SetVCSemanticColour = 'function: 00000001407A4640',
	SetVCSharpCorners = 'function: 00000001407A14C0',
	SetVCSplineCurve = 'function: 00000001407A0FE0',
	SetVCSplineHeightSnap = 'function: 00000001407A25A0',
	SetVCSplineHeightSnapActive = 'function: 00000001407A2340',
	SetVCSplineLengthFixed = 'function: 00000001407A1C00',
	SetVCSplineLengthFixedActive = 'function: 00000001407A19A0',
	SetVCSplineLengthSnap = 'function: 00000001407A20D0',
	SetVCSplineLengthSnapActive = 'function: 00000001407A1E70',
	SetVCSplineRoundedEnds = 'function: 00000001407A1730',
	SetVCSplineWidth = 'function: 00000001407A0C40',
	SetVCStampScale = 'function: 00000001407A3740',
	SetVCUseStampGrid = 'function: 00000001407A31B0',
	SetVCUseStampSnap = 'function: 00000001407A3420',
	SetVCUseWorkingPlane = 'function: 00000001407A2CE0',
	SetVCWorkingPlaneHeight = 'function: 00000001407A2F40',
	ShouldEntityBeIgnoredBySelect = 'function: 00000001407A9690',
	SnapPositionToNavPart = 'function: 00000001407A92C0',
	SubdivideOutlines = 'function: 000000014079D260',
	UnlockUpdateDrawing = 'function: 0000000140797C60',
	['userdata: 00000001431C3938'] = true,
	['ClipPriority::Immutable'] = 0,
	['ClipPriority::AlmostImmutable'] = 1,
	['ClipPriority::High'] = 2,
	['ClipPriority::Magic'] = 3,
	['ClipPriority::Low'] = 4,
	['ControlHandlesFlags::Detach'] = 1,
	['ControlHandlesFlags::IgnoreVertex'] = 2,
	['ControlHandlesFlags::IgnoreEdge'] = 4,
	['ControlHandlesFlags::IgnoreChunk'] = 8,
	['ControlHandlesType::SurfaceAndSplitEdge'] = 0,
	['ControlHandlesType::SurfaceAndMoveEdge'] = 1,
	['ControlHandlesType::Surface2DAndDepth'] = 2,
	['ControlHandlesType::Freeboard'] = 3,
	['ControlHandlesType::Depth'] = 4,
	['ControlHandlesType::DepthPresets'] = 5,
	['ControlHandlesType::Expand'] = 6,
	['ControlHandlesType::Rounding'] = 7,
	['ControlHandlesType::RoundingPresets'] = 8,
	['ControlHandlesType::Subdivide'] = 9,
	['ControlHandlesType::Delete'] = 10,
	['ControlHandlesType::DeletePaths'] = 11,
	['ControlHandlesType::DeletePools'] = 12,
	['ControlHandlesType::Paint'] = 13,
	['GroundedRequest::None'] = 0,
	['GroundedRequest::Dynamic'] = 1,
	['GroundedRequest::ForceOnGround'] = 2,
	['GroundedRequest::ForceNotOnGround'] = 3,
	['GroundedRequest::ConformToGround'] = 4,
	['IPreviewDrawing::Visual::Measurement'] = 0,
	['IPreviewDrawing::Visual::Outlined'] = 1,
	['IPreviewDrawing::Visual::Error'] = 3,
	['IPreviewDrawing::Visual::Highlight'] = 4,
	['IPreviewDrawing::Visual::Selection'] = 5,
	['IPreviewDrawing::Visual::Grid'] = 6,
	['MagicMode::Standard'] = 0,
	['MagicMode::CutPools'] = 1,
	['MagicMode::CutPaths'] = 2,
	['NavPartType::Standard'] = 0,
	['NavPartType::ParkEntrance'] = 1,
	['NavPartType::FlatRidePlatform'] = 2,
	['NavPartType::TrackedRidePlatform'] = 3,
	['NavPartType::FacilityEntrance'] = 4,
	['NavPartType::RideStairsBase'] = 5,
	['NavPartType::RideQueue'] = 6,
	['NavPartType::FlumePlatform'] = 7,
	['VolumeEditorToolPanel::Standard'] = 0,
	['VolumeEditorToolPanel::Queue'] = 1,
	['VolumeEditorToolPanel::Staff'] = 2,
	['VolumeEditorToolPanel::Pool'] = 3,
	['VolumeGridType::Square4m'] = 0,
	['VolumeGridType::Hexagon4m'] = 1,
	_M = {
		_CYCLE = 'Reference to table: 0000000018819CC0'
	},
	_NAME = 'game::luascript::api::volumes',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018819CC0'
	}
},

['Game::LuaScript::API::Weather'] = {
	ActivateDefaultEvent = 'function: 00000001407B1060',
	ActivateEvent = 'function: 00000001407B0E60',
	DrawWeatherScenarioImGui = 'function: 00000001407B2EA0',
	GetActiveStormType = 'function: 00000001407B0B70',
	GetBrightnessScale = 'function: 00000001407B0CC0',
	GetCurrentDawnDuskTimes = 'function: 00000001407B66C0',
	GetCurrentSeasonAvailability = 'function: 00000001407B56B0',
	GetCurrentWeatherAvailability = 'function: 00000001407B85A0',
	GetCurrentWeatherOccurrence = 'function: 00000001407BB460',
	GetCurrentWeatherTemperatures = 'function: 00000001407BD830',
	GetDefaultDawnDuskTimes = 'function: 00000001407B5DC0',
	GetDefaultDayOfWeatherForScenaroEdit = 'function: 00000001407B3020',
	GetDefaultEventName = 'function: 00000001407B2AC0',
	GetDefaultSeasonAvailability = 'function: 00000001407B4FD0',
	GetDefaultWeatherAvailability = 'function: 00000001407B6D80',
	GetDefaultWeatherOccurrence = 'function: 00000001407B9C20',
	GetDefaultWeatherTemperatures = 'function: 00000001407BCA60',
	GetEventRenderParameterValue = 'function: 00000001407BE550',
	GetExposedTemperature = 'function: 00000001407B11E0',
	GetMaxDustAmount = 'function: 00000001407B1730',
	GetMaxSnowAmount = 'function: 00000001407B18D0',
	GetMaxWaterAmount = 'function: 00000001407B1A70',
	GetMinDustAmount = 'function: 00000001407B1660',
	GetMinSnowAmount = 'function: 00000001407B1800',
	GetMinWaterAmount = 'function: 00000001407B19A0',
	GetPossibleWeatherEventNames = 'function: 00000001407B2380',
	GetRenderParametersCollection = 'function: 00000001407BF5A0',
	GetStormWeight = 'function: 00000001407B0D90',
	GetWaterTemperature = 'function: 00000001407B1420',
	IsStormActive = 'function: 00000001407B0A80',
	RegenerateWeather = 'function: 00000001407B2DF0',
	SetAutumnWeatherWeights = 'function: 00000001407B4840',
	SetBiomeBaseTemperatures = 'function: 00000001407B4E20',
	SetBiomeWeatherWeights = 'function: 00000001407B3F40',
	SetDawnDuskTimes = 'function: 00000001407B3AC0',
	SetDefaultEvent = 'function: 00000001407B26C0',
	SetExposedTemperature = 'function: 00000001407B12B0',
	SetMaxDustAmount = 'function: 00000001407B1CA0',
	SetMaxSnowAmount = 'function: 00000001407B1F60',
	SetMaxWaterAmount = 'function: 00000001407B2220',
	SetMinDustAmount = 'function: 00000001407B1B40',
	SetMinSnowAmount = 'function: 00000001407B1E00',
	SetMinWaterAmount = 'function: 00000001407B20C0',
	SetSeasonAvailability = 'function: 00000001407B3850',
	SetSeasonTemperatures = 'function: 00000001407B4A80',
	SetSpringWeatherWeights = 'function: 00000001407B43C0',
	SetSummerWeatherWeights = 'function: 00000001407B4600',
	SetTodaysWeather = 'function: 00000001407B3330',
	SetWaterTemperature = 'function: 00000001407B14F0',
	SetWeatherAvailabilty = 'function: 00000001407B3D50',
	SetWeatherOverride = 'function: 00000001407BF700',
	SetWeatherTemperatures = 'function: 00000001407B4C60',
	SetWinterWeatherWeights = 'function: 00000001407B4180',
	StartFlexibleStorm = 'function: 00000001407B04C0',
	StartStorm = 'function: 00000001407B0290',
	StopFlexibleStorm = 'function: 00000001407B0850',
	['userdata: 00000001431C3948'] = true,
	RenderParameterType_Bool = 0,
	RenderParameterType_Float = 1,
	RenderParameterType_Int = 2,
	RenderParameterType_UInt = 3,
	RenderParameterType_Vector2 = 4,
	RenderParameterType_Vector3 = 5,
	RenderParameterType_Vector4 = 6,
	RenderParameterType_Colour = 7,
	RenderParameterType_ColourHDR = 8,
	RenderParameterType_String = 9,
	SeasonType_Winter = 0,
	SeasonType_Spring = 1,
	SeasonType_Summer = 2,
	SeasonType_Autumn = 3,
	WeatherType_HotSun = 0,
	WeatherType_Clear = 1,
	WeatherType_Cloudy = 3,
	WeatherType_LightRain = 5,
	WeatherType_HeavyRain = 7,
	WeatherType_Wind = 9,
	_M = {
		_CYCLE = 'Reference to table: 000000001881C580'
	},
	_NAME = 'game::luascript::api::weather',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001881C580'
	}
},

['Game::LuaScript::API::WhiteWorldUI'] = {
	GetCurrentViewModeType = 'function: 00000001407C2480',
	GetEntityUnderCursor = 'function: 00000001407C1FA0',
	GetMaxTemperature = 'function: 00000001407C2690',
	GetMinTemperature = 'function: 00000001407C25A0',
	GetPatrolZoneColour = 'function: 00000001407C2080',
	GetViewMode = 'function: 00000001407C1D80',
	SetCurrentViewModeType = 'function: 00000001407C2250',
	SetEntityUnderCursor = 'function: 00000001407C1E50',
	SetViewMode = 'function: 00000001407C1C40',
	['userdata: 00000001431C3950'] = true,
	GTVMT_Overall = 0,
	GTVMT_Fear = 1,
	GTVMT_Nausea = 2,
	GTVMT_RideHeight = 3,
	GTVMT_RideSpeed = 4,
	GTVMT_Queue = 5,
	GTVMT_GForce = 6,
	GVMT_Mood = 0,
	GVMT_Entertainment = 1,
	GVMT_Energy = 2,
	GVMT_Hunger = 3,
	GVMT_Thirst = 4,
	GVMT_Toilet = 5,
	GVMT_Nausea = 6,
	GVMT_Panic = 7,
	GVMT_Sunburn = 8,
	GVMT_Luxury = 9,
	MVMT_Machinery = 0,
	MVMT_PoolSafety = 1,
	MVMT_SecurityCoverage = 2,
	MVMT_Pickpocketing = 3,
	MVMT_Vandalism = 4,
	SCVMT_NeedsCleaning = 0,
	SCVMT_Rating = 1,
	STVMT_Morale = 0,
	STVMT_SalarySatisfaction = 1,
	STVMT_Efficiency = 2,
	SVMT_All = 0,
	SVMT_Security = 1,
	SVMT_Vandalism = 2,
	UVMT_Power = 0,
	UVMT_Water = 1,
	UVMT_Cleanliness = 2,
	VM_Disabled = 0,
	VM_Temperature = 1,
	VM_GuestNeeds = 2,
	VM_StaffNeeds = 3,
	VM_Scenery = 4,
	VM_ParkZone = 5,
	VM_Utilities = 6,
	VM_GuestTolerances = 7,
	VM_Finances = 8,
	VM_Maintenance = 9,
	FVMT_Profit = 0,
	_M = {
		_CYCLE = 'Reference to table: 000000001881D740'
	},
	_NAME = 'game::luascript::api::whiteworldui',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001881D740'
	}
},

['Game::LuaScript::API::WorldAPI'] = {
	GetAllBiomeNames = 'function: 00000001407C5BE0',
	GetArtInitSettings = 'function: 00000001407C39B0',
	GetBiomeArtInitSettings = 'function: 00000001407C4920',
	GetBiomeAudioInitSettings = 'function: 00000001407C5150',
	GetBiomeDesignSettings = 'function: 00000001407C55A0',
	GetBiomeMapEditorSettings = 'function: 00000001407C70D0',
	GetBiomeName = 'function: 00000001407C3480',
	GetMaterialLayerSpecsForBiome = 'function: 00000001407C5EE0',
	GetPlayerVisibleBiomeTerrainLayerSettings = 'function: 00000001407C7520',
	GetRawWorldsToListInDebugMenu = 'function: 00000001407C59F0',
	GetSize = 'function: 00000001407C36B0',
	['userdata: 00000001431C3960'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187D2500'
	},
	_NAME = 'game::luascript::api::worldapi',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187D2500'
	}
},

['Game::LuaScript::API::WorldSerialisation'] = {
	GetRequiredDLC = 'function: 00000001407C8CC0',
	HasTerrainSaveToFileCompleted = 'function: 00000001407C8AA0',
	IsValidFile = 'function: 00000001407C8E40',
	LoadBlueprintFromFile = 'function: 00000001407C91D0',
	LoadPlacementPartID = 'function: 00000001407C96F0',
	LoadTerrainFromFile = 'function: 00000001407C9360',
	LoadWorldFromFile = 'function: 00000001407C9040',
	RequestSaveBlueprintToFile = 'function: 00000001407C8860',
	RequestSaveTerrainToFile = 'function: 00000001407C86C0',
	RequestSaveWorldToFile = 'function: 00000001407C8520',
	SavePlacementPartID = 'function: 00000001407C9500',
	['userdata: 00000001431C3978'] = true,
	Type_Park = 0,
	Type_Blueprint = 1,
	Type_Terrain = 3,
	_M = {
		_CYCLE = 'Reference to table: 000000001881E080'
	},
	_NAME = 'game::luascript::api::worldserialisation',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001881E080'
	}
},

ILogicalButton = {
	GetHeldProp = 'function: 000000014035F660',
	IsDown = 'function: 000000014035F4B0',
	IsFocused = 'function: 000000014035F5D0',
	IsPressed = 'function: 000000014035F540',
	['userdata: 00000001431C2CC8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018802340'
	},
	_NAME = 'ilogicalbutton',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018802340'
	}
},

ImGui = {
	AlignTextToFramePadding = 'function: 0000000140099DF0',
	ArrowButton = 'function: 0000000140099DF0',
	BeginChild = 'function: 0000000140099DF0',
	BeginChildFrame = 'function: 0000000140099DF0',
	BeginCombo = 'function: 0000000140099DF0',
	BeginDragDropSource = 'function: 0000000140099DF0',
	BeginDragDropTarget = 'function: 0000000140099DF0',
	BeginGroup = 'function: 0000000140099DF0',
	BeginMenu = 'function: 0000000140099DF0',
	BeginMenuBar = 'function: 0000000140099DF0',
	BeginPopup = 'function: 0000000140099DF0',
	BeginPopupContextItem = 'function: 0000000140099DF0',
	BeginPopupContextVoid = 'function: 0000000140099DF0',
	BeginPopupContextWindow = 'function: 0000000140099DF0',
	BeginPopupModal = 'function: 0000000140099DF0',
	BeginTabBar = 'function: 0000000140099DF0',
	BeginTabItem = 'function: 0000000140099DF0',
	BeginTable = 'function: 0000000140099DF0',
	BeginTooltip = 'function: 0000000140099DF0',
	Bullet = 'function: 0000000140099DF0',
	BulletText = 'function: 0000000140099DF0',
	Button = 'function: 0000000140099DF0',
	CalcItemWidth = 'function: 0000000140099DF0',
	CalcListClipping = 'function: 0000000140099DF0',
	CaptureKeyboardFromApp = 'function: 0000000140099DF0',
	CaptureMouseFromApp = 'function: 0000000140099DF0',
	Checkbox = 'function: 0000000140099DF0',
	CheckboxFlags = 'function: 0000000140099DF0',
	CloseCurrentPopup = 'function: 0000000140099DF0',
	CollapsingHeader = 'function: 0000000140099DF0',
	ColorButton = 'function: 0000000140099DF0',
	ColorConvertFloat4ToU32 = 'function: 0000000140099DF0',
	ColorConvertHSVtoRGB = 'function: 0000000140099DF0',
	ColorConvertRGBtoHSV = 'function: 0000000140099DF0',
	ColorConvertU32ToFloat4 = 'function: 0000000140099DF0',
	ColorEdit3 = 'function: 0000000140099DF0',
	ColorEdit4 = 'function: 0000000140099DF0',
	ColorPicker3 = 'function: 0000000140099DF0',
	ColorPicker4 = 'function: 0000000140099DF0',
	Columns = 'function: 0000000140099DF0',
	Combo = 'function: 0000000140099DF0',
	DockSpace = 'function: 0000000140099DF0',
	DragFloat = 'function: 0000000140099DF0',
	DragFloat2 = 'function: 0000000140099DF0',
	DragFloat3 = 'function: 0000000140099DF0',
	DragFloat4 = 'function: 0000000140099DF0',
	DragFloatRange2 = 'function: 0000000140099DF0',
	DragInt = 'function: 0000000140099DF0',
	DragInt2 = 'function: 0000000140099DF0',
	DragInt3 = 'function: 0000000140099DF0',
	DragInt4 = 'function: 0000000140099DF0',
	DragIntRange2 = 'function: 0000000140099DF0',
	Dummy = 'function: 0000000140099DF0',
	EndChild = 'function: 0000000140099DF0',
	EndChildFrame = 'function: 0000000140099DF0',
	EndCombo = 'function: 0000000140099DF0',
	EndDragDropSource = 'function: 0000000140099DF0',
	EndDragDropTarget = 'function: 0000000140099DF0',
	EndGroup = 'function: 0000000140099DF0',
	EndMenu = 'function: 0000000140099DF0',
	EndMenuBar = 'function: 0000000140099DF0',
	EndPopup = 'function: 0000000140099DF0',
	EndTabBar = 'function: 0000000140099DF0',
	EndTabItem = 'function: 0000000140099DF0',
	EndTable = 'function: 0000000140099DF0',
	EndTooltip = 'function: 0000000140099DF0',
	GetClipboardText = 'function: 0000000140099DF0',
	GetColorU32 = 'function: 0000000140099DF0',
	GetColumnIndex = 'function: 0000000140099DF0',
	GetColumnOffset = 'function: 0000000140099DF0',
	GetColumnWidth = 'function: 0000000140099DF0',
	GetColumnsCount = 'function: 0000000140099DF0',
	GetContentRegionAvail = 'function: 0000000140099DF0',
	GetContentRegionMax = 'function: 0000000140099DF0',
	GetCursorPos = 'function: 0000000140099DF0',
	GetCursorPosX = 'function: 0000000140099DF0',
	GetCursorPosY = 'function: 0000000140099DF0',
	GetCursorScreenPos = 'function: 0000000140099DF0',
	GetCursorStartPos = 'function: 0000000140099DF0',
	GetFontSize = 'function: 0000000140099DF0',
	GetFontTexUvWhitePixel = 'function: 0000000140099DF0',
	GetFrameCount = 'function: 0000000140099DF0',
	GetFrameHeight = 'function: 0000000140099DF0',
	GetFrameHeightWithSpacing = 'function: 0000000140099DF0',
	GetID = 'function: 0000000140099DF0',
	GetItemRectMax = 'function: 0000000140099DF0',
	GetItemRectMin = 'function: 0000000140099DF0',
	GetItemRectSize = 'function: 0000000140099DF0',
	GetKeyIndex = 'function: 0000000140099DF0',
	GetKeyPressedAmount = 'function: 0000000140099DF0',
	GetMouseCursor = 'function: 0000000140099DF0',
	GetMouseDragDelta = 'function: 0000000140099DF0',
	GetMousePos = 'function: 0000000140099DF0',
	GetMousePosOnOpeningCurrentPopup = 'function: 0000000140099DF0',
	GetScrollMaxX = 'function: 0000000140099DF0',
	GetScrollMaxY = 'function: 0000000140099DF0',
	GetScrollX = 'function: 0000000140099DF0',
	GetScrollY = 'function: 0000000140099DF0',
	GetStyleColorName = 'function: 0000000140099DF0',
	GetTextLineHeight = 'function: 0000000140099DF0',
	GetTextLineHeightWithSpacing = 'function: 0000000140099DF0',
	GetTreeNodeToLabelSpacing = 'function: 0000000140099DF0',
	GetVersion = 'function: 0000000140099DF0',
	GetWindowContentRegionMax = 'function: 0000000140099DF0',
	GetWindowContentRegionMin = 'function: 0000000140099DF0',
	GetWindowContentRegionWidth = 'function: 0000000140099DF0',
	GetWindowDockID = 'function: 0000000140099DF0',
	GetWindowHeight = 'function: 0000000140099DF0',
	GetWindowPos = 'function: 0000000140099DF0',
	GetWindowSize = 'function: 0000000140099DF0',
	GetWindowWidth = 'function: 0000000140099DF0',
	Indent = 'function: 0000000140099DF0',
	InputFloat = 'function: 0000000140099DF0',
	InputFloat2 = 'function: 0000000140099DF0',
	InputFloat3 = 'function: 0000000140099DF0',
	InputFloat4 = 'function: 0000000140099DF0',
	InputInt = 'function: 0000000140099DF0',
	InputInt2 = 'function: 0000000140099DF0',
	InputInt3 = 'function: 0000000140099DF0',
	InputInt4 = 'function: 0000000140099DF0',
	InputText = 'function: 0000000140099DF0',
	InputTextMultiline = 'function: 0000000140099DF0',
	InputTextWithHint = 'function: 0000000140099DF0',
	InvisibleButton = 'function: 0000000140099DF0',
	IsAnyItemActive = 'function: 0000000140099DF0',
	IsAnyItemFocused = 'function: 0000000140099DF0',
	IsAnyItemHovered = 'function: 0000000140099DF0',
	IsAnyMouseDown = 'function: 0000000140099DF0',
	IsItemActivated = 'function: 0000000140099DF0',
	IsItemActive = 'function: 0000000140099DF0',
	IsItemClicked = 'function: 0000000140099DF0',
	IsItemDeactivated = 'function: 0000000140099DF0',
	IsItemDeactivatedAfterEdit = 'function: 0000000140099DF0',
	IsItemEdited = 'function: 0000000140099DF0',
	IsItemFocused = 'function: 0000000140099DF0',
	IsItemHovered = 'function: 0000000140099DF0',
	IsItemToggledOpen = 'function: 0000000140099DF0',
	IsItemVisible = 'function: 0000000140099DF0',
	IsKeyDown = 'function: 0000000140099DF0',
	IsKeyPressed = 'function: 0000000140099DF0',
	IsKeyReleased = 'function: 0000000140099DF0',
	IsMouseClicked = 'function: 0000000140099DF0',
	IsMouseDoubleClicked = 'function: 0000000140099DF0',
	IsMouseDown = 'function: 0000000140099DF0',
	IsMouseDragging = 'function: 0000000140099DF0',
	IsMouseHoveringRect = 'function: 0000000140099DF0',
	IsMousePosValid = 'function: 0000000140099DF0',
	IsMouseReleased = 'function: 0000000140099DF0',
	IsPopupOpen = 'function: 0000000140099DF0',
	IsRectVisible = 'function: 0000000140099DF0',
	IsWindowAppearing = 'function: 0000000140099DF0',
	IsWindowCollapsed = 'function: 0000000140099DF0',
	IsWindowDocked = 'function: 0000000140099DF0',
	IsWindowFocused = 'function: 0000000140099DF0',
	IsWindowHovered = 'function: 0000000140099DF0',
	LabelText = 'function: 0000000140099DF0',
	ListBoxFooter = 'function: 0000000140099DF0',
	ListBoxHeader = 'function: 0000000140099DF0',
	LogButtons = 'function: 0000000140099DF0',
	LogFinish = 'function: 0000000140099DF0',
	LogText = 'function: 0000000140099DF0',
	LogToClipboard = 'function: 0000000140099DF0',
	LogToFile = 'function: 0000000140099DF0',
	LogToTTY = 'function: 0000000140099DF0',
	MenuItem = 'function: 0000000140099DF0',
	NewLine = 'function: 0000000140099DF0',
	NextColumn = 'function: 0000000140099DF0',
	OpenPopup = 'function: 0000000140099DF0',
	OpenPopupOnItemClick = 'function: 0000000140099DF0',
	PopAllowKeyboardFocus = 'function: 0000000140099DF0',
	PopButtonRepeat = 'function: 0000000140099DF0',
	PopClipRect = 'function: 0000000140099DF0',
	PopFont = 'function: 0000000140099DF0',
	PopID = 'function: 0000000140099DF0',
	PopItemWidth = 'function: 0000000140099DF0',
	PopStyleColor = 'function: 0000000140099DF0',
	PopStyleVar = 'function: 0000000140099DF0',
	PopTextWrapPos = 'function: 0000000140099DF0',
	ProgressBar = 'function: 0000000140099DF0',
	PushAllowKeyboardFocus = 'function: 0000000140099DF0',
	PushButtonRepeat = 'function: 0000000140099DF0',
	PushClipRect = 'function: 0000000140099DF0',
	PushID = 'function: 0000000140099DF0',
	PushItemWidth = 'function: 0000000140099DF0',
	PushStyleColor = 'function: 0000000140099DF0',
	PushStyleVar = 'function: 0000000140099DF0',
	PushTextWrapPos = 'function: 0000000140099DF0',
	RadioButton = 'function: 0000000140099DF0',
	ResetMouseDragDelta = 'function: 0000000140099DF0',
	SameLine = 'function: 0000000140099DF0',
	Selectable = 'function: 0000000140099DF0',
	Separator = 'function: 0000000140099DF0',
	SetClipboardText = 'function: 0000000140099DF0',
	SetColorEditOptions = 'function: 0000000140099DF0',
	SetColumnOffset = 'function: 0000000140099DF0',
	SetColumnWidth = 'function: 0000000140099DF0',
	SetCursorPos = 'function: 0000000140099DF0',
	SetCursorPosX = 'function: 0000000140099DF0',
	SetCursorPosY = 'function: 0000000140099DF0',
	SetCursorScreenPos = 'function: 0000000140099DF0',
	SetItemAllowOverlap = 'function: 0000000140099DF0',
	SetItemDefaultFocus = 'function: 0000000140099DF0',
	SetKeyboardFocusHere = 'function: 0000000140099DF0',
	SetMouseCursor = 'function: 0000000140099DF0',
	SetNextItemOpen = 'function: 0000000140099DF0',
	SetNextItemWidth = 'function: 0000000140099DF0',
	SetNextWindowBgAlpha = 'function: 0000000140099DF0',
	SetNextWindowCollapsed = 'function: 0000000140099DF0',
	SetNextWindowContentSize = 'function: 0000000140099DF0',
	SetNextWindowDockID = 'function: 0000000140099DF0',
	SetNextWindowFocus = 'function: 0000000140099DF0',
	SetNextWindowPos = 'function: 0000000140099DF0',
	SetNextWindowSize = 'function: 0000000140099DF0',
	SetNextWindowSizeConstraints = 'function: 0000000140099DF0',
	SetScrollFromPosX = 'function: 0000000140099DF0',
	SetScrollFromPosY = 'function: 0000000140099DF0',
	SetScrollHereX = 'function: 0000000140099DF0',
	SetScrollHereY = 'function: 0000000140099DF0',
	SetScrollX = 'function: 0000000140099DF0',
	SetScrollY = 'function: 0000000140099DF0',
	SetTabItemClosed = 'function: 0000000140099DF0',
	SetTooltip = 'function: 0000000140099DF0',
	SetWindowCollapsed = 'function: 0000000140099DF0',
	SetWindowFocus = 'function: 0000000140099DF0',
	SetWindowFontScale = 'function: 0000000140099DF0',
	SetWindowPos = 'function: 0000000140099DF0',
	SetWindowSize = 'function: 0000000140099DF0',
	ShowFontSelector = 'function: 0000000140099DF0',
	ShowStyleEditor = 'function: 0000000140099DF0',
	ShowStyleSelector = 'function: 0000000140099DF0',
	ShowUserGuide = 'function: 0000000140099DF0',
	SliderAngle = 'function: 0000000140099DF0',
	SliderFloat = 'function: 0000000140099DF0',
	SliderFloat2 = 'function: 0000000140099DF0',
	SliderFloat3 = 'function: 0000000140099DF0',
	SliderFloat4 = 'function: 0000000140099DF0',
	SliderInt = 'function: 0000000140099DF0',
	SliderInt2 = 'function: 0000000140099DF0',
	SliderInt3 = 'function: 0000000140099DF0',
	SliderInt4 = 'function: 0000000140099DF0',
	SmallButton = 'function: 0000000140099DF0',
	Spacing = 'function: 0000000140099DF0',
	TabItemButton = 'function: 0000000140099DF0',
	TableGetColumnCount = 'function: 0000000140099DF0',
	TableGetColumnFlags = 'function: 0000000140099DF0',
	TableGetColumnIndex = 'function: 0000000140099DF0',
	TableGetColumnName = 'function: 0000000140099DF0',
	TableGetRowIndex = 'function: 0000000140099DF0',
	TableHeader = 'function: 0000000140099DF0',
	TableHeadersRow = 'function: 0000000140099DF0',
	TableNextColumn = 'function: 0000000140099DF0',
	TableNextRow = 'function: 0000000140099DF0',
	TableSetBgColor = 'function: 0000000140099DF0',
	TableSetColumnIndex = 'function: 0000000140099DF0',
	TableSetupColumn = 'function: 0000000140099DF0',
	TableSetupScrollFreeze = 'function: 0000000140099DF0',
	Text = 'function: 0000000140099DF0',
	TextColored = 'function: 0000000140099DF0',
	TextDisabled = 'function: 0000000140099DF0',
	TextWrapped = 'function: 0000000140099DF0',
	TreeNode = 'function: 0000000140099DF0',
	TreeNodeEx = 'function: 0000000140099DF0',
	TreePop = 'function: 0000000140099DF0',
	TreePush = 'function: 0000000140099DF0',
	Unindent = 'function: 0000000140099DF0',
	VSliderFloat = 'function: 0000000140099DF0',
	VSliderInt = 'function: 0000000140099DF0',
	Value = 'function: 0000000140099DF0',
	['userdata: 00000001431C3C28'] = true,
	ImDrawCornerFlags_None = 0,
	ImDrawCornerFlags_TopLeft = 1,
	ImDrawCornerFlags_TopRight = 2,
	ImDrawCornerFlags_Top = 3,
	ImDrawCornerFlags_BotLeft = 4,
	ImDrawCornerFlags_Left = 5,
	ImDrawCornerFlags_BotRight = 8,
	ImDrawCornerFlags_Right = 10,
	ImDrawCornerFlags_Bot = 12,
	ImDrawCornerFlags_All = 15,
	ImDrawListFlags_None = 0,
	ImDrawListFlags_AntiAliasedLines = 1,
	ImDrawListFlags_AntiAliasedLinesUseTex = 2,
	ImDrawListFlags_AntiAliasedFill = 4,
	ImDrawListFlags_AllowVtxOffset = 8,
	ImFontAtlasFlags_None = 0,
	ImFontAtlasFlags_NoPowerOfTwoHeight = 1,
	ImFontAtlasFlags_NoMouseCursors = 2,
	ImFontAtlasFlags_NoBakedLines = 4,
	ImGuiBackendFlags_None = 0,
	ImGuiBackendFlags_HasGamepad = 1,
	ImGuiBackendFlags_HasMouseCursors = 2,
	ImGuiBackendFlags_HasSetMousePos = 4,
	ImGuiBackendFlags_RendererHasVtxOffset = 8,
	ImGuiBackendFlags_PlatformHasViewports = 1024,
	ImGuiBackendFlags_HasMouseHoveredViewport = 2048,
	ImGuiBackendFlags_RendererHasViewports = 4096,
	ImGuiButtonFlags_None = 0,
	ImGuiButtonFlags_MouseButtonLeft = 1,
	ImGuiButtonFlags_MouseButtonRight = 2,
	ImGuiButtonFlags_MouseButtonMiddle = 4,
	ImGuiCol_Text = 0,
	ImGuiCol_TextDisabled = 1,
	ImGuiCol_WindowBg = 2,
	ImGuiCol_ChildBg = 3,
	ImGuiCol_PopupBg = 4,
	ImGuiCol_Border = 5,
	ImGuiCol_BorderShadow = 6,
	ImGuiCol_FrameBg = 7,
	ImGuiCol_FrameBgHovered = 8,
	ImGuiCol_FrameBgActive = 9,
	ImGuiCol_TitleBg = 10,
	ImGuiCol_TitleBgActive = 11,
	ImGuiCol_TitleBgCollapsed = 12,
	ImGuiCol_MenuBarBg = 13,
	ImGuiCol_ScrollbarBg = 14,
	ImGuiCol_ScrollbarGrab = 15,
	ImGuiCol_ScrollbarGrabHovered = 16,
	ImGuiCol_ScrollbarGrabActive = 17,
	ImGuiCol_CheckMark = 18,
	ImGuiCol_SliderGrab = 19,
	ImGuiCol_SliderGrabActive = 20,
	ImGuiCol_Button = 21,
	ImGuiCol_ButtonHovered = 22,
	ImGuiCol_ButtonActive = 23,
	ImGuiCol_Header = 24,
	ImGuiCol_HeaderHovered = 25,
	ImGuiCol_HeaderActive = 26,
	ImGuiCol_Separator = 27,
	ImGuiCol_SeparatorHovered = 28,
	ImGuiCol_SeparatorActive = 29,
	ImGuiCol_ResizeGrip = 30,
	ImGuiCol_ResizeGripHovered = 31,
	ImGuiCol_ResizeGripActive = 32,
	ImGuiCol_Tab = 33,
	ImGuiCol_TabHovered = 34,
	ImGuiCol_TabActive = 35,
	ImGuiCol_TabUnfocused = 36,
	ImGuiCol_TabUnfocusedActive = 37,
	ImGuiCol_DockingPreview = 38,
	ImGuiCol_DockingEmptyBg = 39,
	ImGuiCol_PlotLines = 40,
	ImGuiCol_PlotLinesHovered = 41,
	ImGuiCol_PlotHistogram = 42,
	ImGuiCol_PlotHistogramHovered = 43,
	ImGuiCol_TableHeaderBg = 44,
	ImGuiCol_TableBorderStrong = 45,
	ImGuiCol_TableBorderLight = 46,
	ImGuiCol_TableRowBg = 47,
	ImGuiCol_TableRowBgAlt = 48,
	ImGuiCol_TextSelectedBg = 49,
	ImGuiCol_DragDropTarget = 50,
	ImGuiCol_NavHighlight = 51,
	ImGuiCol_NavWindowingHighlight = 52,
	ImGuiCol_NavWindowingDimBg = 53,
	ImGuiCol_ModalWindowDimBg = 54,
	ImGuiCol_COUNT = 55,
	ImGuiColorEditFlags_None = 0,
	ImGuiColorEditFlags_NoAlpha = 2,
	ImGuiColorEditFlags_NoPicker = 4,
	ImGuiColorEditFlags_NoOptions = 8,
	ImGuiColorEditFlags_NoSmallPreview = 16,
	ImGuiColorEditFlags_NoInputs = 32,
	ImGuiColorEditFlags_NoTooltip = 64,
	ImGuiColorEditFlags_NoLabel = 128,
	ImGuiColorEditFlags_NoSidePreview = 256,
	ImGuiColorEditFlags_NoDragDrop = 512,
	ImGuiColorEditFlags_NoBorder = 1024,
	ImGuiColorEditFlags_AlphaBar = 65536,
	ImGuiColorEditFlags_AlphaPreview = 131072,
	ImGuiColorEditFlags_AlphaPreviewHalf = 262144,
	ImGuiColorEditFlags_HDR = 524288,
	ImGuiColorEditFlags_DisplayRGB = 1048576,
	ImGuiColorEditFlags_DisplayHSV = 2097152,
	ImGuiColorEditFlags_DisplayHex = 4194304,
	ImGuiColorEditFlags_Uint8 = 8388608,
	ImGuiColorEditFlags_Float = 16777216,
	ImGuiColorEditFlags_PickerHueBar = 33554432,
	ImGuiColorEditFlags_PickerHueWheel = 67108864,
	ImGuiColorEditFlags_InputRGB = 134217728,
	ImGuiColorEditFlags_InputHSV = 268435456,
	ImGuiColorEditFlags__DisplayMask = 7340032,
	ImGuiColorEditFlags__DataTypeMask = 25165824,
	ImGuiColorEditFlags__PickerMask = 100663296,
	ImGuiColorEditFlags__OptionsDefault = 177209344,
	ImGuiColorEditFlags__InputMask = 402653184,
	ImGuiComboFlags_None = 0,
	ImGuiComboFlags_PopupAlignLeft = 1,
	ImGuiComboFlags_HeightSmall = 2,
	ImGuiComboFlags_HeightRegular = 4,
	ImGuiComboFlags_HeightLarge = 8,
	ImGuiComboFlags_HeightLargest = 16,
	ImGuiComboFlags_NoArrowButton = 32,
	ImGuiComboFlags_NoPreview = 64,
	ImGuiCond_None = 0,
	ImGuiCond_Always = 1,
	ImGuiCond_Once = 2,
	ImGuiCond_FirstUseEver = 4,
	ImGuiCond_Appearing = 8,
	ImGuiConfigFlags_None = 0,
	ImGuiConfigFlags_NavEnableKeyboard = 1,
	ImGuiConfigFlags_NavEnableGamepad = 2,
	ImGuiConfigFlags_NavEnableSetMousePos = 4,
	ImGuiConfigFlags_NavNoCaptureKeyboard = 8,
	ImGuiConfigFlags_NoMouse = 16,
	ImGuiConfigFlags_NoMouseCursorChange = 32,
	ImGuiConfigFlags_DockingEnable = 64,
	ImGuiConfigFlags_ViewportsEnable = 1024,
	ImGuiConfigFlags_DpiEnableScaleViewports = 16384,
	ImGuiConfigFlags_DpiEnableScaleFonts = 32768,
	ImGuiConfigFlags_IsSRGB = 1048576,
	ImGuiConfigFlags_IsTouchScreen = 2097152,
	ImGuiDataType_S8 = 0,
	ImGuiDataType_U8 = 1,
	ImGuiDataType_S16 = 2,
	ImGuiDataType_U16 = 3,
	ImGuiDataType_S32 = 4,
	ImGuiDataType_U32 = 5,
	ImGuiDataType_S64 = 6,
	ImGuiDataType_U64 = 7,
	ImGuiDataType_Float = 8,
	ImGuiDataType_Double = 9,
	ImGuiDataType_COUNT = 10,
	ImGuiDir_None = -1,
	ImGuiDir_Left = 0,
	ImGuiDir_Right = 1,
	ImGuiDir_Up = 2,
	ImGuiDir_Down = 3,
	ImGuiDir_COUNT = 4,
	ImGuiDockNodeFlags_None = 0,
	ImGuiDockNodeFlags_KeepAliveOnly = 1,
	ImGuiDockNodeFlags_NoDockingInCentralNode = 4,
	ImGuiDockNodeFlags_PassthruCentralNode = 8,
	ImGuiDockNodeFlags_NoSplit = 16,
	ImGuiDockNodeFlags_NoResize = 32,
	ImGuiDockNodeFlags_AutoHideTabBar = 64,
	ImGuiDragDropFlags_None = 0,
	ImGuiDragDropFlags_SourceNoPreviewTooltip = 1,
	ImGuiDragDropFlags_SourceNoDisableHover = 2,
	ImGuiDragDropFlags_SourceNoHoldToOpenOthers = 4,
	ImGuiDragDropFlags_SourceAllowNullID = 8,
	ImGuiDragDropFlags_SourceExtern = 16,
	ImGuiDragDropFlags_SourceAutoExpirePayload = 32,
	ImGuiDragDropFlags_AcceptBeforeDelivery = 1024,
	ImGuiDragDropFlags_AcceptNoDrawDefaultRect = 2048,
	ImGuiDragDropFlags_AcceptPeekOnly = 3072,
	ImGuiDragDropFlags_AcceptNoPreviewTooltip = 4096,
	ImGuiFocusedFlags_None = 0,
	ImGuiFocusedFlags_ChildWindows = 1,
	ImGuiFocusedFlags_RootWindow = 2,
	ImGuiFocusedFlags_RootAndChildWindows = 3,
	ImGuiFocusedFlags_AnyWindow = 4,
	ImGuiHoveredFlags_None = 0,
	ImGuiHoveredFlags_ChildWindows = 1,
	ImGuiHoveredFlags_RootWindow = 2,
	ImGuiHoveredFlags_RootAndChildWindows = 3,
	ImGuiHoveredFlags_AnyWindow = 4,
	ImGuiHoveredFlags_AllowWhenBlockedByPopup = 8,
	ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 32,
	ImGuiHoveredFlags_AllowWhenOverlapped = 64,
	ImGuiHoveredFlags_RectOnly = 104,
	ImGuiHoveredFlags_AllowWhenDisabled = 128,
	ImGuiInputTextFlags_None = 0,
	ImGuiInputTextFlags_CharsDecimal = 1,
	ImGuiInputTextFlags_CharsHexadecimal = 2,
	ImGuiInputTextFlags_CharsUppercase = 4,
	ImGuiInputTextFlags_CharsNoBlank = 8,
	ImGuiInputTextFlags_AutoSelectAll = 16,
	ImGuiInputTextFlags_EnterReturnsTrue = 32,
	ImGuiInputTextFlags_CallbackCompletion = 64,
	ImGuiInputTextFlags_CallbackHistory = 128,
	ImGuiInputTextFlags_CallbackAlways = 256,
	ImGuiInputTextFlags_CallbackCharFilter = 512,
	ImGuiInputTextFlags_AllowTabInput = 1024,
	ImGuiInputTextFlags_CtrlEnterForNewLine = 2048,
	ImGuiInputTextFlags_NoHorizontalScroll = 4096,
	ImGuiInputTextFlags_AlwaysInsertMode = 8192,
	ImGuiInputTextFlags_ReadOnly = 16384,
	ImGuiInputTextFlags_Password = 32768,
	ImGuiInputTextFlags_NoUndoRedo = 65536,
	ImGuiInputTextFlags_CharsScientific = 131072,
	ImGuiInputTextFlags_CallbackResize = 262144,
	ImGuiInputTextFlags_CallbackEdit = 524288,
	ImGuiInputTextFlags_Multiline = 1048576,
	ImGuiInputTextFlags_NoMarkEdited = 2097152,
	ImGuiKey_Tab = 0,
	ImGuiKey_LeftArrow = 1,
	ImGuiKey_RightArrow = 2,
	ImGuiKey_UpArrow = 3,
	ImGuiKey_DownArrow = 4,
	ImGuiKey_PageUp = 5,
	ImGuiKey_PageDown = 6,
	ImGuiKey_Home = 7,
	ImGuiKey_End = 8,
	ImGuiKey_Insert = 9,
	ImGuiKey_Delete = 10,
	ImGuiKey_Backspace = 11,
	ImGuiKey_Space = 12,
	ImGuiKey_Enter = 13,
	ImGuiKey_Escape = 14,
	ImGuiKey_KeyPadEnter = 15,
	ImGuiKey_A = 16,
	ImGuiKey_C = 17,
	ImGuiKey_V = 18,
	ImGuiKey_X = 19,
	ImGuiKey_Y = 20,
	ImGuiKey_Z = 21,
	ImGuiKey_COUNT = 22,
	ImGuiKeyModFlags_None = 0,
	ImGuiKeyModFlags_Ctrl = 1,
	ImGuiKeyModFlags_Shift = 2,
	ImGuiKeyModFlags_Alt = 4,
	ImGuiKeyModFlags_Super = 8,
	ImGuiMouseButton_Left = 0,
	ImGuiMouseButton_Right = 1,
	ImGuiMouseButton_Middle = 2,
	ImGuiMouseButton_COUNT = 5,
	ImGuiMouseCursor_None = -1,
	ImGuiMouseCursor_Arrow = 0,
	ImGuiMouseCursor_TextInput = 1,
	ImGuiMouseCursor_ResizeAll = 2,
	ImGuiMouseCursor_ResizeNS = 3,
	ImGuiMouseCursor_ResizeEW = 4,
	ImGuiMouseCursor_ResizeNESW = 5,
	ImGuiMouseCursor_ResizeNWSE = 6,
	ImGuiMouseCursor_Hand = 7,
	ImGuiMouseCursor_NotAllowed = 8,
	ImGuiMouseCursor_COUNT = 9,
	ImGuiNavInput_Activate = 0,
	ImGuiNavInput_Cancel = 1,
	ImGuiNavInput_Input = 2,
	ImGuiNavInput_Menu = 3,
	ImGuiNavInput_DpadLeft = 4,
	ImGuiNavInput_DpadRight = 5,
	ImGuiNavInput_DpadUp = 6,
	ImGuiNavInput_DpadDown = 7,
	ImGuiNavInput_LStickLeft = 8,
	ImGuiNavInput_LStickRight = 9,
	ImGuiNavInput_LStickUp = 10,
	ImGuiNavInput_LStickDown = 11,
	ImGuiNavInput_FocusPrev = 12,
	ImGuiNavInput_FocusNext = 13,
	ImGuiNavInput_TweakSlow = 14,
	ImGuiNavInput_TweakFast = 15,
	ImGuiNavInput_COUNT = 21,
	ImGuiPopupFlags_None = 0,
	ImGuiPopupFlags_MouseButtonLeft = 0,
	ImGuiPopupFlags_MouseButtonRight = 1,
	ImGuiPopupFlags_MouseButtonMiddle = 2,
	ImGuiPopupFlags_NoOpenOverExistingPopup = 32,
	ImGuiPopupFlags_NoOpenOverItems = 64,
	ImGuiPopupFlags_AnyPopupId = 128,
	ImGuiPopupFlags_AnyPopupLevel = 256,
	ImGuiPopupFlags_AnyPopup = 384,
	ImGuiSelectableFlags_None = 0,
	ImGuiSelectableFlags_DontClosePopups = 1,
	ImGuiSelectableFlags_SpanAllColumns = 2,
	ImGuiSelectableFlags_AllowDoubleClick = 4,
	ImGuiSelectableFlags_Disabled = 8,
	ImGuiSelectableFlags_AllowItemOverlap = 16,
	ImGuiSliderFlags_None = 0,
	ImGuiSliderFlags_AlwaysClamp = 16,
	ImGuiSliderFlags_Logarithmic = 32,
	ImGuiSliderFlags_NoRoundToFormat = 64,
	ImGuiSliderFlags_NoInput = 128,
	ImGuiSortDirection_None = 0,
	ImGuiSortDirection_Ascending = 1,
	ImGuiSortDirection_Descending = 2,
	ImGuiStyleVar_Alpha = 0,
	ImGuiStyleVar_WindowPadding = 1,
	ImGuiStyleVar_WindowRounding = 2,
	ImGuiStyleVar_WindowBorderSize = 3,
	ImGuiStyleVar_WindowMinSize = 4,
	ImGuiStyleVar_WindowTitleAlign = 5,
	ImGuiStyleVar_ChildRounding = 6,
	ImGuiStyleVar_ChildBorderSize = 7,
	ImGuiStyleVar_PopupRounding = 8,
	ImGuiStyleVar_PopupBorderSize = 9,
	ImGuiStyleVar_FramePadding = 10,
	ImGuiStyleVar_FrameRounding = 11,
	ImGuiStyleVar_FrameBorderSize = 12,
	ImGuiStyleVar_ItemSpacing = 13,
	ImGuiStyleVar_ItemInnerSpacing = 14,
	ImGuiStyleVar_IndentSpacing = 15,
	ImGuiStyleVar_CellPadding = 16,
	ImGuiStyleVar_ScrollbarSize = 17,
	ImGuiStyleVar_ScrollbarRounding = 18,
	ImGuiStyleVar_GrabMinSize = 19,
	ImGuiStyleVar_GrabRounding = 20,
	ImGuiStyleVar_TabRounding = 21,
	ImGuiStyleVar_ButtonTextAlign = 22,
	ImGuiStyleVar_SelectableTextAlign = 23,
	ImGuiStyleVar_COUNT = 24,
	ImGuiTabBarFlags_None = 0,
	ImGuiTabBarFlags_Reorderable = 1,
	ImGuiTabBarFlags_AutoSelectNewTabs = 2,
	ImGuiTabBarFlags_TabListPopupButton = 4,
	ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = 8,
	ImGuiTabBarFlags_NoTabListScrollingButtons = 16,
	ImGuiTabBarFlags_NoTooltip = 32,
	ImGuiTabBarFlags_FittingPolicyResizeDown = 64,
	ImGuiTabBarFlags_FittingPolicyScroll = 128,
	ImGuiTabItemFlags_None = 0,
	ImGuiTabItemFlags_UnsavedDocument = 1,
	ImGuiTabItemFlags_SetSelected = 2,
	ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = 4,
	ImGuiTabItemFlags_NoPushId = 8,
	ImGuiTabItemFlags_NoTooltip = 16,
	ImGuiTabItemFlags_NoReorder = 32,
	ImGuiTabItemFlags_Leading = 64,
	ImGuiTabItemFlags_Trailing = 128,
	ImGuiTableBgTarget_None = 0,
	ImGuiTableBgTarget_RowBg0 = 1,
	ImGuiTableBgTarget_RowBg1 = 2,
	ImGuiTableBgTarget_CellBg = 3,
	ImGuiTableColumnFlags_None = 0,
	ImGuiTableColumnFlags_DefaultHide = 1,
	ImGuiTableColumnFlags_DefaultSort = 2,
	ImGuiTableColumnFlags_WidthStretch = 4,
	ImGuiTableColumnFlags_WidthFixed = 8,
	ImGuiTableColumnFlags_NoResize = 16,
	ImGuiTableColumnFlags_NoReorder = 32,
	ImGuiTableColumnFlags_NoHide = 64,
	ImGuiTableColumnFlags_NoClip = 128,
	ImGuiTableColumnFlags_NoSort = 256,
	ImGuiTableColumnFlags_NoSortAscending = 512,
	ImGuiTableColumnFlags_NoSortDescending = 1024,
	ImGuiTableColumnFlags_NoHeaderWidth = 2048,
	ImGuiTableColumnFlags_PreferSortAscending = 4096,
	ImGuiTableColumnFlags_PreferSortDescending = 8192,
	ImGuiTableColumnFlags_IndentEnable = 16384,
	ImGuiTableColumnFlags_IndentDisable = 32768,
	ImGuiTableColumnFlags_IsEnabled = 1048576,
	ImGuiTableColumnFlags_IsVisible = 2097152,
	ImGuiTableColumnFlags_IsSorted = 4194304,
	ImGuiTableColumnFlags_IsHovered = 8388608,
	ImGuiTableFlags_None = 0,
	ImGuiTableFlags_Resizable = 1,
	ImGuiTableFlags_Reorderable = 2,
	ImGuiTableFlags_Hideable = 4,
	ImGuiTableFlags_Sortable = 8,
	ImGuiTableFlags_NoSavedSettings = 16,
	ImGuiTableFlags_ContextMenuInBody = 32,
	ImGuiTableFlags_RowBg = 64,
	ImGuiTableFlags_BordersInnerH = 128,
	ImGuiTableFlags_BordersOuterH = 256,
	ImGuiTableFlags_BordersH = 384,
	ImGuiTableFlags_BordersInnerV = 512,
	ImGuiTableFlags_BordersInner = 640,
	ImGuiTableFlags_BordersOuterV = 1024,
	ImGuiTableFlags_BordersOuter = 1280,
	ImGuiTableFlags_BordersV = 1536,
	ImGuiTableFlags_Borders = 1920,
	ImGuiTableFlags_NoBordersInBody = 2048,
	ImGuiTableFlags_NoBordersInBodyUntilResize = 4096,
	ImGuiTableFlags_SizingFixedFit = 8192,
	ImGuiTableFlags_SizingFixedSame = 16384,
	ImGuiTableFlags_SizingStretchProp = 24576,
	ImGuiTableFlags_SizingStretchSame = 32768,
	ImGuiTableFlags_NoHostExtendX = 65536,
	ImGuiTableFlags_NoHostExtendY = 131072,
	ImGuiTableFlags_NoKeepColumnsVisible = 262144,
	ImGuiTableFlags_PreciseWidths = 524288,
	ImGuiTableFlags_NoClip = 1048576,
	ImGuiTableFlags_PadOuterX = 2097152,
	ImGuiTableFlags_NoPadOuterX = 4194304,
	ImGuiTableFlags_NoPadInnerX = 8388608,
	ImGuiTableFlags_ScrollX = 16777216,
	ImGuiTableFlags_ScrollY = 33554432,
	ImGuiTableFlags_SortMulti = 67108864,
	ImGuiTableFlags_SortTristate = 134217728,
	ImGuiTableRowFlags_None = 0,
	ImGuiTableRowFlags_Headers = 1,
	ImGuiTreeNodeFlags_None = 0,
	ImGuiTreeNodeFlags_Selected = 1,
	ImGuiTreeNodeFlags_Framed = 2,
	ImGuiTreeNodeFlags_AllowItemOverlap = 4,
	ImGuiTreeNodeFlags_NoTreePushOnOpen = 8,
	ImGuiTreeNodeFlags_NoAutoOpenOnLog = 16,
	ImGuiTreeNodeFlags_CollapsingHeader = 26,
	ImGuiTreeNodeFlags_DefaultOpen = 32,
	ImGuiTreeNodeFlags_OpenOnDoubleClick = 64,
	ImGuiTreeNodeFlags_OpenOnArrow = 128,
	ImGuiTreeNodeFlags_Leaf = 256,
	ImGuiTreeNodeFlags_Bullet = 512,
	ImGuiTreeNodeFlags_FramePadding = 1024,
	ImGuiTreeNodeFlags_SpanAvailWidth = 2048,
	ImGuiTreeNodeFlags_SpanFullWidth = 4096,
	ImGuiTreeNodeFlags_NavLeftJumpsBackHere = 8192,
	ImGuiViewportFlags_None = 0,
	ImGuiViewportFlags_NoDecoration = 1,
	ImGuiViewportFlags_NoTaskBarIcon = 2,
	ImGuiViewportFlags_NoFocusOnAppearing = 4,
	ImGuiViewportFlags_NoFocusOnClick = 8,
	ImGuiViewportFlags_NoInputs = 16,
	ImGuiViewportFlags_NoRendererClear = 32,
	ImGuiViewportFlags_TopMost = 64,
	ImGuiViewportFlags_Minimized = 128,
	ImGuiViewportFlags_NoAutoMerge = 256,
	ImGuiViewportFlags_CanHostOtherWindows = 512,
	ImGuiWindowFlags_None = 0,
	ImGuiWindowFlags_NoTitleBar = 1,
	ImGuiWindowFlags_NoResize = 2,
	ImGuiWindowFlags_NoMove = 4,
	ImGuiWindowFlags_NoScrollbar = 8,
	ImGuiWindowFlags_NoScrollWithMouse = 16,
	ImGuiWindowFlags_NoCollapse = 32,
	ImGuiWindowFlags_NoDecoration = 43,
	ImGuiWindowFlags_AlwaysAutoResize = 64,
	ImGuiWindowFlags_NoBackground = 128,
	ImGuiWindowFlags_NoSavedSettings = 256,
	ImGuiWindowFlags_NoMouseInputs = 512,
	ImGuiWindowFlags_MenuBar = 1024,
	ImGuiWindowFlags_HorizontalScrollbar = 2048,
	ImGuiWindowFlags_NoFocusOnAppearing = 4096,
	ImGuiWindowFlags_NoBringToFrontOnFocus = 8192,
	ImGuiWindowFlags_AlwaysVerticalScrollbar = 16384,
	ImGuiWindowFlags_AlwaysHorizontalScrollbar = 32768,
	ImGuiWindowFlags_AlwaysUseWindowPadding = 65536,
	ImGuiWindowFlags_NoNavInputs = 262144,
	ImGuiWindowFlags_NoNavFocus = 524288,
	ImGuiWindowFlags_NoNav = 786432,
	ImGuiWindowFlags_NoInputs = 786944,
	ImGuiWindowFlags_UnsavedDocument = 1048576,
	ImGuiWindowFlags_NoDocking = 2097152,
	ImGuiWindowFlags_NavFlattened = 8388608,
	ImGuiWindowFlags_ChildWindow = 16777216,
	ImGuiWindowFlags_Tooltip = 33554432,
	ImGuiWindowFlags_Popup = 67108864,
	ImGuiWindowFlags_Modal = 134217728,
	ImGuiWindowFlags_ChildMenu = 268435456,
	ImGuiWindowFlags_DockNodeHost = 536870912,
	ImGuiButtonFlags_MouseButtonDefault_ = 1,
	ImGuiPopupFlags_MouseButtonDefault_ = 1,
	ImGuiButtonFlags_MouseButtonMask_ = 7,
	ImGuiTableColumnFlags_WidthMask_ = 12,
	ImGuiNavInput_KeyMenu_ = 16,
	ImGuiNavInput_InternalStart_ = 16,
	ImGuiNavInput_KeyLeft_ = 17,
	ImGuiNavInput_KeyRight_ = 18,
	ImGuiNavInput_KeyUp_ = 19,
	ImGuiNavInput_KeyDown_ = 20,
	ImGuiComboFlags_HeightMask_ = 30,
	ImGuiPopupFlags_MouseButtonMask_ = 31,
	ImGuiTabBarFlags_FittingPolicyDefault_ = 64,
	ImGuiTabBarFlags_FittingPolicyMask_ = 192,
	ImGuiTableColumnFlags_IndentMask_ = 49152,
	ImGuiTableFlags_SizingMask_ = 57344,
	ImGuiTableColumnFlags_StatusMask_ = 15728640,
	ImGuiTableColumnFlags_NoDirectResize_ = 1073741824,
	ImGuiSliderFlags_InvalidMask_ = 1879048207,
	_M = {
		_CYCLE = 'Reference to table: 0000000018802D40'
	},
	_NAME = 'imgui',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018802D40'
	}
},

ImVec2 = {
	X = 'function: 0000000141578A70',
	Y = 'function: 0000000141578B30',
	new = 'function: 0000000141578870',
	['userdata: 00000001431C3C50'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000188260C0'
	},
	_NAME = 'imvec2',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000188260C0'
	}
},

ImVec4 = {
	W = 'function: 0000000141579510',
	X = 'function: 00000001415792D0',
	Y = 'function: 0000000141579390',
	Z = 'function: 0000000141579450',
	new = 'function: 0000000141578FA0',
	['userdata: 00000001431C3C30'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018C15A40'
	},
	_NAME = 'imvec4',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018C15A40'
	}
},

ModItem = {
	CompareByCreatedTime = 'function: 00000001419D51C0',
	CompareByLastUpdatedTime = 'function: 00000001419D5010',
	CompareBySubscribedTime = 'function: 00000001419D5370',
	GetAuthor = 'function: 00000001419D48B0',
	GetAuthorName = 'function: 00000001419D4930',
	GetAuthorPlatform = 'function: 00000001419D45C0',
	GetAuthorType = 'function: 00000001419D4820',
	GetCreatedTime = 'function: 00000001419D3120',
	GetCreatorID = 'function: 00000001419D4650',
	GetCreatorName = 'function: 00000001419D46D0',
	GetCreatorSecondaryID = 'function: 00000001419D48B0',
	GetCreatorSecondaryName = 'function: 00000001419D4930',
	GetCreatorSecondaryType = 'function: 00000001419D4820',
	GetDLC = 'function: 00000001419D2810',
	GetDescription = 'function: 00000001419D1220',
	GetDisplayName = 'function: 00000001419D46D0',
	GetDownloadSize = 'function: 00000001419D4250',
	GetDownloadStats = 'function: 00000001419D21D0',
	GetGameVersion = 'function: 00000001419D4A80',
	GetIsSubscribedToItem = 'function: 00000001419D17E0',
	GetItemID = 'function: 00000001419D10E0',
	GetKeplerProfileID = 'function: 00000001419D4650',
	GetLastUpdatedTime = 'function: 00000001419D2B90',
	GetModType = 'function: 00000001419D41C0',
	GetNumAllTimeDownloads = 'function: 00000001419D1B40',
	GetNumAllTimeUses = 'function: 00000001419D1870',
	GetNumCurrentFavourites = 'function: 00000001419D14E0',
	GetNumCurrentFollowers = 'function: 00000001419D1560',
	GetNumCurrentSubscriptions = 'function: 00000001419D1460',
	GetNumDailyDownloads = 'function: 00000001419D1BD0',
	GetNumDailyUses = 'function: 00000001419D1900',
	GetNumDownVotes = 'function: 00000001419D13E0',
	GetNumMonthlyDownloads = 'function: 00000001419D1CF0',
	GetNumMonthlyUses = 'function: 00000001419D1A20',
	GetNumUniqueFavourites = 'function: 00000001419D1660',
	GetNumUniqueFollowers = 'function: 00000001419D16E0',
	GetNumUniqueSubscriptions = 'function: 00000001419D15E0',
	GetNumUniqueWebsiteViews = 'function: 00000001419D1760',
	GetNumUpVotes = 'function: 00000001419D1360',
	GetNumWeeklyDownloads = 'function: 00000001419D1C60',
	GetNumWeeklyUses = 'function: 00000001419D1990',
	GetNumYearlyDownloads = 'function: 00000001419D1D80',
	GetNumYearlyUses = 'function: 00000001419D1AB0',
	GetPreviewImageTextureID = 'function: 00000001419D3D40',
	GetPreviewThumbnailTextureID = 'function: 00000001419D3F80',
	GetScore = 'function: 00000001419D12E0',
	GetShareCode = 'function: 00000001419D4EA0',
	GetSteamMetadata = 'function: 00000001419D2A70',
	GetSteamTags = 'function: 00000001419D2590',
	GetSubscribedTime = 'function: 00000001419D36B0',
	GetSupportedPlatforms = 'function: 00000001419D4360',
	GetTags = 'function: 00000001419D2590',
	GetTitle = 'function: 00000001419D1160',
	GetType = 'function: 00000001419D41C0',
	GetUploadPlatform = 'function: 00000001419D45C0',
	GetUsageStats = 'function: 00000001419D1E10',
	GetUserData = 'function: 00000001419D2A70',
	GetVersion = 'function: 00000001419D4BA0',
	GetVisibility = 'function: 00000001419D42D0',
	HasPreview = 'function: 00000001419D3C40',
	HasPreviewImageTexture = 'function: 00000001419D3E80',
	HasPreviewThumbnailTexture = 'function: 00000001419D40C0',
	IsAuthorBlocked = 'function: 00000001419D49F0',
	IsCreatorBlocked = 'function: 00000001419D4790',
	IsCreatorFeatured = 'function: 00000001419D4C80',
	IsCreatorFollowed = 'function: 00000001419D4D90',
	IsCreatorSecondaryBlocked = 'function: 00000001419D49F0',
	IsKeplerBlocked = 'function: 00000001419D4790',
	IsKeplerFeatured = 'function: 00000001419D4C80',
	IsKeplerFollowed = 'function: 00000001419D4D90',
	['userdata: 00000001431C3EB8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018A93B00'
	},
	_NAME = 'moditem',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__gc = 'function: 00000001403539A0',
	__index = {
		_CYCLE = 'Reference to table: 0000000018A93B00'
	}
},

Quaternion = {
	BetweenDirections = 'function: 00000001417F7F40',
	Conjugated = 'function: 00000001417F7E20',
	Dot = 'function: 00000001417F7D60',
	F = 'function: 00000001417F0A70',
	FromAxisAngle = 'function: 00000001417F3C10',
	FromF = 'function: 00000001417F4350',
	FromFR = 'function: 00000001417F4E60',
	FromFU = 'function: 00000001417F51B0',
	FromPackedAxisAngle = 'function: 00000001417F3E30',
	FromR = 'function: 00000001417F4270',
	FromRF = 'function: 00000001417F4710',
	FromRU = 'function: 00000001417F43C0',
	FromRotation = 'function: 00000001417F3A10',
	FromU = 'function: 00000001417F42E0',
	FromUF = 'function: 00000001417F4B10',
	FromUR = 'function: 00000001417F4A60',
	FromYawPitchRoll = 'function: 00000001417F4080',
	GetF = 'function: 00000001417F0A70',
	GetLength = 'function: 00000001417F64D0',
	GetLengthSq = 'function: 00000001417F6570',
	GetR = 'function: 00000001417F08B0',
	GetU = 'function: 00000001417F0990',
	GetW = 'function: 00000001417F5980',
	GetX = 'function: 00000001417F5800',
	GetY = 'function: 00000001417F5880',
	GetZ = 'function: 00000001417F5900',
	Identity = 'fQuaternion: X=0.00 Y=0.00 Z=0.00 W=1.00',
	Inverted = 'function: 00000001417F5740',
	IsFinite = 'function: 00000001417F6380',
	IsNormalised = 'function: 00000001417F6410',
	Length = 'function: 00000001417F64D0',
	LengthSq = 'function: 00000001417F6570',
	Lerp = 'function: 00000001417F6610',
	Normalised = 'function: 00000001417F5550',
	R = 'function: 00000001417F08B0',
	RotatedAround = 'function: 00000001417F7AC0',
	RotatedAroundF = 'function: 00000001417F77F0',
	RotatedAroundR = 'function: 00000001417F7250',
	RotatedAroundU = 'function: 00000001417F7520',
	RotatedAroundX = 'function: 00000001417F6B60',
	RotatedAroundY = 'function: 00000001417F6DB0',
	RotatedAroundZ = 'function: 00000001417F7000',
	RotationBetween = 'function: 00000001417F7E70',
	SLerp = 'function: 00000001417F67C0',
	SafeNormalised = 'function: 00000001417F5630',
	ToAxisAngle = 'function: 00000001417F5A00',
	ToLocal = 'function: 00000001417F5F60',
	ToLocalPos = 'function: 00000001417F6140',
	ToPackedAxisAngle = 'function: 00000001417F5C20',
	ToString = 'function: 00000001417F81C0',
	ToWorld = 'function: 00000001417F6050',
	ToWorldPos = 'function: 00000001417F6260',
	ToYawPitchRoll = 'function: 00000001417F5E30',
	U = 'function: 00000001417F0990',
	W = 'function: 00000001417F5980',
	WithW = 'function: 00000001417F5490',
	WithX = 'function: 00000001417F5260',
	WithY = 'function: 00000001417F5310',
	WithZ = 'function: 00000001417F53D0',
	X = 'function: 00000001417F5800',
	Y = 'function: 00000001417F5880',
	Z = 'function: 00000001417F5900',
	['userdata: 00000001431C3DB0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000188C0180'
	},
	_NAME = 'quaternion',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__gc = 'function: 0000000140386F50',
	__index = {
		_CYCLE = 'Reference to table: 00000000188C0180'
	},
	__tostring = 'function: 00000001417F81C0',
	__viz = 'function: 00000001417F82E0'
},

Rotation = {
	Dot = 'function: 00000001417E8E10',
	F = 'function: 00000001417E9550',
	FromAxisAngle = 'function: 00000001417E62D0',
	FromF = 'function: 00000001417E7140',
	FromFR = 'function: 00000001417E7C60',
	FromFU = 'function: 00000001417E7EA0',
	FromPackedAxisAngle = 'function: 00000001417E65B0',
	FromQuaternion = 'function: 00000001417E6BB0',
	FromR = 'function: 00000001417E6CE0',
	FromRF = 'function: 00000001417E75C0',
	FromRU = 'function: 00000001417E7380',
	FromU = 'function: 00000001417E6F10',
	FromUF = 'function: 00000001417E7A20',
	FromUR = 'function: 00000001417E77F0',
	FromYawPitchRoll = 'function: 00000001417E68E0',
	GetF = 'function: 00000001417E9550',
	GetR = 'function: 00000001417E9410',
	GetU = 'function: 00000001417E94B0',
	Identity = 'fRotation: F=(0.00,0.00,1.00) U=(0.00,1.00,0.00) R=(1.00,0.00,0.00)',
	Inverted = 'function: 00000001417EABE0',
	Lerp = 'function: 00000001417E8850',
	R = 'function: 00000001417E9410',
	RotatedAround = 'function: 00000001417EA810',
	RotatedAroundF = 'function: 00000001417E9B50',
	RotatedAroundR = 'function: 00000001417E95F0',
	RotatedAroundU = 'function: 00000001417E98A0',
	RotatedAroundX = 'function: 00000001417E9E00',
	RotatedAroundY = 'function: 00000001417EA170',
	RotatedAroundZ = 'function: 00000001417EA4B0',
	SLerp = 'function: 00000001417E80D0',
	ToAxisAngle = 'function: 00000001417E91E0',
	ToLocal = 'function: 00000001417EAE90',
	ToLocalPos = 'function: 00000001417EB150',
	ToLocalTrans = 'function: 00000001417EB3E0',
	ToPackedAxisAngle = 'function: 00000001417E92B0',
	ToString = 'function: 00000001417EB670',
	ToWorld = 'function: 00000001417EACF0',
	ToWorldPos = 'function: 00000001417EB050',
	ToWorldTrans = 'function: 00000001417EB250',
	ToYawPitchRoll = 'function: 00000001417E9360',
	U = 'function: 00000001417E94B0',
	['userdata: 00000001431C3DB8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187FE080'
	},
	_NAME = 'rotation',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__gc = 'function: 0000000140633F10',
	__index = {
		_CYCLE = 'Reference to table: 00000000187FE080'
	},
	__tostring = 'function: 00000001417EB670',
	__viz = 'function: 00000001417EB730'
},

SaveToken = {
	CompareByLastUpdatedTime = 'function: 00000001403E5B90',
	['userdata: 00000001431C3048'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018A36640'
	},
	_NAME = 'savetoken',
	_PACKAGE = '',
	__eq = 'function: 00000001403E57C0',
	__gc = 'function: 00000001403E7840',
	__index = {
		_CYCLE = 'Reference to table: 0000000018A36640'
	},
	__lt = 'function: 00000001403E59C0'
},

Transform = {
	Equals = 'function: 00000001417ED960',
	F = 'function: 00000001417E9550',
	ForwardVector = 'function: 00000001417E9550',
	FromPosRotY = 'function: 00000001417ED6E0',
	FromRotPos = 'function: 00000001417ED5C0',
	GetF = 'function: 00000001417E9550',
	GetForwardVector = 'function: 00000001417E9550',
	GetPos = 'function: 00000001417EDA70',
	GetPosition = 'function: 00000001417EDA70',
	GetR = 'function: 00000001417E9410',
	GetRightVector = 'function: 00000001417E9410',
	GetRot = 'function: 00000001417EDC40',
	GetRotation = 'function: 00000001417EDC40',
	GetU = 'function: 00000001417E94B0',
	GetUpVector = 'function: 00000001417E94B0',
	Identity = 'fTransform: pos=(0.00,0.00,0.00) F=(0.00,0.00,1.00) U=(0.00,1.00,0.00) R=(1.00,0.00,0.00)',
	Inverted = 'function: 00000001417EDE60',
	Pos = 'function: 00000001417EDA70',
	R = 'function: 00000001417E9410',
	RightVector = 'function: 00000001417E9410',
	Rot = 'function: 00000001417EDC40',
	ToLocal = 'function: 00000001417EE1A0',
	ToLocalDir = 'function: 00000001417EE680',
	ToLocalPos = 'function: 00000001417EE490',
	ToString = 'function: 00000001417EE8E0',
	ToWorld = 'function: 00000001417EDFA0',
	ToWorldDir = 'function: 00000001417EE590',
	ToWorldPos = 'function: 00000001417EE3A0',
	U = 'function: 00000001417E94B0',
	UpVector = 'function: 00000001417E94B0',
	WithPos = 'function: 00000001417EDB10',
	WithRot = 'function: 00000001417EDD20',
	['userdata: 00000001431C3DD0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187FE100'
	},
	_NAME = 'transform',
	_PACKAGE = '',
	__eq = 'function: 00000001417ED960',
	__gc = 'function: 00000001417F8DB0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187FE100'
	},
	__tostring = 'function: 00000001417EE8E0',
	__viz = 'function: 00000001417EE9A0'
},

TransformQ = {
	AddDeltaPos = 'function: 00000001417F0600',
	Equals = 'function: 00000001417F0470',
	F = 'function: 00000001417F0A70',
	FromOrPos = 'function: 00000001417F03E0',
	GetF = 'function: 00000001417F0A70',
	GetOr = 'function: 00000001417F06B0',
	GetOrientation = 'function: 00000001417F06B0',
	GetPos = 'function: 00000001417E94B0',
	GetPosition = 'function: 00000001417E94B0',
	GetR = 'function: 00000001417F08B0',
	GetU = 'function: 00000001417F0990',
	Identity = 'fTransformQ: pos=(0.00,0.00,0.00) or=(0.00,0.00,0.00,1.00)',
	Inverted = 'function: 00000001417F0B50',
	NormaliseOr = 'function: 00000001417F07D0',
	Or = 'function: 00000001417F06B0',
	Pos = 'function: 00000001417E94B0',
	R = 'function: 00000001417F08B0',
	ToLocal = 'function: 00000001417F0DB0',
	ToLocalDir = 'function: 00000001417F1270',
	ToLocalPos = 'function: 00000001417F1030',
	ToString = 'function: 00000001417F1440',
	ToWorld = 'function: 00000001417F0C60',
	ToWorldDir = 'function: 00000001417F1150',
	ToWorldPos = 'function: 00000001417F0F10',
	U = 'function: 00000001417F0990',
	WithOr = 'function: 00000001417F0720',
	WithPos = 'function: 00000001417F0550',
	['userdata: 00000001431C3DA8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018D3BC80'
	},
	_NAME = 'transformq',
	_PACKAGE = '',
	__eq = 'function: 00000001417F0470',
	__gc = 'function: 00000001417F8D30',
	__index = {
		_CYCLE = 'Reference to table: 0000000018D3BC80'
	},
	__tostring = 'function: 00000001417F1440',
	__viz = 'function: 00000001417F1500'
},

UIEventListener = {
	PullNextEvent = 'function: 00000001402E2EB0',
	Release = 'function: 00000001402E38E0',
	['userdata: 00000001431C2A90'] = true,
	_M = {
		_CYCLE = 'Reference to table: 0000000018CE6FC0'
	},
	_NAME = 'uieventlistener',
	_PACKAGE = '',
	__gc = 'function: 00000001402E4430',
	__index = {
		_CYCLE = 'Reference to table: 0000000018CE6FC0'
	}
},

UIManager = {
	Advance = 'function: 00000001402E0D80',
	CaptureCursor = 'function: 00000001402E15E0',
	GetGUIWrapper = 'function: 00000001402E10F0',
	HideCursor = 'function: 00000001402E17D0',
	Init = 'function: 00000001402E0BF0',
	PrepareToShutdown = 'function: 00000001402E0F10',
	ReleaseGUIWrapper = 'function: 00000001402E1360',
	RequestCursor = 'function: 00000001402E19C0',
	Shutdown = 'function: 00000001402E1040',
	new = 'function: 00000001402E0AF0',
	['userdata: 00000001431C2A40'] = true,
	Priority_ControlRebind = 2,
	Priority_Camera = 6,
	Priority_EditorInvalid = 7,
	Priority_Editor = 8,
	_M = {
		_CYCLE = 'Reference to table: 00000000187EA780'
	},
	_NAME = 'uimanager',
	_PACKAGE = '',
	__index = {
		_CYCLE = 'Reference to table: 00000000187EA780'
	}
},

UIWrapper = {
	CallOnBoundInterface = 'function: 00000001402E2EB0',
	Close = 'function: 00000001402E2EB0',
	Destroy = 'function: 00000001402E2E00',
	Disable = 'function: 00000001402E2EB0',
	Enable = 'function: 00000001402E2EB0',
	GetEventListener = 'function: 00000001402E3070',
	GetMovieName = 'function: 00000001402E2F20',
	Invoke = 'function: 00000001402E2EB0',
	IsAdvancing = 'function: 00000001402E2FE0',
	IsLoaded = 'function: 00000001402E2FE0',
	IsOpen = 'function: 00000001402E2FE0',
	Load = 'function: 00000001402E2EB0',
	Pause = 'function: 00000001402E2EB0',
	Unpause = 'function: 00000001402E2EB0',
	new = 'function: 00000001402E2960',
	['userdata: 00000001431C2A38'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000188F1580'
	},
	_NAME = 'uiwrapper',
	_PACKAGE = '',
	__gc = 'function: 00000001402E4430',
	__index = {
		_CYCLE = 'Reference to table: 00000000188F1580'
	}
},

Vector2 = {
	Cross = 'function: 00000001417E0FD0',
	Dot = 'function: 00000001417E0F60',
	GetLength = 'function: 00000001417E0680',
	GetLengthSq = 'function: 00000001417E06F0',
	GetX = 'function: 00000001417E05E0',
	GetY = 'function: 00000001417E0630',
	IsFinite = 'function: 00000001417E0AE0',
	Length = 'function: 00000001417E0680',
	LengthSq = 'function: 00000001417E06F0',
	Normalised = 'function: 00000001417E0C60',
	Perpendicular = 'function: 00000001417E1080',
	PlusX = 'function: 00000001417E09A0',
	PlusY = 'function: 00000001417E0A40',
	Rotated = 'function: 00000001417E0D30',
	SafeNormalised = 'function: 00000001417E0B60',
	ToString = 'function: 00000001417E1100',
	WithLength = 'function: 00000001417E0880',
	WithX = 'function: 00000001417E0760',
	WithY = 'function: 00000001417E07F0',
	X = 'function: 00000001417E05E0',
	XAxis = Vector2:new(1.0, 0.0),
	Y = 'function: 00000001417E0630',
	YAxis = Vector2:new(0.0, 1.0),
	Zero = Vector2:new(0.0, 0.0),
	new = 'function: 00000001417E0480',
	['userdata: 00000001431C3DC0'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187FBC80'
	},
	_NAME = 'vector2',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187FBC80'
	},
	__tostring = 'function: 00000001417E1100'
},

Vector3 = {
	Cross = 'function: 00000001417E3F10',
	Dot = 'function: 00000001417E3E90',
	GetLength = 'function: 00000001417E2E10',
	GetLengthSq = 'function: 00000001417E2EA0',
	GetLengthXZ = 'function: 00000001417E2F20',
	GetLengthXZSq = 'function: 00000001417E2FA0',
	GetX = 'function: 00000001417E05E0',
	GetY = 'function: 00000001417E0630',
	GetZ = 'function: 00000001417E2D20',
	IsFinite = 'function: 00000001417E3820',
	Length = 'function: 00000001417E2E10',
	LengthSq = 'function: 00000001417E2EA0',
	LengthXZ = 'function: 00000001417E2F20',
	LengthXZSq = 'function: 00000001417E2FA0',
	Lerp = 'function: 00000001417E3D60',
	Normalised = 'function: 00000001417E39C0',
	Perpendicular = 'function: 00000001417E3FE0',
	PlusX = 'function: 00000001417E35E0',
	PlusY = 'function: 00000001417E36A0',
	PlusZ = 'function: 00000001417E3760',
	RotatedAround = 'function: 00000001417E3AB0',
	SafeNormalised = 'function: 00000001417E38A0',
	ToString = 'function: 00000001417E4170',
	WithLength = 'function: 00000001417E34A0',
	WithX = 'function: 00000001417E3020',
	WithXY = 'function: 00000001417E3200',
	WithXZ = 'function: 00000001417E32E0',
	WithY = 'function: 00000001417E30C0',
	WithYX = 'function: 00000001417E3270',
	WithYZ = 'function: 00000001417E33C0',
	WithZ = 'function: 00000001417E3160',
	WithZX = 'function: 00000001417E3350',
	WithZY = 'function: 00000001417E3430',
	X = 'function: 00000001417E05E0',
	XAxis = Vector3:new(1.0, 0.0, 0.0),
	XY = 'function: 00000001417E2D70',
	XZ = 'function: 00000001417E2DC0',
	Y = 'function: 00000001417E0630',
	YAxis = Vector3:new(0.0, 1.0, 0.0),
	YZ = 'function: 00000001417E2DC0',
	Z = 'function: 00000001417E2D20',
	ZAxis = Vector3:new(0.0, 0.0, 1.0),
	Zero = Vector3:new(0.0, 0.0, 0.0),
	new = 'function: 00000001417E2B70',
	['userdata: 00000001431C3DC8'] = true,
	_M = {
		_CYCLE = 'Reference to table: 00000000187FBD40'
	},
	_NAME = 'vector3',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 00000000187FBD40'
	},
	__tostring = 'function: 00000001417E4170'
},

['fUserInterface2::View'] = {
	['userdata: 00000001431C3150'] = true,
	_M = {
		_CYCLE = 'Reference to table: 000000001881CEC0'
	},
	_NAME = 'fuserinterface2::view',
	_PACKAGE = '',
	__eq = 'function: 00000001417DBDC0',
	__index = {
		_CYCLE = 'Reference to table: 000000001881CEC0'
	}
},

['game::editors::undooperationshierarchy'] = {
	CreateCompositeObject = 'function: 000000014048C390'
	DestroyExistingPart = 'function: 000000014048A5C0'
	SetCashPos = 'function: 0000000140487F90'
	CloneExistingPartDuplicates = 'function: 0000000140488E80'
	BeginVolumeModificationsBlock = 'function: 000000014048D2A0'
	CreateNewParts = 'function: 00000001404882D0'
	CloneExistingPart = 'function: 00000001404885F0'
	StartEditingPart_Scenery = 'function: 000000014048B470'
	GetFullUndoChangeList = 'function: 0000000140486C00'
	EditExistingPart = 'function: 00000001404891A0'
	GetOngoingPartEdit_Group = 'function: 000000014048E780'
	SetMagicModeModifyVolumes = 'function: 000000014048DAA0'
	GetAllEditedGroupsThatShouldBeDestroyed = 'function: 000000014048F800'
	GetOngoingPartEdits_Group = 'function: 000000014048EA10'
	StartEditingParts_Scenery = 'function: 000000014048B6F0'
	IsLoadedBlueprintReadyForEditing = 'function: 000000014048FD80'
	SetWaterVolumeColour = 'function: 0000000140490AA0'
	SetParkZoneColour = 'function: 00000001404906C0'
	GetTerrainEditOperation = 'function: 00000001404879C0'
	ModifyParkZoneShape = 'function: 00000001404902E0'
	StartEditingPart_Group = 'function: 000000014048DCA0'
	CreateNewPart = 'function: 00000001404880F0'
	IsEditingPlacementPart = 'function: 000000014048FAB0'
	StartEditingParts_Group = 'function: 000000014048DEE0'
	AddCashDelta = 'function: 0000000140487B30'
	AddVolumeChunkToCompositeObject = 'function: 000000014048CFA0'
	RemoveAllConnectionsFromEntity = 'function: 0000000140486EE0'
	CreateParkZone = 'function: 000000014048FE60'
	SetPerformTerrainModificationsModifyVolumes = 'function: 000000014048D8A0'
	SetErrorOnPathMergeUnchangedModifyVolumes = 'function: 000000014048D6A0'
	EndVolumeModificationsBlock = 'function: 000000014048D3F0'
	ModifyUtilityConnection = 'function: 00000001404877D0'
	GetCleanupConnectionEntities = 'function: 0000000140487020'
	DestroyExistingParts = 'function: 000000014048A740'
	DestroyParkZone = 'function: 000000014048FFB0'
	CloneExistingParts = 'function: 0000000140488870'
	GetOngoingPartEdit_Scenery = 'function: 000000014048BFE0'
	SetCashAccumulate = 'function: 0000000140487CB0'
	AddBlueprintToCompositeObject = 'function: 000000014048CD80'
	AddPartsToCompositeObject = 'function: 000000014048C570'
	CanAfford = 'function: 0000000140487E10'
	RemoveDLCItems = 'function: 000000014048FC20'
	GetAllEditedGroupsContainingOnlySnapEdges = 'function: 000000014048F260'
	userdata = '00000001431C32F0: true'
	EditExistingParts = 'function: 0000000140489420'
	RemoveVolume = 'function: 000000014048D4F0'
	GetBoundaryChangeList = 'function: 0000000140486D70'
	_NAME: game::editors::undooperationshierarchy
	_M: table: 000000001885DD80
	__index: table: 000000001885DD80
	__eq: function: 00000001417DBDC0
	__gc: function: 00000001402E4430
	_PACKAGE: 
},

['game::editors::moveobjectbasehandle'] = {
	LocaliseOverridenNames = 'function: 00000001406B46F0'
	AlignCompositeRotation = 'function: 00000001406B3C80'
	SetPatternTileOffsets = 'function: 00000001406B5260'
	GetTransform = 'function: 00000001406AFD80'
	SetQuaternion = 'function: 00000001406B0480'
	SetPosition = 'function: 00000001406AFF30'
	SetPatternRotation = 'function: 00000001406B5440'
	CalculateTransformForSurfacePlacement = 'function: 00000001406B2400'
	NinetyDegreeRotationOccurred = 'function: 00000001406B08F0'
	IsEmpty = 'function: 00000001406ADFF0'
	SetTransform = 'function: 00000001406B0610'
	SetPatternTexture = 'function: 00000001406B4CE0'
	SetCompositeOriginToOBBCentre = 'function: 00000001406B3AF0'
	GetYRotation = 'function: 00000001406AFB30'
	GetGridAlignmentStyle = 'function: 00000001406B0C20'
	RemoveDLCItems = 'function: 00000001406AE0F0'
	CompositeHasWellDefinedTransformForReset = 'function: 00000001406B4070'
	GetGroups = 'function: 00000001406AED60'
	IsGridObject = 'function: 00000001406B0E50'
	PreviewTransformSnapToGrid = 'function: 00000001406B3410'
	IsSceneryObject = 'function: 00000001406B0F50'
	SetTransformForSurfacePlacement = 'function: 00000001406B2840'
	GetMinScale = 'function: 00000001406B4290'
	SetPatternTileRates = 'function: 00000001406B5080'
	GetControlPoint = 'function: 00000001406B0A60'
	SetEditContextSceneryPlatformOwnerID = 'function: 00000001406B57E0'
	CompositeAlignmentType_LeastConstrained = '0
	GetSceneryAndBuildingGroups = 'function: 00000001406AE5F0'
	SetScale = 'function: 00000001406B0770'
	SetYRotation = 'function: 00000001406B00D0'
	CompositeAlignmentType_Average = '0
	DecayCompositeAlignmentType = 'function: 00000001406B3D60'
	CompositeAlignmentType_ItemAlignedVertical = '2
	CompositeAlignmentType_ItemAligned = '1'
	GetScale = 'function: 00000001406AFE50'
	SetColour = 'function: 00000001406B4A90'
	CompositeAlignmentType_BoundingBox = '3
	GetPosition = 'function: 00000001406ADE00'
	CompositeAlignmentType_MostConstrained = '3
	SetTransformForSnapPointPlacement = 'function: 00000001406B2CB0'
	GetRequiredDLC = 'function: 00000001406ADF10'
	SetPatternBlendDistance = 'function: 00000001406B5610'
	GetOBB = 'function: 00000001406B0D10'
	ContainsRide = 'function: 00000001406AE470'
	GetMaterialCustomisationData = 'function: 00000001406B4450'
	GetQuaternion = 'function: 00000001406AFCB0'
	SnapToGrid = 'function: 00000001406B2FB0'
	SetRoughnessAdjust = 'function: 00000001406B4EB0'
	ContainsRides = 'function: 00000001406AE370'
	userdata = '00000001431C3778: true'
	Destroy = 'function: 00000001406B4630'
	ShowDebugInfo = 'function: 00000001402E2EB0'
	GetSceneryAndBuildingGroupCounts = 'function: 00000001406AEBF0'
	CanScale = 'function: 00000001406B4190'
	IsCompositeObject = 'function: 00000001406B10C0'
	GetMaxScale = 'function: 00000001406B4370'
	GetFlumePlatforms = 'function: 00000001406AF840'
	RequestCompositeAlignmentType = 'function: 00000001406B3EE0'
	GetUnlockLevel = 'function: 00000001406AE290'
	AlignCompositeVolumeToGrid = 'function: 00000001406B38C0'
	GetBelongingOrPlatformAttachedPartsInGroups = 'function: 00000001406AF350'
	_M: table: 00000000185B1E40
	__index: table: 00000000185B1E40
	__gc: function: 00000001406DA290
	__eq: function: 00000001417DBDC0
	_NAME: game::editors::moveobjectbasehandle
	_PACKAGE: 
},

['game::tracklib::joinpoint'] = {
	IsSlopeBankCompatable: function: 000000014073B450
	userdata: 00000001431C4898: true
	GetTransform: function: 000000014073ABA0
	Canonical: function: 0000000140739DB0
	IsNearlyVertical: function: 000000014073B360
	ClosestEquivalent: function: 000000014073B750
	WithBank: function: 000000014073A770
	GetHeading: function: 000000014073AF20
	GetRotation: function: 000000014073AD50
	ToString: function: 000000014073BA10
	GetBank: function: 000000014073AE20
	GetF: function: 000000014073B180
	GetU: function: 000000014073B2C0
	WithPos: function: 0000000140739EF0
	GetTransformQ: function: 000000014073AC80
	GetPos: function: 000000014073B0D0
	WithSlope: function: 000000014073A520
	WithTwist: function: 000000014073A9A0
	IsGoodEnoughToConnect: function: 000000014073B5D0
	GetSlope: function: 000000014073AEA0
	Reversed: function: 0000000140739C10
	GetYawPitchRoll: function: 000000014073AFA0
	WithHeading: function: 000000014073A2D0
	WithYawPitchRoll: function: 000000014073A0E0
	GetTwist: function: 000000014073B050
	GetR: function: 000000014073B220

	_M: table: 00000000186EE780
	__tostring: function: 000000014073BA10
	__viz: function: 000000014073BB20
	__index: table: 00000000186EE780
	__gc: function: 0000000140770C40
	__eq: function: 00000001417DC0F0
	_NAME: game::tracklib::joinpoint
	_PACKAGE: 
},

['game::tracklib::trackselection'] = {
	GetAllSelectionEndJoinPoint: function: 0000000140740680
	FindIndexOfSectionAndEnd: function: 0000000140744390
	GetEndLocation: function: 00000001407417F0
	StartSupportsLogicalConnection: function: 0000000140740F70
	GetSelectionStartJoinPoint: function: 000000014073FDF0
	GetSelectionStartJoinTypes: function: 0000000140741110
	GetEndIndex: function: 000000014073F730
	IsStationConnectedWithEndCap: function: 0000000140743920
	ForceToFirstRail: function: 00000001407431E0
	IsStartConnected: function: 0000000140740DE0
	GetAllSelectionStartJoinPoint: function: 0000000140740150
	ContainsSelection: function: 00000001407447B0
	GetLength: function: 000000014073F450
	CanPlace: function: 00000001407423E0
	DebugDraw: function: 0000000140744D60
	IsSameSelection: function: 0000000140744630
	GetLocationClosestToRayAndHitPoint: function: 0000000140741CC0
	IsPointToPoint: function: 0000000140743340
	ContainsSectionAndEnd: function: 00000001407440F0
	FindIndexOfSection: function: 0000000140743F20
	GetIndexOfOnlySpecialPiece: function: 0000000140743C50
	GetJoinPointForStationFromEndCap: function: 0000000140743690
	GetSplineJoinPoint: function: 000000014073FC50
	Reversed: function: 0000000140743420
	GetAllSelectionElementNames: function: 0000000140744A10
	ContainsSection: function: 0000000140743D50
	GetStartLocation: function: 0000000140741580
	GetNumRails: function: 00000001407427C0
	GetSelectionEndJoinPoint: function: 000000014073FF80
	IsStation: function: 0000000140742B90
	FindBankDeltaRange: function: 00000001407420C0
	GetTrack: function: 000000014073F2F0
	IsStationEndCap: function: 0000000140742990
	CanConvertTo: function: 00000001407421C0
	GetAllSelectionStartJoinTypes: function: 00000001407412A0
	GetSection: function: 000000014073F520
	GetMidLocation: function: 0000000140741A60
	ContainsAnyModifiableMidPoints: function: 0000000140742600
	ShouldForceToFirstRail: function: 0000000140743090
	GetSelectionStartSplineJoinPoint: function: 0000000140740A80
	GetSelectionEndSplineJoinPoint: function: 0000000140740C10
	IsStationConnectedWithFlexibleElement: function: 0000000140742D70
	GetJoinPoint: function: 000000014073F8C0
	CalculateLengthInMetres: function: 00000001407426E0
	GetJoinPointForRail: function: 000000014073FA60

	userdata: 00000001431C4850: true
	_M: table: 0000000017DFE240
	__index: table: 0000000017DFE240
	__gc: function: 0000000140353970
	__eq: function: 00000001417DC0F0
	_NAME: game::tracklib::trackselection
	_PACKAGE: 
},

['transformq'] = {
	ToLocalPos: function: 00000001417F1360
	Inverted: function: 00000001417F0E80
	FromOrPos: function: 00000001417F0710
	GetOr: function: 00000001417F09E0
	GetR: function: 00000001417F0BE0
	GetU: function: 00000001417F0CC0
	ToLocal: function: 00000001417F10E0
	Pos: function: 00000001417E97E0
	ToWorldPos: function: 00000001417F1240
	ToWorld: function: 00000001417F0F90
	ToWorldDir: function: 00000001417F1480
	F: function: 00000001417F0DA0
	GetOrientation: function: 00000001417F09E0
	ToString: function: 00000001417F1770
	GetF: function: 00000001417F0DA0
	Identity: fTransformQ: pos=(0.00,0.00,0.00) or=(0.00,0.00,0.00,1.00)
	GetPos: function: 00000001417E97E0
	GetPosition: function: 00000001417E97E0
	Or: function: 00000001417F09E0
	Equals: function: 00000001417F07A0
	WithPos: function: 00000001417F0880
	WithOr: function: 00000001417F0A50
	AddDeltaPos: function: 00000001417F0930
	ToLocalDir: function: 00000001417F15A0
	U: function: 00000001417F0CC0
	R: function: 00000001417F0BE0
	NormaliseOr: function: 00000001417F0B00

	userdata: 00000001431C4D98: true
	_M: table: 0000000017C5FD40
	__tostring: function: 00000001417F1770
	__viz: function: 00000001417F1830
	__index: table: 0000000017C5FD40
	__gc: function: 00000001417F9060
	__eq: function: 00000001417F07A0
	_NAME: transformq
	_PACKAGE: 
},


['environment.environment'] = {
	Update: function: 0000000017B4AE40
	Activate: function: 00000000177C0900
	Init: function: 00000000177C08C0
	RequireManager: function: 0000000017B4AF40
	_LoadPrototype: function: 0000000018159300
	_VerifyPhaseOrders: function: 0000000018159480
	_FindLocalManagerByInterfaceOrName: function: 00000000178D4300
	subclass: function: 00000000178CE4B0
	_BuildPhaseDependencies: function: 0000000017B4B7C0
	_UpdateManagerProperties: function: 0000000018159400
	isa: function: 00000000178CE3C0
	_PrintPhaseDependencyGraph: function: 0000000017B4C040
	Shutdown: function: 00000000178CF6E0
	_PrintPhaseDebugInformation: function: 0000000018159600
	RequestManager: function: 00000000178D2380
	new: function: 00000000178CE420
	OnCoroutinePhase: function: 00000000178D11B0
	_BuildPhaseDependencyGraphs: function: 00000000178D3DF0
	RequestInterface: function: 00000000178D2620
	class: function: 0000000017B49440
	_MergePrototype: function: 0000000018159380
	_AddAllManagersRecursive: function: 00000000178D4E70
	call_on_super: function: 00000000178CE510
	_FindManagerByInterfaceOrName: function: 00000000178D4BA0
	_SerialiseDependencyCycle: function: 00000000178D4F90
	_ConstructFullPhaseOrder: function: 0000000018159580
	_MergePhaseDependenciesIntoGraphs: function: 0000000017B4BE00
	_CreateManager: function: 00000000178D3EB0
	_meta: table: 0000000017B4A500
	_ConstructPhaseFunctionList: function: 0000000018159500
	OnPhase: function: 00000000178D0790
	_AddAllInterfacesRecursive: function: 00000000178D4EA0
	_SortPhaseDependencyGraphs: function: 0000000017B4BA40
	_ExpandPrototypeModuleNames: function: 0000000017B4B040
	Deactivate: function: 00000000177C0940
	_LoadManagerModule: function: 00000000178D3E80
	RequireInterface: function: 0000000017B4B000
	PhaseDependenciesChanged: function: 0000000017B4ACC0
	PrepareToShutdown: function: 00000000177C08E0

	userdata: 00000001431C4D98: true
	_M: table: 0000000017B498C0
	__tostring: function: 00000001417F1770
	__viz: function: 00000001417F1830
	__index: table: 0000000017B498C0
	__gc: function: 00000001417F9060
	__eq: function: 00000001417F07A0
	_NAME: environment.environment
	_PACKAGE: environment.
},

['managers.parkratingmanager'] = {
	s_tInterfaces = 'table: 0000000017C36840',
	Init = 'function: 0000000017BA2240',
	GetDefaultGuestCap = 'function: 0000000017A410D0',
	GetTotalAttractionsPrestigeTarget = 'function: 00000000178A1B80',
	BeginCustomScenario = 'function: 00000000178941C0',
	_DebugDrawGeneralInfo = 'function: 0000000017BA2580',
	WorldSave = 'function: 00000000178A1CA0',
	SaveParkSettings = 'function: 00000000178A1C80',
	_DebugAddRowToTable = 'function: 0000000017A3CF00',
	GetAttractionNumBreakdown = 'function: 00000000178A1A00',
	GetParkReputationBreakdown = 'function: 00000000178A1A60',
	Shutdown = 'function: 0000000017A40DD0',
	class = 'function: 0000000017B49440',
	CalculateRatingHelper = 'function: 0000000017A371A0',
	GetSceneryRating = 'function: 0000000017A40EF0',
	GetGuestCountMultiplier = 'function: 00000000178A1C60',
	MergeParkSettingData = 'function: 00000000178A1CE0',
	GetParkReputationTarget = 'function: 00000000178A1B60',
	OnParkTimeNewDayMessage = 'function: 0000000017A3CEA0',
	CalculateZoneRatingFromValues = 'function: 0000000017A37170',
	SetGuestCap = 'function: 0000000017BA2200',
	GetParkReputationChangeMultiplier = 'function: 00000000178A1B40',
	GetParkRatingHistory = 'function: 000000001789C500',
	WorldLoad = 'function: 0000000017A41130',
	GetAttractionNumRating = 'function: 0000000017A40F20',
	TriggerParkRatingUpdate = 'function: 0000000017894220',
	SetGuestCountMultiplier = 'function: 00000000178A1C00',
	GetHardGuestCap = 'function: 0000000017A41070',
	GetGuestCap = 'function: 0000000017A40FE0',
	GetSceneryGuestExperienceRequiredGuests = 'function: 00000000178A1C20',
	GetIdealNumberOfGuests = 'function: 000000001789C540',
	SetNumUniqueRidesTarget = 'function: 00000000178A1A80',
	GetSceneryRatingBreakdown = 'function: 00000000178A1A20',
	GetTotalSceneryPrestigeTarget = 'function: 00000000178A1BE0',
	subclass = 'function: 00000000178CE4B0',
	_CalculateRating = 'function: 0000000017B78C00',
	Advance = 'function: 00000000178A1C40',
	SetTotalSceneryPrestigeTarget = 'function: 00000000178A1AC0',
	isa = 'function: 00000000178CE3C0',
	GetRatingScale = 'function: 0000000017A40E00',
	_SendRatingUpdate = 'function: 0000000017BA1180',
	_CalculateSceneryScore_New = 'function: 0000000017A371D0',
	new = 'function: 00000000178CE420',
	GetSoftGuestCap = 'function: 0000000017A41010',
	SetParkReputationChangeMultiplier = 'function: 00000000178A1AA0',
	GetNumMonthsInParkRatingHistory = 'function: 000000001789C560',
	ParkRatingManagerAdvancer_Advance = 'function: 0000000017BD7CC0',
	GetMonthlyParkRatingChange = 'function: 000000001789C520',
	GetParkRatingBreakdown = 'function: 0000000017A40E60',
	GetRating = 'function: 00000000178A19E0',
	GetAttractionPrestigeRating = 'function: 0000000017A40EC0',
	SetTotalAttractionsPrestigeTarget = 'function: 00000000178A1AE0',
	CalculateParkRep = 'function: 0000000017A3CE70',
	GetAttractionPrestigeBreakdown = 'function: 00000000178A19C0',
	SetSceneryGuestExperienceRequiredGuests = 'function: 00000000178A1B00',
	SetParkReputationTarget = 'function: 00000000178A1A40',
	_DebugDrawTable = 'function: 0000000017BEBF40',
	GetSceneryGuestExperienceTarget = 'function: 00000000178A1BC0',
	_module_private = 'table: 0000000017C36080',
	GetNumUniqueRidesTarget = 'function: 00000000178A1BA0',
	SetSceneryGuestExperienceTarget = 'function: 00000000178A1B20',
	call_on_super = 'function: 00000000178CE510',
	ParkReset = 'function: 00000000178A1CC0',
	GetParkReputationRating = 'function: 0000000017A40F50',
	RecieveParkTimeRegularMessages = 'function: 0000000017A3CDE0',
},

['managers.scenariomanager'] = {
	GetTrackHeightMarkerSeaLevel = 'function: 000000001781E760',
	SetParkUIHighlightState = 'function: 000000001781F560',
	SetPreferenceCounts = 'function: 0000000017820500',
	GetPreferenceCounts = 'function: 0000000017820440',
	GetParkOpeningTime = 'function: 0000000017820900',
	CompleteWorldSerialisationLoad = 'function: 0000000018260080',
	AppendToFile = 'function: 00000000179F5890',
	WriteObjectiveSettingsDataToFile = 'function: 0000000017C324C0',
	SetScenarioCode = 'function: 00000000179F55F0',
	GetScenarioCode = 'function: 000000001781E440',
	SetTrackHeightMarkerSeaLevel = 'function: 000000001781E6E0',
	GetScenarioParamData = 'function: 00000000179F5620',
	Shutdown = 'function: 0000000017C328C0',
	GetTicketSalesDisabled = 'function: 0000000017820880',
	SetTicketSalesDisabled = 'function: 0000000017820800',
	SetParkOpenForGuests = 'function: 000000001781EB80',
	SetParkOpeningTime = 'function: 00000000178208C0',
	SetRivalsActive = 'function: 000000001781E580',
	GetStaffMoraleEnabled = 'function: 000000001781F1C0',
	GetRivalModifiers = 'function: 000000001781E540',
	GetStaffInitialMorale = 'function: 000000001781EC60',
	IsChallengeMode = 'function: 000000001781E300',
	OnHUDUIReady = 'function: 000000001781F7A0',
	SetLockedSceneryContributesToTheming = 'function: 000000001781E780',
	IsCareerMode = 'function: 000000001781E2E0',
	LoadParkSettingsFromFile = 'function: 0000000017C32500',
	GetFreeFastPass = 'function: 0000000017820640',
	SetTechTreeDefaultActSet = 'function: 00000000179F5BC0',
	SetContainsUGC = 'function: 000000001781F520',
	GetSupportFacilityModifiers = 'function: 000000001781E620',
	LoadObjectiveSettingsFromFile = 'function: 0000000017C32380',
	GetInitialWeatherEventName = 'function: 000000001781EC40',
	SetEditOpeningTimes = 'function: 000000001781F4A0',
	GetContainsUGC = 'function: 000000001781F5C0',
	GetScenarioModifiers = 'function: 000000001781E520',
	SetLightingEndTime = 'function: 00000000178209A0',
	SetInitialWeatherEventName = 'function: 000000001781ECC0',
	UpdateGlobalBrowserFilters = 'function: 0000000017C32280',
	GetVomitProbabilityPerSecondMultiplier = 'function: 000000001781E940',
	GetRideCameraEnabled = 'function: 000000001781E7C0',
	SetSupportFacilitiesActive = 'function: 000000001781E5E0',
	GetLightingEndTime = 'function: 00000000178208E0',
	SetBreakdownRateMultiplier = 'function: 000000001781EBA0',
	GetSupportFacilitiesActive = 'function: 000000001781E5A0',
	IsParkOpenForGuests = 'function: 000000001781EB20',
	GetScenarioEditFinishedLoad = 'function: 0000000017820580',
	GetParkZonesAvailable = 'function: 000000001781E860',
	GetBreakdownRateMultiplier = 'function: 000000001781EBC0',
	GetGameMode = 'function: 000000001781E240',
	GetParkUIHighlightState = 'function: 000000001781F5A0',
	GenerateInitialHiddenFilters = 'function: 00000000179F59B0',
	SaveObjectiveSettings = 'function: 000000001781F380',
	SetLoadCriticalDLC = 'function: 000000001781EE20',
	GetParkTime = 'function: 000000001781E460',
	EnsureWeatherDefaults = 'function: 000000001781E220',
	InitAllowedMedalFanfares = 'function: 0000000017C32800',
	SetLightingStartTime = 'function: 0000000017820960',
	GetLoadCriticalDLC = 'function: 000000001781EDE0',
	SetKeepLitter = 'function: 000000001781E7E0',
	GetScenarioFinishedLoad = 'function: 00000000178204C0',
	_M = 'table: 0000000017C52A40',
	SetParkTime = 'function: 000000001781E4C0',
	GetWeatherOccurrence = 'function: 0000000017820740',
	SetCanPlayerSetStaffEnergyFeaturesEnabled = 'function: 000000001781F280',
	SetGuestBuckets = 'function: 0000000017820480',
	SetEditCapacity = 'function: 000000001781F4E0',
	UnlockBonus = 'function: 00000000179F58F0',
	class = 'function: 0000000017B49440',
	SetSecurityMinGuestsBeforePickpocketSpawn = 'function: 000000001781F100',
	GetUnlimitedCash = 'function: 000000001781E560',
	GetIsTutorial = 'function: 0000000017C32780',
	GetPreferenceAttractivenessMultiplier = 'function: 000000001781EA60',
	SetSecurityDetectionBaseChanceMin = 'function: 000000001781F040',
	CouldScenarioPlayerSetSecurityFeaturesEnabled = 'function: 000000001781F000',
	SetUnlimitedCash = 'function: 000000001781E660',
	SetFilterModeFilterOut = 'function: 000000001781ED40',
	GetBrowserFilters = 'function: 000000001781F640',
	SetInitialCash = 'function: 000000001781E500',
	GetFranchiseData = 'function: 000000001781E3A0',
	SetSunburnMultiplier = 'function: 000000001781ED00',
	GetSunburnMultiplier = 'function: 000000001781ECE0',
	GetOriginalParkName = 'function: 000000001781EF00',
	IsScenarioEditMode = 'function: 000000001781E320',
	GetInitialCash = 'function: 000000001781E4A0',
	subclass = 'function: 00000000178CE4B0',
	CanEditOpeningTimes = 'function: 000000001781F340',
	GetKeepLitter = 'function: 000000001781E800',
	GetSaveName = 'function: 000000001781E420',
	isa = 'function: 00000000178CE3C0',
	MergeObjectivesSettingData = 'function: 000000001781F420',
	GetLightingStartTime = 'function: 0000000017820940',
	TakeLoan = 'function: 000000001781E4E0',
	SetTerrainEditCost = 'function: 000000001781E600',
	SetAdvertisingCostMultiplier = 'function: 00000000178206C0',
	GetCustomScenarioStrings = 'function: 000000001781F3E0',
	GetKeepGuests = 'function: 000000001781E8E0',
	ClearFirstTimeClicks = 'function: 00000000179F5B30',
	GetTerrainEditCost = 'function: 000000001781E700',
	PARAM_TRIGGER = '1
	Activate =', 'function: 000000001781E180',
	s_tInterfaces = 'table: 0000000017C52980',
	GetBinDesirabilityMultiplier = 'function: 000000001781EA00',
	GetStaffHiringAllowed = 'function: 000000001781EF40',
	SetDLCBool = 'function: 000000001781E260',
	GetLitterGenerationMultiplier = 'function: 000000001781E9C0',
	WorldSave = 'function: 00000000179F4E40',
	OnCinematicEventMessage = 'function: 00000000179F6460',
	SetFilterState = 'function: 000000001781F6A0',
	CouldScenarioPlayerEditCapacity = 'function: 000000001781F540',
	GetDawnDuskTimes = 'function: 0000000017820720',
	SetCareerModeLock = 'function: 000000001781EE80',
	GetAdultParkEntryDefaultPriceStateString = 'function: 00000000178204A0',
	SetScenarioParam = 'function: 00000000179F5680',
	PARAM_BOOL = '0
	GetFirstTimeElementSelect =', 'function: 00000000179F5AA0',
	GetReadOnlyModeData = 'function: 000000001781E400',
	GetParkReset = 'function: 000000001781F440',
	GetScenarioParam = 'function: 000000001781EEA0',
	ReadFile = 'function: 00000000179F58C0',
	SetScenarioSecurityFeaturesEnabled = 'function: 000000001781EFA0',
	IsReadOnlyMode = 'function: 000000001781E360',
	SetFreeParkEntrance = 'function: 00000000178205A0',
	GetDeductStaffPayEnabled = 'function: 000000001781EC20',
	ClearFilterIDs = 'function: 000000001781F660',
	SetStaffMoraleFeatureEnabled = 'function: 000000001781F1E0',
	WorldLoad = 'function: 0000000018260200',
	GetIsFilterModeFilterOut = 'function: 000000001781ED20',
	CouldScenarioPlayerSetStaffEnergyFeaturesEnabled = 'function: 000000001781F220',
	SetInitialHappinessOverride = 'function: 000000001781EDA0',
	GetSecurityMaxPickpocketsInPark = 'function: 000000001781F140',
	HandlePreventDeletingRidesScenarioParam = 'function: 000000001781EEE0',
	IsSandboxMode = 'function: 000000001781E2A0',
	GetParkClosingTime = 'function: 0000000017820A00',
	OnDifficultySettingUpdatedMessage = 'function: 00000000179F59E0',
	SetDeductStaffPayEnabled = 'function: 000000001781ECA0',
	SetDefaultScenarioParams = 'function: 00000000179F56B0',
	SetWaterPanicMultiplier = 'function: 000000001781EAC0',
	GetLoanTaken = 'function: 000000001781E5C0',
	GetWaterPanicMultiplier = 'function: 000000001781EAE0',
	_meta = 'table: 0000000017C52840',
	SetIsUGCPark = 'function: 000000001781F580',
	DifficultyCompleted = 'function: 0000000017C32640',
	SetCustomScenarioDescription = 'function: 000000001781F360',
	RemoveFilterID = 'function: 00000000179F5B60',
	OpenIntroFanfare = 'function: 00000000179F5530',
	SetShopSalesDisabled = 'function: 0000000017820780',
	SetFirstDayOfWeather = 'function: 00000000178207A0',
	Init = 'function: 0000000018260B80',
	SetAllowedMedalFanfares = 'function: 0000000017820520',
	GetParkRatingForFullStaffEnergyUse = 'function: 000000001781F260',
	_RequestAutosave = 'function: 00000000179F5A10',
	_OnParkSavedDeleted = 'function: 00000000179F5A70',
	IsTerrainEditDisabled = 'function: 000000001781E6A0',
	CanEditCapacity = 'function: 000000001781F460',
	ShowInvalidGameModeDialog = 'function: 0000000017C32300',
	SaveParkSettings = 'function: 00000000179F5830',
	SetAdvertisingEnabled = 'function: 000000001781EAA0',
	AreSecurityFeaturesEnabledInDifficultyAndParkSettings = 'function: 00000000179F5800',
	GetParkScaledPlayedTime = 'function: 00000000179F57A0',
	GetShopSalesDisabled = 'function: 0000000017820820',
	SetParkZonesAvailable = 'function: 000000001781E820',
	IsBonusUnlocked = 'function: 00000000179F5920',
	GetChallengeTaxMultiplier = 'function: 000000001781EE00',
	GetRivalsActive = 'function: 000000001781E640',
	SetLitterGenerationMultiplier = 'function: 000000001781E9A0',
	IsUGCPark = 'function: 000000001781F600',
	GetCanPlayerSetStaffEnergyFeaturesEnabled = 'function: 000000001781F2A0',
	GetInitialHappinessOverride = 'function: 000000001781EDC0',
	GetAdvertisingEnabled = 'function: 000000001781EA20',
	SetStaffInitialMorale = 'function: 000000001781EC80',
	MarkUnpaused = 'function: 00000000179F5770',
	SetBinDesirabilityMultiplier = 'function: 000000001781E9E0',
	Advance = 'function: 0000000018260400',
	WorldSaveWeather = 'function: 000000001781E1E0',
	SetParkRatingForFullStaffEnergyUse = 'function: 000000001781F320',
	SetWeatherDefaultValues = 'function: 000000001781E1C0',
	GetSandboxData = 'function: 000000001781E380',
	SetDefaultValues = 'function: 0000000017C32940',
	SetUseOverrideFirstDayWeather = 'function: 00000000178207C0',
	SetOpenPathEditorAfterRideEntranceExitPlacement = 'function: 000000001781E7A0',
	_module_private = 'table: 0000000017C52AC0',
	GetWeatherTemperatures = 'function: 0000000017820660',
	SetScenarioEditFinishedLoad = 'function: 0000000017820560',
	SetParkClosingTime = 'function: 00000000178208A0',
	SetStartInFilterFilterIDs = 'function: 000000001781ED80',
	GetScenarioEvents = 'function: 000000001781EF20',
	SetCanPlayerSetSecurityFeaturesEnabled = 'function: 000000001781F020',
	AddBrowserFilter = 'function: 000000001781F620',
	IsFranchiseMode = 'function: 000000001781E340',
	GetFreeParkEntrance = 'function: 00000000178206A0',
	SetUpkeepCostsDisabled = 'function: 0000000017820860',
	MergeParkSettingData = 'function: 000000001781F3A0',
	GetScenarioSecurityFeaturesEnabled = 'function: 000000001781EFE0',
	WriteParkSettingsDataToFile = 'function: 0000000017C32440',
	GetUpkeepCostsDisabled = 'function: 0000000017820840',
	GetTechTreeDefaultActSet = 'function: 00000000178204E0',
	SetSandboxData = 'function: 000000001781E3C0',
	SetScenarioEvents = 'function: 000000001781EF60',
	GetOnlineData = 'function: 000000001781E3E0',
	IsOnlineMode = 'function: 00000000179F55C0',
	GetLockedSceneryContributesToTheming = 'function: 000000001781E6C0',
	GetFirstDayOfWeather = 'function: 00000000178207E0',
	SetSecurityNumGuestsPerPickpocketSpawn = 'function: 000000001781F0C0',
	ApplyWeather = 'function: 000000001781E200',
	GetKeepVomit = 'function: 000000001781E840',
	SetStaffPayEnabled = 'function: 000000001781EC00',
	SetLockExistingRidePrices = 'function: 000000001781F2E0',
	GetOpenPathEditorAfterRideEntranceExitPlacement = 'function: 000000001781E740',
	MakeCustomScenarioCode = 'function: 0000000017C32180',
	GetStaffPayEnabled = 'function: 000000001781EBE0',
	GetParkPlayedTime = 'function: 00000000179F5710',
	GetWeatherAvailability = 'function: 00000000178206E0',
	SetFreeFastPass = 'function: 00000000178205C0',
	SetFreePoolPass = 'function: 0000000017820680',
	GetFreePoolPass = 'function: 0000000017820600',
	GetStaffCostMultiplier = 'function: 000000001781EB60',
	GetAdultParkEntrySetPriceDefault = 'function: 0000000017820620',
	SetVomitProbabilityPerSecondMultiplier = 'function: 000000001781E980',
	GetLockExistingRidePrices = 'function: 000000001781F2C0',
	GetStartInFilterFilterIDs = 'function: 000000001781ED60',
	SetCustomScenarioName = 'function: 000000001781F4C0',
	AddFilterID = 'function: 00000000179F5BF0',
	SetDisableTerrainEdit = 'function: 000000001781E720',
	SetSecurityDetectionBaseChanceMax = 'function: 000000001781F080',
	GetGuestBuckets = 'function: 0000000017820540',
	GetSecurityGroupCanBecomeVandalChance = 'function: 000000001781F160',
	GetDisableTerrainEdit = 'function: 000000001781E680',
	SetStaffCostMultiplier = 'function: 000000001781EB40',
	SetVomitChanceThresholdMultiplier = 'function: 000000001781E920',
	SetGameMode = 'function: 00000000179F5560',
	GetUseOverrideFirstDayWeather = 'function: 0000000017820700',
	SetRideCameraEnabled = 'function: 00000000179F56E0',
	GetAdvertisingCostMultiplier = 'function: 00000000178205E0',
	MarkPaused = 'function: 00000000179F5740',
	SetPlayerCanOpenClosePark = 'function: 000000001781E900',
	GetSecurityNumGuestsPerPickpocketSpawn = 'function: 000000001781F0A0',
	GetSecurityDetectionBaseChanceMax = 'function: 000000001781F060',
	GetPlayerCanOpenClosePark, = 'function: 000000001781E8C0',
	SetSaveName = 'function: 00000000179F5650',
	SetFirstTimeElementSelect = 'function: 00000000179F5AD0',
	new = 'function: 00000000178CE420',
	SetStaffHiringAllowed = 'function: 000000001781EE60',
	GetSecurityMinGuestsBeforePickpocketSpawn = 'function: 000000001781F0E0',
	IsBlockingParkLoad = 'function: 000000001781EEC0',
	SetPreferenceAttractivenessMultiplier = 'function: 000000001781EA40',
	GetWagePayRangeMultiplier = 'function: 000000001781F1A0',
	GetSecurityDetectionBaseChanceMin = 'function: 000000001781EF80',
	call_on_super = 'function: 00000000178CE510',
	SetChallengeTaxMultiplier = 'function: 000000001781EE40',
	GetCanPlayerSetLooseTrackRestrictions = 'function: 000000001781F300',
	GetEffectsTable = 'function: 000000001781E280',
	GetSeasonAvailability = 'function: 0000000017820760',
	SetCanPlayerSetLooseTrackRestrictions = 'function: 000000001781F480',
	IsSandboxOrChallengeMode = 'function: 000000001781E2C0',
	GetAllowedMedalFanfares = 'function: 0000000017820460',
	SetKeepVomit = 'function: 000000001781E880',
	SetWagePayRangeMultiplier = 'function: 000000001781F240',
	GetChallengeName = 'function: 000000001781E480',
	SetSecurityGroupCanBecomeVandalChance = 'function: 000000001781F120',
	__index = 'table: 0000000017C52A40',
	SetSecurityMaxPickpocketsInPark = 'function: 000000001781F180',
	GetVomitChanceThresholdMultiplier = 'function: 000000001781E960',
	GetCanPlayerSetSecurityFeaturesEnabled = 'function: 000000001781EFC0',
	SetKeepGuests = 'function: 000000001781E8A0',
},

}

[ObjectiveManager] ---------------------- Meta Contents:  (table)
GetViewGUIData: function: 00000000181C1A00
GetObjectiveTypes: function: 0000000018037120
SetLinkedRide: function: 00000000181C1D00
SaveObjectives: function: 00000000181C18E0
RemoveObjective: function: 0000000018037280
Init: function: 0000000018AE0300
LoadRidesFromDatabase: function: 00000000181C1EB0
LoadObjectiveLink: function: 00000000181C1D90
Configure_AddFeatureRequiredOnAnotherEntity: function: 0000000018141BD0
AddComponentsToEntities: function: 00000000181C18B0
CreateEmptyStage: function: 00000000181C1B80
call_on_super: function: 00000000180DE510
UseCachedLoadObjectives: function: 00000000181C1940
WorldSave: function: 0000000018036F60
Advance: function: 0000000018449280
IsNarrativeComplete: function: 0000000018037160
tAPI: table: 00000000184493C0
GetChapterAndStage: function: 0000000018037240
SetObjectivesSuppressed: function: 00000000180370A0
UpdateAllEvalData: function: 0000000018037220
Construct: function: 0000000017FD2CC0
Configure_AddFeatureRequired: function: 0000000018141AE0
GetSaveVersion: function: 0000000018036F20
GetEnabled: function: 00000000180370E0
_ResetStageObjectivesCompletedTracker: function: 0000000018449200
_M: table: 00000000184494C0
RemoveAllObjectives: function: 0000000018037320
DeleteStageObjectives: function: 00000000181C1BB0
GetAllObjectives: function: 0000000018037140
LoadObjectiveLinksForEvents: function: 00000000181C19D0
Configure_AddFeatureRequiredOptional: function: 0000000018141BA0
AddNewChapter: function: 00000000181C1C70
OverwriteCareerObjectives: function: 0000000018037200
isa: function: 00000000180DE3C0
AddNewObjective: function: 00000000181C1D60
GetFails: function: 00000000181C1B50
GetAmountOfObjectivesInStage: function: 00000000180371C0
HandleMessage_StationStatsUpdatedMessage: function: 00000000181C1FD0
HandleMessage_RideDeletedMessage: function: 00000000181C1F70
_PACKAGE: components.
RequestAvailableRides: function: 00000000181C1F10
HandleMessage_ParkThemingUpdatedMessage: function: 0000000018449080
HandleMessage_ParkZoneAreaChangedMessage: function: 0000000018037500
Shutdown: function: 0000000018449340
LoadObjectives: function: 0000000018AE0280
SetObjectiveConditionCompletedCallback: function: 0000000018037260
_UpdateStageObjectivesCompletedTracker: function: 00000000181C1A30
nComponentManagerID: 628
HandleMessage_ParkZoneThemingUpdatedMessage: function: 0000000018037520
HandleMessage_ParkZoneCreatedOrDeletedMessage: function: 00000000181C1FA0
_NAME: components.objectivemanager
AwardMedal: function: 0000000018037380
HandleMessage_RideOpenStateChangedMessage: function: 00000000181C1F40
OnZonesDirty: function: 00000000181C1E50
new: function: 00000000180DE420
Configure_AddFeatureProvided: function: 0000000018141930
OnRideDataDirty: function: 00000000181C1E80
HandleMessage_RideStatsUpdatedMessage: function: 00000000181C27E0
GetComponentManagerID: function: 0000000018141C00
_ObjectiveAvailableRidesCallback: function: 00000000180374E0
ChapterStageComplete: function: 0000000018037180
UpdateAvailableRides: function: 0000000018037400
ResetProgress: function: 00000000181C1C10
RemoveChapter: function: 00000000181C1CA0
IsChapterComplete: function: 00000000180370C0
GetRidesData: function: 00000000180371A0
_GetAsyncDBInstance: function: 00000000181C1DF0
SetFanfaresEnabled: function: 00000000180373E0
RemoveComponentFromEntities: function: 00000000181C1880
GetStoppedForEvents: function: 0000000018037360
SetStoppedForEvents: function: 0000000018037340
GetRidesFromDatabase: function: 00000000181C1EE0
OpenFanfare: function: 0000000018449180
UnlockBonus: function: 00000000181C1D30
_ActivateCurrentStageObjectives: function: 0000000018449100
MoveObjective: function: 00000000180372A0
SetEnabled: function: 0000000018036F80
ActivateFeatureForEntity: function: 0000000018141C30
SaveObjectiveSettings: function: 0000000018037040
WorldLoad: function: 0000000018036F00
subclass: function: 00000000180DE4B0
__index: table: 00000000184494C0
_meta: table: 0000000018449440
MoveStage: function: 00000000181C1BE0
MoveChapter: function: 00000000181C1CD0
UpdateRideData: function: 00000000181C1E20
GoToNextStage: function: 00000000180371E0
_GetRideList: function: 00000000181C1C40
class: function: 0000000018359440
GetCurrentStageObjectives: function: 0000000018037100
GetCompletion: function: 00000000181C1AF0
CompleteWorldSerialisationLoad: function: 0000000018036FC0

ScenarioNarrativeManagerEventsHelper - Table Contents:
UnlockBonus: function: 000000010D8762C0
StartBlockTimer: function: 000000010D8761C0
UnlockBuildingEdit: function: 000000010D876220
MakeGuestPanicInWater: function: 000000010D8763A0
DisableSkipComms: function: 000000010D876260
ExecuteEvents: function: 000000010D7B9E60
DynamicTrigger_CoasterTutorialExcitementTooLow: function: 000000010D876620
AddCash: function: 000000010D876340
SetAchievmentStat_Bool: function: 000000010D8767C0
SetStaffHighlight: function: 000000010D8768A0
MuteNotificationCategories: function: 000000010D876760
_ClearCoasterTutorialObjectiveEFNEvents: function: 000000010D876A40
OnRideOpenStateChangedMessage: function: 000000010D7BA7C0
EmptyFunction: function: 000000010D8761A0
DynamicTrigger_CoasterStationSelectedFromBrowser: function: 000000010D7BA220
GetEventCanDelay: function: 000000010D8760E0
StartCheckingTrainEvents: function: 000000010D7BA520
GetEvents: function: 000000010D876080
SetResearchPoints: function: 000000010D876400
LockBuildingEdit: function: 000000010D876200
LoadEventState: function: 000000010D876060
GenerateSunburnGuestThoughts: function: 000000010D8763C0
UnlockResearchNode: function: 000000010D8761E0
HighlightUIElements: function: 000000010D7BA850
DynamicTrigger_CoasterTutorialNauseaTooHigh: function: 000000010D8766C0
DynamicTrigger_RideTicketPriceRaisedMoreThanThreshold: function: 0000000017CDC500
DynamicTrigger_ComplexityAt50Percent: function: 000000010D7BA640
MedalDifficultyComplete: function: 000000010D7BA820
GetEventRequiredParameters: function: 000000010D8760A0
EnableOrDisablePlayerControls: function: 0000000017CDC3C0
UnlockPlotForPurchase: function: 000000010D876380
TeleportToLocationPoint: function: 000000010D8765C0
ModifyGuestEntertainmentMult: function: 000000010D7BA010
ClearOverriddenEFNValues: function: 000000010D7BA9A0
UnlockPlot: function: 000000010D876360
SetRadialMenuHighlight: function: 000000010D8769C0
ChangeRideStatus: function: 000000010D7B9FE0
Advance: function: 000000010D7B9E00
DisableRideBreakdowns: function: 000000010D876960
OnFacilityPlacedMessage: function: 000000010D7BAA90
SetObjectivesVisibility: function: 000000010D876600
GetRideNotificationContextType: function: 000000010D876140
SaveEventState: function: 000000010D876040
SetAvailableRewards: function: 000000010D7BA160
OnCoasterStationSelectedFromBrowserMessage: function: 000000010D875FC0
_meta - Table Contents:
    __index - Table Contents:
        UnlockBonus: function: 000000010D8762C0
        StartBlockTimer: function: 000000010D8761C0
        UnlockBuildingEdit: function: 000000010D876220
        MakeGuestPanicInWater: function: 000000010D8763A0
        DisableSkipComms: function: 000000010D876260
        ExecuteEvents: function: 000000010D7B9E60
        DynamicTrigger_CoasterTutorialExcitementTooLow: function: 000000010D876620
        AddCash: function: 000000010D876340
        SetAchievmentStat_Bool: function: 000000010D8767C0
        SetStaffHighlight: function: 000000010D8768A0
        MuteNotificationCategories: function: 000000010D876760
        _ClearCoasterTutorialObjectiveEFNEvents: function: 000000010D876A40
        OnRideOpenStateChangedMessage: function: 000000010D7BA7C0
        EmptyFunction: function: 000000010D8761A0
        DynamicTrigger_CoasterStationSelectedFromBrowser: function: 000000010D7BA220
        GetEventCanDelay: function: 000000010D8760E0
        StartCheckingTrainEvents: function: 000000010D7BA520
        GetEvents: function: 000000010D876080
        SetResearchPoints: function: 000000010D876400
        LockBuildingEdit: function: 000000010D876200
        LoadEventState: function: 000000010D876060
        GenerateSunburnGuestThoughts: function: 000000010D8763C0
        UnlockResearchNode: function: 000000010D8761E0
        HighlightUIElements: function: 000000010D7BA850
        DynamicTrigger_CoasterTutorialNauseaTooHigh: function: 000000010D8766C0
        DynamicTrigger_RideTicketPriceRaisedMoreThanThreshold: function: 0000000017CDC500
        DynamicTrigger_ComplexityAt50Percent: function: 000000010D7BA640
        MedalDifficultyComplete: function: 000000010D7BA820
        GetEventRequiredParameters: function: 000000010D8760A0
        EnableOrDisablePlayerControls: function: 0000000017CDC3C0
        UnlockPlotForPurchase: function: 000000010D876380
        TeleportToLocationPoint: function: 000000010D8765C0
        ModifyGuestEntertainmentMult: function: 000000010D7BA010
        ClearOverriddenEFNValues: function: 000000010D7BA9A0
        UnlockPlot: function: 000000010D876360
        SetRadialMenuHighlight: function: 000000010D8769C0
        ChangeRideStatus: function: 000000010D7B9FE0
        Advance: function: 000000010D7B9E00
        DisableRideBreakdowns: function: 000000010D876960
        OnFacilityPlacedMessage: function: 000000010D7BAA90
        SetObjectivesVisibility: function: 000000010D876600
        GetRideNotificationContextType: function: 000000010D876140
        SaveEventState: function: 000000010D876040
        SetAvailableRewards: function: 000000010D7BA160
        OnCoasterStationSelectedFromBrowserMessage: function: 000000010D875FC0
        _meta: <RECURSION DETECTED>
        ClearFilterIDs: function: 000000010D8764A0
        DynamicTrigger_LeaveTrackEditMode: function: 000000010D7BA280
        DynamicTrigger_MoneyFloor: function: 000000010D7BA2E0
        SetStaffMoraleEnabled: function: 000000010D8763E0
        DynamicTrigger_CriminalActivityActive: function: 000000010D7BA5E0
        OnTutorialEventMessage: function: 000000010D7BA790
        _PACKAGE: helpers.
        OnStationTicketPriceChangeMessage: function: 000000010D7BAA60
        GetEventParamNames: function: 000000010D876120
        SetRideCamEnabled: function: 000000010D8769E0
        DynamicTrigger_CoasterTutorialTestingTakingALongtime: function: 000000010D876720
        Shutdown: function: 0000000017CDC300
        SetChallengeFee: function: 000000010D7BA040
        subclass: function: 00000000178BE480
        RemoveAllDynamicTriggerEvents: function: 000000010D876300
        SetBrowserHighlight: function: 000000010D7BA910
        DynamicTrigger_CoasterTutorialFearTooHigh: function: 000000010D8766A0
        SetAvailableChallenges: function: 000000010D8762E0
        ShowTutorialScreen_OnetimeOnly: function: 000000010D8769A0
        new: function: 00000000178BE3F0
        ClearEnforcedPlacementArea: function: 000000010D7BA430
        ChangeSimulationSpeed: function: 000000010D876520
        DynamicTrigger_CoasterTutorialExcitementTooHigh: function: 000000010D876680
        CreateGenericObjectiveBasedDynamicEvent: function: 000000010D7B9EF0
        CloseAllGameUI: function: 0000000017CDC440
        SetBlockingNewEventInProgress: function: 000000010D876000
        SetFilterState: function: 000000010D8764C0
        RemoveFilterTag: function: 000000010D876480
        __index: <RECURSION DETECTED>
        _EnsureMainHUDExists: function: 000000010D7BAB20
        _NAME: helpers.scenarionarrativemanagereventshelper
        SetExistingBlueprintHighlight: function: 000000010D7BA730
        _ExecuteCoasterTutorialEvent: function: 000000010D7BAAF0
        OnRideCameraEnteredOrExited: function: 000000010D7BAAC0
        OnShopItemPriceChangeMessage: function: 000000010D7BAA30
        FlyToLocationPoint: function: 000000010D8765A0
        DynamicTrigger_EnterExitSpecificRideCamera: function: 0000000017CDC380
        BreakDownSpecificRide: function: 000000010D7B9F80
        OnStaffMemberWageChangeMessage: function: 000000010D7BAA00
        ChangeTimeOfDayPlayer: function: 000000010D7BA1F0
        DynamicTrigger_StaffSalaryRaisedMoreThanThreshold: function: 0000000017CDC480
        _SetEFNValues: function: 000000010D7BA9D0
        AddFilterTag: function: 000000010D876460
        SetEnableMechanicAutoAssignment: function: 000000010D876780
        SendRideNotification: function: 000000010D876540
        DoQueueConversation: function: 000000010D876180
        TriggerRandomConversation: function: 000000010D7BA580
        OverrideEFNValues: function: 000000010D7BA970
        DynamicTrigger_CoasterTutorialNauseaTooLow: function: 000000010D876660
        SetEventBlockingActive: function: 000000010D875FE0
        isa: function: 00000000178BE390
        ShowTutorialScreen: function: 000000010D876500
        SetEnforcedPlacementArea: function: 000000010D2D0480
        UpdateOpeningTime: function: 000000010D7BA190
        DynamicTrigger_CoasterTutorialFearTooLow: function: 000000010D876640
        DynamicTrigger_ScenarioBronzeDifficultyCompletedFanfare: function: 000000010D8767E0
        DisableStaffTraining: function: 000000010D876940
        SetPathHighlight: function: 000000010D8768C0
        DynamicTrigger_CoasterTutorialGenericFail: function: 000000010D876700
        TriggerConversation: function: 000000010D876240
        EventsQueueIsEmpty: function: 000000010D7B9E30
        ClearOnscreenHint: function: 000000010D7BA460
        ToggleRidePriceLock: function: 000000010D7BA310
        SetRideCameraHighlight: function: 000000010D876920
        SetParkManagementHighlight: function: 000000010D876900
        RemoveParkCapacityCap: function: 000000010D7BA0A0
        SetNewBlueprintHighlight: function: 000000010D8767A0
        HighlightUIElements_ConsoleCommand: function: 000000010D7BA880
        _M: <RECURSION DETECTED>
        DynamicTrigger_PlayerIdleTimer: function: 000000010D7BA8E0
        DisableHighlightUIElement: function: 000000010D7BA8B0
        DynamicTrigger_BuildingModeEntered: function: 000000010D876880
        DynamicTrigger_ScenarioStartFanfareClosed: function: 000000010D876860
        SendGuestNotification: function: 000000010D876560
        MuteNotificationTypes: function: 000000010D876740
        SetPopupHighlight: function: 000000010D8768E0
        DynamicTrigger_ScenarioSilverDifficultyCompletedFanfare: function: 000000010D876800
        SetBrowserOpenOnBlueprints: function: 000000010D876440
        SetTutorialBrowserFiltering: function: 000000010D876980
        SetParkCapacity: function: 000000010D7BA070
        DynamicTrigger_EntityOfTypePlaced: function: 000000010D7BA7F0
        OnShowDrowningGroupIconMessage: function: 0000000017CDC400
        RequestDialogue: function: 000000010D876280
        AddConversationDelay: function: 000000010D7BA0D0
        RidesBreakDown: function: 0000000017CDC340
        StopAndClearVO: function: 000000010D876420
        SetAvailableStaffToHire: function: 000000010D876580
        TriggerAudioEvent: function: 000000010D876A20
        DynamicTrigger_ScenarioGoldDifficultyCompletedFanfare: function: 000000010D876820
        Init: function: 000000010D2D0400
        DynamicTrigger_ShopItemPriceRaisedMoreThanThreshold: function: 0000000017CDC4C0
        DynamicTrigger_StartTestingCoaster: function: 000000010D7BA6D0
        DynamicTrigger_GuestThoughtsTabSelected: function: 000000010D7BA6A0
        DynamicTrigger_EnterExitRideCamera: function: 000000010D7BA250
        ShowLocationPointPopUpTexts: function: 000000010D7BA4F0
        IndexFromOne: function: 000000010D7B9E90
        DisableSpecificRideEditing: function: 000000010D7BA100
        SetOnscreenHint: function: 000000010D7BA490
        ChangeTimeOfDay: function: 000000010D7BA130
        call_on_super: function: 00000000178BE4E0
        DynamicTrigger_CoasterTutorialTestingCrash: function: 000000010D8766E0
        IsEventBlockingActive: function: 000000010D876020
        BlockUntilAllVOFinished: function: 000000010D7B9EC0
        DynamicTrigger_EntityOfTypeSelected: function: 000000010D7BA670
        RemoveDynamicTriggerEvent: function: 000000010D876320
        ReleaseTimeOfDay: function: 000000010D8762A0
        class: function: 0000000017B39380
        DynamicTrigger_ScenarioPlatinumDifficultyCompletedFanfare: function: 000000010D876840
        SetOpenPathEditorAfterRideEntranceExitPlacement: function: 000000010D876A00
        GetEventName: function: 000000010D876100
        SetWorldManagers: function: 000000010D876160
        UpdateClosingTime: function: 000000010D7BA1C0
        ClearUndoHistory: function: 000000010D7BA550
        DynamicTrigger_TimeInsideRideCamera: function: 000000010D7BA5B0
        GetEventCanBlock: function: 000000010D8760C0
        SetObjectivesSuppressed: function: 000000010D8765E0
        DynamicTrigger_TimePassed: function: 000000010D7BA700
        DynamicTrigger_ParkManagementScreenClosed: function: 000000010D7BA610
        AllowObjectiveToContinueWithVO: function: 000000010D8764E0
        _EnsureCommsManagerExists: function: 000000010D7BAB50
ClearFilterIDs: function: 000000010D8764A0
DynamicTrigger_LeaveTrackEditMode: function: 000000010D7BA280
DynamicTrigger_MoneyFloor: function: 000000010D7BA2E0
SetStaffMoraleEnabled: function: 000000010D8763E0
DynamicTrigger_CriminalActivityActive: function: 000000010D7BA5E0
OnTutorialEventMessage: function: 000000010D7BA790
_PACKAGE: helpers.
OnStationTicketPriceChangeMessage: function: 000000010D7BAA60
GetEventParamNames: function: 000000010D876120
SetRideCamEnabled: function: 000000010D8769E0
DynamicTrigger_CoasterTutorialTestingTakingALongtime: function: 000000010D876720
Shutdown: function: 0000000017CDC300
SetChallengeFee: function: 000000010D7BA040
subclass: function: 00000000178BE480
RemoveAllDynamicTriggerEvents: function: 000000010D876300
SetBrowserHighlight: function: 000000010D7BA910
DynamicTrigger_CoasterTutorialFearTooHigh: function: 000000010D8766A0
SetAvailableChallenges: function: 000000010D8762E0
ShowTutorialScreen_OnetimeOnly: function: 000000010D8769A0
new: function: 00000000178BE3F0
ClearEnforcedPlacementArea: function: 000000010D7BA430
ChangeSimulationSpeed: function: 000000010D876520
DynamicTrigger_CoasterTutorialExcitementTooHigh: function: 000000010D876680
CreateGenericObjectiveBasedDynamicEvent: function: 000000010D7B9EF0
CloseAllGameUI: function: 0000000017CDC440
SetBlockingNewEventInProgress: function: 000000010D876000
SetFilterState: function: 000000010D8764C0
RemoveFilterTag: function: 000000010D876480
__index: <RECURSION DETECTED>
_EnsureMainHUDExists: function: 000000010D7BAB20
_NAME: helpers.scenarionarrativemanagereventshelper
SetExistingBlueprintHighlight: function: 000000010D7BA730
_ExecuteCoasterTutorialEvent: function: 000000010D7BAAF0
OnRideCameraEnteredOrExited: function: 000000010D7BAAC0
OnShopItemPriceChangeMessage: function: 000000010D7BAA30
FlyToLocationPoint: function: 000000010D8765A0
DynamicTrigger_EnterExitSpecificRideCamera: function: 0000000017CDC380
BreakDownSpecificRide: function: 000000010D7B9F80
OnStaffMemberWageChangeMessage: function: 000000010D7BAA00
ChangeTimeOfDayPlayer: function: 000000010D7BA1F0
DynamicTrigger_StaffSalaryRaisedMoreThanThreshold: function: 0000000017CDC480
_SetEFNValues: function: 000000010D7BA9D0
AddFilterTag: function: 000000010D876460
SetEnableMechanicAutoAssignment: function: 000000010D876780
SendRideNotification: function: 000000010D876540
DoQueueConversation: function: 000000010D876180
TriggerRandomConversation: function: 000000010D7BA580
OverrideEFNValues: function: 000000010D7BA970
DynamicTrigger_CoasterTutorialNauseaTooLow: function: 000000010D876660
SetEventBlockingActive: function: 000000010D875FE0
isa: function: 00000000178BE390
ShowTutorialScreen: function: 000000010D876500
SetEnforcedPlacementArea: function: 000000010D2D0480
UpdateOpeningTime: function: 000000010D7BA190
DynamicTrigger_CoasterTutorialFearTooLow: function: 000000010D876640
DynamicTrigger_ScenarioBronzeDifficultyCompletedFanfare: function: 000000010D8767E0
DisableStaffTraining: function: 000000010D876940
SetPathHighlight: function: 000000010D8768C0
DynamicTrigger_CoasterTutorialGenericFail: function: 000000010D876700
TriggerConversation: function: 000000010D876240
EventsQueueIsEmpty: function: 000000010D7B9E30
ClearOnscreenHint: function: 000000010D7BA460
ToggleRidePriceLock: function: 000000010D7BA310
SetRideCameraHighlight: function: 000000010D876920
SetParkManagementHighlight: function: 000000010D876900
RemoveParkCapacityCap: function: 000000010D7BA0A0
SetNewBlueprintHighlight: function: 000000010D8767A0
HighlightUIElements_ConsoleCommand: function: 000000010D7BA880
_M: <RECURSION DETECTED>
DynamicTrigger_PlayerIdleTimer: function: 000000010D7BA8E0
DisableHighlightUIElement: function: 000000010D7BA8B0
DynamicTrigger_BuildingModeEntered: function: 000000010D876880
DynamicTrigger_ScenarioStartFanfareClosed: function: 000000010D876860
SendGuestNotification: function: 000000010D876560
MuteNotificationTypes: function: 000000010D876740
SetPopupHighlight: function: 000000010D8768E0
DynamicTrigger_ScenarioSilverDifficultyCompletedFanfare: function: 000000010D876800
SetBrowserOpenOnBlueprints: function: 000000010D876440
SetTutorialBrowserFiltering: function: 000000010D876980
SetParkCapacity: function: 000000010D7BA070
DynamicTrigger_EntityOfTypePlaced: function: 000000010D7BA7F0
OnShowDrowningGroupIconMessage: function: 0000000017CDC400
RequestDialogue: function: 000000010D876280
AddConversationDelay: function: 000000010D7BA0D0
RidesBreakDown: function: 0000000017CDC340
StopAndClearVO: function: 000000010D876420
SetAvailableStaffToHire: function: 000000010D876580
TriggerAudioEvent: function: 000000010D876A20
DynamicTrigger_ScenarioGoldDifficultyCompletedFanfare: function: 000000010D876820
Init: function: 000000010D2D0400
DynamicTrigger_ShopItemPriceRaisedMoreThanThreshold: function: 0000000017CDC4C0
DynamicTrigger_StartTestingCoaster: function: 000000010D7BA6D0
DynamicTrigger_GuestThoughtsTabSelected: function: 000000010D7BA6A0
DynamicTrigger_EnterExitRideCamera: function: 000000010D7BA250
ShowLocationPointPopUpTexts: function: 000000010D7BA4F0
IndexFromOne: function: 000000010D7B9E90
DisableSpecificRideEditing: function: 000000010D7BA100
SetOnscreenHint: function: 000000010D7BA490
ChangeTimeOfDay: function: 000000010D7BA130
call_on_super: function: 00000000178BE4E0
DynamicTrigger_CoasterTutorialTestingCrash: function: 000000010D8766E0
IsEventBlockingActive: function: 000000010D876020
BlockUntilAllVOFinished: function: 000000010D7B9EC0
DynamicTrigger_EntityOfTypeSelected: function: 000000010D7BA670
RemoveDynamicTriggerEvent: function: 000000010D876320
ReleaseTimeOfDay: function: 000000010D8762A0
class: function: 0000000017B39380
DynamicTrigger_ScenarioPlatinumDifficultyCompletedFanfare: function: 000000010D876840
SetOpenPathEditorAfterRideEntranceExitPlacement: function: 000000010D876A00
GetEventName: function: 000000010D876100
SetWorldManagers: function: 000000010D876160
UpdateClosingTime: function: 000000010D7BA1C0
ClearUndoHistory: function: 000000010D7BA550
DynamicTrigger_TimeInsideRideCamera: function: 000000010D7BA5B0
GetEventCanBlock: function: 000000010D8760C0
SetObjectivesSuppressed: function: 000000010D8765E0
DynamicTrigger_TimePassed: function: 000000010D7BA700
DynamicTrigger_ParkManagementScreenClosed: function: 000000010D7BA610
AllowObjectiveToContinueWithVO: function: 000000010D8764E0
_EnsureCommsManagerExists: function: 000000010D7BAB50
















tEnvironment - Table Contents:
tManagerNames - Table Contents:
    table: 0000000018441440: Managers.NotificationManager
    table: 00000000184A4D00: Managers.InfoPopupDebugPanel
    table: 0000000018479BC0: Managers.ButtonPromptsManager
    table: 000000001846CD40: Managers.LocationPointPopUpTextManager
    table: 00000000184A4600: Managers.ParkRatingManager
    table: 00000000183D2680: Managers.TutorialOnscreenHintManager
    table: 000000001849C280: Managers.CashSpentPopupManager
    table: 000000001847E780: Managers.UtilityIconManager
    table: 0000000018422980: Managers.CinematicsManager
    table: 00000000184434C0: Managers.ScenarioLocationPointEditor
    table: 00000000184A55C0: Managers.CheatManager
    table: 000000001849A040: Managers.TrackInspectorDebugWindowManager
    table: 000000001849E240: Managers.ObjectiveLinkManager
    table: 0000000018477580: Managers.HeatMapManager
    table: 000000001846D3C0: Managers.CommsManager
    table: 000000001846F780: Managers.GuestCountHistoryManager
    table: 0000000018482900: Managers.TutorialManager
    table: 000000001846A440: Managers.CoasterLabelsUIManager
    table: 0000000018468D40: Managers.ScenarioManager
    table: 0000000018498240: Managers.ScenarioNarrativeEditDebugManager
    table: 0000000018395880: Managers.TrainLocationEventManager
    table: 0000000018459AC0: Managers.GuestBucketManager
    table: 0000000018418E00: Managers.ParkDemographicsManager
    table: 000000001839F340: Managers.MarketingManager
    table: 0000000018444A00: Managers.UIPersistenceManager
    table: 000000001843D9C0: Managers.ScenarioIntroManager
    table: 000000001847BDC0: Managers.SandboxSettingsManager
    table: 0000000018418B00: Managers.UIBillboardWidgetsManager
    table: 0000000018409300: Managers.OnlineParkSessionManager










tModeNames - Table Contents:
GamefaceBrowserSelect: Editors.Gameface.GamefaceBrowserSelectUIMode
QuickTools: Editors.QuickTools.QuickToolsUIMode
EffectCam: Editors.EffectCam.EffectCamUIMode
ShootableTargetMultiSelect: Editors.Select.ShootableTargetMultiSelectUIMode
QuickShotCamera: Editors.Cameras.QuickShotCameraUIMode
GamefacePlayerControlledCamera: Editors.Gameface.GamefacePlayerControlledCameraUIMode
PhotoRideMultiSelect: Editors.Select.PhotoRideMultiSelectUIMode
DisplaySpeaker: Editors.Sequence.DisplaySpeakerUIMode
VolumeEditUIMode: Editors.Volume.VolumeEditUIMode
GamefaceViewTrackedRidePhotosUIMode: Editors.Gameface.GamefaceViewTrackedRidePhotosUIMode
GamefaceCameraSettings: Editors.Gameface.GamefaceCameraSettingsUIMode
GamefaceParkZoneEditUIMode: Editors.Park.ParkZone.GamefaceParkZoneEditUIMode
GamefaceViewTrackedRideTriggersUIMode: Editors.Gameface.GamefaceViewTrackedRideTriggersUIMode
GamefaceDisplayCameraSelectUIMode: Editors.Gameface.GamefaceDisplayCameraSelectUIMode
GamefaceAdvancedTriggerTrackedRideUIMode: Editors.Gameface.GamefaceAdvancedTriggerTrackedRideUIMode
GamefaceVolumeEditUIMode: Editors.Gameface.GamefaceVolumeEditUIMode
SpecificJobLocationSelect: Editors.Staff.SpecificJobLocationSelectUIMode
DuellingCoasterMultiSelect: Editors.Select.DuellingCoasterMultiSelectUIMode
DriveVehicle: Editors.Vehicles.DriveVehicleUIMode
GamefaceVistaPointSelect: Editors.Gameface.GamefaceVistaPointSelectUIMode
GamefaceParkZoneInfoPopupUIMode: Editors.Park.ParkZone.GamefaceParkZoneInfoPopupUIMode
VistaFocusPartSelect: Editors.Select.VistaFocusPartSelectUIMode
GamefaceEntranceExitPlacement: Editors.Gameface.GamefaceEntranceExitPlacementUIMode
Terrain: Editors.Terrain.TerrainEditUIMode
TutorialFlyByCamera: Editors.Tutorial.TutorialFlyByCameraUIMode
GamefacePlacement: Editors.Gameface.GamefacePlacementUIMode
PlotSelectionUIMode: Editors.Boundary.PlotSelectionUIMode
VisitorCamera: Editors.Cameras.VisitorCameraUIMode
GamefaceTrack: Editors.Gameface.GamefaceTrackEditUIMode
ShopSelect: Editors.Staff.ShopSelectUIMode
InfrastructureConnectionUIMode: Editors.Infrastructure.InfrastructureConnectionUIMode
ObjectiveLinkScenerySelect: Editors.Select.ObjectiveLinkScenerySelectUIMode
GamefaceBlueprintSave: Editors.Gameface.GamefaceBlueprintSaveUIMode
Cinematic: Editors.Cinematic.CinematicUIMode
Select: Editors.Select.SelectUIMode
AdvancedTriggerSequence: Editors.Sequence.AdvancedTriggerSequenceUIMode
GamefaceFoliageSceneryBrushUIMode: Editors.Gameface.GamefaceFoliageSceneryBrushUIMode
GamefaceAdvancedTriggerShootingTargetUIMode: Editors.Gameface.GamefaceAdvancedTriggerShootingTargetUIMode
Track: Editors.Track.TrackEditUIMode
TriggerSequenceCamera: Editors.RideCam.TriggerSequenceCameraUIMode
ReadOnly: Editors.ReadOnly.ReadOnlyUIMode
StaffSelect: Editors.Staff.StaffSelectUIMode
QuickShotCameraInit: Editors.Cameras.QuickShotCameraInitUIMode
GamefaceAdvancedTriggerFlatRideUIMode: Editors.Gameface.GamefaceAdvancedTriggerFlatRideUIMode
BoundaryUIMode: Editors.Boundary.BoundaryUIMode
GamefaceMultiSelect: Editors.Gameface.GamefaceMultiSelectUIMode
GamefaceAdvancedTriggerSequencerUIMode: Editors.Gameface.GamefaceAdvancedTriggerSequencerUIMode
DisplayCamera: Editors.Sequence.DisplayCameraUIMode
GamefaceShootingMinigameUIMode: Editors.Gameface.GamefaceShootingMinigameUIMode
GamefaceParkZoneSelectUIMode: Editors.Park.ParkZone.GamefaceParkZoneSelectUIMode
GamefaceMultiFeatureMove: Editors.Gameface.GamefaceMultiFeatureMoveUIMode
GamefaceRidePlacement: Editors.Gameface.GamefaceRidePlacementUIMode
MultiSelect: Editors.Select.MultiSelectUIMode
GuestMovement: Editors.Guests.GuestMovementUIMode
EntranceExitPlacement: Editors.FlatRide.EntranceExitPlacementUIMode
HotelMultiSelect: Editors.Select.HotelMultiSelectUIMode
StaffMovement: Editors.Staff.StaffMovementUIMode
VisitorCamDropper: Editors.VisitorCamDropper.VisitorCamDropperUIMode
DestinationMultiSelect: Editors.Select.DestinationMultiSelectUIMode
GamefaceTerrain: Editors.Gameface.GamefaceTerrainEditUIMode
Empty: Editors.Shared.EmptyUIMode
GamefaceFlumePlatformPlacement: Editors.Gameface.GamefaceFlumePlatformPlacementUIMode



[Player Data] ---------------------- Existing __index methods:
SetCareerLevel: function: 0000000017FE0960
ClearFirstTimeClickDLC: function: 0000000017FDFEE0
SetPlayerWorkshopNotificationTimestamp: function: 0000000017FDAEE0
GetUnreadDLCs: function: 0000000018143FC0
GetFirstTimeClick: function: 0000000017FE0E20
SetLastDeviceWasHDR: function: 0000000017FDADE0
SetFirstTimeClick: function: 0000000017FE0DC0
GetAllPackCompletion: function: 0000000017FE09E0
GetCareerLevel: function: 0000000017FE0980
GetNewActFanfareSeen: function: 0000000017FE0BA0
SetAllPackCompletion: function: 0000000017FE09C0
SetNewActFanfareSeen: function: 0000000017FE0C20
SetAvatarAnonymous: function: 0000000017FE5300
AddSupportFacility: function: 0000000018108CB0
ResetScenarioProgress: function: 0000000018108B00
GetPlayerWorkshopNotificationsLastSeen: function: 0000000017FDAE60
HasCareerIntroductionPlayed: function: 0000000017FE0E80
SetBonusUnlocked: function: 0000000017FE0DA0
GetScenarioProgress: function: 0000000017FE0920
GetProgressForScenario: function: 0000000017FE08C0
ClearFirstTimeClickData: function: 0000000017FE0E00
SetNewScenarioSelected: function: 0000000017FE0D60
LastDeviceWasHDR: function: 0000000018142BB0
ResetAllProgress: function: 0000000018108C20
GetAllProgress: function: 000000001836C480
GetBonusUnlocked: function: 0000000017FE0DE0
ClearIgnoredConversations: function: 0000000017FE0F60
SetHasSeenNewBlueprintFanfare: function: 0000000017FE1220
GetMainAvatarData: function: 0000000017FE52A0
AvatarUpdatesToServerPending: function: 0000000017FE5340
HasSubscribedToNewsletter: function: 000000001813C5E0
GetAvatarPartsSeen: function: 0000000017FE5400
AddGeographicLink: function: 0000000018108C50
SetCareerIntroductionPlayed: function: 0000000017FE0E40
SetPackCompletion: function: 0000000017FE0B20
GetGlobalCareerResearchPoints: function: 0000000017FE1080
UnlockAvatarRewardPack: function: 0000000018145790
GetDLCRead: function: 0000000017FDFF20
RemoveSupportFacility: function: 0000000018108CE0
GetAllAvatarRewardInfo: function: 0000000017FE5380
ToggleFavourite: function: 0000000017FD6E20
HasHiddenNewsletterSignup: function: 0000000017FCC180
GetCompanyHQPosition: function: 0000000017FE52C0
SetCrossplayEnabled: function: 0000000017FE5BC0
CompanyHQServerUpdateSuccessful: function: 0000000017FE53C0
GetCrossplayEnabled: function: 0000000017FE5C40
SetCompanyHQPosition: function: 0000000017FE52E0
GetPackCompletion: function: 0000000017FE0A40
SetMainAvatarData: function: 0000000017FE5220
GetFavourites: function: 0000000017FD6E00
CheckAvatarRewardUnlocked: function: 0000000018145730
GetGlobalCareerNodePurchased: function: 0000000017FE1040
IsConversationIgnored: function: 0000000017FE0F40
AddScenarioProgress: function: 0000000017FE08E0
CompanyHQUpdateToServerPending: function: 0000000017FE53A0
SetModNotificationDontShowAgain: function: 0000000018142C40
SetLastSeenUpdatePopUp: function: 0000000017FDAE00
GetNewActSelected: function: 0000000017FE0C40
SetConversationIgnored: function: 0000000017FE0E60
SetAvatarPartsSeen: function: 0000000017FE53E0
GetAvatarAnonymous: function: 0000000017FE5320
SetData: function: 000000001812DD30
GetPlayerWorkshopNotificationTimestamp: function: 0000000017FDAF00
SetPlayerWorkshopNotificationsLastSeen: function: 0000000017FDAE20
GetModNotificationShownThisVersion: function: 0000000018142C70
SetGlobalCareerResearchPoints: function: 0000000017FE11C0
GetLevelActProgress: function: 000000001836C3C0
AvatarServerUpdateSuccessful: function: 0000000017FE5360
GetLastSeenUpdatePopUp: function: 0000000017FDAE40
RemoveGeographicLink: function: 0000000018108C80
IsNewGame: function: 0000000017FD2520
GetHasSeenNewBlueprintFanfare: function: 0000000017FE11E0
SetNewsletterSignupHidden: function: 0000000017FCC260
MarkDLCRead: function: 0000000017FDFF00
GetUserCustomTags: function: 0000000017FD6D60
GetGeographicLinks: function: 0000000017FE0FC0
GetMultipleScenarioProgress: function: 0000000018108B90
GetActiveSupportFacilities: function: 0000000017FE1020
HasScenarioBeenSeen: function: 0000000017FE0D80
SetGlobalCareerNodePurchased: function: 0000000017FE1060
SetHasSubscribedToNewsletter: function: 0000000017FCC1E0
GetData: function: 000000001812DD60
SetNewActSelected: function: 0000000017FE0CE0



NlAPI.World:
weather
scenery_editconstraint
sequence
pools
bakedanimcontrol
scenery_signage
CameraAttachPoint
InputManager
guests
scenery_grid
scenegraph
park
volumes
attractions
HUDPopUpManager
boundary
complex
avatarcapture
balloons
FacilityDatastoreComponent
animation
rides
inworldtext
scenery_facility
UtilityDatastoreComponent
scenery_group
cheats
renderparameters
debugimgui
facilities
heightmap
acsecomponentmanager
HotelDataStoreComponent
techtree
gamecursor
WorldBasedGUIProvider
RivalsAndSupportFacilitiesDebugManager
MotionBlurManager
gameaudio
ScenarioRivalsManager
StaffPostPersistentDatastoreComponent
vfx
GeographicLinkDebugManager
ridestation
ScenarioSelectorManager
scenery_platforms
infrastructure
editors
debuganimationdata
StaffPoolDataStoreComponent
TargetsDatastoreComponent
acsedebugcomponent
StaffBuildingDatastoreComponent
FlatRideDataStoreComponent
staff
camerahelper
trackedrides
visibility
StaffDataStoreComponent
voxelterrain
billboardwidgets
avatarpatterncontrols
money
audiotest
environment
TrackedRideDataStoreComponent
trackedridedatabase
visualsConfig
SceneryBrowserFilterManager
RenderParametersComponent
FlumePlatformDataStoreComponent
scenery_flexicolour
ScenarioNarrativeManager
ChallengeManager
vehicles
ObjectiveManager
CameraModeManager
SelectAndEditComponent
InfoPopUpComponent
FanfareManager
transform
CinematicCamera
GameModeHelperComponent
worldserialisation
cameraconfig
PlayerInteractionHandler
ridestats
ParkZoneDatastoreComponent
scenery
UniqueNameComponent
LightDataStream
PoolsDatastoreComponent
SinglepartVisuals
UIModeHelperComponent
StandaloneScenerySerialisation
ModeHelperComponent
whiteworldui
ridephotos
debugprefabtools
flumes
placement
WorkshopDatastoreComponent
flatrides
gameterrain
bakedanimation
controlsconfig
scenery_puppets
scenery_volumeextras
gamevolatileconfig
ConversationManager
scenery_belonging
cinematics



Loaded package: userdata: 00000001431C3CC0
Loaded package: casino::luascript::api::debugui
Loaded package: interfaces.iparkratingmanager
Loaded package: mod_nolimits.api.trackedridedatabaseapi
Loaded package: forgeutils.prefabs.train
Loaded package: userdata: 00000001431C48C8
Loaded package: game::luascript::api::player
Loaded package: userdata: 00000001431C44D0
Loaded package: game::luascript::api::sceneryplatforms
Loaded package: editors.park.gamefaceunconnectedfacilitieseventhandler
Loaded package: userdata: 00000001431B5510
Loaded package: editors.sequence.sequenceutils
Loaded package: userdata: 00000001431C3CD8
Loaded package: userdata: 00000001431C40D8
Loaded package: userdata: 00000001431C44D8
Loaded package: utility.mod_nolimits.tweakableutils
Loaded package: helpers.unitconversion
Loaded package: userdata: 00000001431B5518
Loaded package: ui.triggerwidgetsui
Loaded package: managers.utilityiconmanager
Loaded package: game::luascript::api::track
Loaded package: editors.infrastructure.modechangerequestinfrastructureconnection
Loaded package: userdata: 00000001431B5520
Loaded package: userdata: 00000001431C3CE8
Loaded package: helpers.usercontent
Loaded package: ui.optionsmenugameface
Loaded package: helpers.savemetadatabuilder
Loaded package: userdata: 00000001431B5528
Loaded package: components.uimodehelpercomponent
Loaded package: userdata: 00000001431C40F0
Loaded package: editors.park.basegamefaceeventhandler
Loaded package: userdata: 00000001431C48F0
Loaded package: userdata: 00000001431B5530
Loaded package: userdata: 00000001431C3CF8
Loaded package: userdata: 00000001431C44F8
Loaded package: interfaces.ibrowserdatamanager
Loaded package: helpers.keplerutils
Loaded package: components.ui.datastore.staffdatastorecomponent
Loaded package: editors.park.gamefaceresearcheventhandler
Loaded package: managers.scenariomanager
Loaded package: helpers.flexpanelimguiwrapper
Loaded package: userdata: 00000001431C4500
Loaded package: userdata: 00000001431C3D08
Loaded package: userdata: 00000001431C4108
Loaded package: userdata: 00000001431C4908
Loaded package: game::luascript::api::usercontent
Loaded package: userdata: 00000001431C3D10
Loaded package: casino::luascript::api::profilestatistics
Loaded package: game::luascript::api::volumes
Loaded package: userdata: 00000001431C3D18
Loaded package: userdata: 00000001431C4118
Loaded package: database.mainparkdata
Loaded package: helpers.rebindhelper
Loaded package: ui.guestthoughtui
Loaded package: database.mainhelpscreeninformation
Loaded package: userdata: 00000001431C4520
Loaded package: casino::luascript::api::presence
Loaded package: acsedebug.global
Loaded package: casino::luascript::api::particles
Loaded package: editors.park.gamefacevistapointeventhandler
Loaded package: casino::luascript::api::entity
Loaded package: game::luascript::api::heightmap
Loaded package: game::luascript::api::debugimgui
Loaded package: userdata: 00000001431C3D30
Loaded package: game::luascript::api::visibility
Loaded package: interfaces.iworkshopmanager
Loaded package: database.mod_nolimits.nolimitsvolumedb
Loaded package: environment.utils
Loaded package: editors.select.destinationmultiselecteditmode
Loaded package: ui.calibrationui
Loaded package: userdata: 00000001431C4538
Loaded package: game::luascript::api::save
Loaded package: interfaces.icinematicsmanager
Loaded package: database.mainownership
Loaded package: components.ui.selectandeditcomponent
Loaded package: table
Loaded package: userdata: 00000001431C3D48
Loaded package: managers.guestcounthistorymanager
Loaded package: interfaces.iscenariointromanager
Loaded package: userdata: 00000001431C4948
Loaded package: components.rivalsandsupportfacilitiesdebugmanager
Loaded package: userdata: 00000001431C3D50
Loaded package: package
Loaded package: utility.mod_nolimits.guestutils
Loaded package: interfaces.itutorialonscreenhintmanager
Loaded package: casino::luascript::api::ui
Loaded package: editors.scenery.isubmode
Loaded package: quaternion
Loaded package: interfaces.ilocalchangemanager
Loaded package: interfaces.iparkdemographicsmanager
Loaded package: game::luascript::api::globe
Loaded package: interfaces.idialogstack
Loaded package: ui.billboardedui.billboardedridephotomarkers
Loaded package: managers.cashspentpopupmanager
Loaded package: database.gamedatabase
Loaded package: mod_nolimits.api.modelapi
Loaded package: editors.track.trackeditinput
Loaded package: components.challengemanager
Loaded package: userdata: 00000001431C4168
Loaded package: database.mod_nolimits.nolimitstrackdb
Loaded package: casino::player::playersource
Loaded package: database.maincustomtags
Loaded package: rotation
Loaded package: database.mainfranchisedata
Loaded package: casino::renderparameters::renderparameter
Loaded package: userdata: 00000001431C4978
Loaded package: music.gunsoundlist
Loaded package: interfaces.iscenarionarrativeeditdebugmanager
Loaded package: userdata: 00000001431C4180
Loaded package: helpers.inputsubstitution
Loaded package: casino::luascript::api::undo
Loaded package: casino::luascript::api::multipart
Loaded package: components.ui.datastore.parkdatastorecomponent
Loaded package: interfaces.igameintentmanager
Loaded package: interfaces.inotificationmanager
Loaded package: interfaces.iuserrestrictions
Loaded package: casino::luascript::api::databasetokens::preparedstatementinstancewrapper
Loaded package: game::luascript::api::sceneryeditconstraint
Loaded package: casino::luascript::api::transform
Loaded package: userdata: 00000001431C4198
Loaded package: interfaces.ionlineparksessionmanager
Loaded package: game::luascript::api::flumes
Loaded package: components.ui.datastore.volumeeditoruicontext
Loaded package: transitions.simpleworldtransition
Loaded package: database.mainstartflow
Loaded package: components.ui.datastore.financedatastoreuicontext
Loaded package: acsedebug.default
Loaded package: helpers.notificationtasks
Loaded package: userdata: 00000001431C3DA8
Loaded package: casino::luascript::api::animationcontrol
Loaded package: database.mainscenarioeditor
Loaded package: game::luascript::api::gamevolatileconfigapi
Loaded package: ui.workshopui
Loaded package: game::luascript::api::weather
Loaded package: components.ui.datastore.statsdatastorecomponent
Loaded package: helpers.submodemultiselectselection
Loaded package: ui.controllers.inworldpopupgui
Loaded package: game::luascript::api::ridestation
Loaded package: game::luascript::api::infrastructure
Loaded package: userdata: 00000001431C3DB8
Loaded package: userdata: 00000001431C45B8
Loaded package: casino::luascript::api::luaaudio
Loaded package: components.cameras.camerautils
Loaded package: editors.gameface.modechangerequestgamefacetrackui
Loaded package: editors.scenery.utils.editconstraintsdebug
Loaded package: managers.webrequestmanager
Loaded package: editors.blueprint.modechangerequestblueprintplacement
Loaded package: ui.displaysubmenugameface
Loaded package: mod_nolimits.api.guestapi
Loaded package: managers.trainlocationeventmanager
Loaded package: userdata: 00000001431C4DC8
Loaded package: editors.park.gamefacesecurityeventhandler
Loaded package: world.world
Loaded package: userdata: 00000001431C41D0
Loaded package: database.content0notificationdata
Loaded package: startscreen.shared.sandboxpausemenuhud
Loaded package: userdata: 00000001431C4DD0
Loaded package: helpers.imguiscenariohelper
Loaded package: casino::luascript::api::animation
Loaded package: acsedebug.database
Loaded package: game::luascript::api::park
Loaded package: game::luascript::api::ridephotos
Loaded package: managers.uibillboardwidgetsmanager
Loaded package: worlds.cptworld
Loaded package: cinematicsapi
Loaded package: string
Loaded package: components.ui.datastore.targetsdatastorecomponent
Loaded package: userdata: 00000001431C41F0
Loaded package: userdata: 00000001431C45F0
Loaded package: ui.utilitiesui
Loaded package: userdata: 00000001431C39F8
Loaded package: components.objectivemanager
Loaded package: userdata: 00000001431C45F8
Loaded package: managers.scenarionarrativeeditdebugmanager
Loaded package: interfaces.ipresencemanager
Loaded package: game::luascript::api::physics
Loaded package: casino::luascript::api::physics
Loaded package: userdata: 00000001431C3A00
Loaded package: components.gamemodehelpercomponent
Loaded package: userdata: 00000001431C4600
Loaded package: userdata: 00000001431C4E00
Loaded package: userdata: 00000001431C3E08
Loaded package: api.game
Loaded package: components.ui.datastore.ridedatastorehelper
Loaded package: game::luascript::api::scenerybelonging
Loaded package: managers.cheatmanager
Loaded package: components.ui.datastore.parkexpansiondatastoreuicontext
Loaded package: common.object
Loaded package: editors.shared.uifontutils
Loaded package: game::luascript::api::guests
Loaded package: managers.presencemanager
Loaded package: components.cameras.bezierfollowcamera
Loaded package: database.mod_nolimits.nolimitscameradb
Loaded package: mod_nolimits.api.core.apientry
Loaded package: interfaces.ilocationpointpopuptextmanager
Loaded package: acse.global
Loaded package: components.cameras.combineddebugcamera
Loaded package: components.ui.datastore.helpscreenuicontext
Loaded package: casino::luascript::api::random
Loaded package: casino::luascript::api::messaging
Loaded package: helpers.scenarionarrativesetuphelper
Loaded package: helpers.imguihelpers
Loaded package: database.mod_nolimits.config
Loaded package: userdata: 00000001431C4638
Loaded package: helpers.multiselecthelper
Loaded package: ui.dialogui
Loaded package: helpers.debugcameratweakables
Loaded package: editors.scenery.isetactivescenerypart
Loaded package: mod_nolimits.api.debuguiapi
Loaded package: editors.park.gamefaceparkmanagementeventhandler
Loaded package: userdata: 00000001431C3A50
Loaded package: acse.game
Loaded package: game::luascript::api::community
Loaded package: userdata: 00000001431C4650
Loaded package: casino::luascript::api::online
Loaded package: components.ui.datastore.datastorehelper
Loaded package: managers.userrestrictionmanager
Loaded package: game::luascript::api::gamecursor3d
Loaded package: game::luascript::api::trackedridedatabase
Loaded package: components.ui.datastore.workshopdatastorecomponent
Loaded package: components.ui.datastore.utilitydatastorecomponent
Loaded package: game::luascript::api::facilities
Loaded package: game::luascript::api::placement
Loaded package: game::luascript::api::debugprefabtools
Loaded package: managers.tutorialonscreenhintmanager
Loaded package: userdata: 00000001431C4268
Loaded package: ui.legalscreenui
Loaded package: userdata: 00000001431C3A70
Loaded package: game::luascript::api::techtree
Loaded package: music.customisablemusiclist
Loaded package: managers.trackinspectordebugwindowmanager
Loaded package: interfaces.iheatmapmanager
Loaded package: userdata: 00000001431C4678
Loaded package: forgeutils.internal.database.databaseutils
Loaded package: components.ui.datastore.trackedridedatastorecomponent
Loaded package: acse.entity
Loaded package: managers.marketingmanager
Loaded package: acse.componentmanager
Loaded package: components.input.singlemouseinput
Loaded package: common.stringutils
Loaded package: game::luascript::api::sceneryfacility
Loaded package: casino::luascript::api::input
Loaded package: database.content0parksettingsdata
Loaded package: components.ui.datastore.partsetuicontext
Loaded package: game::luascript::api::cheats
Loaded package: trackedridescoring.noninvertedcoasterscoringslow
Loaded package: managers.scenariointromanager
Loaded package: components.cameras.fixandfollowcamera
Loaded package: trackedridescoring.poweredtrackedridescoring
Loaded package: components.hudpopupmanager
Loaded package: game::luascript::api::content
Loaded package: trackedridescoring.huntsmantrackedridescoring
Loaded package: trackedridescoring.cascadescoring
Loaded package: components.cameras.avatarcamera
Loaded package: editors.scenery.utils.freerotation
Loaded package: userdata: 00000001431C46A0
Loaded package: database.content0tutorials
Loaded package: trackedridescoring.noninvertedcoasterscoring
Loaded package: trackedridescoring.logflumescoring
Loaded package: trackedridescoring.transportridescoring
Loaded package: userdata: 00000001431C3AA8
Loaded package: trackedridescoring.defaultscoring
Loaded package: components.standalonesceneryserialisation
Loaded package: userdata: 00000001431C46A8
Loaded package: trackedridescoring.swimsuitflumescoring
Loaded package: game::luascript::api::debuganimationdata
Loaded package: components.scenariorivalsmanager
Loaded package: managers.newsfeedmanager
Loaded package: components.geographiclinkdebugmanager
Loaded package: components.scenarioselectormanager
Loaded package: components.ui.datastore.staffpooldatastorecomponent
Loaded package: editors.scenery.modechangerequestselectmodepanel
Loaded package: editors.select.hotelmultiselecteditmode
Loaded package: utility.mod_nolimits.debugutils
Loaded package: components.ui.datastore.hoteldatastorecomponent
Loaded package: helpers.guestuiutils
Loaded package: components.ui.datastore.staffbuildingdatastorecomponent
Loaded package: components.scenerybrowserfiltermanager
Loaded package: helpers.complexutils
Loaded package: common.mutators
Loaded package: game::luascript::api::undo
Loaded package: mod_nolimits.api.packagenotes.messagingnotes
Loaded package: managers.parkloadsavemanager
Loaded package: windows.calibrationmenugameface
Loaded package: editors.park.gamefacepoolseventhandler
Loaded package: components.ui.datastore.flatridedatastorecomponent
Loaded package: components.fanfaremanager
Loaded package: components.cameras.flytopositioncamera
Loaded package: components.imodechangerequest
Loaded package: components.scenarionarrativemanager
Loaded package: gamehelpers.modehelper
Loaded package: components.cameras.matchtargetcamera
Loaded package: interfaces.ilocalelinksmanager
Loaded package: coroutine
Loaded package: database.mainmarketingdata
Loaded package: components.cameras.thirdpersonvehiclecamera
Loaded package: components.cameras.visitorcamera
Loaded package: mod_nolimits.api.gameterrainapi
Loaded package: components.cameras.thirdpersonridecamera
Loaded package: components.cameras.trackeditcamera
Loaded package: userdata: 00000001431C3AD0
Loaded package: components.cameras.standardcamera
Loaded package: components.ui.datastore.shootingrideuicontext
Loaded package: database.mainnotificationdata
Loaded package: editors.scenery.utils.sceneryutils
Loaded package: ui.billboardedui.billboardedfrontendglobemarkers
Loaded package: components.cameras.shootingcamera
Loaded package: userdata: 00000001431C3AD8
Loaded package: casino::luascript::api::lighting
Loaded package: userdata: 00000001431C46D8
Loaded package: editors.select.multiselectmodechangerequest
Loaded package: components.cameras.standardorbitcamera
Loaded package: game.gamescript
Loaded package: casino::luascript::api::database
Loaded package: userdata: 00000001431C3AE0
Loaded package: components.cameras.freelookcamera
Loaded package: game::luascript::api::messaging
Loaded package: components.cameras.walkingcamera
Loaded package: editors.quicktools.modechangerequestquicktools
Loaded package: components.uniquenamecomponent
Loaded package: game::luascript::api::balloons
Loaded package: managers.parkratingmanager
Loaded package: userdata: 00000001431B5450
Loaded package: components.cameras.chasetrackcamera
Loaded package: mod_nolimits.api.crowdsimulationapi
Loaded package: editors.shared.selectedradialmenu
Loaded package: helpers.escapehandler
Loaded package: mod_nolimits.api.sceneryapi
Loaded package: casino::luascript::api::voxelterrain
Loaded package: database.mod_nolimitsluadatabase
Loaded package: game::luascript::api::uioptionsapi
Loaded package: editors.shared.scenerycolourpickerutils
Loaded package: forgeutils.internal.database.trackedrides
Loaded package: editors.select.multiselectmode
Loaded package: components.cameras.cameralogic
Loaded package: database.mod_nolimits.databaseutils
Loaded package: components.cameras.cameramodemanager
Loaded package: interfaces.itrainlocationeventmanager
Loaded package: editors.shared.multifeaturemovemodechangerequest
Loaded package: components.ui.datastore.parkmanagementdatastorecontext
Loaded package: game::luascript::api::attractions
Loaded package: userdata: 00000001431C46F8
Loaded package: game::luascript::api::gameapi
Loaded package: ui.controllers.scenarioeditorgui
Loaded package: database.mod_nolimits.nolimitsguestdb
Loaded package: editors.scenery.modechangerequestscenerypanel
Loaded package: userdata: 00000001431C3B00
Loaded package: components.cameras.cameraattachpoint
Loaded package: components.worldbasedguiprovider
Loaded package: userdata: 00000001431C4700
Loaded package: components.singlepartvisuals
Loaded package: game::luascript::api::render
Loaded package: helpers.rideuiutils
Loaded package: components.cameras.animatedcamera
Loaded package: components.modehelpercomponent
Loaded package: helpers.trackedrideutils
Loaded package: components.input.gamepadinput
Loaded package: userdata: 00000001431C4708
Loaded package: helpers.careerutils
Loaded package: components.ui.datastore.flumeplatformdatastorecomponent
Loaded package: components.ui.datastore.speakerdatastorecomponent
Loaded package: editors.track.trackeditcostcalculator
Loaded package: userdata: 00000001431C3B10
Loaded package: components.input.keyinput
Loaded package: components.input.singletouchinput
Loaded package: components.input.input
Loaded package: database.content0buttonprompts
Loaded package: userdata: 00000001431C4C28
Loaded package: helpers.popupdialogutils
Loaded package: components.playerinteractionhandler
Loaded package: game::luascript::api::bakedanimcontrol
Loaded package: components.ui.infopopupcomponent
Loaded package: editors.park.gamefacerideseventhandler
Loaded package: game::luascript::api::franchise
Loaded package: editors.audio.audioplacementutils
Loaded package: userdata: 00000001431C3B20
Loaded package: helpers.raycastutils
Loaded package: userdata: 00000001431C4720
Loaded package: components.ui.datastore.researchdatastoreuicontext
Loaded package: components.acsedebugcomponent
Loaded package: music.placeableambiencelist
Loaded package: ui.coasterlabelsui
Loaded package: userdata: 00000001431C3B28
Loaded package: mod_nolimits.components.nolimitsguestcomponent
Loaded package: mod_nolimits.api.trackedridesapi
Loaded package: mod_nolimits.api.ridestationapi
Loaded package: helpers.scenarionarrativemanagereventshelper
Loaded package: mod_nolimits.api.ridestatsapi
Loaded package: userdata: 00000001431C4470
Loaded package: mod_nolimits.api.volumesapi
Loaded package: components.cameras.cameramodemanagerdebug
Loaded package: mod_nolimits.api.attractionsapi
Loaded package: interfaces.iuipersistencemanager
Loaded package: userdata: 00000001431C4730
Loaded package: editors.scenery.utils.rotationgizmosnappoints
Loaded package: mod_nolimits.api.sceneryvolumeextrasapi
Loaded package: game::luascript::api::gameaudio
Loaded package: gamehelpers.basemode
Loaded package: imvec4
Loaded package: mod_nolimits.api.parkapi
Loaded package: userdata: 00000001431C4338
Loaded package: casino::luascript::api::audiotest
Loaded package: helpers.attractionsuiutils
Loaded package: ui.managers.gameuimanager
Loaded package: mod_nolimits.api.undoapi
Loaded package: mod_nolimits.api.entityapi
Loaded package: database.mainleveltransitions
Loaded package: managers.workshopmanager
Loaded package: common.mathutils
Loaded package: components.render.motionblurmanager
Loaded package: database.content0tutorialonscreenhints
Loaded package: interfaces.iguestbucketmanager
Loaded package: userdata: 00000001431B5380
Loaded package: mod_nolimits.api.messagingapi
Loaded package: components.cameras.orbitcamera
Loaded package: mod_nolimits.api.debugapi
Loaded package: game::luascript::api::visualsconfigapi
Loaded package: userdata: 00000001431C4B48
Loaded package: mod_nolimits.api.core.nlapi
Loaded package: imvec2
Loaded package: editors.blueprint.modechangerequestblueprintsave
Loaded package: utility.mod_nolimits.mathutils
Loaded package: ui.billboardedui.billboardedparkexpansionmarkers
Loaded package: userdata: 00000001431C4350
Loaded package: transitions.runningworldtransition
Loaded package: trackedridescoring.coasterscoring
Loaded package: components.lightdatastream
Loaded package: userdata: 00000001431B5390
Loaded package: components.ui.datastore.poolsdatastorecomponent
Loaded package: components.ui.datastore.staffpostpersistentdatastorecomponent
Loaded package: components.ui.highlightraycasthelper
Loaded package: casino::luascript::api::componentmanager
Loaded package: editors.park.gamefaceutilitieseventhandler
Loaded package: utility.mod_nolimits.componentutils
Loaded package: userdata: 00000001431B5398
Loaded package: game::luascript::api::scenerygrid
Loaded package: components.ui.datastore.facilitydatastorecomponent
Loaded package: game::luascript::api::complex
Loaded package: interfaces.ibuttonpromptsmanager
Loaded package: managers.buttonpromptsmanager
Loaded package: game::luascript::api::vehicles
Loaded package: interfaces.iuibillboardwidgetsmanager
Loaded package: casino::luascript::api::steam
Loaded package: ui.graphicssubmenugameface
Loaded package: userdata: 00000001431C3B68
Loaded package: userdata: 00000001431C3F68
Loaded package: game::luascript::api::boundary
Loaded package: ui.parkexpansionui
Loaded package: components.ui.audioinfopopuphelper
Loaded package: ui.frontendglobemarkersui
Loaded package: userdata: 00000001431B53A8
Loaded package: _G
Loaded package: editors.scenario.scenarioedithelper
Loaded package: ui.billboardedui.billboardedtracktriggermarkers
Loaded package: ui.coastertrackhintsui
Loaded package: ui.coastertrackwidgetsui
Loaded package: windows.mainhudgameface
Loaded package: debugui::window
Loaded package: userdata: 00000001431B53B0
Loaded package: ui.billboardedui.billboardedtutorialmarkers
Loaded package: ui.billboardedui.ibillboardedui
Loaded package: database.acseluadatabase
Loaded package: casino::luascript::api::task::task
Loaded package: interfaces.ifrontieraccountmanager
Loaded package: ui.billboardedui.billboardedcoasterlabels
Loaded package: common.angleutils
Loaded package: managers.dialogstackmanager
Loaded package: editors.park.gamefacestaffbuildingeventhandler
Loaded package: managers.scenariolocationpointeditor
Loaded package: userdata: 00000001431C3F80
Loaded package: managers.locationpointpopuptextmanager
Loaded package: managers.heatmapmanager
Loaded package: interfaces.icashspentpopupmanager
Loaded package: uimanager
Loaded package: database.content0leveltransitions
Loaded package: luacomponentmanagerbase
Loaded package: game::luascript::api::irc
Loaded package: managers.parkdemographicsmanager
Loaded package: userdata: 00000001431C4388
Loaded package: game::luascript::api::rides
Loaded package: casino::luascript::api::scenegraph
Loaded package: game::luascript::api::controlsconfigapi
Loaded package: game::luascript::api::money
Loaded package: userdata: 00000001431C3B88
Loaded package: userdata: 00000001431C3B90
Loaded package: interfaces.itutorialmanager
Loaded package: managers.tutorialmanager
Loaded package: editors.park.loaneventhandlergameface
Loaded package: objectives.objectiveutils
Loaded package: userdata: 00000001431B5470
Loaded package: userdata: 00000001431B53D0
Loaded package: managers.commsmanager
Loaded package: fuserinterface2::view
Loaded package: casino::luascript::api::bakedanimation
Loaded package: ui.frontieraccountsignupui
Loaded package: components.cameras.focuscamera
Loaded package: interfaces.imarketingmanager
Loaded package: interfaces.iuimanager
Loaded package: interfaces.isandboxsettingsmanager
Loaded package: userdata: 00000001431C3FA0
Loaded package: managers.sandboxsettingsmanager
Loaded package: utility.mod_nolimits.editorutils
Loaded package: managers.guestbucketmanager
Loaded package: userdata: 00000001431C3FD8
Loaded package: utf8
Loaded package: game::luascript::api::sceneryflexicolour
Loaded package: managers.coasterlabelsuimanager
Loaded package: helpers.tablehelper
Loaded package: casino::luascript::api::camera
Loaded package: userdata: 00000001431C47A8
Loaded package: interfaces.icoasterlabelsuimanager
Loaded package: userdata: 00000001431B53E8
Loaded package: userdata: 00000001431C45C0
Loaded package: userdata: 00000001431C3BB0
Loaded package: uiwrapper
Loaded package: ui.gamefaceuiwrapper
Loaded package: casino::luascript::api::xmlconfig
Loaded package: acse.tweakables
Loaded package: helpers.imguieventmanagerhelper
Loaded package: userdata: 00000001431B53F0
Loaded package: userdata: 00000001431C4960
Loaded package: userdata: 00000001431C3BB8
Loaded package: editors.shared.materialflexicolourutils
Loaded package: game::luascript::api::editors
Loaded package: utility.mod_nolimits.funcutils
Loaded package: components.ui.datastore.musicdatastorehelper
Loaded package: editors.shared.configs.highlight_default
Loaded package: managers.onlineparksessionmanager
Loaded package: editors.gameface.modechangerequestgamefacepathui
Loaded package: userdata: 00000001431C47C0
Loaded package: windows.hudgamefacehelper
Loaded package: editors.park.gamefacestaffschedulereventhandler
Loaded package: managers.notificationmanager
Loaded package: game.basegame
Loaded package: helpers.staffutils
Loaded package: casino::userinterface2::datastore::contexthandle
Loaded package: game::luascript::api::cameraluahelperapi
Loaded package: editors.park.gamefacestaffseventhandler
Loaded package: game::luascript::api::spatial
Loaded package: editors.park.gamefaceparkoptionseventhandler
Loaded package: userdata: 00000001431B5408
Loaded package: casino::luascript::api::inworldtext
Loaded package: userdata: 00000001431C3BD0
Loaded package: editors.park.gamefacesequenceseventhandler
Loaded package: userdata: 00000001431C4468
Loaded package: editors.park.gamefacespeakerseventhandler
Loaded package: casino::luascript::api::renderparameters
Loaded package: editors.park.gamefaceshopsandfacilitieseventhandler
Loaded package: editors.shared.baseuimode
Loaded package: acse.debug
Loaded package: managers.localchangemanager
Loaded package: casino::luascript::api::coordination
Loaded package: editors.park.gamefaceattractionseventhandler
Loaded package: editors.park.gamefaceeventhandlerhelper
Loaded package: game::luascript::api::cameraconfigapi
Loaded package: components.ui.datastore.parkopenclosedatastoreuicontext
Loaded package: editors.park.gamefaceguestseventhandler
Loaded package: transform
Loaded package: music.placeabletriggeredeventslist
Loaded package: game::luascript::api::scenerysignage
Loaded package: components.ui.datastore.selectedmodularsceneryuicontext
Loaded package: mod_nolimits.components.nolimitscomponent
Loaded package: game::luascript::api::telemetry
Loaded package: components.ui.datastore.vistapointdatastorecomponent
Loaded package: acsedebug.entity
Loaded package: userdata: 00000001431C3FE8
Loaded package: userdata: 00000001431C43E8
Loaded package: components.ui.datastore.staffschedulerdatastoreuicontext
Loaded package: components.ui.datastore.sequencesdatastorecomponent
Loaded package: database.mainbuttonprompts
Loaded package: casino::luascript::api::motiongraph
Loaded package: userdata: 00000001431B5388
Loaded package: components.conversationmanager
Loaded package: editors.shared.editorconfig
Loaded package: windows.imguihuddebug
Loaded package: managers.uipersistencemanager
Loaded package: managers.saveloaderrormanager
Loaded package: database.content0careerdata
Loaded package: components.ui.datastore.loansdatastoreuicontext
Loaded package: database.content0marketingdata
Loaded package: forgeutils.internal.database.audio
Loaded package: userdata: 00000001431C43F8
Loaded package: game::luascript::api::trackedrides
Loaded package: acsedebug.shellcommands
Loaded package: components.ui.datastore.imagerydatastorehelper
Loaded package: userdata: 00000001431B5438
Loaded package: components.ui.datastore.marketingdatastoreuicontext
Loaded package: database.content0helpscreeninformation
Loaded package: components.ui.datastore.guestsdatastorecomponent
Loaded package: components.basemodechangerequest
Loaded package: game::luascript::api::avatarpatterncontrols
Loaded package: editors.gameface.gamefacebaseuimode
Loaded package: casino::luascript::api::worldserialisation
Loaded package: userdata: 00000001431B5440
Loaded package: userdata: 00000001431C3B38
Loaded package: startscreen.shared.careerdifficultymenu
Loaded package: database.maintutorials
Loaded package: userdata: 00000001431C4138
Loaded package: startscreen.shared.onlineutils
Loaded package: casino::luascript::api::http
Loaded package: game::luascript::api::sequence
Loaded package: casino::luascript::api::save
Loaded package: casino::luascript::api::math
Loaded package: interfaces.imodechanger
Loaded package: userdata: 00000001431C4410
Loaded package: editors.scenery.modechangerequestscenery
Loaded package: database.maintutorialonscreenhints
Loaded package: forgeutils.internal.database.modularscenery
Loaded package: database.mod_nolimits.nolimitsscenariodb
Loaded package: database.main
Loaded package: imgui
Loaded package: userdata: 00000001431C4418
Loaded package: userdata: 00000001431C4150
Loaded package: userdata: 00000001431C4740
Loaded package: components.ui.datastore.parkzonedatastorecomponent
Loaded package: ui.parkzoneui
Loaded package: game::luascript::api::crowdsimulation
Loaded package: casino::luascript::api::ui2
Loaded package: userdata: 00000001431C4020
Loaded package: casino::luascript::api::localisation
Loaded package: userdata: 00000001431C4030
Loaded package: userdata: 00000001431C4958
Loaded package: editors.scenery.utils.rotationgizmo
Loaded package: environment.environment
Loaded package: windows.settingsmenugameface
Loaded package: managers.playersavemanager
Loaded package: database.mainavatardata
Loaded package: helpers.controllerhelper
Loaded package: ui.billboardedui.billboardedtrackeditselectionwidgets
Loaded package: database.content0parkdata
Loaded package: casino::luascript::api::world
Loaded package: userdata: 00000001431B5468
Loaded package: commonparametersetter
Loaded package: userdata: 00000001431B53A0
Loaded package: database.mainheatmapdata
Loaded package: commonobjectcreator
Loaded package: common.coroutineutils
Loaded package: userdata: 00000001431C4C30
Loaded package: interfaces.inewsfeedmanager
Loaded package: ui.loadingscreenui
Loaded package: userdata: 00000001431C3F78
Loaded package: game::luascript::api::pools
Loaded package: components.cinematiccamera
Loaded package: userdata: 00000001431C4378
Loaded package: interfaces.isaveloaderror
Loaded package: transitions.worldloadtransition
Loaded package: userdata: 00000001431C4130
Loaded package: userdata: 00000001431B5478
Loaded package: api.debug
Loaded package: casino::luascript::api::usercontent
Loaded package: game::luascript::api::whiteworldui
Loaded package: userdata: 00000001431C4440
Loaded package: helpers.parkloadsavehelper
Loaded package: helpers.usercustomtags
Loaded package: components.input.temporarycontexthandler
Loaded package: userdata: 00000001431B5480
Loaded package: savetoken
Loaded package: userdata: 00000001431C3C48
Loaded package: managers.objectivelinkmanager
Loaded package: transitions.intromovietransition
Loaded package: database.acsedebugluadatabase
Loaded package: utility.mod_nolimits.utils
Loaded package: editors.scenery.sceneryeditcontext
Loaded package: managers.gameintentmanager
Loaded package: lighting.daynightcycle
Loaded package: components.ui.datastore.watercleanlinessdatastorehelper
Loaded package: userdata: 00000001431C4050
Loaded package: helpers.expensivestatehelper
Loaded package: userdata: 00000001431B5428
Loaded package: game::luascript::api::scenerypuppets
Loaded package: managers.nextworlddatamanager
Loaded package: userdata: 00000001431B5490
Loaded package: helpers.financeutils
Loaded package: game::luascript::api::worldapi
Loaded package: userdata: 00000001431C4058
Loaded package: database.forgeutilsluadatabase
Loaded package: common.bitwise
Loaded package: mod_nolimits.api.core.base
Loaded package: interfaces.inextworlddatamanager
Loaded package: userdata: 00000001431B5498
Loaded package: physicsflags
Loaded package: helpers.sparseorderedtablehelper
Loaded package: managers.frontieraccountmanager
Loaded package: userdata: 00000001431C43C8
Loaded package: database.mainparksettingsdata
Loaded package: components.render.renderparameterscomponent
Loaded package: casino::luascript::api::player
Loaded package: userdata: 00000001431B5448
Loaded package: interfaces.iobjectivelinkmanager
Loaded package: userdata: 00000001431C3C68
Loaded package: loadingscreenworld
Loaded package: math
Loaded package: database.maindlcfanfaredata
Loaded package: interfaces.iwebrequestmanager
Loaded package: interfaces.iparkloadsavemanager
Loaded package: gamehelpers.signin
Loaded package: acse.default
Loaded package: database.content0heatmapdata
Loaded package: casino::luascript::api::render
Loaded package: editors.shared.baseeditmode
Loaded package: editors.shared.uimodeutils
Loaded package: game::luascript::api::vfx
Loaded package: interfaces.iscenariomanager
Loaded package: transitions.loadingscreentransition
Loaded package: transitions.stallableloadingscreentransition
Loaded package: userdata: 00000001431C4078
Loaded package: managers.browserdatamanager
Loaded package: game::luascript::api::scenerygroup
Loaded package: database.mainnewsletterdata
Loaded package: components.ui.datastore.trackeditdatastorecontext
Loaded package: database.mod_nolimits.nolimitsmanager
Loaded package: components.input.inputeventhandler
Loaded package: userdata: 00000001431C3FF8
Loaded package: casino::luascript::api::time
Loaded package: userdata: 00000001431C4480
Loaded package: data.swimmingdata
Loaded package: casino::luascript::api::debug
Loaded package: vector2
Loaded package: userdata: 00000001431C4800
Loaded package: game::luascript::api::vipguests
Loaded package: components.cameras.firstpersonridecamera
Loaded package: userdata: 00000001431C3C10
Loaded package: userdata: 00000001431C4488
Loaded package: helpers.sandboxsettings
Loaded package: userdata: 00000001431B5488
Loaded package: casino::luascript::api::game
Loaded package: userdata: 00000001431B54C8
Loaded package: casino::luascript::api::content
Loaded package: ui.managers.uimanagerbase
Loaded package: userdata: 00000001431C3C28
Loaded package: game::luascript::api::sceneryvolumeextras
Loaded package: database.mainplayer
Loaded package: components.input.inputmanager
Loaded package: forgeutils.internal.database.trackedridecars
Loaded package: ui.hudui
Loaded package: casino::luascript::api::json
Loaded package: vector3
Loaded package: userdata: 00000001431C4098
Loaded package: common.tableplus
Loaded package: casino::luascript::api::telemetry
Loaded package: managers.infopopupdebugpanel
Loaded package: userdata: 00000001431B54D0
Loaded package: managers.localelinksmanager
Loaded package: editors.shared.colourpickerutils
Loaded package: game::luascript::api::worldserialisation
Loaded package: components.ui.datastore.unconnectedroomsdatastorecomponent
Loaded package: acsedebug.game
Loaded package: interfaces.iguestcounthistorymanager
Loaded package: game::luascript::api::avatarcapture
Loaded package: forgeutils.logger
Loaded package: userdata: 00000001431B54E0
Loaded package: transformq
Loaded package: acsedebug.debug
Loaded package: casino::luascript::api::spatial
Loaded package: editors.park.marketingeventhandlergameface
Loaded package: interfaces.icommsmanager
Loaded package: game::luascript::api::terrain
Loaded package: game::luascript::api::ridestats
Loaded package: database.maincareerdata
Loaded package: database.content0dlcfanfaredata
Loaded package: game::luascript::api::staff
Loaded package: mod_nolimits.api.ridesapi
Loaded package: game::luascript::api::scenery
Loaded package: userdata: 00000001431C48B0
Loaded package: casino::luascript::api::movieplayer
Loaded package: game::luascript::api::flatrides
Loaded package: helpers.complexityhelper
Loaded package: casino::luascript::api::cursor
Loaded package: casino::luascript::api::model
Loaded package: ui.billboardedui.billboardedparkzonemarkers
Loaded package: userdata: 00000001431B54D8
Loaded package: managers.cinematicsmanager
Loaded package: userdata: 00000001431C44B0
Loaded package: game::luascript::api::billboarduiwidgets
Loaded package: mod_nolimits.api.trackapi