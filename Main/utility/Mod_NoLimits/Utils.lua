local global        = _G
local api           = global.api
local type          = global.type
local table         = global.table
local tostring      = global.tostring
local ipairs        = global.ipairs
local database      = api.database
local BaseEditMode  = require("Editors.Shared.BaseEditMode")

local logger        = require("forgeutils.logger").Get("NoLimits::EditorUtils")

---@class Mod_NoLimits.Utils
---@field CoreAPI Api? The core API instance
---@field WorldAPI WorldAPIs? The world API instance
local NLUtils = {}

NLUtils.CoreAPI = nil
NLUtils.WorldAPI = nil

function NLUtils._OnWorldActivation(coreAPI, worldAPI)
    NLUtils.CoreAPI = coreAPI
    NLUtils.WorldAPI = worldAPI
end

function NLUtils._OnWorldDeactivation()
    NLUtils.CoreAPI = nil
    NLUtils.WorldAPI = nil
end

return NLUtils