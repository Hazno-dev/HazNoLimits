---@meta
---API reference for HazNoLibrary.
---
---[Do not require this file directly]
---Use `global.api.HazNoLibrary.API` once the WorldAPI is available.

---@class (partial) Api
---@field HazNoLibrary HazNoLibrary
api = {}

---@class (partial) HazNoLibrary
---@field API HazNoLibrary.API
local HazNoLibrary = {}

---@class (partial) HazNoLibrary.API
---@field Guests HazNoLibrary.API.Guests
---@field RideStats HazNoLibrary.API.RideStats
local API = {}

---@class HazNoLibrary.API.Guests : WorldAPIs_guests
local Guests = {}

---@param guestID number The ID of the guest to set data for.
function Guests:SetGuestData(guestID) end

---@param groupID number The ID of the guest group to set data for.
function Guests:SetGroupData(groupID) end

---@class HazNoLibrary.API.RideStats : WorldAPIs_ridestats
local RideStats = {}

---@param stationID number The ID of the ride station to set stats for.
function RideStats:SetStationStats(stationID) end