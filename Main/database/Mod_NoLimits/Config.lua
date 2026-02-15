local global        = _G
local api           = global.api
local type          = global.type
local table         = global.table
local loadfile      = global.loadfile
local tostring      = global.tostring
local database      = api.database
local ipairs        = global.ipairs
local string        = global.string
local tonumber      = global.tonumber

local logger        = require("forgeutils.logger").Get("NoLimits::Config")

---@class (partial) Mod_NoLimits.Config
---@field Data table
---@field private GetterCache table Cache for getter results
---@field EnsureLoaded fun():boolean Ensures the config is loaded and returns true or false
local Config = {}

local bLoaded = false

Config.Data = {}
Config.GetterCache = {}

-- Shamelessly taken partly from Kai's FreeBuild
---Loads a lua file (disguised as a .ini file) with no environment attached and is parsed to a table as output.
---@return boolean bOK Success of config loading.
---@return table env Config output from file.
---@return table error Error message if populated
local function LoadConfig()
    logger:Info("Loading Config...")

    local bOK, sMsg = false, ""
    local env = {}
    local chunk, err = loadfile("Win64\\ovldata\\Mod_NoLimits\\Config.NoLimits.ini", "t", env)

    if err then
        logger:Error("An error occured while loading config: " .. tostring(err))
        return false, env, { err, sMsg }
    end

    logger:Info(tostring(chunk))
    bOK, sMsg = global.pcall(chunk, nil)
    if bOK == false then
        logger:Error("An error occured while loading config: " .. tostring(sMsg))
    end

    return bOK, env, { err, sMsg }
end

---Merges each value from both _input and the global table together. <br/>
---This is intended as a workaround to tables from a loadfile not behaving the same as regular tables.
---<br/> Original from FreeBuild
---@param _input table Config to override with.
local function MergeConfig(_input)
    local _global = Config.Data
    for i, v in pairs(_input) do
        _global[i] = (_input[i] ~= nil and _input[i] == true)
        _global[i] = v
        logger:Info("Merging: " .. i)
    end
end

---Ensures the config is loaded, if not it attempts to load it.
---@return boolean True if loaded, false if failed.
function Config.EnsureLoaded()
    if bLoaded then
        return true
    end

    local bOK, env, err = LoadConfig()
    if not bOK then
        logger:Error("Config failed to load")
        return false
    end

    MergeConfig(env)
    bLoaded = true
    return true
end

---Checks if a value exists at the specified dot-separated path in the config table.
---@param path string Dot-separated path to check (e.g., "Data.SomeKey[1].SubKey").
---@return boolean True if the value exists, false otherwise.
function Config.Exists(path)
    local ok = Config.TryGet(path)
    return ok and true or false
end

---Gets a value from the config table using a dot-separated path, or returns a default value if not found.
---@param path string Dot-separated path to check (e.g., "Data.SomeKey[1].SubKey").
---@param default any Default value to return if the path is not found.
---@return any result The value found at the path, or the default value if not found.
function Config.Get(path, default)
    local ok, v = Config.TryGet(path)

    --logger:Debug(tostring(path) .. " Config Get Result: " .. tostring(ok))
    if not ok then
        return default
    end

    if default ~= nil and type(v) ~= type(default) then
        return default
    end

    return v
end

---Gets a list (table) from the config table using a dot-separated path, or returns an empty table if not found or not a table.
---@param path string Dot-separated path to check (e.g., "Data.SomeKey[1].SubKey").
---@return table value The table found at the path, or an empty table if not
function Config.GetList(path)
    return Config.Get(path, {})
end

---Tries to get a value from the config table using a dot-separated path.
---@param path string Dot-separated path to check (e.g., "Data.SomeKey[1].SubKey").
---@return boolean success True if the value was found, false otherwise.
---@return any value The value found at the path, or nil if not found.
function Config.TryGet(path)
    if Config.Data and path:sub(1,5) == "Data." then
        path = path:sub(6)
    end

    local getter = Config.GetGetter(path)
    return getter(Config.Data)
end


---Gets a function that retrieves a value from the config table using a dot-separated path.
---The result is cached for future calls.
---@param path string Dot-separated path to check (e.g., "Data.SomeKey[1].SubKey").
---@return fun(default:any):any A function that takes a default value and returns the value found at the path, or the default if not found.
---@private
function Config.GetGetter(path)
    if Config.GetterCache[path] then
        return Config.GetterCache[path]
    end

    local parts = Config.ParsePath(path)
    local getter = Config.MakeGetter(parts)

    Config.GetterCache[path] = getter
    return getter
end

---Creates a getter function for a given path parts.
---@param parts table The parsed parts of the path.
---@return fun(root:table): (boolean, any) A function that takes a root table and returns a boolean indicating success and the value found (or nil).
---@private
function Config.MakeGetter(parts)
    return function(root)
        local cur = root
        for i = 1, #parts do
            local p = parts[i]
            --logger:Debug("Processing part - " .. p.token)

            if type(cur) ~= "table" then return false end

            if p.key then
                cur = cur[p.key];               if cur == nil or type(cur) ~= "table" then return false end
                cur = cur[tonumber(p.idx)];     if cur == nil then return false end
            else
                cur = cur[p.token];             if cur == nil then return false end
            end
        end

        --logger:Debug("Found: " .. tostring(cur))
        return true, cur
    end
end

---Parses a dot-separated path into its components, handling array indices.
---@param path string Dot-separated path to parse (e.g., "SomeKey[1].SubKey").
---@return table parts A list of parts, where each part is a table with 'key' and optional 'idx'.
---@private
function Config.ParsePath(path)
    local parts = {}
    local i, len = 1, #path

    while i <= len do
        local j = string.find(path, '.', i, true) or (len + 1)
        local token = string.sub(path, i, j - 1)

        local key, idx = string.match(token, "^(.-)%[(%d+)%]$")
        if key then
            parts[#parts + 1] = { token = token, key = key, idx = tonumber(idx) }
        else
            parts[#parts + 1] = { token = token }
        end

        i = j + 1
    end

    return parts
end

return Config