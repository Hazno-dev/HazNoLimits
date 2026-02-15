-----------------------------------------------------------------------
--/  @file   Database.ACSEDebugLuaDatabase.lua
--/  @author Hazno
--/
--/  @brief  Handles ACSEDebug loading and database creation
--/  @see    https://github.com/OpenNaja/ACSE
-----------------------------------------------------------------------

local global                    = _G
local api                       = global.api                            ---@type Api
local table                     = global.table
local tostring                  = global.tostring
local loadfile                  = global.loadfile
local pairs                     = global.pairs
local ipairs                    = global.ipairs
local math                      = global.math
local tryrequire                = global.tryrequire
local database                  = api.database
local Vector3                   = require("Vector3")
local VolumeEditorUIContext     = require("Components.UI.DataStore.VolumeEditorUIContext")
--local VolumeEditUIMode          = require("Editors.Volume.VolumeEditUIMode")

local GameDatabase              = require("Database.GameDatabase")                  ---@class (partial) GameDatabase
local DatabaseUtils             = require("Database.Mod_NoLimits.DatabaseUtils")    ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils                = require("Utility.Mod_NoLimits.DebugUtils")        ---@class (partial) Mod_NoLimits.DebugUtils
local TweakableUtils            = require("Utility.Mod_NoLimits.TweakableUtils")    ---@type Mod_NoLimits.TweakableUtils
local Config                    = require("Database.Mod_NoLimits.Config")           ---@class (partial) Mod_NoLimits.Config

local logger                    = require("forgeutils.logger").Get("NoLimits::VolumeDatabase")

---@class (partial) NLVDatabase
---@field DBName string?
---@field PSName string?
---@field DebugQueries boolean
---@field DBFunctions table
---@field _Init fun()
---@field _PreApply fun()
---@field _Apply fun(_fnAdd:fun(...), _tLuaPrefabNames:table, _tLuaPrefabs:table)
local _NLVDatabase = {}
_NLVDatabase.logger = logger

function _NLVDatabase._Init()
    _NLVDatabase.DBName = nil
    _NLVDatabase.PSName = nil
    _NLVDatabase.DebugQueries = false
end

function _NLVDatabase._PreApply()
end

function _NLVDatabase._Apply(_fnAdd, _tLuaPrefabNames, _tLuaPrefabs)
    if Config.Get("tVolumes.bEnabled", false) == false then
        logger:Info("Volume Config is disabled/missing, skipping...")
        return
    end

    logger:Info("Applying Volume Config...")

    local lineMin, lineMax = Config.Get("tVolumes.tLineWidth.min", 4), Config.Get("tVolumes.tLineWidth.max", 12)
    if lineMin >= lineMax then
        lineMin, lineMax = 4, 12
        logger:Warn("LineWidth min >= max, resetting to defaults: " .. tostring(lineMin) .. "/" .. tostring(lineMax))
    end

    VolumeEditorUIContext.LineWidthMin      = Config.Get("tVolumes.tLineWidth.min", 4)
    VolumeEditorUIContext.LineWidthMax      = Config.Get("tVolumes.tLineWidth.max", 12)
    logger:Info("Updated LineWidthMin/Max: " .. tostring(VolumeEditorUIContext.LineWidthMin) .. "/" .. tostring(VolumeEditorUIContext.LineWidthMax))

    local stampMin, stampMax, stampStep = Config.Get("tVolumes.tStampScale.min", 1), Config.Get("tVolumes.tStampScale.max", 3), Config.Get("tVolumes.tStampScale.step", 1)
    if stampMin >= stampMax then
        stampMin, stampMax = 1, 3
        logger:Warn("StampScale min >= max, resetting to defaults: " .. tostring(stampMin) .. "/" .. tostring(stampMax))
    end
    if stampStep <= 0 then
        stampStep = 1
        logger:Warn("StampScale step <= 0, resetting to default: " .. tostring(stampStep))
    end

    VolumeEditorUIContext.StampScaleMin     = Config.Get("tVolumes.tStampScale.min", 1)
    VolumeEditorUIContext.StampScaleMax     = Config.Get("tVolumes.tStampScale.max", 3)
    VolumeEditorUIContext.StampScaleStep    = Config.Get("tVolumes.tStampScale.step", 1)
    logger:Info("Updated StampScaleMin/Max/Step: " .. tostring(VolumeEditorUIContext.StampScaleMin) .. "/" .. tostring(VolumeEditorUIContext.StampScaleMax) .. "/" .. tostring(VolumeEditorUIContext.StampScaleStep))

    local deleteMin, deleteMax = Config.Get("tVolumes.tDeleteSize.min", 1), Config.Get("tVolumes.tDeleteSize.max", 10)
    if deleteMin >= deleteMax then
        deleteMin, deleteMax = 1, 10
        logger:Warn("DeleteSize min >= max, resetting to defaults: " .. tostring(deleteMin) .. "/" .. tostring(deleteMax))
    end

    VolumeEditorUIContext.DeleteSizeMin     = Config.Get("tVolumes.tDeleteSize.min", 1)
    VolumeEditorUIContext.DeleteSizeMax     = Config.Get("tVolumes.tDeleteSize.max", 10)
    logger:Info("Updated DeleteSizeMin/Max: " .. tostring(VolumeEditorUIContext.DeleteSizeMin) .. "/" .. tostring(VolumeEditorUIContext.DeleteSizeMax))

    local baseUiDatastoreInitDatastore = VolumeEditorUIContext.InitDatastore
    VolumeEditorUIContext.InitDatastore = function(datastoreSelf, _sPathType, _tPathTypes, _tRailingTypes, _tStampTypes,
                                         _tPathExtraTypes, _tFlexiColours)
        baseUiDatastoreInitDatastore(datastoreSelf, _sPathType, _tPathTypes, _tRailingTypes, _tStampTypes,
            _tPathExtraTypes, _tFlexiColours)
        logger:Info("Trying datastore override...")
        local context = api.ui2.GetDataStoreContext(datastoreSelf.context, "options", "width")
        api.ui2.SetDataStoreElement(context, "min", lineMin)
        api.ui2.SetDataStoreElement(context, "max", lineMax)
    end

    local drawingMode = require("Editors.Volume.VolumeDrawingMode")
    local baseDrawingInit = drawingMode.Init

    drawingMode.Init = function(drawingModeSelf, _entityID, _tInitData)
        baseDrawingInit(drawingModeSelf, _entityID, _tInitData)
        logger:Info("Drawing mode INIT!")
        TweakableUtils.SetTweakableFloat("VolumeLib.Editor.Drawing.SnappingDistance", 0.1, 0.1, 10, 0.1)
        TweakableUtils.SetTweakableFloat("VolumeLib.Editor.Drawing.TooCloseDistance", 0.01, 0.1, 10, 0.1)
    end

    local widgetMode = require("Editors.Volume.VolumeWidgetMode")
    local baseWidgetInit = widgetMode.Init

    widgetMode.Init = function(selfWidgetMode, _entityID, _tInitData)
        baseWidgetInit(selfWidgetMode, _entityID, _tInitData)
        logger:Info("Started Widget")
        TweakableUtils.SetTweakableFloat("VolumeLib.Editor.Widget.WidgetOffset", 0.001, -10, 10, 0.1)
    end

    TweakableUtils.SetTweakableFloat("VolumeLib.Editor.Gameface.PathsStandard",         1, 0,   10, 0.1)
    TweakableUtils.SetTweakableFloat("VolumeLib.Editor.Gameface.DepthPoolsShallow",     0.1, 0, 300, 0.1)
    TweakableUtils.SetTweakableFloat("VolumeLib.Editor.Gameface.DepthPoolsWading",      0.8, 0, 300, 0.1)
    TweakableUtils.SetTweakableFloat("VolumeLib.Editor.Gameface.DepthPoolsSwimming",    2, 0,   300, 0.1)
    TweakableUtils.SetTweakableFloat("VolumeLib.Editor.Gameface.DepthPoolsDiving",      200, 0, 300, 0.1)

--[[    if VolumeEditUIMode ~= nil then
        DebugUtils.LogTable("VolumeEditUIMode: ", VolumeEditUIMode)

        if VolumeEditUIMode.tEditorValues ~= nil then
            DebugUtils.LogTable("VolumeEditUIMode.tEditorValues: ", VolumeEditUIMode.tEditorValues)
            VolumeEditUIMode.tEditorValues.bShowDevTools = true
        end
    end]]
end

_NLVDatabase.DBFunctions = {}

return _NLVDatabase