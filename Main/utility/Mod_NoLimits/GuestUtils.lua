local global        = _G
local api           = global.api
local type          = global.type
local table         = global.table
local tostring      = global.tostring
local ipairs        = global.ipairs
local pairs         = global.pairs
local rawget        = global.rawget
local rawset        = global.rawset
local getmetatable  = global.getmetatable
local pcall         = global.pcall
local database      = api.database
local nlApi         = api.nlApi
local mathUtil      = require("Common.MathUtils")

local DebugUtils    = require("Utility.Mod_NoLimits.DebugUtils")                ---@type Mod_NoLimits.DebugUtils
local CompUtils     = require("Utility.Mod_NoLimits.ComponentUtils")            ---@type Mod_NoLimits.ComponentUtils

local logger        = require("forgeutils.logger").Get("NoLimits::GuestUtils")

---@class Mod_NoLimits.GuestUtils
local NLGuestUtils = {}

---List of all guest component IDs
---@private
NLGuestUtils.GuestComponentIDs = nil

---List of all guest component names
---@private
NLGuestUtils.GuestComponentNames = {
    "GuestBrain",
    "GuestBrandBias",
    "GuestData",
    "GuestExperience",
    "GuestInventory",
    "GuestLogical",
    "GuestMood",
    "GuestName",
    "GuestSceneryExperience",
    "GuestSerialisation",
    "GuestShelter",
    "GuestShopBrowsingMemory",
    "InfoPopUpComponent",
    "MaterialEffectsProxy",
    "MultipartVisualsCreator",
    "PlayerInteractionHandler",
    "SelectAndEditComponent",
    "Sunburn",
    "Transform",
    "Wetness",
    "NoLimitsGuestComponent",
}

---List of guest types
---@private
NLGuestUtils.GuestTypes = {
    {sType = "AM"},
    {sType = "AF"},
    {sType = "CM"},
    {sType = "CF"},
    {sType = "TM", bLarge = false},
    {sType = "TF", bLarge = false},
    {sType = "TM", bLarge = true},
    {sType = "TF", bLarge = true},
}

--- Get a list of all guest component IDs
---@param fullRefresh boolean|nil Whether to refresh the cached list
function NLGuestUtils.GetGuestComponentIDs(fullRefresh)
    if fullRefresh or NLGuestUtils.GuestComponentIDs == nil then
        NLGuestUtils.GuestComponentIDs = CompUtils.GetComponentIDs(NLGuestUtils.GuestComponentNames)
    end

    return NLGuestUtils.GuestComponentIDs
end

function NLGuestUtils.ModifyGuest(guestID)
    if guestID == nil then return end

    local guestCompIds = NLGuestUtils.GetGuestComponentIDs()
    if guestCompIds == nil then
        logger:Error("Failed to get guest component IDs")
        return
    end

    DebugUtils.LogTable("tGuestComponentIDs", guestCompIds)
    local guestBrain = NLGuestUtils.CreateParams_GuestBrain(guestID)

    DebugUtils.LogEntity(logger, guestID)

    logger:Info("Removing components from guest " .. tostring(guestID))
    --api.messaging.SubmitMessage(api.messaging.MsgType_LoansPreviewMessage, nValueInt)

    api.entity.RemoveComponentsFromEntity(
        guestID,
        {
            --guestCompIds["NoLimitsGuestComponent"],
            guestCompIds["GuestBrain"],
        },
        nil
    )

    logger:Info("Adding components to guest " .. tostring(guestID))
    api.entity.AddComponentsToEntity(guestID,
    {
        {
            id = guestCompIds["GuestBrain"],
            tParams = guestBrain
        },
    },
    nil)
end

--- Create parameters for a GuestBrain component
---@param guestID number The ID of the guest entity
---@return table The parameters for the GuestBrain component
---@private
function NLGuestUtils.CreateParams_GuestBrain(guestID)
    local params = {
        CashInHand = 100,
        CashInReserve = 100,
        FoodRestriction = 0,
        GroupID = nlApi.World.guests:TryGetGuestGroupID(guestID),
        MaxPriceMultiplier = 1.0,
        MaxRideGForce = 100.0,
        MaxRideHeight = 200.0,
        MaxRideIntensity = 9.0,
        MaxRideNauseaComfortable = 7.0,
        MaxRideNauseaTolerable = 9.0,
        MaxRideQueuePatience = 20.0,
        MaxRideSpeed = 200.0,
        MinRideIntensity = 0.0,
        MinRideTheming = 0.0,
        PoolDesire = 1.0,
    }

    return params
end

return NLGuestUtils