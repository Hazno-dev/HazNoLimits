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

local logger            = logFactory.Get("NoLimits::API::NLAPI")

local DebugAPI          = require("Mod_NoLimits.API.DebugAPI")               ---@type Mod_NoLimits.API.DebugAPI
local DebugUIAPI        = require("Mod_NoLimits.API.DebugUIAPI")             ---@type Mod_NoLimits.API.DebugUIAPI
local UndoAPI           = require("Mod_NoLimits.API.UndoAPI")                ---@type Mod_NoLimits.API.UndoAPI
local ModelAPI          = require("Mod_NoLimits.API.ModelAPI")               ---@type Mod_NoLimits.API.ModelAPI
local TrackAPI          = require("Mod_NoLimits.API.TrackAPI")               ---@type Mod_NoLimits.API.TrackAPI
local EntityAPI         = require("Mod_NoLimits.API.EntityAPI")              ---@type Mod_NoLimits.API.EntityAPI
local MessagingAPI      = require("Mod_NoLimits.API.MessagingAPI")           ---@type Mod_NoLimits.API.MessagingAPI

local GuestAPI          = require("Mod_NoLimits.API.GuestAPI")               ---@type Mod_NoLimits.API.GuestAPI
local ParkAPI           = require("Mod_NoLimits.API.ParkAPI")                ---@type Mod_NoLimits.API.ParkAPI
local SceneryAPI        = require("Mod_NoLimits.API.SceneryAPI")             ---@type Mod_NoLimits.API.SceneryAPI
local SceneryVolExtAPI  = require("Mod_NoLimits.API.SceneryVolumeExtrasAPI") ---@type Mod_NoLimits.API.SceneryVolumeExtrasAPI
local AttractionsAPI    = require("Mod_NoLimits.API.AttractionsAPI")         ---@type Mod_NoLimits.API.AttractionsAPI
local CrowdSimAPI       = require("Mod_NoLimits.API.CrowdSimulationAPI")     ---@type Mod_NoLimits.API.CrowdSimulationAPI
local VolumesAPI        = require("Mod_NoLimits.API.VolumesAPI")             ---@type Mod_NoLimits.API.VolumesAPI
local RideAPI           = require("Mod_NoLimits.API.RidesAPI")               ---@type Mod_NoLimits.API.RidesAPI
local RideStatsAPI      = require("Mod_NoLimits.API.RideStatsAPI")           ---@type Mod_NoLimits.API.RideStatsAPI
local RideStationAPI    = require("Mod_NoLimits.API.RideStationAPI")         ---@type Mod_NoLimits.API.RideStationAPI
local GameTerrainAPI    = require("Mod_NoLimits.API.GameTerrainAPI")         ---@type Mod_NoLimits.API.GameTerrainAPI
local TrackedRideDBAPI  = require("Mod_NoLimits.API.TrackedRideDatabaseAPI") ---@type Mod_NoLimits.API.TrackedRideDatabaseAPI
local TrackedRidesAPI   = require("Mod_NoLimits.API.TrackedRidesAPI")        ---@type Mod_NoLimits.API.TrackedRidesAPI

---@class Mod_NoLimits.API.NLAPI
---
---@field World any The world API table
---@field APIs Mod_NoLimits.API.Base[] List of all NLAPI components
---@field private Injected boolean Whether the API has been injected
local NLAPI = api.nlApi
local getWorldAPIs = nil

NLAPI.World = nil
NLAPI.Injected = false
NLAPI.GuestComponent = nil

NLAPI.APIs = {
    GuestAPI,
    ParkAPI,
    SceneryAPI,
    SceneryVolExtAPI,
    AttractionsAPI,
    CrowdSimAPI,
    VolumesAPI,
    RideAPI,
    RideStatsAPI,
    RideStationAPI,
    GameTerrainAPI,
    TrackedRideDBAPI,
    TrackedRidesAPI,
    UndoAPI,
    DebugAPI,
    DebugUIAPI,
    ModelAPI,
    TrackAPI,
    EntityAPI,
    MessagingAPI,
}

function NLAPI:Init()
end

function NLAPI:CreateAPI()
    if not api.nlApi then
        logger:Error("api.nlApi has been nullified somehow!")
        return false
    end

    if api.nlApi.Injected then
        logger:Info("Already injected")
        return false
    end

    logger:Info("Attempting to mutate APIs")

    api.nlApi.Injected = true

    getWorldAPIs = api.world.GetWorldAPIs
    api.world.GetWorldAPIs = function()
        local worldAPI = getWorldAPIs()
        if api.nlApi ~= nil and api.nlApi.World ~= nil then
            return worldAPI
        end

        if worldAPI == nil then
            return worldAPI
        end

        if api.nlApi == nil then
            logger:Error("api.nlApi is nil when creating WorldAPIs!")
            return worldAPI
        end

        if api.nlApi.Injected == false then
            logger:Error("api.nlApi isnt injected when creating WorldAPIs!")
            return worldAPI
        end

        api.nlApi.World = worldAPI
        NLAPI:OverrideWorldAPIs(worldAPI)
        Utils._OnWorldActivation(api, worldAPI)

        --api.debug.RunShellCommand("ScenarioEditGUI TUTB")
        --api.debug.RunShellCommand("EditGUI")

        --local nextWorldDataManager = worldAPI.environment:RequireInterface("Interfaces.INextWorldDataManager")
        --nextWorldDataManager:SetGameMode("ScenarioEdit")

        return worldAPI
    end

    NLAPI:OverrideCoreAPIs(api)
    return true
end

function NLAPI:DestroyAPI()
    if not api.nlApi then
        return false
    end

    self:RevokeAPIs()
    Utils._OnWorldDeactivation()

    self.World = nil
    api.nlApi.Injected = false

    api.world.GetWorldAPIs = getWorldAPIs
    getWorldAPIs = nil
    return true
end

---Called to initialize the Core APIs when the world is loaded
---@param coreAPI Api The core API instance
---@private
function NLAPI:OverrideCoreAPIs(coreAPI)
    logger:Info("Overriding CoreAPIs.")

    for _, nlAPI in pairs(self.APIs) do
        nlAPI:OverrideCoreAPI(coreAPI)
    end
end

---Called to initialize the World APIs when the world is loaded
---@param worldAPI WorldAPIs The world API instance
---@private
function NLAPI:OverrideWorldAPIs(worldAPI)
    logger:Info("Overriding WorldAPIs.")

    for _, nlAPI in pairs(self.APIs) do
        nlAPI:OverrideWorldAPI(worldAPI)
    end
end

---Called to revoke the APIs when the world is unloaded
---@private
function NLAPI:RevokeAPIs()
    logger:Info("Revoking APIs.")

    for _, nlAPI in pairs(self.APIs) do
        nlAPI:RevokeAPI()
    end
end

return NLAPI