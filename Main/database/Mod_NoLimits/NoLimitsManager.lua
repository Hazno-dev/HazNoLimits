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
local package       = global.package
local database      = api.database
local Vector3       = require("Vector3")
local GameDatabase  = require("Database.GameDatabase")
local DatabaseUtils = require("database.Mod_NoLimits.DatabaseUtils")        ---@class (partial) Mod_NoLimits.DatabaseUtils
local Config        = require("database.Mod_NoLimits.Config")               ---@class (partial) Mod_NoLimits.Config
local TrackDB       = require("Database.Mod_NoLimits.NoLimitsTrackDB")      ---@class (partial) NLTDatabase
local GuestDB       = require("Database.Mod_NoLimits.NoLimitsGuestDB")      ---@class (partial) NLGDatabase
local VolumeDB      = require("Database.Mod_NoLimits.NoLimitsVolumeDB")     ---@class (partial) NLVDatabase
local CameraDB      = require("Database.Mod_NoLimits.NoLimitsCameraDB")     ---@class (partial) NLCaDatabase
local ScenarioDB    = require("Database.Mod_NoLimits.NoLimitsScenarioDB")   ---@class (partial) NLScDatabase

local logger        = require("forgeutils.logger").Get("NoLimits::Manager")

---@class NoLimitsManager
local _NLManager    = {}
_NLManager.logger = logger

local function BindDatabases()
    DatabaseUtils.BindPreparedStatements(TrackDB)
    DatabaseUtils.BindPreparedStatements(GuestDB)
    DatabaseUtils.BindPreparedStatements(VolumeDB)
    DatabaseUtils.BindPreparedStatements(CameraDB)
    DatabaseUtils.BindPreparedStatements(ScenarioDB)
end

function _NLManager.Init()
    logger:Info("Initializing NoLimits Manager and databases")
    Config.EnsureLoaded()

    _NLManager.InitializeDB(TrackDB)
    _NLManager.InitializeDB(GuestDB)
    _NLManager.InitializeDB(VolumeDB)
    _NLManager.InitializeDB(CameraDB)
    _NLManager.InitializeDB(ScenarioDB)
end
function _NLManager.Setup()
    Config.EnsureLoaded()
end

function _NLManager.AddDatabaseFunctions(_tDatabaseFunctions)
    logger:Info("Adding database functions")

    for sMethod, fnMethod in pairs(TrackDB.DBFunctions) do
        _tDatabaseFunctions[sMethod] = fnMethod
    end

    for sMethod, fnMethod in pairs(GuestDB.DBFunctions) do
        _tDatabaseFunctions[sMethod] = fnMethod
    end

    for sMethod, fnMethod in pairs(VolumeDB.DBFunctions) do
        _tDatabaseFunctions[sMethod] = fnMethod
    end

    for sMethod, fnMethod in pairs(CameraDB.DBFunctions) do
        _tDatabaseFunctions[sMethod] = fnMethod
    end

    for sMethod, fnMethod in pairs(ScenarioDB.DBFunctions) do
        _tDatabaseFunctions[sMethod] = fnMethod
    end
end

function _NLManager.PreBuildPrefabs(_fnAdd, _tLuaPrefabNames, _tLuaPrefabs)
    if Config.EnsureLoaded() == false then
        logger:Error("Config not loaded, cannot add NoLimits prefabs")
        return
    end

    BindDatabases()

    TrackDB._PreApply()
    TrackDB._Apply(_fnAdd, _tLuaPrefabNames, _tLuaPrefabs)

    GuestDB._PreApply()
    GuestDB._Apply(_fnAdd, _tLuaPrefabNames, _tLuaPrefabs)

    VolumeDB._PreApply()
    VolumeDB._Apply(_fnAdd, _tLuaPrefabNames, _tLuaPrefabs)

    CameraDB._PreApply()
    CameraDB._Apply(_fnAdd, _tLuaPrefabNames, _tLuaPrefabs)

    ScenarioDB._PreApply()
    ScenarioDB._Apply(_fnAdd, _tLuaPrefabNames, _tLuaPrefabs)
end

---@private
function _NLManager.InitializeDB(targetDB)
    if targetDB == nil then
        logger:Error("Target database is nil, cannot initialize")
        return
    end

    targetDB._Init()
    _NLManager.VerifyLoggerLevel(targetDB)
end

function _NLManager.VerifyLoggerLevel(targetDB)
    if targetDB.logger ~= nil then
        if targetDB.DebugQueries == true then
            targetDB.logger.levelOverride = "DEBUG_QUERY"
            logger:Info("Enabling DEBUG_QUERY logging for database")
        else
            targetDB.logger.levelOverride = "INFO"
        end
    else
        logger:Error("A database logger is nil!")
    end
end

return _NLManager