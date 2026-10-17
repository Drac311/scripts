local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Drac311/lib/refs/heads/main/DraxiLib.lua"))()

local Window = Library:CreateWindow({
	Name = "Draxi Hub",
	Footer = "Join the discord for more updates!",
	StartVisible = true,
	ConfigName = "ZenithInc",
	ScriptUrl = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/Zenith.lua",
})

local Tab = Window:CreateTab("Main", 4483362458)

local ReplicaID = 271
local WaitingForReplicaID = false

-- ============================================================
-- Hook (con restore del anterior para evitar acumulación)
-- ============================================================
local hasHookSupport = getrawmetatable and setreadonly and newcclosure
    and getnamecallmethod and getgenv

if not hasHookSupport then
    task.spawn(function()
        task.wait(1)
        Window:Notify({
            Title = "Aviso",
            Content = "Executor no soporta hooks. 'Detect Replica ID' no funcionara.",
            Duration = 6,
        })
    end)
else
    -- Restaurar hook previo si existe
    local prev = getgenv().__zenithHook
    if prev and prev.mt and prev.old then
        pcall(function()
            setreadonly(prev.mt, false)
            prev.mt.__namecall = prev.old
            setreadonly(prev.mt, true)
        end)
        getgenv().__zenithHook = nil
    end

    do
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)

        mt.__namecall = newcclosure(function(self, ...)
            local args = {...}
            if WaitingForReplicaID
                and getnamecallmethod() == "FireServer"
                and self == game:GetService("ReplicatedStorage").ReplicaRemoteEvents.Replica_ReplicaSignal then

                WaitingForReplicaID = false
                ReplicaID = tonumber(args[1]) or ReplicaID

                task.spawn(function()
                    Window:Notify({
                        Title = "Replica ID detectado",
                        Content = "ID: " .. tostring(ReplicaID),
                        Duration = 5
                    })
                end)
            end
            return old(self, ...)
        end)

        setreadonly(mt, true)

        getgenv().__zenithHook = { mt = mt, old = old }
    end

    Window:OnDestroy(function()
        local s = getgenv and getgenv().__zenithHook
        if s and s.mt and s.old then
            pcall(function()
                setreadonly(s.mt, false)
                s.mt.__namecall = s.old
                setreadonly(s.mt, true)
            end)
            getgenv().__zenithHook = nil
        end
    end)
end

local Event = game:GetService("ReplicatedStorage")
    .ReplicaRemoteEvents
    .Replica_ReplicaSignal

local AutoUpgrades  = false
local AutoRebirth   = false
local AutoAscension = false
local AutoAwakening = false

Tab:CreateInput({
    Name = "Replica ID",
    Placeholder = "271",

    Callback = function(Value)
        local Num = tonumber(Value)
        if Num then
            ReplicaID = Num
        end
    end
})

Tab:CreateButton({
    Name = "Detect Replica ID",
    Callback = function()
        if not hasHookSupport then
            Window:Notify({
                Title = "Detect Replica ID",
                Content = "Tu executor no soporta hooks.",
                Duration = 5
            })
            return
        end

        WaitingForReplicaID = true

        Window:Notify({
            Title = "Detectando...",
            Content = "Haz una acción que envíe Replica_ReplicaSignal.",
            Duration = 5
        })
    end
})

Tab:CreateToggle({
    Name = "Auto Mejoras (cada 25s)",
    Default = false,
    Flag = false,
    Callback = function(Value)
        AutoUpgrades = Value

        if Value then
            task.spawn(function()
                while AutoUpgrades do
                    for i = 1, 100 do
                        if not AutoUpgrades then
                            break
                        end

                        Event:FireServer(
                            ReplicaID,
                            "RequestUpgrade",
                            "ground_upg" .. i,
                            "max"
                        )

                        task.wait(0.25)
                    end

                    local t = 25
                    while AutoUpgrades and t > 0 do
                        task.wait(1)
                        t -= 1
                    end
                end
            end)
        end
    end
})

Tab:CreateToggle({
    Name = "Auto Rebirth (cada 3 mins)",
    Default = false,
    Flag = false,
    Callback = function(Value)
        AutoRebirth = Value

        if Value then
            task.spawn(function()
                while AutoRebirth do
                    Event:FireServer(
                        ReplicaID,
                        "RequestPrestige",
                        "Rebirth"
                    )

                    local t = 180
                    while AutoRebirth and t > 0 do
                        task.wait(1)
                        t -= 1
                    end
                end
            end)
        end
    end
})

Tab:CreateToggle({
    Name = "Auto Ascension (cada 10s)",
    Default = false,
    Flag = false,
    Callback = function(Value)
        AutoAscension = Value

        if Value then
            task.spawn(function()
                while AutoAscension do
                    Event:FireServer(
                        ReplicaID,
                        "RequestAscension"
                    )

                    local t = 10
                    while AutoAscension and t > 0 do
                        task.wait(1)
                        t -= 1
                    end
                end
            end)
        end
    end
})

Tab:CreateToggle({
    Name = "Auto Awakening (cada 20 mins)",
    Default = false,
    Flag = false,
    Callback = function(Value)
        AutoAwakening = Value

        if Value then
            task.spawn(function()
                while AutoAwakening do
                    Event:FireServer(
                        ReplicaID,
                        "RequestPrestige",
                        "Awakening"
                    )

                    local t = 1200
                    while AutoAwakening and t > 0 do
                        task.wait(1)
                        t -= 1
                    end
                end
            end)
        end
    end
})

Tab:CreateButton({
    Name = "Buy Temple Tickets",
    Callback = function()
        local Players = game:GetService("Players")
        local PathfindingService = game:GetService("PathfindingService")

        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local root = character:WaitForChild("HumanoidRootPart")

        local destination = Vector3.new(65, 122, -1117)

        local path = PathfindingService:CreatePath({
            AgentRadius = 2,
            AgentHeight = 5,
            AgentCanJump = true,
            AgentJumpHeight = 7,
            AgentMaxSlope = 45
        })

        path:ComputeAsync(root.Position, destination)

        if path.Status == Enum.PathStatus.Success then
            for _, waypoint in ipairs(path:GetWaypoints()) do
                if waypoint.Action == Enum.PathWaypointAction.Jump then
                    humanoid.Jump = true
                end

                humanoid:MoveTo(waypoint.Position)

                local reached = humanoid.MoveToFinished:Wait()
                if not reached then
                    break
                end
            end
        else
            Window:Notify({
                Title = "Error",
                Content = "No se pudo calcular una ruta.",
                Duration = 3
            })
        end
    end
})

Tab:CreateButton({
    Name = "Roll Temple Tickets",
    Callback = function()
        local Players = game:GetService("Players")
        local PathfindingService = game:GetService("PathfindingService")

        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local root = character:WaitForChild("HumanoidRootPart")

        local destination = Vector3.new(116, 124, -1214)

        local path = PathfindingService:CreatePath({
            AgentRadius = 2,
            AgentHeight = 5,
            AgentCanJump = true,
            AgentJumpHeight = 7,
            AgentMaxSlope = 45
        })

        path:ComputeAsync(root.Position, destination)

        if path.Status == Enum.PathStatus.Success then
            for _, waypoint in ipairs(path:GetWaypoints()) do
                if waypoint.Action == Enum.PathWaypointAction.Jump then
                    humanoid.Jump = true
                end

                humanoid:MoveTo(waypoint.Position)

                local reached = humanoid.MoveToFinished:Wait()
                if not reached then
                    break
                end
            end
        else
            Window:Notify({
                Title = "Error",
                Content = "No se pudo calcular una ruta.",
                Duration = 3
            })
        end
    end
})

Tab:CreateButton({
    Name = "Rune Ascension Roll",
    Callback = function()
        local Players = game:GetService("Players")
        local PathfindingService = game:GetService("PathfindingService")

        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local root = character:WaitForChild("HumanoidRootPart")

        local destination = Vector3.new(143, 292.5, -1942)

        local path = PathfindingService:CreatePath({
            AgentRadius = 2,
            AgentHeight = 5,
            AgentCanJump = true,
            AgentJumpHeight = 7,
            AgentMaxSlope = 45
        })

        path:ComputeAsync(root.Position, destination)

        if path.Status == Enum.PathStatus.Success then
            for _, waypoint in ipairs(path:GetWaypoints()) do
                if waypoint.Action == Enum.PathWaypointAction.Jump then
                    humanoid.Jump = true
                end

                humanoid:MoveTo(waypoint.Position)

                local reached = humanoid.MoveToFinished:Wait()
                if not reached then
                    break
                end
            end
        else
            Window:Notify({
                Title = "Error",
                Content = "No se pudo calcular una ruta.",
                Duration = 3
            })
        end
    end
})

Tab:CreateButton({
    Name = "Fish",
    Callback = function()
        local Players = game:GetService("Players")
        local PathfindingService = game:GetService("PathfindingService")

        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local root = character:WaitForChild("HumanoidRootPart")

        local destination = Vector3.new(-13, 586, -3069)

        local path = PathfindingService:CreatePath({
            AgentRadius = 2,
            AgentHeight = 5,
            AgentCanJump = true,
            AgentJumpHeight = 7,
            AgentMaxSlope = 45
        })

        path:ComputeAsync(root.Position, destination)

        if path.Status == Enum.PathStatus.Success then
            for _, waypoint in ipairs(path:GetWaypoints()) do
                if waypoint.Action == Enum.PathWaypointAction.Jump then
                    humanoid.Jump = true
                end

                humanoid:MoveTo(waypoint.Position)

                local reached = humanoid.MoveToFinished:Wait()
                if not reached then
                    break
                end
            end
        else
            Window:Notify({
                Title = "Error",
                Content = "No se pudo calcular una ruta.",
                Duration = 3
            })
        end
    end
})