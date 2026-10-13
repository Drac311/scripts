--[[
    +1 Muscle to Break Walls  (DraxiLib version)
    Train x8 per frame, Punch x1 per frame, Rejoin.
    Requires the latest DraxiLib.
]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Drac311/lib/refs/heads/main/DraxiLib.lua"))()

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

-- ============================================================
-- WINDOW
-- ============================================================
local Window = Library:CreateWindow({
	Name = "+1 Muscle to Break Walls",
	Footer = "Join the discord for more updates!",
	Discord = "https://discord.gg/YOUR_INVITE",
	StartVisible = true,
	ConfigName = "MuscleBreakWalls",
	-- For "Auto Execute" (2ndPage): RAW URL of THIS script (upload it to your repo with this name)
	ScriptUrl = "https://raw.githubusercontent.com/Drac311/lib/refs/heads/main/+1MuscletoBreakWalls.lua",
})

local Tab = Window:CreateTab("Train") -- 1st call -> MainPage

-- ============================================================
-- REMOTES (looked up in the background so the window never hangs)
-- ============================================================
local TrainEvent = nil
local PunchEvent = nil

task.spawn(function()
	local remotes = ReplicatedStorage:FindFirstChild("Remotes") or ReplicatedStorage:WaitForChild("Remotes", 10)
	TrainEvent = remotes and (remotes:FindFirstChild("Train") or remotes:WaitForChild("Train", 10))
	PunchEvent = remotes and (remotes:FindFirstChild("Punch") or remotes:WaitForChild("Punch", 10))
	if not TrainEvent or not PunchEvent then
		Window:Notify({
			Title = "Remotes",
			Content = "Train / Punch remote not found",
			Duration = 6,
		})
	end
end)

-- ============================================================
-- STATE
-- ============================================================
local TrainEnabled = false
local PunchEnabled = false

-- ============================================================
-- ELEMENTS
-- ============================================================
Tab:CreateToggle({
	Name = "Train x8 por frame",
	Default = false,
	Flag = false, -- not saved: it never starts by itself when you join
	Callback = function(Value)
		TrainEnabled = Value
	end,
})

Tab:CreateToggle({
	Name = "Punch x1 por frame",
	Default = false,
	Flag = false, -- not saved: it never starts by itself when you join
	Callback = function(Value)
		PunchEnabled = Value
	end,
})

Tab:CreateButton({
	Name = "Rejoin",
	Callback = function()
		local player = Players.LocalPlayer
		Window:Notify({ Title = "Rejoin", Content = "Rejoining...", Duration = 3 })

		if #Players:GetPlayers() <= 1 then
			TeleportService:Teleport(game.PlaceId, player)
		else
			TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, player)
		end
	end,
})

Tab:CreateLabel("Drac's Creation")

-- ============================================================
-- LOOP
-- ============================================================
local connection = RunService.Heartbeat:Connect(function()
	pcall(function()
		if TrainEnabled and TrainEvent then
			for _ = 1, 8 do
				TrainEvent:FireServer()
			end
		end

		if PunchEnabled and PunchEvent then
			PunchEvent:FireServer("LeftHand")
		end
	end)
end)

-- "Exterminar Script" (2ndPage) stops everything
Window:OnDestroy(function()
	TrainEnabled = false
	PunchEnabled = false
	connection:Disconnect()
end)
