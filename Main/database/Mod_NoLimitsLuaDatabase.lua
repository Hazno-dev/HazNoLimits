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
local require       = global.require
local tryrequire    = global.tryrequire
local tostring      = global.tostring
local pairs         = global.pairs
local package       = global.package
local debug         = api.debug

api.nlApi = {}

local CoasterScoring                    = require("TrackedRideScoring.CoasterScoring")
local BaseEditMode                      = require("Editors.Shared.BaseEditMode")
local CameraUtils                       = require("Components.Cameras.CameraUtils")
local GameScript                        = require("Game.GameScript")
local GamefaceUIWrapper                 = require("UI.GamefaceUIWrapper")
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils

local logger        = require("forgeutils.logger").Get("NoLimits::LuaDatabase")

local _NLDatabase   = {}

_NLDatabase.tComponents = {
    NoLimitsComponent =         'Mod_NoLimits.Components.NoLimitsComponent',
    NoLimitsGuestComponent =    'Mod_NoLimits.Components.NoLimitsGuestComponent',
}

CoasterScoring.tSettings.tEINMax = {e = 50, i = 50, n = 50}

local gamescriptInit = GameScript.Init
GameScript.Init = function(self, ...)
    logger:Info("GameScript Init called")
    gamescriptInit(self, ...)
end

local gamefaceuiwrapperInit = GamefaceUIWrapper.Init
GamefaceUIWrapper.Init = function(self, _tInitSettings)
    logger:Info("GamefaceUIWrapper Init called")
    DebugUtils.LogTable("Init Settings:", _tInitSettings)
    DebugUtils.Trace("GamefaceUIWrapper Init called")
    local ret = gamefaceuiwrapperInit(self, _tInitSettings)

    logger:Info("Gameface UI self.view: " .. tostring(self.view))
    return ret
end

local originalMappedResources = api.ui2.MapResources
api.ui2.MapResources = function(resourceName, ...)
    logger:Info("UIElementsDebug: Mapped Resource: " .. tostring(resourceName))
    ---@diagnostic disable-next-line: redundant-parameter
    return originalMappedResources(resourceName, ...)
end

local failurePopup = BaseEditMode.CreateFailurePopup
local failurePopupFunction = function(_tReasons, _tFailureMessagesOverrides, _vPos)
    logger:Info("Showing failure popup at position: " .. global.tostring(_vPos))
    return failurePopup(_tReasons, _tFailureMessagesOverrides, _vPos)
end

local failReasons = BaseEditMode.ShowCommitFailReasons
local failureReasonsFunction = function(_previewToken, _tFailureMessagesOverrides)
    logger:Info("Showing failure reasons")
    return failReasons(_previewToken, _tFailureMessagesOverrides)
end

local failReasonsAtPos = BaseEditMode.ShowCommitFailReasonsAtPos
local failureReasonsAtPosFunction = function(_previewToken, _vPos)
    logger:Info("Showing failure reasons at position: " .. global.tostring(_vPos))
    return failReasonsAtPos(_previewToken, _vPos)
end

local failreason = BaseEditMode.ShowCommitFailReason
local failReasonFunction = function(_sReason)
    logger:Info("Showing failure reason")
    return failreason(_sReason)
end

local cameraUtilsPosInVoxelBounds = CameraUtils.IsPosInVoxelBounds
local isPosInVoxelBoundsFunction = function(_tWorldAPIs, _voxelTerrainID, _vPos)
  return true
end

local registerShellCommand = debug.RegisterShellCommand
local registerShellCommandFunction = function(fCommandFunc, sCommand, sCommandHelp)
    logger:Info("Registering shell command: " .. tostring(sCommand) .. " Help: " .. tostring(sCommandHelp))
    return registerShellCommand(fCommandFunc, sCommand, sCommandHelp)
end

function _NLDatabase.AddContentToCall(_tContentToCall)
    if not global.api.acse or global.api.acse.versionNumber < 0.7 then
        return
    end
    
    logger:Info("AddContentToCall Started!")

    table.insert(_tContentToCall, require("Database.Mod_NoLimitsLuaDatabase"))
    table.insert(_tContentToCall, require("Database.Mod_NoLimits.NoLimitsManager"))



    BaseEditMode.CreateFailurePopup = failurePopupFunction
    BaseEditMode.ShowCommitFailReasons = failureReasonsFunction
    BaseEditMode.ShowCommitFailReasonsAtPos = failureReasonsAtPosFunction
    BaseEditMode.ShowCommitFailReason = failReasonFunction
    CameraUtils.IsPosInVoxelBounds = isPosInVoxelBoundsFunction
    --debug.RegisterShellCommand = registerShellCommandFunction

    logger:Info("AddContentToCall Finished!")
end

function _NLDatabase.Init()
    logger:Info("Initializing...")

    local forgeutils_module = tryrequire("forgeutils.ModDB")
    if forgeutils_module ~= nil then
        forgeutils_module.RegisterMod("NoLimits", 1.0)
    end

    --[[local initializeLib = package.loadlib(".\\Win64\\ovldata\\Mod_NoLimits\\NoLimitsLib", 'Initialize')
    if initializeLib == nil then
        api.debug.Error("Critical Error! Failed to load NoLimitsLib!")
        return
    end

    logger:Info("Calling NoLimitsLib Initialize")
    initializeLib()]]
end

function _NLDatabase.Setup()
    logger:Info("Setup Called")
end

function _NLDatabase.Activate()
    logger:Info("Activation Called")
end
function _NLDatabase.AddLuaComponents(_fnAdd)
    logger:Info("Adding Lua Components...")

    local tData = _NLDatabase.tComponents
    for sComponentName, tParams in pairs(tData) do
        _fnAdd(tostring(sComponentName), tParams)
    end
end

function _NLDatabase.Shutdown(self)
    logger:Info("OnWorldDeactivation()")
end

return _NLDatabase