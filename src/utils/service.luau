local Service = require("@types/shared/Service")

local getService = game.GetService
local cloneReference = cloneref

local function getReferencePermission(): ReplicatedFirst?
	local service = getService(game, "ReplicatedFirst")
	return cloneReference(service)
end

local referencePermission = getReferencePermission()

if not referencePermission then
	warn("⚠️ cloneref is not available on your executor! There is a risk of getting detected.")
end

local function fetchService(self: Service.Format, name: string): Instance?
	local cachedService = rawget(self, name)

	if cachedService then
		return cachedService
	end

	local service = getService(game, name)
	assert(service, `couldn't get service: {name}`)

	if referencePermission then
		service = cloneReference(service)
	end

	rawset(self, name, service)
	return service
end

local service = setmetatable({}, {
	__index = fetchService,
})

return service :: Service.Map
