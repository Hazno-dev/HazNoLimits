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
local tostring      = global.tostring
local loadfile      = global.loadfile
local pairs         = global.pairs
local ipairs        = global.ipairs
local math          = global.math
local tryrequire    = global.tryrequire
local database      = api.database
local Vector3       = require("Vector3")
local rideStoreComp = require("Components.UI.DataStore.TrackedRideDataStoreComponent")

local GameDatabase      = require("Database.GameDatabase")                  ---@class (partial) GameDatabase
local DatabaseUtils     = require("Database.Mod_NoLimits.DatabaseUtils")    ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils        = require("Utility.Mod_NoLimits.DebugUtils")        ---@class (partial) Mod_NoLimits.DebugUtils
local TweakableUtils    = require("Utility.Mod_NoLimits.TweakableUtils")    ---@type Mod_NoLimits.TweakableUtils
local Config            = require("Database.Mod_NoLimits.Config")           ---@class (partial) Mod_NoLimits.Config

local logger        = require("forgeutils.logger").Get("NoLimits::GuestDatabase")

---@class (partial) NLGDatabase
---@field DBName string?
---@field PSName string?
---@field DebugQueries boolean
---@field DBFunctions table
---@field GuestPrefab table
---@field _Init fun()
---@field _PreApply fun()
---@field _Apply fun(_fnAdd:fun(...), _tLuaPrefabNames:table, _tLuaPrefabs:table)
local _NLGDatabase  = {}
_NLGDatabase.logger = logger

function _NLGDatabase._Init()
    _NLGDatabase.DBName = nil
    _NLGDatabase.PSName = nil
    _NLGDatabase.DebugQueries = false

    _NLGDatabase.GuestPrefab = {}
end

function _NLGDatabase._PreApply()
    _NLGDatabase.GuestPrefab = api.entity.FindPrefab("Guest")
    if _NLGDatabase.GuestPrefab == nil then
        logger:Error("Guest prefab not found, cannot apply initialize NoLimits Guest Configurations")
        return
    end

    logger:Info("Found Guest Prefab.")
    --DebugUtils.LogTableDeep("Guest Prefab", _NLGDatabase.GuestPrefab)
end

function _NLGDatabase._Apply(_fnAdd, _tLuaPrefabNames, _tLuaPrefabs)
    logger:Info("Applying NoLimits Guest Configurations")

    if _NLGDatabase.GuestPrefab == nil then
        return
    end

    local ModifyPropertyDefault = function(_sProperty, _vValue)
        if _NLGDatabase.GuestPrefab.Properties == nil then
            _NLGDatabase.GuestPrefab.Properties = {}
        end

        if _NLGDatabase.GuestPrefab.Properties[_sProperty] == nil then
            logger:Warn("Property '" .. tostring(_sProperty) .. "' not found on Guest prefab, cannot modify default value")
            return
        end

        logger:Info("Modifying Guest prefab property '" .. tostring(_sProperty) .. "' to value: " .. tostring(_vValue))
        _NLGDatabase.GuestPrefab.Properties[_sProperty].Default = _vValue
    end

    ModifyPropertyDefault("MaxRideGForce", 999.0)
    ModifyPropertyDefault("MinRideIntensity", 50.0)
    ModifyPropertyDefault("MaxRideIntensity", 999.0)
    ModifyPropertyDefault("MaxRideNauseaComfortable", 50.0)
    ModifyPropertyDefault("MaxRideNauseaTolerable", 999.0)
    ModifyPropertyDefault("MaxRideQueuePatience", 999.0)
    ModifyPropertyDefault("MaxRideSpeed", 9999.0)

    _NLGDatabase.GuestPrefab.Components["NoLimitsGuestComponent"] = {
        Placeholder = true
    }

    local test = api.entity.CompilePrefab(_NLGDatabase.GuestPrefab, "Guest")
    if _NLGDatabase.DebugQueries then
        DebugUtils.LogTableDeep("Modified Guest Prefab", api.entity.FindPrefab("Guest"))
    end

    _fnAdd("Guest", test)

    if _NLGDatabase.DebugQueries then
        DebugUtils.LogTableDeep("Modified Guest Prefab post-FN", api.entity.FindPrefab("Guest"))
    end

    TweakableUtils.SetTweakableBool("Guests.ShowLogicalOnSelect", true)
    TweakableUtils.SetTweakableBool("Guests.ShowVisualOnSelect", true)
end

_NLGDatabase.DBFunctions = {}

return _NLGDatabase