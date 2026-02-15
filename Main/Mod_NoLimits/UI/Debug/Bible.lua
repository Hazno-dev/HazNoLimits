---@diagnostic disable: undefined-field, need-check-nil, inject-field
local global = _G
local api = global.api ---@type Api
local require = global.require
local module = global.module

local Object = require("Common.object")
local GamefaceUIWrapper = require("UI.GamefaceUIWrapper")

local BibleUI = module(..., Object.subclass(GamefaceUIWrapper))
local ObjectNew = BibleUI.new

BibleUI.new = function(self, _fnOnReadyCallback, prototypes)
	api.debug.Trace("Bible.New()")
	local oNewImporterUI = ObjectNew(BibleUI)
	local tInitSettings = {
		sViewName = "Bible",
		sViewAddress = prototypes and "coui://UIGameface/PrototypesBible.html" or "coui://UIGameface/Bible.html",
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

BibleUI.Show = function(self)
	api.debug.Trace("Bible.Show()")
	self:TriggerEventAtNextAdvance("Show")
end

BibleUI.Hide = function(self)
	api.debug.Trace("Bible.Hide()")
	self:TriggerEventAtNextAdvance("Hide")
end

BibleUI.redraw = function(self)
	api.debug.Trace("Bible.redraw()")
	self:TriggerEventAtNextAdvance("redraw")
end

---@param toggledIndex integer
BibleUI.onUIAccentColorChange = function(self, toggledIndex)
	api.debug.Trace("Bible.onUIAccentColorChange()")
	self:TriggerEventAtNextAdvance("onUIAccentColorChange", toggledIndex)
end

---@param toggledIndex integer
BibleUI.onUIThemeColorChange = function(self, toggledIndex)
	api.debug.Trace("Bible.onUIThemeColorChange()")
	self:TriggerEventAtNextAdvance("onUIThemeColorChange", toggledIndex)
end

BibleUI.AddListener_ImporterImport = function(self, _callback, _self)
	api.debug.Trace("Bible.AddListener_ImporterImport()")
	return self:AddGlobalEnvironmentEventListener("ImporterImport", 0, _callback, _self)
end

BibleUI.AddListener_ImporterAccept = function(self, _callback, _self)
	api.debug.Trace("Bible.AddListener_ImporterAccept()")
	return self:AddGlobalEnvironmentEventListener("ImporterAccept", 0, _callback, _self)
end

BibleUI.AddListener_ImporterCancel = function(self, _callback, _self)
	api.debug.Trace("Bible.AddListener_ImporterCancel()")
	return self:AddGlobalEnvironmentEventListener("ImporterCancel", 0, _callback, _self)
end
