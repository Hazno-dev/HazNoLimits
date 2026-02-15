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
local database      = api.database
local Vector3       = require("Vector3")

local MsgNotes      = require("Mod_NoLimits.API.PackageNotes.MessagingNotes")

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")          ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")      ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.MessagingAPI : Mod_NoLimits.API.Base
local NLMessagingAPI = BaseAPI.NewAPI("MessagingAPI")
local logger = NLMessagingAPI.Logger

NLMessagingAPI.Enabled = true
NLMessagingAPI.CoreAPIName = "messaging"
NLMessagingAPI.WorldAPIName = nil

NLMessagingAPI.Debug_DumpAPI = false

function NLMessagingAPI.GetOverrides(apiProvider)
    NLMessagingAPI.RegisterAll()

    local tEntries = {
        APIEntry.NewEntry("RegisterGlobalReceiver")
            :AsListener(),
        APIEntry.NewEntry("RegisterReceiver")
            :AsListener(),
        APIEntry.NewEntry("RegisterTriggerInput")
            :AsListener(),
        APIEntry.NewEntry("RegisterTriggerOutput")
            :AsListener(),
        APIEntry.NewEntry("SubmitGlobalMessage")
            :AsListener(),
        APIEntry.NewEntry("SubmitMessage")
            :AsListener(),
        APIEntry.NewEntry("SubmitTrigger")
            :AsListener(),
        APIEntry.NewEntry("UnregisterGlobalReceiver")
            :AsListener(),
        APIEntry.NewEntry("UnregisterReceiver")
            :AsListener(),
        APIEntry.NewEntry("UnregisterTriggerInput")
            :AsListener(),
        APIEntry.NewEntry("UnregisterTriggerOutput")
            :AsListener(),
    }

    return tEntries
end

function NLMessagingAPI.Sample(rawApi) end

function NLMessagingAPI.RegisterAll()
    logger:Info("Registering all message listeners")

    local msgApi = api.messaging
    if msgApi == nil then
        logger:Warn("Messaging API is not available")
        return
    end

    local getListener = function(msgName, deepDebug)
        return function(_tMessages)
            logger:Info("Received message: " .. tostring(msgName))
            DebugUtils.LogEntries(logger, msgName, deepDebug, _tMessages)
        end
    end

    for k, v in pairs(MsgNotes.messagesTarget) do
        local listener = getListener(k, true)
        msgApi.RegisterReceiver(v, listener)

        logger:DebugQuery("Registered listener for message: " .. k .. " (" .. tostring(v) .. ")")

        ::continue::
    end

    for k, v in pairs(MsgNotes.messagingGlobal) do
        local listener = getListener(k, true)
        msgApi.RegisterGlobalReceiver(v, listener)

        logger:DebugQuery("Registered global listener for message: " .. k .. " (" .. tostring(v) .. ")")

        ::continue::
    end
end

return BaseAPI.Validate(NLMessagingAPI)