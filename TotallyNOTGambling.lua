local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Drac311/lib/refs/heads/main/DraxiLib.lua"))()

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Event = ReplicatedStorage:WaitForChild("BrainrotPlinkoDrop")

local Connection
local DropArgument = 1
local AutoDrop = false

local Window = Library:CreateWindow({
	Name = "Draxi Hub",
	Footer = "Join the discord for more updates!",
	StartVisible = true,
	ConfigName = "TotallyNOTGambling",
	ScriptUrl = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/TotallyNOTGambling.lua",
})

local Tab = Window:CreateTab("Main", 4483362458)

Tab:CreateButton({
    Name = "Rejoin",
    Callback = function()
        local Player = Players.LocalPlayer

        if #Players:GetPlayers() <= 1 then
            TeleportService:Teleport(game.PlaceId, Player)
        else
            TeleportService:TeleportToPlaceInstance(
                game.PlaceId,
                game.JobId,
                Player
            )
        end
    end
})

Tab:CreateInput({
    Name = "Auto Drop Argument",
    Placeholder = "Introduce un número",

    Callback = function(Text)
        local Number = tonumber(Text)
        if Number then
            DropArgument = Number
        end
    end
})

Tab:CreateToggle({
    Name = "Auto Drop",
    Default = false,
    Flag = false,
    Callback = function(Value)
        AutoDrop = Value

        if Value then
            task.spawn(function()
                while AutoDrop do
                    Event:FireServer(DropArgument)
                    task.wait(0.1)
                end
            end)
        end
    end
})