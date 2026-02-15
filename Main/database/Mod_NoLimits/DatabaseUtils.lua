local global        = _G
local api           = global.api
local type          = global.type
local table         = global.table
local tostring      = global.tostring
local database      = api.database
local ipairs        = global.ipairs
local Config        = require("database.Mod_NoLimits.Config")       ---@class (partial) Mod_NoLimits.Config

local logger = require("forgeutils.logger").Get("NoLimits::DatabaseUtils")

---@class (partial) Mod_NoLimits.DatabaseUtils
local DatabaseUtils = {}

--- Exceutes a Prepared Statement query on a database element
---@param dbElement any The database element to use.
---@param queryName string The SQL PCStatement to use to query.
---@param ...? any Parameters to pass to the SQL query.
---@return table|nil Query results
function DatabaseUtils.ExecuteQuery(dbElement, queryName, ...)
    if dbElement == nil or dbElement.DBName == nil then
        logger:Error("ExecuteQuery() - Invalid DB element provided")
        return nil
    end

    database.SetReadOnly(dbElement.DBName, false)

    local args = table.pack(...)
    local cPSInstance = database.GetPreparedStatementInstance(dbElement.DBName, queryName)
    if cPSInstance == nil then
        dbElement.logger:Error("ExecuteQuery() - Prepared Statement instance is nil for query: " .. tostring(queryName))
        database.SetReadOnly(dbElement.DBName, true)
        return nil
    end

    dbElement.logger:DebugQuery("Starting " .. dbElement.DBName .. " Query with collection ".. dbElement.PSName .. " [" .. queryName .. "]")

    if #args > 0 then
        for i, value in ipairs(args) do
            dbElement.logger:DebugQuery(" - [" .. i .. "] = " .. tostring(value))

            if value ~= nil then
                if type(value) == "boolean" then
                    value = value and 1 or 0
                end

                database.BindParameter(cPSInstance, i, value)
            end
        end
    end

    database.BindComplete(cPSInstance)
    database.Step(cPSInstance)

    local tRows = database.GetAllResults(cPSInstance, false)

    database.SetReadOnly(dbElement.DBName, true)
    return tRows or nil
end

---Binds a prepared statement to a database
---@param dbElement any The database element to use.
---@return boolean result
function DatabaseUtils.BindPreparedStatements(dbElement)
    if dbElement == nil then
        logger:Error("BindPreparedStatements() - Invalid DB element provided")
        return false
    end

    return DatabaseUtils.BindPreparedStatement(dbElement.DBName, dbElement.PSName, dbElement.logger)
end


---Binds a prepared statement to a database
---@param databaseName string?
---@param pscollectionName string?
---@return boolean result
function DatabaseUtils.BindPreparedStatement(databaseName, pscollectionName, logElement)
    if databaseName == nil or pscollectionName == nil then
        return false
    end

    logElement:DebugQuery("BindPreparedStatement()")
    local bSuccess = false

    database.SetReadOnly(databaseName, false)
    logElement:DebugQuery("Binding " .. pscollectionName .. ".pscollection to " .. databaseName)
    bSuccess = database.BindPreparedStatementCollection(databaseName, pscollectionName)
    database.SetReadOnly(databaseName, true)

    if not bSuccess then
        logElement:Error("Prepared Statement " .. pscollectionName .. " can not be bound to table " .. databaseName)
    else
        logElement:Info("Binding succeeded for " .. pscollectionName .. " to " .. databaseName)
    end

    return bSuccess
end

function DatabaseUtils.TableContains(_table, _value)
    for _, value in pairs(_table) do
        if value == _value then
            return true
        end
    end
    return false
end

function DatabaseUtils.TryMutateDatabase(f, path, dbElement)
    if f == nil or path == nil then
        return
    end

    local logElement = logger
    if dbElement ~= nil and dbElement.logger ~= nil then
        logElement = dbElement.logger
    end

    logElement:DebugQuery("Attempting to mutate database at path: " .. tostring(path))
    local value, val = Config.TryGet(path)
    if value and val ~= nil then
        logElement:DebugQuery("Mutating database at path: " .. tostring(path) .. " with value: " .. tostring(val))
        f(val)
    end
end

return DatabaseUtils