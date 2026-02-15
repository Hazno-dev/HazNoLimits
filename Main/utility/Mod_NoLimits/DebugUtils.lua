---@diagnostic disable: param-type-not-match
local global        = _G
local api           = global.api
local type          = global.type
local package       = global.package
local table         = global.table
local tostring      = global.tostring
local next          = global.next
local pairs         = global.pairs
local ipairs        = global.ipairs
local string        = global.string
local getmetatable  = global.getmetatable
local pcall         = global.pcall
local database      = api.database
local nlApi         = api.nlApi

local logger = require("forgeutils.logger").Get("NoLimits::DebugUtils")
local c_maxNoDebugDepth = 2

---@class (partial) Mod_NoLimits.DebugUtils
---@field LogEntries fun(title: string, ...: any): void Logs the parameters passed to the function as a table
---@field LogTable fun(title: string|nil, targetTable: table): void Logs the contents of a table to the logger
---@field LogTableDeep fun(title: string, targetTable: table): void Logs the contents of a table and all nested tables to the logger
local DebugUtils = {}

function DebugUtils.Trace(optionalString)
    if global.debug == nil then
        logger:Error("Global debug library is not available")
        return
    end

    local traceResult = global.debug.traceback(optionalString, 2)
    logger:Info("Stack Trace:\n" .. traceResult)
end

--- Log the parameters passed to the function as a table
---@param loggerElement any Forge logger element to use
---@param title string A title to prepend to the log
---@param deepDebug boolean|nil Whether to log deep nested data
function DebugUtils.LogEntries(loggerElement, title, deepDebug, ...)
    DebugUtils.LogEntriesFormatted(loggerElement, title, nil, deepDebug, ...)
end

--- Log the parameters passed to the function as a table
---@param loggerElement any Forge logger element to use
---@param title string A title to prepend to the log
---@param formatter table? A lookup table of param names to use instead of numeric indices
---@param deepDebug boolean|nil Whether to log deep nested data
function DebugUtils.LogEntriesFormatted(loggerElement, title, formatter, deepDebug, ...)
    local args = table.pack(...)

    if title == nil then
        return
    end

    if args == nil or args.n == 0 then
        loggerElement:Info(title)
        return
    end

    local logResult = title
    local postInfo = {}

    for i = 1, args.n do
        local paramName = formatter and formatter[i] or i

        logResult = logResult .. DebugUtils.FormatValueToString(paramName, args[i])

        local valuetype = type(args[i])
        if valuetype == "table" or valuetype == "userdata" then
            table.insert(postInfo, { title = paramName, value = args[i] })
        end
    end

    loggerElement:Info(logResult)

    for _, tbl in ipairs(postInfo) do
        local valuetype = type(tbl.value)
        if valuetype == "table" then
            DebugUtils.LogTableUnsafe(tbl.title, tbl.value, {}, deepDebug)
        elseif deepDebug and valuetype == "userdata" then
            DebugUtils.LogMetatableUnsafe(tbl.title, tbl.value)
        end
    end
end

--- Log the contents of a table to the logger
---@param targetTable table The table to log
---@param title string A title to prepend to the log
---@param deepDebug boolean|nil Whether to log deep nested data
function DebugUtils.LogTable(title, targetTable, deepDebug)
    if targetTable == nil or type(targetTable) ~= "table" then
        return
    end

    DebugUtils.LogTableUnsafe(title, targetTable, {}, deepDebug or false)
end

--- Log the contents of a table to the logger, but only to a certain depth
---@param title string A title to prepend to the log
---@param targetTable table The table to log
---@param depth number|nil The maximum depth to log, defaults to 2
function DebugUtils.LogTableUntil(title, targetTable, depth)
    if targetTable == nil or type(targetTable) ~= "table" then
        return
    end

    depth = -(depth or c_maxNoDebugDepth)

    DebugUtils.LogTableUnsafe(title, targetTable, {}, false, depth + c_maxNoDebugDepth)
end

function DebugUtils.LogTableUnsafe(title, targetTable, encountered, deepDebug, depth)
    if encountered == nil or next(encountered) == nil then
        encountered = {}
        for _, v in pairs(nlApi.World or {}) do
            encountered[v] = true
        end
    end

    depth = depth or 0

    if next(targetTable) == nil then
        if title == nil then
            logger:Info("  -  Empty Table")
        else
            logger:Info("  - " .. title .. " - Empty Table")
        end
        return
    end

    local leadingWhitespace = ""
    if title == nil then
        logger:Info("  -  Table Contents:")
    else
        logger:Info("  - " .. title .. " - Table Contents:")
        leadingWhitespace = string.match(title, "^(%s*)") or ""
    end

    local canNest = deepDebug or depth < c_maxNoDebugDepth

    for k, v in pairs(targetTable) do
        --if last 3 characters of k are "API" then skip
        local ks = tostring(k)
        local titlek = leadingWhitespace .. "    " .. ks
        local viewAPI = ks:sub(-3):lower() ~= "api" or deepDebug

        if type(k) == "table" and viewAPI and canNest then
            if encountered[v] then
                titlek = titlek .. " <KEY RECURSION DETECTED>"
            else
                encountered[v] = true
                logger:Info("  - " .. titlek .. ": " .. tostring(v))
                DebugUtils.LogTableUnsafe(titlek, k, encountered, deepDebug, depth + 1)
                logger:Info("  - " .. titlek .. " - End of table")
            end

            if type(v) ~= "table" then
                goto continue
            end
        end

        if type(v) == "table" then
            if viewAPI and canNest then
                if encountered[v] then
                    logger:Info("  - " .. titlek .. ": <RECURSION DETECTED>")
                else
                    encountered[v] = true
                    DebugUtils.LogTableUnsafe(titlek, v, encountered, deepDebug, depth + 1)
                    logger:Info("  - " .. titlek .. " - End of table")
                end
            else
                encountered[v] = true
                logger:Info("  - " .. titlek .. ": <Table>")
            end
        else
            logger:Info("  - " .. titlek .. ": " .. tostring(v))
        end

        ::continue::
    end
end

--- Log the contents of a table and all nested tables to the logger
---@param title string A title to prepend to the log
---@param targetTable table The table to log
---@param prefix string|nil Internal use only, the prefix to use for nested tables
function DebugUtils.LogTableDeep(title, targetTable, prefix)
    if targetTable == nil or type(targetTable) ~= "table" then
        return
    end

    if prefix == nil then
        prefix = "  "
    end

    logger:Info(prefix .. "[" .. title .. "] Table Contents:" .. "  (" .. tostring(type(targetTable)) .. ")")
    prefix = prefix .. " "

    for k, v in pairs(targetTable) do
        if type(v) == "table" then
            DebugUtils.LogTableDeep(k, v, prefix)
            goto continue
        end

        logger:Info(prefix .. tostring(k) .. ": " .. tostring(v))
        ::continue::
    end
end

function DebugUtils.LogMetatable(title, metatable, deepDebug)
    if type(metatable) ~= "table" and type(metatable) ~= "userdata" then
        logger:Info("[" .. title .. "] is not a table")
        return
    end

    DebugUtils.LogMetatableUnsafe(title, metatable, deepDebug)
end

function DebugUtils.LogMetatableUnsafe(title, metatable, deepDebug)
    if deepDebug == nil then
        deepDebug = false
    end

    local ok, existing = pcall(getmetatable, metatable)
    if not ok or existing == nil then
        logger:Info("  [" .. title .. "] ---------------------- No metatable"  .. "  (" .. tostring(type(metatable)) .. ")")
        return
    end

    local leadingWhitespace = ""
    if title ~= nil then
        leadingWhitespace = string.match(title, "^(%s*)") or ""
    end

    local incr = 1
    if deepDebug then
        incr = 0
    end

    if type(existing) ~= "table" then
        local existingType = type(existing)
        local existingStr = tostring(existingType)
        if existingType == "string" then
            existingStr = tostring(existing)
        end

        logger:Info("  [" .. title .. "] ---------------------- Metatable is not a table "  .. "  (" .. tostring(type(metatable)) .. ")" .. "  (" .. existingStr .. ")")


        if type(metatable) == "table" then
            if title == nil then
                logger:Info(" ---------------------- Table Contents:")
            else
                logger:Info("  [" .. title .. "] ---------------------- Table Contents:")
            end

            for k, v in pairs(metatable) do
                logger:Info(leadingWhitespace .. "  " .. tostring(k) .. ": " .. tostring(v))
            end
        end

        return
    end

    if title == nil then
        logger:Info(" ---------------------- Meta Contents:" .. "  (" .. tostring(type(metatable)) .. ")")
    else
        logger:Info("  [" .. title .. "] ---------------------- Meta Contents:" .. "  (" .. tostring(type(metatable)) .. ")")
    end


    local count = 0 --stupid hacky thing so there isnt log spam
    for k, v in pairs(existing) do
        logger:Info(leadingWhitespace .. "  " .. tostring(k) .. ": " .. tostring(v))
        count = count + incr
    end

    if existing.__index and count < 5 then
        logger:Info("  [" .. title .. "] ---------------------- Existing __index methods:")
        for k, v in pairs(existing.__index) do
            logger:Info(leadingWhitespace .. "  " .. tostring(k) .. ": " .. tostring(v))
            count = count + incr
        end

        if count > 5 then
            return
        end

        local indexok, existingIndex = pcall(getmetatable, existing.__index)
        if not indexok or existingIndex == nil then
            logger:Info("  [" .. title .. "] ---------------------- No index metatable")
            return
        end

        if type(existingIndex) ~= "table" then
            logger:Info("  [" .. title .. "] ---------------------- Index Metatable is not a table")
            return
        end

        logger:Info("  [" .. title .. "] ---------------------- Existing __index meta:")
        for k, v in pairs(existingIndex) do
            logger:Info(leadingWhitespace .. "  " .. tostring(k) .. ": " .. tostring(v))
        end
    end
end

--- Attempt to find and log an interface from the world environment
---@param interfaceName string The name of the interface to find
---@param depth number|nil The maximum depth to log, or nil to use full deep logging
---@return any foundInterface The found interface or nil if not found
function DebugUtils.DebugDumpInterface(interfaceName, depth)
    local tEnvironment = nlApi.World.environment
    if tEnvironment then
        local foundInterface = tEnvironment:RequireInterface(interfaceName)
        if foundInterface then
            logger:Info(interfaceName .. " found successfully")

            if type(foundInterface) == "table" then
                if depth == nil then
                    DebugUtils.LogTable(interfaceName, foundInterface, true)
                else
                    DebugUtils.LogTableUntil(interfaceName, foundInterface, depth)
                end
            else
                DebugUtils.LogMetatableUnsafe(interfaceName, foundInterface)
            end

            return foundInterface
        else
            logger:Info(interfaceName .. " not found :(")
        end
    end

    return nil
end

function DebugUtils.LogEntity(loggerElement, entityID)
    if entityID == nil then
        loggerElement:Info("Entity is nil")
        return
    end

    local entityApi = api.entity
    local selectEdit = nlApi.World.SelectAndEditComponent

    loggerElement:Info("Entity ID: "        .. tostring(entityID))
    loggerElement:Info("   - Name: "           .. tostring(entityApi.GetEntityName(entityID)))
    loggerElement:Info("   - Debug Name: "     .. tostring(entityApi.GetEntityDebugName(entityID)))
    loggerElement:Info("   - Path: "           .. tostring(entityApi.GetEntityPath(entityID)))
    loggerElement:Info("   - Type: "           .. tostring(selectEdit:GetTypeOfEntity(entityID)))
end

---@overload fun(targetFunction: function): void
--- Log detailed information about a function, including its upvalues
---@param name string|function The name of the function or the function itself
---@param targetFunction function? The function to log information about
function DebugUtils.LogFunctionInfo(name, targetFunction)
    if global.debug == nil then
        logger:Error("Global debug library is not available")
        return
    end

    targetFunction = targetFunction or (type(name) == "function" and name) or nil
    name = tostring(name)

    if type(targetFunction) ~= "function" then
        logger:Info("[" .. name .. "] is not a function (" .. tostring(type(targetFunction)) .. ")")
        return
    end

    local info = global.debug.getinfo(targetFunction)
    if info == nil then
        logger:Error("debug.getinfo returned nil for [" .. name .. "]")
        return
    end

    DebugUtils.LogTable(name, info)

    local level = 1
    while true do
        local str, val = global.debug.getupvalue(targetFunction, level)
        if not str then break end

        logger:Info(name .. " upvalue " .. level .. ": " .. tostring(str) .. " = " .. tostring(val))
        level = level + 1
    end
end

function DebugUtils.LogMetatableFull(name, targetObject)
    if global.debug == nil then
        logger:Error("Global debug library is not available")
        return
    end

    local meta = global.debug.getmetatable(targetObject)
    if meta == nil then
        logger:Error("debug.getmetatable returned nil for [" .. tostring(name) .. "]")
        return
    end

    DebugUtils.LogTableUntil(name, meta, 8)
end

function DebugUtils.DebugDumpRegistry()
    if global.debug == nil then
        logger:Error("Global debug library is not available")
        return
    end

    local reg = global.debug.getregistry()
    if reg == nil then
        logger:Error("debug.getregistry returned nil")
        return
    end

    for k,v in pairs(reg) do
        logger:Info("Registry Key: " .. tostring(k) .. "  Value: " .. tostring(v) .. "  (" .. tostring(type(v)) .. ")")
    end

    DebugUtils.LogTableUntil("Registry", reg, 5)
end

function DebugUtils.DebugDumpPackages()
    logger:Info("Dumping loaded packages:")

    for k,v in pairs(package.loaded) do
        local kType = type(k)
        local vType = type(v)

        if kType == "string" and string.match(string.lower(k), "nolimits") then
            goto continue
        end

        logger:Info("Loaded package: " .. tostring(k) .. "  (" .. tostring(kType) .. " / ".. tostring(vType) .. ")")

        if kType == "table" then
            DebugUtils.LogTable("   k - " .. tostring(k), k)
        elseif kType == "userdata" then
            DebugUtils.LogMetatable("   k - " .. tostring(k), k)
        end

        if vType == "table" then
            DebugUtils.LogTable("   v - " .. tostring(k), v)
        elseif vType == "userdata" then
            DebugUtils.LogMetatable("   v - " .. tostring(k), v)
        elseif vType == "function" then
            logger:Info("   v - " .. tostring(v))
        elseif vType ~= "nil" then
            logger:Info("   v - " .. tostring(v))
        end

        ::continue::
    end
end

---@private
function DebugUtils.FormatValueToString(title, value)
    if value == nil then
        return "  [" .. title .. "=<nil>]"
    end

    local argtype = type(value)
    if argtype == "string" then
        return "  [" .. title .. "=\"" .. tostring(value) .. "\"]"
    end

    if argtype ~= "table" and argtype ~= "boolean" and argtype ~= "number" then
        return "  [" .. title .. "=" .. tostring(value) .. " - (" .. tostring(argtype) .. ")]"
    end

    return "  [" .. title .. "=" .. tostring(value) .. "]"
end

return DebugUtils