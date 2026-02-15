---@diagnostic disable: access-invisible
---@diagnostic disable-next-line: undefined-global
-----------------------------------------------------------------------
-- @file    Components.NoLimitsGuestComponent.lua
-- @author  Inaki
--
-- @brief   ACSEDebug as a component would allow us to have the console
--          available regardless the world environment.
--
-- @see     https://github.com/OpenNaja/ACSE
-- @version 1.1
-- @require ACSE >= 0.641 to work.
--
--
-- Note: https://code.tutsplus.com/tutorials/quick-introduction-flash-text-input-and-text-area-components--active-5601
-- Note: This file has been created automatically with CobraModdingTool
-----------------------------------------------------------------------

local global        = _G

local api           = global.api
local require       = global.require
local tostring      = global.tostring
local ipairs        = global.ipairs
local pairs         = global.pairs
local string        = global.string
local tryrequire    = global.tryrequire
local coroutine     = global.coroutine
local getmetatable  = global.getmetatable
local setmetatable  = global.setmetatable
local unpack        = global.unpack
local pcall         = global.pcall
local type          = global.type
local table         = require("Common.tableplus")
local Object        = require("Common.object")
local Base          = require("LuaComponentManagerBase")
local Vector3       = require("Vector3")
local Vector2       = require("Vector2")
local Quaternion    = require("Quaternion")
local TransformQ    = require("TransformQ")
local Rotation      = require("Rotation")
local Transform     = require("Transform")
local BaseEditMode  = require("Editors.Shared.BaseEditMode")
local GameDatabase  = require("Database.GameDatabase")                  ---@class (partial) GameDatabase

local DebugUtils        = require("Utility.Mod_NoLimits.DebugUtils")                        ---@type Mod_NoLimits.DebugUtils
local MathUtils         = require("Utility.Mod_NoLimits.MathUtils")                         ---@type Mod_NoLimits.MathUtils
local GuestUtils        = require("Utility.Mod_NoLimits.GuestUtils")                        ---@type Mod_NoLimits.GuestUtils
local Utils             = require("Utility.Mod_NoLimits.Utils")                             ---@type Mod_NoLimits.Utils
local TweakableUtils    = require("Utility.Mod_NoLimits.TweakableUtils")                    ---@type Mod_NoLimits.TweakableUtils
local NlApi             = require("Mod_NoLimits.API.Core.NLAPI")                            ---@type Mod_NoLimits.API.NLAPI

local logger        = require("forgeutils.logger").Get("NoLimits::Components::GuestComponent")


---@package Components
---@class Mod_NoLimits.Components.GuestComponent
local NLGuestComponent = module(..., Object.subclass(Base))

NLGuestComponent.tAPI = {
    "Sample",
}

NLGuestComponent._tWorldAPIs = nil
NLGuestComponent.tEntities = nil
NLGuestComponent.tShellCommands = nil

--
-- @brief Called to initalize the component on environment start
-- @param _tWorldAPIs (table) table of api methods available from the current environment.
--
function NLGuestComponent.Init(self, _tWorldAPIs)
    logger:Info("Init()")

    self._tWorldAPIs = _tWorldAPIs
    self.tEntities = {}
    self.tShellCommands = {}
    NlApi.GuestComponent = self
end

--
-- @brief Called after Init when the world is about to load
--
function NLGuestComponent.Configure(self)
    api.debug.Trace("Configure()")
end

--
-- @brief Called to add the component to an array of entity ID with parameters
-- @param _tArrayOfEntityIDAndParams (table) list of entities spawning with this
--        component defined in their prefab
--
function NLGuestComponent.AddComponentsToEntities(self, _tArrayOfEntityIDAndParams)
    --DebugUtils.LogTable("AddComponentsToEntities()", _tArrayOfEntityIDAndParams)

    for _, tEntry in ipairs(_tArrayOfEntityIDAndParams) do
        --logger:Debug("AddComponentsToEntities() adding entity: " .. tostring(tEntry.entityID))

        self.tEntities[tEntry.entityID] = {
            Placeholder = false,
        }

        table.mergeinplace(self.tEntities[tEntry.entityID], tEntry.tParams)
    end

    return true
end

--
-- @brief Called to remove the component from an array of entities
-- @param _tEntitiesArray (table) list of entities despawning that have this
--        component defined in their prefabs.
--
function NLGuestComponent.RemoveComponentFromEntities(self, _tEntitiesArray)
    --DebugUtils.LogTable("RemoveComponentFromEntities()", _tEntitiesArray)

    for _, entityID in ipairs(_tEntitiesArray) do
        self.tEntities[entityID] = nil
    end
end

function NLGuestComponent.OnWorldActivation(self)
    logger:Info("OnWorldActivation()")
end

function NLGuestComponent.OnWorldDeactivation(self)
    logger:Info("OnWorldDeactivation()")
end

--
-- @brief This component doesn't track any entities
-- @param _nDeltaTime (number) time in milisecs since the last update, affected by
--        the current simulation speed.
-- @param _nUnscaledDeltaTime (number) time in milisecs since the last update.
--
function NLGuestComponent.Advance(self, _nDeltaTime, _nUnscaledDeltaTime)
end

--
-- @brief Called to clean up the component on environment shutdown
--
function NLGuestComponent.Shutdown(self)
    logger:Info("Shutting down")

    self.tEntities = {}
    self.tShellCommands = {}
    NlApi.GuestComponent = nil
end

function NLGuestComponent.Sample(self, entityID)
end