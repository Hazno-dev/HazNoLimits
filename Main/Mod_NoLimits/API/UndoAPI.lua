---@diagnostic disable: unnecessary-if
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
local tostring      = global.tostring
local database      = api.database
local time          = api.time
local nlApi         = api.nlApi
local Vector3       = require("Vector3")

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local EditorUtils   = require("Utility.Mod_NoLimits.EditorUtils")               ---@type Mod_NoLimits.EditorUtils
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")          ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")      ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.UndoAPI : Mod_NoLimits.API.Base
local NLUndoAPI = BaseAPI.NewAPI("UndoAPI")
local logger = NLUndoAPI.Logger

NLUndoAPI.Enabled = true
NLUndoAPI.CoreAPIName = "undo"
NLUndoAPI.WorldAPIName = nil

NLUndoAPI.Debug_DumpAPI = false

function NLUndoAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("AbandonPreview")
            :Disable(),
        APIEntry.NewEntry("AddChildrenToChangeList")
            :Disable(),
        APIEntry.NewEntry("AddForcedFailure")
            :Disable(),
        APIEntry.NewEntry("CanCommitPreview", {"previewToken"}, {"bCanCommit"})
            :WithLogOutputs():WithCallDelegate(NLUndoAPI.CanCommitPreview),
        APIEntry.NewEntry("CanCommitPreviewApprox", {"previewToken"}, {"bCanPlace"})
            :WithCallOriginal():WithReturnValues(true),
        APIEntry.NewEntry("CanRedo")
            :Disable(),
        APIEntry.NewEntry("CanUndo")
            :Disable(),
        APIEntry.NewEntry("CancelPreview", {"previewToken"})
            :AsListener(),
        APIEntry.NewEntry("Checkpoint", {"cArg1"})
            :AsListener(),
        APIEntry.NewEntry("ClearHistory", {"cArg1"})
            :AsListener(),
        APIEntry.NewEntry("ClearCurrentUndoStack")
            :Disable(),
        APIEntry.NewEntry("CommitPreview", {"previewToken"}, {"waitToken"})
            :AsListener(),
        APIEntry.NewEntry("CreateChangeList")
            :Disable(),
        APIEntry.NewEntry("CreateSequentialChangeList")
            :Disable(),
        APIEntry.NewEntry("GetCheckpointData")
            :AsListener(),
        APIEntry.NewEntry("GetCommitedTag")
            :Disable(),
        APIEntry.NewEntry("GetCommitFailReasons", {"previewToken", "bApproximateResults"}) --@see Api.CommitFailReason
            :Disable(),
        APIEntry.NewEntry("GetMagicTestNumber")
            :Disable(),
        APIEntry.NewEntry("GetMagicTestPreviewNumber")
            :Disable(),
        APIEntry.NewEntry("GetMostRecentOperation")
            :Disable(),
        APIEntry.NewEntry("GetUndoneCheckpointData")
            :Disable(),
        APIEntry.NewEntry("IsBusy")
            :Disable(),
        APIEntry.NewEntry("IsOperationComplete", {"waitToken"})
            :Disable(),
        APIEntry.NewEntry("IsPreviewingChangeList")
            :Disable(),
        APIEntry.NewEntry("IsOnlyTooExpensiveReason")
            :Disable(),
        APIEntry.NewEntry("MagicTestOperationAdd")
            :Disable(),
        APIEntry.NewEntry("MagicTestOperationMultiply")
            :Disable(),
        APIEntry.NewEntry("MagicTestOperationSlow")
            :Disable(),
        APIEntry.NewEntry("PreviewChangeList", {"changelist"}, {"waitToken", "previewToken"})
            :AsListener(),
        APIEntry.NewEntry("Redo")
            :Disable(),
        APIEntry.NewEntry("RestoreState")
            :Disable(),
        APIEntry.NewEntry("Undo")
            :Disable(),
    }

    return tEntries
end

function NLUndoAPI.CanCommitPreview(rawApi, previewToken)
    local result = rawApi.CanCommitPreview(previewToken)

    if result == true or previewToken == nil then
        return result
    end

    local editorMode = EditorUtils.GetCurrentModeName(true)
    if editorMode ~= nil then
        if EditorUtils.IsPathTool(editorMode) then
            local reason = rawApi.GetCommitFailReasons(previewToken, false)
            if reason == nil then
                return true
            end

            return NLUndoAPI.OverridePathTool(result, previewToken)
        elseif EditorUtils.IsTerrainTool(editorMode) then
            return true
        end
    end

    if result ~= nil then
        return true
    end

    return nil
end

local lastToken, lastTime, lastCall = nil, 0, 0

---@param result boolean The current result of CanCommitPreview
---@param previewToken number The preview token to check
function NLUndoAPI.OverridePathTool(result, previewToken)
    if not nlApi.World.volumes:GetVCPriority() then
        lastToken, lastTime, lastCall = nil, 0, 0
        logger:Info("Path commit override: No Volume Priority - Returning true")
        return true
    end

    if result == nil then
        logger:Info("Path commit override: Nil result - Returning nil")
        return nil
    end

    local t = time.GetTimeNowInSeconds()
    if previewToken == lastToken then
        lastCall = lastCall + 1
        if lastCall < 3 and t < lastTime then
            logger:Info("Path Commit Override: Returning nil - Token: " .. tostring(previewToken) .. ", Call: " .. tostring(lastCall) .. ", Time: " .. tostring(t) .. " < " .. tostring(lastTime))
            return nil
        end

        logger:Info("Path Commit Override: Returning true - Token: " .. tostring(previewToken) .. ", Call: " .. tostring(lastCall) .. ", Time: " .. tostring(t) .. " >= " .. tostring(lastTime))
        lastToken, lastTime, lastCall = nil, 0, 0
        return true
    end

    if t < lastTime then
        logger:Info("Path Commit Override: New Token, Has Less time, Returning false - Token: " .. tostring(previewToken) .. ", Call: " .. tostring(lastCall) .. ", Time: " .. tostring(t) .. " >= " .. tostring(lastTime))
        return false
    end

    logger:Info("Path Commit Override: New Token, Initialized, Returning nil - Token: " .. tostring(previewToken) .. ", Call: " .. tostring(lastCall) .. ", Time: " .. tostring(t) .. " >= " .. tostring(lastTime))
    lastToken, lastTime, lastCall = previewToken, t + 1, 0
    return nil
end

--[[local PathCommitLookup      = {}
local PathCommitExpiration  = {}
local t                     = 0.0

local function CleanupPathExpirations()
    local _cursor = nil
    local k, steps = next(PathCommitExpiration, _cursor), 4
    while k and steps > 0 do
        if (PathCommitExpiration[k] or 0) <= t then
            PathCommitLookup[k] = nil
            PathCommitExpiration[k] = nil
        end
        _cursor = k
        k = next(PathCommitExpiration, k)
        steps = steps - 1
    end
    if not k then _cursor = nil end
end

local function PathExpirationCount()
    local n = 0
    for _ in pairs(PathCommitLookup) do
        n = n + 1
        if n > 2 then break end
    end
    return n
end

---@param result boolean The current result of CanCommitPreview
---@param previewToken number The preview token to check
function NLUndoAPI.OverridePathTool(result, previewToken)
    if not NLUndoAPI.WorldAPI.volumes:GetVCPriority() then
        for k in pairs(PathCommitLookup) do
            PathCommitLookup[k] = nil
            PathCommitExpiration[k] = nil
        end

        return true
    end

    if result == true then
        CleanupPathExpirations()
        return result
    end

    t = time.GetTimeNowInSeconds()
    if PathCommitLookup[previewToken] == nil then
        CleanupPathExpirations()
        if PathExpirationCount() > 2 then
            return false
        end

        PathCommitLookup[previewToken] = 0
        PathCommitExpiration[previewToken] = t + 2.0
        CleanupPathExpirations()
        return nil
    end

    local c = PathCommitLookup[previewToken] + 1
    if c < 4 then
        PathCommitLookup[previewToken] = c;
        PathCommitExpiration[previewToken] = t + 2.0
        CleanupPathExpirations()
        return nil
    end

    PathCommitLookup[previewToken] = nil
    PathCommitExpiration[previewToken] = nil
    CleanupPathExpirations()
    return true
end]]

return BaseAPI.Validate(NLUndoAPI)