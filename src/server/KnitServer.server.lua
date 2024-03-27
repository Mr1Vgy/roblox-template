local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = require(ReplicatedStorage.Packages.Knit)
local ServerScriptService = game:GetService("ServerScriptService")

for _, v in ServerScriptService.Source:GetDescendants() do
	if v:IsA("ModuleScript") and v.Name:match("Service$") then
		Knit.CreateService(require(v))
	end
end

Knit.Start():await()
