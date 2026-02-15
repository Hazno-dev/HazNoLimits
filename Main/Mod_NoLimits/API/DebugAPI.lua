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

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")          ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")      ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.DebugAPI : Mod_NoLimits.API.Base
local NLDebugAPI = BaseAPI.NewAPI("DebugAPI")
local logger = NLDebugAPI.Logger

NLDebugAPI.Enabled = true
NLDebugAPI.CoreAPIName = "debug"
NLDebugAPI.WorldAPIName = nil

NLDebugAPI.Debug_DumpAPI = false

function NLDebugAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("Assert")
            :Disable(),
        APIEntry.NewEntry("Break")
            :Disable(),
        APIEntry.NewEntry("CheckAPIReference")
            :Disable(),
        APIEntry.NewEntry("ClearDrawViewMask")
            :Disable(),
        APIEntry.NewEntry("CloseLog")
            :Disable(),
        APIEntry.NewEntry("CreateDebugTweakable")
            :Disable(),
        APIEntry.NewEntry("CreateLog")
            :Disable(),
        APIEntry.NewEntry("DbgBreak")
            :Disable(),
        APIEntry.NewEntry("DrawAABB")
            :Disable(),
        APIEntry.NewEntry("DrawAxis")
            :Disable(),
        APIEntry.NewEntry("DrawAxisXYZ")
            :Disable(),
        APIEntry.NewEntry("DrawBox")
            :Disable(),
        APIEntry.NewEntry("DrawCircle")
            :Disable(),
        APIEntry.NewEntry("DrawCircle2D")
            :Disable(),
        APIEntry.NewEntry("DrawCircleSector")
            :Disable(),
        APIEntry.NewEntry("DrawCross")
            :Disable(),
        APIEntry.NewEntry("DrawCross2D")
            :Disable(),
        APIEntry.NewEntry("DrawFOVCone")
            :Disable(),
        APIEntry.NewEntry("DrawFilledAABB")
            :Disable(),
        APIEntry.NewEntry("DrawFilledArrow")
            :Disable(),
        APIEntry.NewEntry("DrawFilledBox")
            :Disable(),
        APIEntry.NewEntry("DrawFilledCircle")
            :Disable(),
        APIEntry.NewEntry("DrawFilledCircle2D")
            :Disable(),
        APIEntry.NewEntry("DrawFilledCircleSector")
            :Disable(),
        APIEntry.NewEntry("DrawFilledQuad")
            :Disable(),
        APIEntry.NewEntry("DrawFilledQuad2D")
            :Disable(),
        APIEntry.NewEntry("DrawFilledRectangle2D")
            :Disable(),
        APIEntry.NewEntry("DrawFilledTri")
            :Disable(),
        APIEntry.NewEntry("DrawGraph")
            :Disable(),
        APIEntry.NewEntry("DrawLine")
            :Disable(),
        APIEntry.NewEntry("DrawLine2D")
            :Disable(),
        APIEntry.NewEntry("DrawLineCapsule")
            :Disable(),
        APIEntry.NewEntry("DrawRectangle2D")
            :Disable(),
        APIEntry.NewEntry("DrawSphere")
            :Disable(),
        APIEntry.NewEntry("DrawText")
            :Disable(),
        APIEntry.NewEntry("DrawTextFlag")
            :Disable(),
        APIEntry.NewEntry("DrawTri")
            :Disable(),
        APIEntry.NewEntry("DumpMemoryStats")
            :Disable(),
        APIEntry.NewEntry("EndTimer")
            :Disable(),
        APIEntry.NewEntry("Error")
            :Disable(),
        APIEntry.NewEntry("FatalError")
            :Disable(),
        APIEntry.NewEntry("GetAllTextSymbols")
            :Disable(),
        APIEntry.NewEntry("GetAllValidWorlds")
            :Disable(),
        APIEntry.NewEntry("GetDebugTextScale")
            :Disable(),
        APIEntry.NewEntry("GetFilesOfType")
            :Disable(),
        APIEntry.NewEntry("GetFunctionInfo")
            :AsListener(),
        APIEntry.NewEntry("GetMostRecentlyModifiedFile")
            :Disable(),
        APIEntry.NewEntry("GetPlatformString")
            :Disable(),
        APIEntry.NewEntry("GetScaleformMemoryReport")
            :Disable(),
        APIEntry.NewEntry("GetSubFolders")
            :Disable(),
        APIEntry.NewEntry("GetSubPlatformString")
            :Disable(),
        APIEntry.NewEntry("IsDebugAllowed")
            :Disable(),
        APIEntry.NewEntry("IsMobiusAllowed")
            :WithReturnValues(true),
        APIEntry.NewEntry("IsWorldValid")
            :Disable(),
        APIEntry.NewEntry("LoadTweakablesFromFile")
            :Disable(),
        APIEntry.NewEntry("PIXCustomCounter")
            :Disable(),
        APIEntry.NewEntry("PerformResStreamReport")
            :Disable(),
        APIEntry.NewEntry("PerformResStreamSummaryReport")
            :Disable(),
        APIEntry.NewEntry("Print", {"sNotificationString", "sCentreColour", "sMessage", "sColour", "bArg5"})
            :WithCallDelegate(NLDebugAPI.Print):Disable(),
        APIEntry.NewEntry("PrintScaleformMemoryReport")
            :Disable(),
        APIEntry.NewEntry("ReadStringFromFile")
            :Disable(),
        APIEntry.NewEntry("RegisterShellCommand")
            :Disable(),
        APIEntry.NewEntry("RemoveDirectory")
            :Disable(),
        APIEntry.NewEntry("RunShellCommand")
            :AsListener(),
        APIEntry.NewEntry("SetDrawViewMask")
            :Disable(),
        APIEntry.NewEntry("SetTweakableDuringWorldActivate")
            :Disable(),
        APIEntry.NewEntry("SetZBuffered")
            :Disable(),
        APIEntry.NewEntry("StartTimer")
            :Disable(),
        APIEntry.NewEntry("Trace")
            :Disable(),
        APIEntry.NewEntry("UnregisterShellCommand")
            :AsListener(),
        APIEntry.NewEntry("Warning")
            :Disable(),
        APIEntry.NewEntry("Write")
            :AsListener(),
        APIEntry.NewEntry("WriteLine")
            :AsListener(),
        APIEntry.NewEntry("WriteLog")
            :Disable(),
        APIEntry.NewEntry("WriteStringToFile")
            :Disable(),
    }

    return tEntries
end

local filteredNotifications = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24}

function NLDebugAPI.Print(rawApi, ...)
    local args = {...}
    if args == nil or #args == 0 then
        return
    end

    local sNotificationSt = args[1]
    if sNotificationSt == nil then
        return
    end

    local typeOfNotification = type(sNotificationSt)
    if typeOfNotification == "string" then
        if sNotificationSt == "" then return end
        if sNotificationSt:find("You are in the") == 1 then return end
    elseif typeOfNotification == "number" then
        for _, v in ipairs(filteredNotifications) do
            if sNotificationSt == v then
                return
            end
        end

        sNotificationSt = args[3]
        if sNotificationSt == nil or sNotificationSt == "" then return end
    else return end

    DebugUtils.LogEntries(logger, "Print() inputs  ", false, ...)
    rawApi.Print(...)
end

return BaseAPI.Validate(NLDebugAPI)