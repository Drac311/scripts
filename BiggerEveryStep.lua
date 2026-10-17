local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Drac311/lib/refs/heads/main/DraxiLib.lua"))()

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GrowCharacter = ReplicatedStorage:WaitForChild("GrowCharacter")

local AutoGrowth = false

local Window = Library:CreateWindow({
	Name = "Draxi Hub",
	Footer = "Join the discord for more updates!",
	StartVisible = true,
	ConfigName = "BiggerEveryStep",
	ScriptUrl = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/BiggerEveryStep.lua",
})

local Tab = Window:CreateTab("Main", 4483362458)

Tab:CreateToggle({
    Name = "Auto Growth",
    Default = false,
    Flag = false,
    Callback = function(Value)
        AutoGrowth = Value

        if Value then
            task.spawn(function()
                while AutoGrowth do
                    pcall(function()
                        GrowCharacter:FireServer()
                    end)

                    task.wait(0.01)
                end
            end)
        end
    end
})