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

local GameDatabase              = require("Database.GameDatabase")                  ---@class (partial) GameDatabase
local DatabaseUtils             = require("Database.Mod_NoLimits.DatabaseUtils")    ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils                = require("Utility.Mod_NoLimits.DebugUtils")        ---@class (partial) Mod_NoLimits.DebugUtils
local TweakableUtils            = require("Utility.Mod_NoLimits.TweakableUtils")    ---@type Mod_NoLimits.TweakableUtils
local Config                    = require("Database.Mod_NoLimits.Config")           ---@class (partial) Mod_NoLimits.Config

local logger                    = require("forgeutils.logger").Get("NoLimits::CameraDatabase")

---@class (partial) NLCaDatabase
---@field DBName string?
---@field PSName string?
---@field DebugQueries boolean
---@field DBFunctions table
---@field _Init fun()
---@field _PreApply fun()
---@field _Apply fun(_fnAdd:fun(...), _tLuaPrefabNames:table, _tLuaPrefabs:table)
local _NLCaDatabase = {}
_NLCaDatabase.logger = logger

function _NLCaDatabase._Init()
    _NLCaDatabase.DBName = nil
    _NLCaDatabase.PSName = nil
    _NLCaDatabase.DebugQueries = false
end

function _NLCaDatabase._PreApply()
end

function _NLCaDatabase._Apply(_fnAdd, _tLuaPrefabNames, _tLuaPrefabs)
    if Config.Get("tCamera.bEnabled", false) == false then
        logger:Info("Camera Config is disabled/missing, skipping...")
        return
    end

    logger:Info("Applying Camera Config...")

    local removeCameraBounds = Config.Get("tCamera.bRemoveCameraBounds", false)
    TweakableUtils.SetTweakableBool("Camera.KeepInsideParkBoundary", not removeCameraBounds)
    TweakableUtils.SetTweakableBool("Camera.Limits.KeepInsideVoxelBounds", not removeCameraBounds)

    local accelMin, accelMax, accelPow = Config.Get("tCamera.tAcceleration.min", 0.5), Config.Get("tCamera.tAcceleration.max", 2.5),
        Config.Get("tCamera.tAcceleration.power", 1.0)

    if accelMin >= accelMax then
        accelMin, accelMax = 0.3, 1
        logger:Warn("Camera Acceleration min >= max, resetting to defaults: " .. tostring(accelMin) .. "/" .. tostring(accelMax))
    end

    local accelCeil = math.max(accelMax, 10)
    TweakableUtils.SetTweakableFloat("Camera.Pos.AccelerationMin", accelMin, 0, accelCeil, 0.1)
    TweakableUtils.SetTweakableFloat("Camera.Pos.AccelerationMax", accelMax, 0, accelCeil, 0.1)
    TweakableUtils.SetTweakableFloat("Camera.Pos.AccelerationPower", accelPow, 1, accelCeil, 0.1)

    local fcSpeed = Config.Get("tCamera.tFreecam.speed", 65.0)
    local fcSpeedCeil = math.max(fcSpeed, 1000)
    TweakableUtils.SetTweakableFloat("Camera.Pos.FreecamSpeed", fcSpeed, 0, fcSpeedCeil, 0.5)

    TweakableUtils.SetTweakableFloat("Camera.Visitor.Speed.Base", 80, 0.1, 100, 0.1)
    TweakableUtils.SetTweakableFloat("Camera.Visitor.DropperPathTerrainTolerance", 100, 0, 100, 0.25)

    TweakableUtils.SetTweakableBool("Camera.DebugDraw", true)
    TweakableUtils.SetTweakableBool("Render.Parameters.LiveEdit.GlobalsOverride", true)
end

_NLCaDatabase.DBFunctions = {}

return _NLCaDatabase