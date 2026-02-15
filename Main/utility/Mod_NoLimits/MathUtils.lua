---@diagnostic disable: param-type-not-match
local global        = _G
local api           = global.api
local type          = global.type
local table         = global.table
local tostring      = global.tostring
local math          = global.math
local ipairs        = global.ipairs
local database      = api.database
local mathUtil = require("Common.MathUtils")

local logger = require("forgeutils.logger").Get("NoLimits::MathUtils")

---@class (partial) Mod_NoLimits.MathUtils
---@field Clamp fun(value:number, min:number, max:number):number Clamps a value between a minimum and maximum value
local NLMathUtils = {}

--- Clamps a value between a minimum and maximum value
---@param value number? The value to clamp
---@param min number? The minimum value
---@param max number? The maximum value
---@return number? result The clamped value
function NLMathUtils.Clamp(value, min, max)
    if value == nil or min == nil or max == nil then
        return value
    end

    return mathUtil.Clamp(value, min, max)
end

---@param value number The target number (inclusive of 0)
---@return number result Sign result
function NLMathUtils.SignPreserveZero(value)
    if (value < 0) then return -1
    elseif (value > 0) then return 1
    else return (1/value == -math.huge) and -1 or 1 end
end

function NLMathUtils.Abs(value)
    if value == nil then
        return value
    end

    return math.abs(value)
end

function NLMathUtils.DegToRad(value)
    if value == nil then
        return value
    end

    return math.rad(value)
end

function NLMathUtils.RadToDeg(value)
    if value == nil then
        return value
    end

    return math.deg(value)
end


--- Inverts the target value to match the current value's sign, if they are different
--- If they are the same sign, returns the current value
---@param currentValue number The current value
---@param targetValue number The target value
---@return number? result The inverted value
function NLMathUtils.Invert(currentValue, targetValue)
    if currentValue == nil or targetValue == nil then
        logger:Warn("Invert called with nil value(s): " .. tostring(currentValue) .. ", " .. tostring(targetValue))
        return currentValue
    end

    local absTarget = currentValue ~= 0 and NLMathUtils.Abs(targetValue) or targetValue
    local curTarget = NLMathUtils.SignPreserveZero(currentValue) * absTarget
    logger:Debug("Inverting value: " .. tostring(currentValue) .. " to " .. tostring(curTarget) .. " from target: " .. tostring(targetValue))

    if curTarget == currentValue then
        return currentValue
    end

    return curTarget
end

return NLMathUtils