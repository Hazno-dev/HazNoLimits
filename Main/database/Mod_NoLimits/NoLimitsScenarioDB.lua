---@diagnostic disable: undefined-field
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
local CareerUtils               = require("Helpers.CareerUtils")

local logger                    = require("forgeutils.logger").Get("NoLimits::ScenarioDatabase")

---@class (partial) NLScDatabase
---@field DBName string?
---@field PSName string?
---@field DebugQueries boolean
---@field DBFunctions table
---@field _Init fun()
---@field _PreApply fun()
---@field _Apply fun(_fnAdd:fun(...), _tLuaPrefabNames:table, _tLuaPrefabs:table)
local _NLScDatabase = {}
_NLScDatabase.logger = logger

function _NLScDatabase._Init()
    _NLScDatabase.DBName = nil
    _NLScDatabase.PSName = nil
    _NLScDatabase.DebugQueries = false
end

function _NLScDatabase._PreApply()
    logger:Info("NoLimits Scenario Database PreApply")

    _NLScDatabase.UnlockAllCareerMaps()
end

function _NLScDatabase._Apply(_fnAdd, _tLuaPrefabNames, _tLuaPrefabs)
end

function _NLScDatabase.UnlockAllCareerMaps()
    local careers = GameDatabase.GetAllCareers()

    if Config.Get("tScenario.bDumpCareerMaps", false) then
        DebugUtils.LogTable("Careers", careers)

        for k, career in pairs(careers) do
            if career == nil then
                goto continue
            end

            DebugUtils.LogTable("Career Data for " .. tostring(k), career)

            local tScenarioParkSettings = GameDatabase.TryLoadSettings(career.parkSettings)
            if tScenarioParkSettings then
                DebugUtils.LogTable("Park Settings for " .. tostring(k), tScenarioParkSettings, true)
            end

            ::continue::
        end
    end

    local scenarios = GameDatabase.GetAllScenariosInPacks()
    DebugUtils.LogTable("Scenarios in Packs", scenarios)

    local playerKey = GameDatabase.GetPlayerKey(api.player.GetGameOwner())
    local tPlayer = GameDatabase.GetPlayer(playerKey)
    local oldLevel = tPlayer:GetCareerLevel()
    logger:Info("Player level: " .. tostring(oldLevel))

    local researchPoints = tPlayer:GetGlobalCareerResearchPoints()
    logger:Info("Player research points: " .. tostring(researchPoints))

    local allprogress = tPlayer:GetAllProgress()
    DebugUtils.LogTable("Player Progress", allprogress)

    local allPackCompl = tPlayer:GetAllPackCompletion()
    DebugUtils.LogTable("Player Pack Completion", allPackCompl)

    if Config.Get("tScenario.bUnlockAllCareerMaps", false) then
        local badges = {
            [1] = true,
            [2] = true,
            [3] = true,
            [4] = true,
        }

        tPlayer:SetAllPackCompletion(allPackCompl)

        for _, scenario in ipairs(scenarios) do
            tPlayer:AddScenarioProgress(scenario, badges)
            local scenarioData = tPlayer:GetScenarioProgress(scenario)
            DebugUtils.LogTable("Scenario Data for " .. tostring(scenario), scenarioData)
        end
    end

end

_NLScDatabase.DBFunctions = {}

return _NLScDatabase