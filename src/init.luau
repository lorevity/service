local service = require("@utils/service")

local TemporaryCageMeshProvider = service.TemporaryCageMeshProvider
local MLModelDeliveryService = service.MLModelDeliveryService

local ReplicatedStorage = service.ReplicatedStorage
local Players = service.Players

print(`successfully fetched: {ReplicatedStorage}, {Players}`)
print(`undefined services also supported: {MLModelDeliveryService}, {TemporaryCageMeshProvider}`)