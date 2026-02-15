local global        = _G
local api           = global.api                                                        ---@type Api
local type          = global.type
local table         = global.table
local tostring      = global.tostring
local ipairs        = global.ipairs
local string        = global.string
local database      = api.database
local BaseEditMode  = require("Editors.Shared.BaseEditMode")
local Utils         = require("Utility.Mod_NoLimits.Utils")                             ---@type Mod_NoLimits.Utils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                        ---@type Mod_NoLimits.DebugUtils

local logger        = require("forgeutils.logger").Get("NoLimits::EditorUtils")

---@class Mod_NoLimits.EditorUtils
local NLEditorUtils = {}

---Get the current editor mode name
---@param logOutput boolean? If true, will log the current mode name
---@return string? editModeName The current editor mode name, or nil if not found
function NLEditorUtils.GetCurrentModeName(logOutput)
    if Utils.WorldAPI == nil then return nil end

    local editorEntityID = BaseEditMode.GetModeHelperEntity()
    local editModeName = Utils.WorldAPI.GameModeHelperComponent:GetCurrentModeName(editorEntityID)
    if editModeName == nil then
        return nil
    end

    if logOutput == true then
        logger:Info("Current Edit Mode Name: " .. editModeName)
    end

    return editModeName
end

---Determine if the path tool is currently open in the editor
---@param editModeName string The name of the current edit mode
---@return boolean result
function NLEditorUtils.IsPathTool(editModeName)
    if string.sub(editModeName, 1, 6) ~= "Volume" then
        return false
    end

    return true
end

---Determine if the terrain tool is currently open in the editor
---@param editModeName string The name of the current edit mode
---@return boolean result
function NLEditorUtils.IsTerrainTool(editModeName)
    if string.sub(editModeName, 1, 7) ~= "Terrain" then
        return false
    end

    return true
end

---Dump the GameModeHelperComponent to the log
function NLEditorUtils.DumpHelperComponent()
    if Utils.WorldAPI == nil then return end

    local editorComp = Utils.WorldAPI.GameModeHelperComponent
    if editorComp == nil then return end

    DebugUtils.LogTable("GameModeHelperComponent", editorComp)
end

return NLEditorUtils