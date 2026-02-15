local global        = _G
local api           = global.api
local type          = global.type
local table         = global.table
local tostring      = global.tostring
local ipairs        = global.ipairs
local pairs         = global.pairs
local rawget        = global.rawget
local rawset        = global.rawset
local getmetatable  = global.getmetatable
local setmetatable  = global.setmetatable
local pcall         = global.pcall
local database      = api.database
local mathUtil = require("Common.MathUtils")

local logger        = require("forgeutils.logger").Get("NoLimits::FuncUtils")

---@class (partial) Mod_NoLimits.FuncUtils
local NLFuncUtils = {}

function NLFuncUtils.ResolveFunction(owner, name)
    local orig = rawget(owner, name)
    if orig ~= nil then return orig, true end

    local ok, res = pcall(function() return owner[name] end)
    if ok then return res, false end

    return nil, false

--[[    local mt  = getmetatable(owner)
    local idx = mt and mt.__index

    if      type(idx) == "table"        then orig = rawget(idx, name)
    elseif  type(idx) == "function"     then orig = idx(owner, name) end

    return orig, false]]
end

function NLFuncUtils.OverloadType()
    local fns = {}
    local mt = {}

    local function oerror()
        return logger:Error("Invalid argument types to overloaded function")
    end

    function mt:__call(...)
        local arg = {...}
        local default = self.default

        local signature = {}
        for i,arg in ipairs {...} do
            signature[i] = type(arg)
        end

        signature = table.concat(signature, ",")

        return (fns[signature] or self.default)(...)
    end

    function mt:__index(key)
        local signature = {}
        local function __newindex(self, key, value)
            logger:Info(key, type(key), value, type(value))
            signature[#signature+1] = key
            fns[table.concat(signature, ",")] = value
            logger:Info("bind", table.concat(signature, ", "))
        end
        local function __index(self, key)
            logger:Info("I", key, type(key))
            signature[#signature+1] = key
            return setmetatable({}, { __index = __index, __newindex = __newindex })
        end
        return __index(self, key)
    end

    function mt:__newindex(key, value)
        fns[key] = value
    end

    return setmetatable({ default = oerror }, mt)
end

return NLFuncUtils