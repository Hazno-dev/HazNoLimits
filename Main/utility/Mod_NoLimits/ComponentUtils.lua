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
local pcall         = global.pcall
local database      = api.database
local mathUtil      = require("Common.MathUtils")

local logger        = require("forgeutils.logger").Get("NoLimits::ComponentUtils")

---@class Mod_NoLimits.ComponentUtils
local NLComponentUtils = {}

---Gets the component IDs for the given component names.
---@param idNames string[] Component names to look up.
---@return table<string, number> result A table mapping component names to their IDs.
function NLComponentUtils.GetComponentIDs(idNames)
    local ids = {}
    for _, idName in ipairs(idNames) do
        if type(idName) ~= "string" then
            logger:Warn("GetComponentIDs: Ignoring non-string idName: " .. tostring(idName))
            goto continue
        end

        local compID = api.componentmanager.LookupComponentManagerID(idName)
        if compID == nil then
            logger:Warn("GetComponentIDs: Could not find component ID for: " .. tostring(idName))
            goto continue
        end

        ids[idName] = compID

        ::continue::
    end

    return ids
end

---Gets the component IDs for the given component names.
---@param ... string|string[] Component names to look up.
---@return table<string, number> result A table mapping component names to their IDs.
function NLComponentUtils.GetComponentIDsArgs(...)
    local idNames = {}
    local args = {...}

    local function PopulateFromTable(t)
        for _, v in ipairs(t) do
            local vType = type(v)

            if vType == "string" then
                table.insert(idNames, v)
            elseif vType == "table" then
                PopulateFromTable(v)
            else
                logger:Warn("GetComponentIDsArgs: Ignoring non-string, non-table argument: " .. tostring(v))
            end
        end
    end

    PopulateFromTable(args)
    return NLComponentUtils.GetComponentIDs(idNames)
end

return NLComponentUtils