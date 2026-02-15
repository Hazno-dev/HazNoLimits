local global = _G
local api = global.api ---@type Api
local require = global.require
local module = global.module

local Object = require("Common.object")
local GamefaceUIWrapper = require("UI.GamefaceUIWrapper")

local PerformanceTests = module(..., Object.subclass(GamefaceUIWrapper))
local ObjectNew = PerformanceTests.new

PerformanceTests.new = function(self, _fnOnReadyCallback)
	api.debug.Trace("SchemaDemo.New()")
	local oNewImporterUI = ObjectNew(PerformanceTests)
	local tInitSettings = {
		sViewName = "SchemaDemo",
		sViewAddress = "coui://UIGameface/SchemaDemo.html",
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

PerformanceTests.Show = function(self)
	api.debug.Trace("Bible.Show()")
	self:TriggerEventAtNextAdvance("Show")
end

PerformanceTests.Hide = function(self)
	api.debug.Trace("Bible.Hide()")
	self:TriggerEventAtNextAdvance("Hide")
end

PerformanceTests.ExamplePropGeneratorFunction = function(self, propProps)
	api.debug.Trace("Bible.onUIAccentColorChange()")
	self:TriggerEventAtNextAdvance("onUIAccentColorChange", propProps)
end

PerformanceTests.ExampleContextListGeneratorFunction = function(self, index)
	api.debug.Trace("Bible.onUIThemeColorChange()")
	self:TriggerEventAtNextAdvance("onUIThemeColorChange", index)
end

PerformanceTests.AddListener_ImporterImport = function(self, _callback, _self)
	api.debug.Trace("Bible.AddListener_ImporterImport()")
	return self:AddGlobalEnvironmentEventListener("ImporterImport", 0, _callback, _self)
end

PerformanceTests.AddListener_ImporterAccept = function(self, _callback, _self)
	api.debug.Trace("Bible.AddListener_ImporterAccept()")
	return self:AddGlobalEnvironmentEventListener("ImporterAccept", 0, _callback, _self)
end

PerformanceTests.AddListener_ImporterCancel = function(self, _callback, _self)
	api.debug.Trace("Bible.AddListener_ImporterCancel()")
	return self:AddGlobalEnvironmentEventListener("ImporterCancel", 0, _callback, _self)
end
