local Rayfield = loadstring(game("https://sirius.menu/rayfield"))()

local Window = Rayfield({
    Name = "BEST",
    LoadingTitle = "Loading...",
    LoadingSubtitle = "Drac311",

    ConfigurationSaving = {
        Enabled = false
    }
})

local Remotes = game("ReplicatedStorage").Remotes.Events

local ClickEvent =
    Remotes.ClickRemote

local RebirthEvent =
    Remotes.RebirthRemote

local DamageEvent =
    game("ReplicatedStorage")
        .Remotes
        .Events
        .DamageWall

local TeleportHomeEvent =
    game("ReplicatedStorage")
        .Remotes
        .Events
        .TeleportHome

local AutoClickGame1 = false
local AutoRebirth = false
local AutoFarm = false
local AutoDamageWall = false

local SelectedWorld = "World 1"
local SelectedStage = "Stage 25"

local TeleportService =
    game("TeleportService")

local ReplicatedStorage =
    game("ReplicatedStorage")

local SoundService =
    game("SoundService")

local Players =
    game("Players")

local LowGraphics = require(
    ReplicatedStorage.Modules.LowGraphics
)

local Game1Tab = Window(
    "+1 Strength Per Click",
    4483362458
)

local DevTab = Window(
    "DevTools",
    4483362458
)

Game1Tab("Misc")

Game1Tab({Name = "Low Detail Mode",Callback = function()LowGraphics()

    SoundService:WaitForChild("SFX").Volume = 0

    for _, player in ipairs(Players:GetPlayers()) do
        local character = player.Character

        if character then
            for _, descendant in ipairs(character:GetDescendants()) do
                if descendant:IsA("ParticleEmitter")
                or descendant:IsA("Trail")
                or descendant:IsA("Highlight") then
                    descendant.Enabled = false
                end
            end
        end
    end
end,

})

Game1Tab({Name = "Rejoin",Callback = function()local player = Players.LocalPlayer

    if #Players:GetPlayers() <= 1 then
        TeleportService:Teleport(game.PlaceId, player)
    else
        TeleportService:TeleportToPlaceInstance(
            game.PlaceId,
            game.JobId,
            player
        )
    end
end,

})

Game1Tab({Name = "Equip Best Boosts",Callback = function()task.spawn(function()local Players = game("Players")

        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local root = character:WaitForChild("HumanoidRootPart")

        local puntos = {
            Vector3.new(1733, 19, 2874),
            Vector3.new(1733, 19, 3034),
            Vector3.new(1712, 26, 3034),
            Vector3.new(1712, 26, 2874),
            Vector3.new(1718, 26, 2874),
            Vector3.new(1718, 26, 3030)
        }

        for _, destino in ipairs(puntos) do
            repeat
                humanoid:MoveTo(destino)
                task.wait(0.2)
            until (root.Position - destino).Magnitude <= 5
        end

        humanoid:Move(Vector3.zero, true)
    end)
end,

})

Game1Tab({Name = "Teleport Spawn",Callback = function()TeleportHomeEvent()end,})

Game1Tab("AutoFarm Wins")

local StagePositions = {
    ["World 1"] = {

        ["Stage 25"] = {
            Vector3.new(1815, 18, -1538),
            Vector3.new(1855, 18, -1538)
        },

        ["Stage 24"] = {
            Vector3.new(1815, 18, -1380),
            Vector3.new(1855, 18, -1380)
        },

        ["Stage 23"] = {
            Vector3.new(1815, 18, -1180),
            Vector3.new(1855, 18, -1180)
        },

        ["Stage 22"] = {
            Vector3.new(1815, 18, -985),
            Vector3.new(1855, 18, -985)
        },

        ["Stage 21"] = {
            Vector3.new(1815, 18, -785),
            Vector3.new(1855, 18, -785)
        },

        ["Stage 20"] = {
            Vector3.new(1815, 18, -585),
            Vector3.new(1855, 18, -585)
        },

        ["Stage 19"] = {
            Vector3.new(1815, 18, -390),
            Vector3.new(1855, 18, -390)
        },

        ["Stage 18"] = {
            Vector3.new(1815, 18, -195),
            Vector3.new(1855, 18, -195)
        },

        ["Stage 17"] = {
            Vector3.new(1815, 18, 0),
            Vector3.new(1855, 18, 0)
        },

        ["Stage 16"] = {
            Vector3.new(1815, 18, 200),
            Vector3.new(1855, 18, 200)
        },

        ["Stage 15"] = {
            Vector3.new(1815, 18, 400),
            Vector3.new(1855, 18, 400)
        },

        ["Stage 14"] = {
            Vector3.new(1815, 18, 595),
            Vector3.new(1855, 18, 595)
        },

        ["Stage 13"] = {
            Vector3.new(1815, 18, 790),
            Vector3.new(1855, 18, 790)
        },

        ["Stage 12"] = {
            Vector3.new(1815, 18, 985),
            Vector3.new(1855, 18, 985)
        },

        ["Stage 11"] = {
            Vector3.new(1815, 18, 1180),
            Vector3.new(1855, 18, 1180)
        },

        ["Stage 10"] = {
            Vector3.new(1815, 18, 1365),
            Vector3.new(1855, 18, 1365)
        },

        ["Stage 9"] = {
            Vector3.new(1815, 18, 1548),
            Vector3.new(1855, 18, 1548)
        },

        ["Stage 8"] = {
            Vector3.new(1815, 18, 1730),
            Vector3.new(1855, 18, 1730)
        },

        ["Stage 7"] = {
            Vector3.new(1815, 18, 1910),
            Vector3.new(1855, 18, 1910)
        },

        ["Stage 6"] = {
            Vector3.new(1815, 18, 2085),
            Vector3.new(1855, 18, 2085)
        },

        ["Stage 5"] = {
            Vector3.new(1815, 18, 2230),
            Vector3.new(1855, 18, 2230)
        },

        ["Stage 4"] = {
            Vector3.new(1815, 18, 2365),
            Vector3.new(1855, 18, 2365)
        },

        ["Stage 3"] = {
            Vector3.new(1815, 18, 2495),
            Vector3.new(1855, 18, 2495)
        },

        ["Stage 2"] = {
            Vector3.new(1815, 18, 2630),
            Vector3.new(1855, 18, 2630)
        },

        ["Stage 1"] = {
            Vector3.new(1815, 18, 2745),
            Vector3.new(1855, 18, 2745)
        }

    },

	    ["World 2"] = {

        ["Stage 25"] = {
            Vector3.new(1815, 18, -1538),
            Vector3.new(1850, 18, -1538)
        },

        ["Stage 24"] = {
            Vector3.new(1815, 18, -1380),
            Vector3.new(1850, 18, -1380)
        },

        ["Stage 23"] = {
            Vector3.new(1815, 18, -1180),
            Vector3.new(1850, 18, -1180)
        },

        ["Stage 22"] = {
            Vector3.new(1815, 18, -985),
            Vector3.new(1850, 18, -985)
        },

        ["Stage 21"] = {
            Vector3.new(1815, 18, -785),
            Vector3.new(1850, 18, -785)
        },

        ["Stage 20"] = {
            Vector3.new(1815, 18, -585),
            Vector3.new(1850, 18, -585)
        },

        ["Stage 19"] = {
            Vector3.new(1815, 18, -390),
            Vector3.new(1850, 18, -390)
        },

        ["Stage 18"] = {
            Vector3.new(1815, 18, -195),
            Vector3.new(1850, 18, -195)
        },

        ["Stage 17"] = {
            Vector3.new(1815, 18, 0),
            Vector3.new(1850, 18, 0)
        },

        ["Stage 16"] = {
            Vector3.new(1815, 18, 200),
            Vector3.new(1850, 18, 200)
        },

        ["Stage 15"] = {
            Vector3.new(1815, 18, 400),
            Vector3.new(1850, 18, 400)
        },

        ["Stage 14"] = {
            Vector3.new(1815, 18, 595),
            Vector3.new(1850, 18, 595)
        },

        ["Stage 13"] = {
            Vector3.new(1815, 18, 790),
            Vector3.new(1850, 18, 790)
        },

        ["Stage 12"] = {
            Vector3.new(1815, 18, 985),
            Vector3.new(1850, 18, 985)
        },

        ["Stage 11"] = {
            Vector3.new(1815, 18, 1180),
            Vector3.new(1850, 18, 1180)
        },

        ["Stage 10"] = {
            Vector3.new(1815, 18, 1365),
            Vector3.new(1850, 18, 1365)
        },

        ["Stage 9"] = {
            Vector3.new(1815, 18, 1548),
            Vector3.new(1850, 18, 1548)
        },

        ["Stage 8"] = {
            Vector3.new(1815, 18, 1730),
            Vector3.new(1850, 18, 1730)
        },

        ["Stage 7"] = {
            Vector3.new(1815, 18, 1910),
            Vector3.new(1855, 18, 1910)
        },

        ["Stage 6"] = {
            Vector3.new(1815, 18, 2085),
            Vector3.new(1855, 18, 2085)
        },

        ["Stage 5"] = {
            Vector3.new(1815, 18, 2230),
            Vector3.new(1855, 18, 2230)
        },

        ["Stage 4"] = {
            Vector3.new(1815, 18, 2365),
            Vector3.new(1855, 18, 2365)
        },

        ["Stage 3"] = {
            Vector3.new(1815, 18, 2335),
            Vector3.new(1856, 18, 2335)
        },

        ["Stage 2"] = {
            Vector3.new(1815, 18, 2525),
            Vector3.new(1855, 18, 2525)
        },

        ["Stage 1"] = {
            Vector3.new(1815, 18, 2712),
            Vector3.new(1855, 18, 2712)
        }

    },

	    ["World 3"] = {

        ["Stage 25"] = {
            Vector3.new(1815, 18, -1538),
            Vector3.new(1855, 18, -1538)
        },

        ["Stage 24"] = {
            Vector3.new(1815, 18, -1380),
            Vector3.new(1855, 18, -1380)
        },

        ["Stage 23"] = {
            Vector3.new(1815, 18, -1180),
            Vector3.new(1855, 18, -1180)
        },

        ["Stage 22"] = {
            Vector3.new(1815, 18, -985),
            Vector3.new(1855, 18, -985)
        },

        ["Stage 21"] = {
            Vector3.new(1815, 18, -785),
            Vector3.new(1855, 18, -785)
        },

        ["Stage 20"] = {
            Vector3.new(1815, 18, -585),
            Vector3.new(1855, 18, -585)
        },

        ["Stage 19"] = {
            Vector3.new(1815, 18, -390),
            Vector3.new(1855, 18, -390)
        },

        ["Stage 18"] = {
            Vector3.new(1815, 18, -195),
            Vector3.new(1855, 18, -195)
        },

        ["Stage 17"] = {
            Vector3.new(1815, 18, 0),
            Vector3.new(1855, 18, 0)
        },

        ["Stage 16"] = {
            Vector3.new(1815, 18, 200),
            Vector3.new(1855, 18, 200)
        },

        ["Stage 15"] = {
            Vector3.new(1815, 18, 400),
            Vector3.new(1855, 18, 400)
        },

        ["Stage 14"] = {
            Vector3.new(1815, 18, 595),
            Vector3.new(1855, 18, 595)
        },

        ["Stage 13"] = {
            Vector3.new(1815, 18, 790),
            Vector3.new(1855, 18, 790)
        },

        ["Stage 12"] = {
            Vector3.new(1815, 18, 985),
            Vector3.new(1855, 18, 985)
        },

        ["Stage 11"] = {
            Vector3.new(1815, 18, 1180),
            Vector3.new(1855, 18, 1180)
        },

        ["Stage 10"] = {
            Vector3.new(1815, 18, 1365),
            Vector3.new(1855, 18, 1365)
        },

        ["Stage 9"] = {
            Vector3.new(1815, 18, 1548),
            Vector3.new(1855, 18, 1548)
        },

        ["Stage 8"] = {
            Vector3.new(1815, 18, 1730),
            Vector3.new(1855, 18, 1730)
        },

        ["Stage 7"] = {
            Vector3.new(1815, 18, 1910),
            Vector3.new(1855, 18, 1910)
        },

        ["Stage 6"] = {
            Vector3.new(1815, 18, 2085),
            Vector3.new(1855, 18, 2085)
        },

        ["Stage 5"] = {
            Vector3.new(1815, 18, 2230),
            Vector3.new(1855, 18, 2230)
        },

        ["Stage 4"] = {
            Vector3.new(1815, 18, 2365),
            Vector3.new(1855, 18, 2365)
        },

        ["Stage 3"] = {
            Vector3.new(1815, 18, 2495),
            Vector3.new(1855, 18, 2495)
        },

        ["Stage 2"] = {
            Vector3.new(1815, 18, 2630),
            Vector3.new(1855, 18, 2630)
        },

        ["Stage 1"] = {
            Vector3.new(1815, 18, 2745),
            Vector3.new(1855, 18, 2745)
        }

    },

	    ["World 4"] = {

        ["Stage 25"] = {
            Vector3.new(1815, 18, -1538),
            Vector3.new(1855, 18, -1538)
        },

        ["Stage 24"] = {
            Vector3.new(1815, 18, -1380),
            Vector3.new(1855, 18, -1380)
        },

        ["Stage 23"] = {
            Vector3.new(1815, 18, -1180),
            Vector3.new(1855, 18, -1180)
        },

        ["Stage 22"] = {
            Vector3.new(1815, 18, -985),
            Vector3.new(1855, 18, -985)
        },

        ["Stage 21"] = {
            Vector3.new(1815, 18, -785),
            Vector3.new(1855, 18, -785)
        },

        ["Stage 20"] = {
            Vector3.new(1815, 18, -585),
            Vector3.new(1855, 18, -585)
        },

        ["Stage 19"] = {
            Vector3.new(1815, 18, -390),
            Vector3.new(1855, 18, -390)
        },

        ["Stage 18"] = {
            Vector3.new(1815, 18, -195),
            Vector3.new(1855, 18, -195)
        },

        ["Stage 17"] = {
            Vector3.new(1815, 18, 0),
            Vector3.new(1855, 18, 0)
        },

        ["Stage 16"] = {
            Vector3.new(1815, 18, 200),
            Vector3.new(1855, 18, 200)
        },

        ["Stage 15"] = {
            Vector3.new(1815, 18, 400),
            Vector3.new(1855, 18, 400)
        },

        ["Stage 14"] = {
            Vector3.new(1815, 18, 595),
            Vector3.new(1855, 18, 595)
        },

        ["Stage 13"] = {
            Vector3.new(1815, 18, 790),
            Vector3.new(1855, 18, 790)
        },

        ["Stage 12"] = {
            Vector3.new(1815, 18, 985),
            Vector3.new(1855, 18, 985)
        },

        ["Stage 11"] = {
            Vector3.new(1815, 18, 1180),
            Vector3.new(1855, 18, 1180)
        },

        ["Stage 10"] = {
            Vector3.new(1815, 18, 1365),
            Vector3.new(1855, 18, 1365)
        },

        ["Stage 9"] = {
            Vector3.new(1815, 18, 1548),
            Vector3.new(1855, 18, 1548)
        },

        ["Stage 8"] = {
            Vector3.new(1815, 18, 1730),
            Vector3.new(1855, 18, 1730)
        },

        ["Stage 7"] = {
            Vector3.new(1815, 18, 1910),
            Vector3.new(1855, 18, 1910)
        },

        ["Stage 6"] = {
            Vector3.new(1815, 18, 2085),
            Vector3.new(1855, 18, 2085)
        },

        ["Stage 5"] = {
            Vector3.new(1815, 18, 2230),
            Vector3.new(1855, 18, 2230)
        },

        ["Stage 4"] = {
            Vector3.new(1815, 18, 2365),
            Vector3.new(1855, 18, 2365)
        },

        ["Stage 3"] = {
            Vector3.new(1815, 18, 2495),
            Vector3.new(1855, 18, 2495)
        },

        ["Stage 2"] = {
            Vector3.new(1815, 18, 2630),
            Vector3.new(1855, 18, 2630)
        },

        ["Stage 1"] = {
            Vector3.new(1815, 18, 2745),
            Vector3.new(1855, 18, 2745)
        }

    }
}

Game1Tab({
    Name = "Seleccionar Mundo",

    Options = {
        "World 1",
        "World 2",
        "World 3",
        "World 4"
    },

    CurrentOption = {
        "World 1"
    },

    Flag = "SelectedWorld",

    Callback = function(Option)
        SelectedWorld = Option[1]
    end,
})

Game1Tab({
    Name = "Seleccionar Stage",

    Options = {
        "Stage 25",
        "Stage 24",
        "Stage 23",
        "Stage 22",
        "Stage 21",
        "Stage 20",
        "Stage 19",
        "Stage 18",
        "Stage 17",
        "Stage 16",
        "Stage 15",
        "Stage 14",
        "Stage 13",
        "Stage 12",
        "Stage 11",
        "Stage 10",
        "Stage 9",
        "Stage 8",
        "Stage 7",
        "Stage 6",
        "Stage 5",
        "Stage 4",
        "Stage 3",
        "Stage 2",
        "Stage 1"
    },

    CurrentOption = {
        "Stage 25"
    },

    Flag = "SelectedStage",

    Callback = function(Option)
        SelectedStage = Option[1]
    end,
})

Game1Tab({
    Name = "AutoFarm",

    CurrentValue = false,

    Flag = "AutoFarm",

    Callback = function(Value)
        AutoFarm = Value

        if AutoFarm then
            task.spawn(function()
                local Players = game:GetService("Players")
                local player = Players.LocalPlayer

                local character =
                    player.Character
                    or player.CharacterAdded:Wait()

                local humanoid =
                    character:WaitForChild("Humanoid")

                local root =
                    character:WaitForChild("HumanoidRootPart")

                while AutoFarm do
                    local puntos =
                        StagePositions[SelectedWorld][SelectedStage]

                    for _, destino in ipairs(puntos) do
                        while AutoFarm
                            and (root.Position - destino).Magnitude > 5 do

                            local ultimaPos = root.Position

                            humanoid:MoveTo(destino)
                            task.wait(0.2)

                            -- Si nos hemos teletransportado, pasa al siguiente punto
                            if (root.Position - ultimaPos).Magnitude > 15 then
                                break
                            end
                        end

                        if not AutoFarm then
                            break
                        end
                    end
                end

                humanoid:Move(Vector3.zero, true)
            end)
        end
    end,
})

Game1Tab({
    Name = "Auto Damage Wall",

    CurrentValue = false,

    Flag = "AutoDamageWall",

    Callback = function(Value)
        AutoDamageWall = Value

        if AutoDamageWall then
            task.spawn(function()
                while AutoDamageWall do
                    DamageEvent:FireServer()
                    task.wait(0.01)
                end
            end)
        end
    end,
})

Game1Tab("AutoFarm Strength")

Game1Tab({
    Name = " Fast AutoClick (Rejoin When Disable)",

    CurrentValue = false,

    Flag = "AutoClickGame1",

    Callback = function(Value)
        AutoClickGame1 = Value

        if AutoClickGame1 then
            task.spawn(function()
                while AutoClickGame1 do
                    for i = 1, 80 do
                        ClickEvent:FireServer()
                    end

                    task.wait()
                end
            end)
        end
    end,
})

Game1Tab({
    Name = "Auto Rebirth (1 each 30 mins)",

    CurrentValue = false,

    Flag = "AutoRebirth",

    Callback = function(Value)
        AutoRebirth = Value

        if AutoRebirth then
            task.spawn(function()
                while AutoRebirth do
                    RebirthEvent:FireServer()
                    task.wait(1800)
                end
            end)
        end
    end,
})

DevTab("Developer Tools")

DevTab({
    Name = "Mostrar coordenadas",

    Callback = function()
        local player = game.Players.LocalPlayer

		local character = player.Character or player.CharacterAdded:Wait()
        local root = character:WaitForChild("HumanoidRootPart")
        local pos = root.Position

        Rayfield:Notify({
            Title = "Tus coordenadas",

            Content = string.format(
                "X: %.2f\nY: %.2f\nZ: %.2f",
                pos.X,
                pos.Y,
                pos.Z
            ),

            Duration = 8,
            Image = 4483362458
        })

        print(string.format(
            "Vector3.new(%.2f, %.2f, %.2f)",
            pos.X,
            pos.Y,
            pos.Z
        ))
    end,
})
