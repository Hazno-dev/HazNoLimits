local global        = _G
local api           = global.api                                                ---@type Api
local type          = global.type
local table         = global.table
local next          = global.next
local tostring      = global.tostring
local pairs         = global.pairs
local ipairs        = global.ipairs
local unpack        = global.unpack
local setmetatable  = global.setmetatable
local rawequal      = global.rawequal
local database      = api.database
local debug         = api.debug
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@class (partial) Mod_NoLimits.DebugUtils

local logger        = require("forgeutils.logger").Get("NoLimits::API::APIEntry")

---@class Mod_NoLimits.API.Entry
---@field Name string The name of the function to override
---@field private _Params string[]|nil The parameter names of the function to override
---@field private _Outputs string[]|nil The output names of the function to override
---@field private _Enabled boolean Whether this entry is enabled or not
---@field private _CallOriginal boolean Whether to call the original function or not
---@field private _CallDelegate fun(rawApi:any, ...: any): any|nil A delegate function to call
---@field private _LogCall boolean Whether to log when the function is called
---@field private _LogInputs boolean Whether to log the input parameters when the function is called
---@field private _LogOutputs boolean Whether to log the output parameters when the function returns
---@field private _ReturnValue table|nil A table of return values to override the original function
local NLAPIEntry = {}

NLAPIEntry.Returns = NLAPIEntry.Returns or {
    NIL    = setmetatable({}, { __tostring = function() return "<NL_NIL>" end }),
    IGNORE = setmetatable({}, { __tostring = function() return "<NL_IGNORE>" end }),
}

local NIL, IGNORE = NLAPIEntry.Returns.NIL, NLAPIEntry.Returns.IGNORE

NLAPIEntry.Name = nil

NLAPIEntry._Params = nil
NLAPIEntry._Outputs = nil
NLAPIEntry._Enabled = true

NLAPIEntry._CallOriginal = false
NLAPIEntry._CallDelegate = nil

NLAPIEntry._LogCall = false
NLAPIEntry._LogInputs = false
NLAPIEntry._LogOutputs = false

NLAPIEntry._ReturnValue = nil

NLAPIEntry._DeepDebug = false

---Creates a new API Entry
---@param name string The name of the function to override
---@param params string[]|nil A list of parameter names for the function to override (for logging purposes)
---@param outputs string[]|nil A list of output names for the function to override (for logging purposes)
---@return Mod_NoLimits.API.Entry Entry A new API Entry instance
function NLAPIEntry.NewEntry(name, params, outputs)
    debug.Assert(type(name) == "string", "NewEntry requires a function name")

    local newEntry = {}
    setmetatable(newEntry, { __index = NLAPIEntry, __name = name })
    newEntry.Name = name
    newEntry._Params = params
    newEntry._Outputs = outputs
    return newEntry --[[@as Mod_NoLimits.API.Entry]]
end

---Determine if this entry is valid
---@return boolean result True if the entry is valid
function NLAPIEntry:IsValid()
    if self.Name == nil or type(self.Name) ~= "string" then
        logger:Error("Attempted to validate an API Entry with no name or invalid name type!")
        return false
    end

    return true
end

---Determine if this entry is capable of being constructed
---@return boolean result True if the entry is enabled, false otherwise
function NLAPIEntry:IsEnabled()
    return self._Enabled
end

---Enables this entry, allowing it to be constructed (Default)
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:Enable() self._Enabled = true return self end

---Disables this entry, preventing it from hooking the API
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:Disable() self._Enabled = false return self end

---Sets whether this entry is enabled or not
---@param enabled boolean Whether to enable or disable this entry
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:SetEnabled(enabled) self._Enabled = enabled return self end


---Quick method to enable full logging (call, inputs, outputs)
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:AsListener() return self:WithLogInputs():WithLogOutputs():WithCallOriginal() end

---Quick method to enable light logging (call, inputs)
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:AsLightListener() return self:WithLogInputs():WithCallOriginal() end

---Implmements the original function
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:WithCallOriginal() self._CallOriginal = true self._CallDelegate = nil return self end

---Implements a delegate function instead of the original function
---The delegate function will be called with the same parameters as the original function
---The delegate function's return values will be used as the return values of the overridden function
---@param delegate fun(rawApi:any, ...: any): any A delegate function to call instead of the original function
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:WithCallDelegate(delegate) self._CallOriginal = false self._CallDelegate = delegate return self end

---Logs when the function is called
---Overriden by WithLogInputs if both are set
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:WithLogCall() self._LogCall = true return self end

---Logs the calling input parameters
---If the entry has params provided, and the first param is "self", it will skip logging the first parameter
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:WithLogInputs() self._LogInputs = true return self end

---Logs the output from impl
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:WithLogOutputs() self._LogOutputs = true return self end

---Enables deep debug logging for this API entry
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:WithDeepDebug() self._DeepDebug = true return self end

---Sets return values to empty, effectively making the function return nothing
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:WithReturnEmpty() self._ReturnValue = nil return self end

---Sets return values to override return values
---@param values table? A table of return values used to override the return values, applied by index.
--- Example: { [1] = 42, [3] = function(origValue, allValues) return origValue * 2 end }
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:WithReturnValuesTable(values) self._ReturnValue = values return self end

---Sets return values to override return values
---@param ... any Arguments used to override the return values, applied by index.
--- Example: 42, NLAPIEntry.Returns.IGNORE, function(origValue, allValues) return origValue * 2 end
---@see NLAPIEntry.Returns
---@return Mod_NoLimits.API.Entry Entry Self reference for chaining
function NLAPIEntry:WithReturnValues(...)
    local args = table.pack(...)
    local t = {}
    for i = 1, args.n do
        local v = args[i]
        if rawequal(v, NIL) then
            t[i] = NIL
        elseif not rawequal(v, IGNORE) then
            t[i] = v
        end
    end

    self._ReturnValue = t
    return self
end

---Constructs the actual function to override the original function with
---@param baseApi Mod_NoLimits.API.Base The API hooking instance
---@param loggerElement any A Forge logger element to use for logging
---@param deepDebug boolean|nil Whether to log deep nested data
---@return (fun(...: any): any|nil)? ConstructedFunction The constructed function, or nil if the entry is invalid or disabled
function NLAPIEntry:Construct(baseApi, loggerElement, deepDebug)
    if not self._Enabled then
        logger:Error("Attempted to construct a disabled API Entry!")
        return nil
    end

    if self.Name == nil then
        logger:Error("Attempted to construct an API Entry with no name!")
        return nil
    end

    local logTitle = self.Name .. "()"

    deepDebug = deepDebug or self._DeepDebug

    local StepLogStart = self:GetLogStart(loggerElement, logTitle, deepDebug, baseApi)
    local StepFunction = self:GetFunction(baseApi)
    local StepLogEnd = self:GetLogEnd(loggerElement, logTitle, deepDebug)
    local DeepDbg = deepDebug and function(msg) loggerElement:Info(msg) end or function(_) end

    return function(...)
        DeepDbg("Started " .. logTitle .. "")
        StepLogStart(...)

        DeepDbg("Pre callback " .. logTitle .. "")
        local result = table.pack(StepFunction(...))

        DeepDbg("Attempting result merge " .. logTitle .. "")
        result = self.MergeReturn(result, self._ReturnValue)

        if result == nil or result.n == nil or result.n < 1 then
            return
        end

        DeepDbg("End logging " .. logTitle .. "")
        StepLogEnd(unpack(result, 1, result.n))

        DeepDbg("Returning " .. logTitle .. "")
        return unpack(result, 1, result.n)
    end
end

---@private
function NLAPIEntry:GetLogStart(loggerElement, logTitle, deepDebug, baseApi)
    if not self._LogInputs then
        if not self._LogCall then
            return function(...) return end
        end
        return function(...) loggerElement:Info(logTitle .. " called") end
    end

    local baseArg, formatter = 0, nil
    if type(self._Params) == "table" and next(self._Params) ~= nil then
        formatter = self._Params

        if self._Params[1] == "self" then
            formatter = { table.unpack(self._Params, 2) }
            baseArg = 1
        else
            formatter = self._Params
        end

        return function(...)
            local args = table.pack(...)
            if args.n > baseArg then
                DebugUtils.LogEntriesFormatted(loggerElement, logTitle .. " inputs  ", formatter, deepDebug, unpack(args, 1 + baseArg, args.n))
            else
                loggerElement:Info(logTitle .. " called    [No Inputs]")
            end
        end
    end

    return function(...)
        local args = table.pack(...)
        if baseArg == 0 and args.n > 0 and args[1] == baseApi.Target then
            baseArg = 1
        end

        if args.n > baseArg then
            DebugUtils.LogEntriesFormatted(loggerElement, logTitle .. " inputs  ", nil, deepDebug, unpack(args, 1 + baseArg, args.n))
        else
            loggerElement:Info(logTitle .. " called    [No Inputs]")
        end
    end
end

function NLAPIEntry:GetLogEnd(loggerElement, logTitle, deepDebug)
    if not self._LogOutputs then
        return function(...) return end
    end

    local formatter = nil
    if type(self._Outputs) == "table" and next(self._Outputs) ~= nil then
        formatter = self._Outputs
    end

    return function(...)
        local args = table.pack(...)
        if args.n > 0 then
            DebugUtils.LogEntriesFormatted(loggerElement, logTitle .. " outputs ", formatter, deepDebug, unpack(args, 1, args.n))
        else
            loggerElement:Info(logTitle .. " has no output.")
        end
        return
    end
end

---@param baseApi Mod_NoLimits.API.Base The API hooking instance
function NLAPIEntry:GetFunction(baseApi)
    if self._CallOriginal == false then
        if self._CallDelegate == nil then
            return function(...) return end
        end
        return function(...) return self._CallDelegate(baseApi.Raw, ...) end
    end

    return function(...)
        local originalFunction = baseApi.Raw[self.Name]
        debug.Assert(originalFunction ~= nil and type(originalFunction) == "function", self.Name .. "() does not exist or isn't a function!")
        return originalFunction(...)
    end
end

---@private
function NLAPIEntry.MergeReturn(result, overrides)
    if not overrides then return result end
    if result == nil or result.n == nil then return result end

    if type(result) ~= "table" or type(result.n) ~= "number" then
        result = { n = 0 }
    end

    local maxn = result.n
    for k, v in pairs(overrides) do
        debug.Assert(type(k) == "number" and k >= 1, "override keys must be positive integers")

        if rawequal(v, NIL) then
            result[k] = nil
        elseif type(v) == "function" then
            result[k] = v(result[k], result)
        elseif not rawequal(v, IGNORE) then
            result[k] = v
        end

        if k > maxn then
            maxn = k
        end
    end

    result.n = overrides.n or maxn
    return result
end

return NLAPIEntry