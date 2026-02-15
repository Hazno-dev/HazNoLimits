---@diagnostic disable: undefined-field, need-check-nil, inject-field
local global = _G
local api = global.api ---@type Api
local tostring = global.tostring
local require = global.require
local module = global.module

local Object = require("Common.object")
local GamefaceUIWrapper = require("UI.GamefaceUIWrapper")

local GenericDebug = module(..., Object.subclass(GamefaceUIWrapper))
local ObjectNew = GenericDebug.new

GenericDebug.new = function(self, _fnOnReadyCallback, viewAddr, viewName)
	api.debug.Trace(viewName .. ".New()")
	local oNewImporterUI = ObjectNew(GenericDebug)
	oNewImporterUI.customViewName = viewName
	local tInitSettings = {
		sViewName = viewName,
		sViewAddress = viewAddr,
		bStartEnabled = true,
		fnOnReadyCallback = _fnOnReadyCallback,
		nViewDepth = 0,
		nViewWidth = 1920,
		nViewHeight = 1080,
		bRegisterWrapper = true,
	}
	oNewImporterUI:Init(tInitSettings)
	return oNewImporterUI
end

GenericDebug.Show = function(self)
	api.debug.Trace(tostring(self.customViewName) .. ".Show()")
	self:TriggerEventAtNextAdvance("Show")
end

GenericDebug.Hide = function(self)
	api.debug.Trace(tostring(self.customViewName) .. ".Hide()")
	self:TriggerEventAtNextAdvance("Hide")
end

GenericDebug.redraw = function(self)
	api.debug.Trace(tostring(self.customViewName) .. ".redraw()")
	self:TriggerEventAtNextAdvance("redraw")
end

---@param toggledIndex integer
GenericDebug.onUIAccentColorChange = function(self, toggledIndex)
	api.debug.Trace(tostring(self.customViewName) .. ".onUIAccentColorChange()")
	self:TriggerEventAtNextAdvance("onUIAccentColorChange", toggledIndex)
end

---@param toggledIndex integer
GenericDebug.onUIThemeColorChange = function(self, toggledIndex)
	api.debug.Trace(tostring(self.customViewName) .. ".onUIThemeColorChange()")
	self:TriggerEventAtNextAdvance("onUIThemeColorChange", toggledIndex)
end

GenericDebug.AddListener_ImporterImport = function(self, _callback, _self)
	api.debug.Trace(tostring(self.customViewName) .. ".AddListener_ImporterImport()")
	return self:AddGlobalEnvironmentEventListener("ImporterImport", 0, _callback, _self)
end

GenericDebug.AddListener_ImporterAccept = function(self, _callback, _self)
	api.debug.Trace(tostring(self.customViewName) .. ".AddListener_ImporterAccept()")
	return self:AddGlobalEnvironmentEventListener("ImporterAccept", 0, _callback, _self)
end

GenericDebug.AddListener_ImporterCancel = function(self, _callback, _self)
	api.debug.Trace(tostring(self.customViewName) .. ".AddListener_ImporterCancel()")
	return self:AddGlobalEnvironmentEventListener("ImporterCancel", 0, _callback, _self)
end
