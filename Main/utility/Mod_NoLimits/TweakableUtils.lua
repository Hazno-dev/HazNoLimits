local global        = _G
local api           = global.api                                    ---@type Api
local type          = global.type
local table         = global.table
local tostring      = global.tostring
local ipairs        = global.ipairs
local database      = api.database
local debug         = api.debug
local mathUtil      = require("Common.MathUtils")
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils

local logger        = require("forgeutils.logger").Get("NoLimits::TweakableUtils")

---@class Mod_NoLimits.TweakableUtils
local NLTweakableUtils = {}

--- Enable debug logging for tweakable queries
---@type boolean
NLTweakableUtils.DebugQueries = false

function NLTweakableUtils.SetTweakableBool(name, boolValue)
    ---@diagnostic disable-next-line: undefined-field
    local tweakable = NLTweakableUtils.GetTweakable(api.debug.Tweakable_Bool, name, boolValue)
    logger:Info("Got tweakable float: " .. tostring(name))
    tweakable:SetValue(boolValue)

    if NLTweakableUtils.DebugQueries then
        DebugUtils.LogTable(name, tweakable)
    end
end

---Mutate a tweakable value to be within the specified bounds
---@param name string The name of the tweakable
---@param ... any The value to set
function NLTweakableUtils.SetTweakableFloat(name, ...)
    ---@diagnostic disable-next-line: undefined-field
    local tweakable = NLTweakableUtils.GetTweakable(api.debug.Tweakable_Float, name, ...)
    logger:Info("Got tweakable float: " .. tostring(name))
    tweakable:SetValue(...)

    if NLTweakableUtils.DebugQueries then
        DebugUtils.LogTable(name, tweakable)
    end
end

function NLTweakableUtils.SetTweakableInt32(name, ...)
    ---@diagnostic disable-next-line: undefined-field
    local tweakable = NLTweakableUtils.GetTweakable(api.debug.Tweakable_Int32, name, ...)
    logger:Info("Got tweakable int32: " .. tostring(name))
    tweakable:SetValue(...)

    if NLTweakableUtils.DebugQueries then
        DebugUtils.LogTable(name, tweakable)
    end
end

function NLTweakableUtils.SetTweakableUInt32(name, ...)
    ---@diagnostic disable-next-line: undefined-field
    local tweakable = NLTweakableUtils.GetTweakable(api.debug.Tweakable_UInt32, name, ...)
    logger:Info("Got tweakable uint32: " .. tostring(name))
    tweakable:SetValue(...)
    DebugUtils.LogTable(name, tweakable)
end

function NLTweakableUtils.SetTweakableInt64(name, ...)
    ---@diagnostic disable-next-line: undefined-field
    local tweakable = NLTweakableUtils.GetTweakable(api.debug.Tweakable_Int64, name, ...)
    logger:Info("Got tweakable int64: " .. tostring(name))
    tweakable:SetValue(...)

    if NLTweakableUtils.DebugQueries then
        DebugUtils.LogTable(name, tweakable)
    end
end

function NLTweakableUtils.SetTweakableUInt64(name, ...)
    ---@diagnostic disable-next-line: undefined-field
    local tweakable = NLTweakableUtils.GetTweakable(api.debug.Tweakable_UInt64, name, ...)
    logger:Info("Got tweakable uint64: " .. tostring(name))
    tweakable:SetValue(...)

    if NLTweakableUtils.DebugQueries then
        DebugUtils.LogTable(name, tweakable)
    end
end

function NLTweakableUtils.SetTweakableVector1(name, ...)
    ---@diagnostic disable-next-line: undefined-field
    local tweakable = NLTweakableUtils.GetTweakable(api.debug.Tweakable_fVector1, name, ...)
    logger:Info("Got tweakable vector1: " .. tostring(name))
    tweakable:SetValue(...)

    if NLTweakableUtils.DebugQueries then
        DebugUtils.LogTable(name, tweakable)
    end
end

function NLTweakableUtils.GetTweakable(name, tweakableType, ...)
    ---@diagnostic disable-next-line: undefined-field
    local tweakable = api.debug.GetDebugTweakable(name)

    if tweakable == nil then
        tweakable = api.debug.CreateDebugTweakable(tweakableType, name, ...)
    end

    logger:Info("Got tweakable: " .. tostring(name))
    return tweakable
end

return NLTweakableUtils