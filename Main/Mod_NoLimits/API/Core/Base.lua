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
local pcall         = global.pcall
local rawget        = global.rawget
local type          = global.type
local string        = global.string
local next          = global.next
local rawset        = global.rawset
local database      = api.database
local debug         = api.debug
local Vector3       = require("Vector3")
local rideStoreComp = require("Components.UI.DataStore.TrackedRideDataStoreComponent")
local GameDatabase  = require("Database.GameDatabase")                  ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")    ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")        ---@type Mod_NoLimits.DebugUtils
local FuncUtils     = require("Utility.Mod_NoLimits.FuncUtils")         ---@type Mod_NoLimits.FuncUtils
local Config        = require("Database.Mod_NoLimits.Config")           ---@type Mod_NoLimits.Config
local logFactory    = require("forgeutils.logger")

local logger        = logFactory.Get("NoLimits::API::BaseAPI")

---Initialization
local tFields = {
    "Enabled",
}

local tFunctions = {
    "GetOverrides",
}

---@class Mod_NoLimits.API.Base
---
---@field Enabled boolean Whether the API is enabled
---
---@field CoreAPIName string? Name of the core API this API depends on (if any)
---@field WorldAPIName string? Name of the world API this API depends on (if any)
---
---@field Debug_DumpAPI boolean Whether to dump the API entries to the log for debugging
---
---@field Logger any Logger element for this API
---
---@field Raw table The raw original API methods
---@field Target any The target API instance
---@field UserDataRef userdata? Reference to the UserData of the target API (if any)
---@field private _Resolved boolean[] Func resolution type
local NLBaseAPI = {}

NLBaseAPI.Enabled = false
NLBaseAPI.CoreAPIName = nil
NLBaseAPI.WorldAPIName = nil
NLBaseAPI.Debug_DumpAPI = false

NLBaseAPI.Logger = {}

NLBaseAPI.Raw = nil
NLBaseAPI.Target = nil
NLBaseAPI.UserDataRef = nil
NLBaseAPI._Resolved = nil

---@param apiProvider any The API provider instance (core or world)
---@return Mod_NoLimits.API.Entry[] Entries A list of API entries to override
function NLBaseAPI.GetOverrides(apiProvider)
    logger:Info("BaseAPI.GetOverrides is abstract and must be overridden")
    return {}
end

---Hooks the core API instance if relevant for this API
---@param coreAPI Api The core API instance
function NLBaseAPI:OverrideCoreAPI(coreAPI)
    if self.Raw ~= nil or self.CoreAPIName == nil then
        return
    end

    self:ApplyAPI(coreAPI, self.CoreAPIName)
end

---Hooks the world API instance if relevant for this API
---@param worldAPI WorldAPIs The world API instance
function NLBaseAPI:OverrideWorldAPI(worldAPI)
    if self.Raw ~= nil or self.WorldAPIName == nil then
        return
    end

    self:ApplyAPI(worldAPI, self.WorldAPIName)
end

---Reverts any changes made to the API instance (if any)
function NLBaseAPI:RevokeAPI()
    if self.Raw == nil then
        return
    end

    if self.Target == nil then
        self.Logger:Error("Target API instance is nil, cannot revert")
        return
    end

    local c = 0
    for name, hadResolved in pairs(self._Resolved) do
        if hadResolved then
            rawset(self.Target, name, self.Raw[name])
        else
            rawset(self.Target, name, nil)
        end

        c = c + 1
    end

    self.Logger:Info("Reverted " .. tostring(c) .. " API entries")
    self.Raw = nil
    self.Target = nil
    self._Resolved = nil
    self.UserDataRef = nil
end

---Creates a new API instance
---@param name string Name of the new API instance (for debugging)
---@return Mod_NoLimits.API.Base api A new API instance
function NLBaseAPI.NewAPI(name)
    debug.Assert(type(name) == "string", "NewChild requires a name string")

    local child = {}
    setmetatable(child, { __index = NLBaseAPI, __name = name })

    child.Logger = logFactory.Get("NoLimits::API::" .. name)
    return child --[[@as Mod_NoLimits.API.Base]]
end

function NLBaseAPI.Validate(child)
    name = getmetatable(child).__name

    debug.Assert(type(child) == "table", "[" .. name .. "] not a table")

    for _, k in ipairs(tFields) do
        local v = rawget(child, k)
        debug.Assert(v ~= nil, "[" .. name .. "] must implement " .. tostring(k) .. " (currently nil)")
        debug.Assert(type(v) == type(NLBaseAPI[k]), "[" .. name .. "]." .. tostring(k) .. " must be a " ..
            tostring(type(NLBaseAPI[k])) .. " (currently a " .. tostring(type(v)) .. ")")
    end

    for _, k in ipairs(tFunctions) do
        local f = rawget(child, k)
        debug.Assert(type(f) == "function", "[" .. name .. "] must implement " .. tostring(k) .. "()")
        debug.Assert(f ~= NLBaseAPI[k], "[" .. name .. "] must override " .. tostring(k) .. "() (still using BaseAPI’s abstract)")
    end

    debug.Assert(child.CoreAPIName ~= nil or child.WorldAPIName ~= nil, "[" .. name .. "] must implement at least one of CoreAPIName, WorldAPIName or GetOverrides()")

    if child.Debug_DumpAPI == true then
        child.Logger.levelOverride = "DEBUG_QUERY"
        logger:Info("Enabling DEBUG_QUERY logging for API")
    else
        child.Logger.levelOverride = "INFO"
    end

    return child
end

---@private
function NLBaseAPI:ApplyAPI(apiProvider, targetName)
    if self.Logger == nil then
       logger:Error("Logger not initialized for API " .. targetName)
       return
    end

    local targetAPI = self.GetAPIFrom(apiProvider, targetName)
    if targetAPI == nil then
        self.Logger:Error("Failed to find target API for " .. targetName)
        return
    end

    self:ObtainUserDataReference(targetAPI)

    local entries = self.GetOverrides(apiProvider)
    if entries == nil then
        self.Logger:Info("No API entries to apply for " .. targetName)
        return
    end

    self.Target = targetAPI
    self.Raw = {}
    self._Resolved = {}

    local c = 0
    for _, entry in ipairs(entries) do
        if entry == nil then
            self.Logger:Error("Null API entry found in overrides for " .. targetName)
            goto continue
        end

        if entry:IsValid() == false then
            goto continue
        end

        local orig, had = FuncUtils.ResolveFunction(targetAPI, entry.Name)

        if orig == nil then
            self.Logger:Error("Failed to find entry for " .. tostring(entry.Name))
        elseif type(orig) ~= "function" then
            self.Logger:Error("Entry for " .. tostring(entry.Name) .. " is not a function, got " .. type(orig))
            orig = nil
        elseif self.Debug_DumpAPI then
            self.Logger:Info("Resolved original function for " .. tostring(entry.Name))
        end

        self.Raw[entry.Name] = orig
        self._Resolved[entry.Name] = had

        if entry:IsEnabled() == false then
            goto continue
        end

        local func = entry:Construct(self, self.Logger, self.Debug_DumpAPI)
        if func == nil then
            self.Logger:Error("Failed to construct API entry for " .. tostring(entry.Name))
            goto continue
        end

        rawset(targetAPI, entry.Name, func)
        c = c + 1

        if self.Debug_DumpAPI then
            self.Logger:Info("Hooked API Entry: " .. tostring(entry.Name))
        end

        ::continue::
    end

    self.Logger:Info("Applied " .. tostring(c) .. " API entries to " .. targetName)

    if self.Debug_DumpAPI then
        DebugUtils.LogTable( "TargetAPI_" .. targetName, targetAPI)
    end

    return
end


---@private
function NLBaseAPI.GetAPIFrom(apiProvider, targetName)
    if targetName == nil then
        return nil
    end

    local targetApi = apiProvider[targetName]
    if targetApi == nil then
        logger:Error("Target API '" .. targetName .. "' not found in provided API instance")
        return nil
    end

    return targetApi
end

---@private
function NLBaseAPI:ObtainUserDataReference(targetAPI)
    self.UserDataRef = nil

    if targetAPI == nil then
        return
    end

    if type(targetAPI) ~= "table" then
        self.Logger:Error("Target API is not a table, got " .. type(targetAPI))
        return
    end

    local cheese = setmetatable({}, targetAPI)
    self.Logger:DebugQuery("Attempting to obtain userdata reference: " .. tostring(cheese))

    local cheeseTable = getmetatable(cheese)
    if type(cheeseTable) ~= "table" then
        self.Logger:Error("Metatable is not a table, got " .. type(cheeseTable))
        return
    end

    local getUserdataFromAPI = function(t)
        for k, v in pairs(t) do
            if type(k) == "userdata" then
                if type(v) == "boolean" then
                    return k
                end

                logger:Info("Found userdata key in API table but value is not boolean, got " .. type(v) .. " for key " .. tostring(k) .. " - " .. tostring(v))
            end
        end

        return nil
    end

    if cheeseTable.__index ~= nil then
        self.UserDataRef = getUserdataFromAPI(cheeseTable.__index)

        if self.UserDataRef ~= nil then
            self.Logger:Info("Successfully obtained userdata ref [__INDEX] - " .. type(self.UserDataRef) .. " / " .. tostring(self.UserDataRef))
            return
        end
    end

    self.UserDataRef = getUserdataFromAPI(cheeseTable)
    if self.UserDataRef ~= nil then
        self.Logger:Info("Successfully obtained userdata ref [BASE] - " .. type(self.UserDataRef) .. " / " .. tostring(self.UserDataRef))
        return
    end

    self.Logger:Warn("Failed to obtain userdata ref!")
    --DebugUtils.LogMetatable("User Data Failure Table", cheese, true)
    --DebugUtils.LogMetatable("User Data Failure Meta", cheeseTable, true)

    return
end

return NLBaseAPI