local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Event = ReplicatedStorage:WaitForChild("BrainrotPlinkoDrop")

local Connection
local DropArgument = 1

local Window = Rayfield:CreateWindow({
    Name = "Totally NOT Gambling",
    LoadingTitle = "Loading...",
    LoadingSubtitle = "Drac's Creation",
    ConfigurationSaving = {
        Enabled = false
    }
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
    PlaceholderText = "Introduce un número",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        local Number = tonumber(Text)
        if Number then
            DropArgument = Number
        end
    end
})

Tab:CreateToggle({
    Name = "Auto Drop",
    CurrentValue = false,
    Flag = "AutoDrop",
    Callback = function(Value)
        AutoDrop = Value

        if Value then
            task.spawn(function()
                while AutoDrop do
                    Event:FireServer(DropArgument)
                    task.wait(0.1) -- 10 veces por segundo
                end
            end)
        end
    end
})
