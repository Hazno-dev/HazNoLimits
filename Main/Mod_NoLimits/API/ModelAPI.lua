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
local database      = api.database
local Vector3       = require("Vector3")

local GameDatabase  = require("Database.GameDatabase")                          ---@class (partial) GameDatabase
local DatabaseUtils = require("Database.Mod_NoLimits.DatabaseUtils")            ---@class (partial) Mod_NoLimits.DatabaseUtils
local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local Config        = require("Database.Mod_NoLimits.Config")                   ---@type Mod_NoLimits.Config
local BaseAPI       = require("Mod_NoLimits.API.Core.Base")                     ---@type Mod_NoLimits.API.Base
local APIEntry      = require("Mod_NoLimits.API.Core.APIEntry")                 ---@type Mod_NoLimits.API.Entry

---@class Mod_NoLimits.API.ModelAPI : Mod_NoLimits.API.Base
local NLModelAPI = BaseAPI.NewAPI("ModelAPI")
local logger = NLModelAPI.Logger

NLModelAPI.Enabled = true
NLModelAPI.CoreAPIName = "model"
NLModelAPI.WorldAPIName = nil

NLModelAPI.Debug_DumpAPI = false

function NLModelAPI.GetOverrides(apiProvider)
    local tEntries = {
        APIEntry.NewEntry("ApplyMaterialCollectionDefaultVariant")
            :Disable(),
        APIEntry.NewEntry("ApplyMaterialCollectionResource")
            :Disable(),
        APIEntry.NewEntry("ApplyMaterialCollectionVariant")
            :Disable(),
        APIEntry.NewEntry("CreateCubeModel")
            :Disable(),
        APIEntry.NewEntry("CreateTrivialClippedModel")
            :Disable(),
        APIEntry.NewEntry("ReleaseContents")
            :Disable(),
        APIEntry.NewEntry("SetEnableConstantMaterialCollectionModifierRebuilds")
            :Disable(),
        APIEntry.NewEntry("SetFlexiColour")
            :Disable(),
        APIEntry.NewEntry("SetFlexiEmissiveColour")
            :Disable(),
        APIEntry.NewEntry("SetFlexiPattern")
            :Disable(),
        APIEntry.NewEntry("SetFlexiSelectAlpha")
            :Disable(),
        APIEntry.NewEntry("SetFlexiSelectColour")
            :Disable(),
        APIEntry.NewEntry("SetHidden", {"nEEditorGizmo", "bHideGizmo"})
            :Disable(),
        APIEntry.NewEntry("SetHighlightBehaviour", {"channel", "behaviour"})
            :Disable(),
        APIEntry.NewEntry("SetHighlightEdgeColour", {"channel", "edgeColour", "edgeAlpha"})
            :Disable(),
        APIEntry.NewEntry("SetHighlightFillColour", {"channel", "fillColour", "fillAlpha"})
            :Disable(),
        APIEntry.NewEntry("SetHighlighted", {"channel", "edgeColour", "edgeAlpha"})
            :AsListener(),
        APIEntry.NewEntry("SetMaterialCollectionCamoEffectWeight")
            :Disable(),
        APIEntry.NewEntry("SetMaterialCollectionDecayWeight")
            :Disable(),
        APIEntry.NewEntry("SetMaterialCollectionDirectDamageWeight")
            :Disable(),
        APIEntry.NewEntry("SetMaterialCollectionImpactDamageWeight")
            :Disable(),
        APIEntry.NewEntry("SetMaterialCollectionWitherWeight")
            :Disable(),
        APIEntry.NewEntry("SetModel")
            :Disable(),
        APIEntry.NewEntry("SetViewFilterEnvironmentMap")
            :Disable(),
        APIEntry.NewEntry("SetViewFilterMain")
            :Disable(),
        APIEntry.NewEntry("SetViewFilterReflection")
            :Disable(),
        APIEntry.NewEntry("SetViewFilterSecondary")
            :Disable(),
        APIEntry.NewEntry("SetViewFilterSelection")
            :Disable(),
        APIEntry.NewEntry("SetViewFilterShadowCascade")
            :Disable(),
    }

    return tEntries
end

return BaseAPI.Validate(NLModelAPI)