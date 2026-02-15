---@diagnostic disable: unnecessary-if, missing-fields
-----------------------------------------------------------------------
--/  @file   Database.ACSEDebugLuaDatabase.lua
--/  @author Hazno
--/
--/  @brief  Handles ACSEDebug loading and database creation
--/  @see    https://github.com/OpenNaja/ACSE
-----------------------------------------------------------------------

local global        = _G
local api           = global.api                                        ---@type Api
local table         = global.table
local tostring      = global.tostring
local loadfile      = global.loadfile
local pairs         = global.pairs
local ipairs        = global.ipairs
local math          = global.math
local tryrequire    = global.tryrequire
local getmetatable  = global.getmetatable
local setmetatable  = global.setmetatable
local rawget        = global.rawget
local database      = api.database
local debug         = api.debug
local Vector3       = require("Vector3")
local rideStoreComp = require("Components.UI.DataStore.TrackedRideDataStoreComponent")
local GameDatabase  = require("Database.GameDatabase")                                  ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")                    ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                        ---@type Mod_NoLimits.DebugUtils
local FuncUtils     = require("Utility.Mod_NoLimits.FuncUtils")                         ---@type Mod_NoLimits.FuncUtils
local Config        = require("Database.Mod_NoLimits.Config")                           ---@type Mod_NoLimits.Config
local Utils         = require("Utility.Mod_NoLimits.Utils")                             ---@type Mod_NoLimits.Utils
local logFactory    = require("forgeutils.logger")

local logger        = require("forgeutils.logger").Get("NoLimits::UI::DebugElements")

local Generic           = require("Mod_NoLimits.UI.Debug.Generic")
local Bible             = require("Mod_NoLimits.UI.Debug.Bible")
local PerformanceTests  = require("Mod_NoLimits.UI.Debug.PerformanceTests")
local SchemaDemo        = require("Mod_NoLimits.UI.Debug.SchemaDemo")
local ParticlesDemo     = require("Mod_NoLimits.UI.Debug.ParticleSystemDemo")

---@class Mod_NoLimits.UI.DebugElements
local UIElementsDebug = {}

UIElementsDebug.Elements = {
    ["Bible"] = {
        Class = Bible,
        Instance = nil,
        Enabled = false,
        OnReadyCallback = function()
            logger:Info("UIDebugElements.Bible is ready!")
        end
    },
    ["PerformanceTests"] = {
        Class = PerformanceTests,
        Instance = nil,
        Enabled = false,
        OnReadyCallback = function()
            logger:Info("UIDebugElements.PerformanceTests is ready!")
        end
    },
    ["SchemaDemo"] = {
        Class = SchemaDemo,
        Instance = nil,
        Enabled = false,
        OnReadyCallback = function()
            logger:Info("UIDebugElements.SchemaDemo is ready!")
        end
    },
    ["ParticlesDemo"] = {
        Class = ParticlesDemo,
        Instance = nil,
        Enabled = false,
        OnReadyCallback = function()
            logger:Info("UIDebugElements.ParticlesDemo is ready!")
        end
    },
    ["AnimeDemo"] = {
        Path = "coui://UIGameface/AnimeDemo.html",
        Instance = nil,
        Enabled = false,
        OnReadyCallback = function()
            logger:Info("UIDebugElements.AnimeDemo is ready!")
        end
    },
    ["FocusDemo"] = {
        Path = "coui://UIGameface/FocusDemo.html",
        Instance = nil,
        Enabled = false,
        OnReadyCallback = function()
            logger:Info("UIDebugElements.FocusDemo is ready!")
        end
    },
    ["ConstraintDemo"] = {
        Path = "coui://UIGameface/ConstraintDemo.html",
        Instance = nil,
        Enabled = false,
        OnReadyCallback = function()
            logger:Info("UIDebugElements.ConstraintDemo is ready!")
        end
    },
    ["haznocoasterinfo"] = {
        Path = "coui://UIGameface/haznocoasterinfo.html",
        Instance = nil,
        Enabled = true,
        OnReadyCallback = function()
            logger:Info("UIDebugElements.haznocoasterinfo is ready!")
        end
    },
}

function UIElementsDebug:Init()
--[[    logger:Info("UIElementsDebug:Init() Unmapping and Remapping Resources")
    local unmapped = api.ui2.AreResourcesUnmapped("UserInterfaceEssentials")
    logger:Info("UserInterfaceEssentials Unmapped: " .. tostring(unmapped))

    api.ui2.UnmapResources("UserInterfaceEssentials")

    logger:Info("Mapping HazNoUI")
    api.ui2.MapResources("HazNoUI")

    logger:Info("Mapping UserInterfaceEssentials")
    api.ui2.MapResources("UserInterfaceEssentials")]]
    api.ui2.MapResources("HazNoUI")
    for name, elementInfo in pairs(self.Elements) do
        if elementInfo.Enabled then
            if elementInfo.Path ~= nil then
                logger:Info("Initializing Debug Element From Path: " .. tostring(name))
                elementInfo.Instance = Generic:new(elementInfo.OnReadyCallback, elementInfo.Path, name)
            else
                logger:Info("Initializing Debug Element From Class: " .. tostring(name))
                elementInfo.Instance = elementInfo.Class:new(elementInfo.OnReadyCallback)
            end
        end
    end
end

return UIElementsDebug