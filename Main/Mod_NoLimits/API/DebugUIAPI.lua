-----------------------------------------------------------------------
--/  .API
--/  @author Hazno
--/
--/  @brief  Constructs an API hooking table
--/  @see Mod_NoLimits.API.Base
-----------------------------------------------------------------------

local global        = _G
local api           = global.api                                                ---@type Api
local table         = global.table
local pairs         = global.pairs
local ipairs        = global.ipairs
local math          = global.math
local tryrequire    = global.tryrequire
local type          = global.type
local string        = global.string
local tostring      = global.tostring
local database      = api.database
local Vector3       = require("Vector3")

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")          ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")      ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.DebugUIAPI : Mod_NoLimits.API.Base
local NLDebugUIAPI = BaseAPI.NewAPI("DebugUIAPI")
local logger = NLDebugUIAPI.Logger

NLDebugUIAPI.Enabled = true
NLDebugUIAPI.CoreAPIName = "debugui"
NLDebugUIAPI.WorldAPIName = nil

NLDebugUIAPI.Debug_DumpAPI = false

NLDebugUIAPI.Windows = {}
NLDebugUIAPI.WindowsNames = {}

function NLDebugUIAPI.GetOverrides(apiProvider)
    NLDebugUIAPI.Windows = {}
    NLDebugUIAPI.WindowsNames = {}

    local tEntries = {
        APIEntry.NewEntry("CreateFunctionWindow")
            :AsListener(),
        APIEntry.NewEntry("CreateMethodWindow", {"name", "sArg2", "sArg3", "self", "debugWindowAdvance", "debugWindowSetup"}, {"cDebugWindow"})
            :WithCallDelegate(NLDebugUIAPI.CreateMethodWindow),
        APIEntry.NewEntry("DestroyWindow")
            :AsListener(),
        APIEntry.NewEntry("ForceFocusWindow")
            :AsListener(),
        APIEntry.NewEntry("GetMainViewportPos")
            :AsListener(),
        APIEntry.NewEntry("InputUnsigned")
            :AsListener(),
        APIEntry.NewEntry("IsActive")
            :AsListener(),
        APIEntry.NewEntry("IsInNavigationMode")
            :AsListener(),
        APIEntry.NewEntry("SetActive")
            :AsListener(),
        APIEntry.NewEntry("SetWindowActive")
            :AsListener(),
    }

    return tEntries
end


function NLDebugUIAPI.CreateMethodWindow(rawApi, name, sArg2, sArg3, self, debugWindowAdvance, debugWindowSetup)
    local ret = rawApi.CreateMethodWindow(name, sArg2, sArg3, self, debugWindowAdvance, debugWindowSetup)
    NLDebugUIAPI.Windows[name] = ret
    NLDebugUIAPI.WindowsNames[ret] = name

    logger:Info("Created window " .. tostring(name))
    return ret
end

function NLDebugUIAPI.DestroyWindow(rawApi, cDebugWindow)
    local name = NLDebugUIAPI.WindowsNames[cDebugWindow]
    if name == nil then
        return rawApi.DestroyWindow(cDebugWindow)
    end

    logger:Info("Attempting to destroy window " .. tostring(name))
    NLDebugUIAPI.Windows[name] = nil
    NLDebugUIAPI.WindowsNames[cDebugWindow] = nil
    return rawApi.DestroyWindow(cDebugWindow)
end

function NLDebugUIAPI.TryShowWindow(name)
    local window = NLDebugUIAPI.Windows[name]

    if window == nil then
        logger:Warn("No window named '%s' found to show", tostring(name))
        return
    end

    logger:Info("Attempting to show window " .. tostring(name))
    window:SetActive(true)

    NLDebugUIAPI.Raw.SetActive(true)
    NLDebugUIAPI.Raw.SetWindowActive(window, true)

    logger:Info("IsActive: " .. tostring(window:IsActive()))

end

return BaseAPI.Validate(NLDebugUIAPI)