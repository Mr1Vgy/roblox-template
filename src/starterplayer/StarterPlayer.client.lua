local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = require(ReplicatedStorage.Packages.Knit)
local ClientScripts = ReplicatedStorage.Client

for _, v in ClientScripts:GetDescendants() do
	if v:IsA("ModuleScript") and v.Name:match("Controller$") then
		Knit.CreateController(require(v))
	end
end

Knit.Start():await()
