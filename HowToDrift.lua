--[[
    DraxiLib + Auto Farm (all-in-one)
]]

-- 1. Load the library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Drac311/lib/refs/heads/main/DraxiLib.lua"))()

-- 2. Main window
local Window = Library:CreateWindow({
    Name = "Draxi Hub",
    Footer = "Join the discord for more updates!",
    ToggleText = "DS",
    ToggleScale = 0.8,
    ToggleKey = Enum.KeyCode.RightShift,
    StartVisible = false,
    Scale = 1,
    ConfigName = "CarStateInterceptor",
    ScriptUrl = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/HowToDrift.lua",
})

-- 3. Tab
local Tab = Window:CreateTab("Auto Farm")

-- 4. Services and references
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players           = game:GetService("Players")
local RunService        = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer

local DriftFolder = ReplicatedStorage:WaitForChild("Drift")
local Remotes     = DriftFolder:WaitForChild("Remotes")

local CarState    = Remotes:WaitForChild("CarState")
local SubmitDrift = Remotes:WaitForChild("SubmitDrift")

-- Fixed arguments
local FIXED_ARGS_CARSTATE = { 4316, 0, 0.0050715155183604921, 13 }
local FIXED_ARGS_SUBMIT   = { 475, 8.2614388410001993 }

---------------------------------------------------------------------
-- Utilities
---------------------------------------------------------------------
local function GetCharacter()
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local hrp  = char:WaitForChild("HumanoidRootPart")
    local hum  = char:WaitForChild("Humanoid")
    return char, hrp, hum
end

---------------------------------------------------------------------
-- NOCLIP
---------------------------------------------------------------------
local noclipConn
local function EnableNoclip()
    if noclipConn then return end
    noclipConn = RunService.Stepped:Connect(function()
        local char = LocalPlayer.Character
        if not char then return end
        for _, part in ipairs(char:GetDescendants()) do
            if part:IsA("BasePart") and part.CanCollide then
                part.CanCollide = false
            end
        end
    end)
end

local function DisableNoclip()
    if noclipConn then
        noclipConn:Disconnect()
        noclipConn = nil
    end
    local char = LocalPlayer.Character
    if char then
        for _, part in ipairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end

---------------------------------------------------------------------
-- CarState HOOKS
---------------------------------------------------------------------
local oldNamecall
local oldFireServer

local function InstallHook()
    if oldNamecall or oldFireServer then return end

    oldNamecall = hookmetamethod(game, "__namecall", function(...)
        local self = ...
        local method = getnamecallmethod()
        if rawequal(self, CarState) and method == "FireServer" then
            local result = table.pack(oldNamecall(self, table.unpack(FIXED_ARGS_CARSTATE)))
            return table.unpack(result, 1, result.n)
        end
        return oldNamecall(...)
    end)

    oldFireServer = hookfunction(CarState.FireServer, function(...)
        local self = ...
        if rawequal(self, CarState) then
            local result = table.pack(oldFireServer(self, table.unpack(FIXED_ARGS_CARSTATE)))
            return table.unpack(result, 1, result.n)
        end
        return oldFireServer(self, ...)
    end)
end

local function RemoveHook()
    if oldNamecall then
        hookmetamethod(game, "__namecall", oldNamecall)
        oldNamecall = nil
    end
    if oldFireServer then
        hookfunction(CarState.FireServer, oldFireServer)
        oldFireServer = nil
    end
end

---------------------------------------------------------------------
-- AUTO FARM (all-in-one)
---------------------------------------------------------------------
local farmRunning = false
local submitRunning = false
local farmConn
local submitThread

local RADIUS      = 50
local ANGULAR_VEL = math.rad(60)  -- 60 deg/sec

local function StartFarm()
    local char, hrp, hum = GetCharacter()
    if not hrp then
        Window:Notify({ Title = "Auto Farm", Content = "Character not found", Duration = 3 })
        return
    end

    -- 1) Enable everything
    EnableNoclip()
    InstallHook()

    -- 2) Auto SubmitDrift
    submitRunning = true
    submitThread = task.spawn(function()
        while submitRunning do
            pcall(function()
                SubmitDrift:FireServer(table.unpack(FIXED_ARGS_SUBMIT))
            end)
            task.wait(0.18)
        end
    end)

    -- 3) Circular motion from current position +20 studs
    local originCF = hrp.CFrame
    local startPos = originCF.Position + Vector3.new(0, 20, 0)
    local baseRot  = originCF - originCF.Position

    hrp.Anchored = true
    if hum then hum.PlatformStand = true end

    -- Smoothly rise 20 studs
    local t = 0
    while t < 1 and farmRunning do
        t = math.min(t + 0.05, 1)
        local target = originCF.Position:Lerp(startPos, t)
        hrp.CFrame = CFrame.new(target) * baseRot
        task.wait(0.02)
    end

    -- Continuous circle
    local angle = 0
    local lastTime = tick()
    farmConn = RunService.Heartbeat:Connect(function()
        if not farmRunning then return end
        local now = tick()
        local dt = now - lastTime
        lastTime = now

        angle = angle + ANGULAR_VEL * dt
        local offset = Vector3.new(
            math.cos(angle) * RADIUS,
            0,
            math.sin(angle) * RADIUS
        )
        hrp.CFrame = CFrame.new(startPos + offset) * baseRot
    end)
end

local function StopFarm()
    farmRunning = false
    submitRunning = false

    if farmConn then
        farmConn:Disconnect()
        farmConn = nil
    end

    -- Return the player to the ground
    local char, hrp, hum = GetCharacter()
    if hrp and hum then
        hrp.Anchored = false
        hum.PlatformStand = false
    end

    DisableNoclip()
    RemoveHook()
end

---------------------------------------------------------------------
-- Single toggle
---------------------------------------------------------------------
Tab:CreateToggle({
    Name = "Auto Farm",
    Default = false,
    Flag = "AutoFarmAll",
    Callback = function(state)
        if state then
            farmRunning = true
            task.spawn(StartFarm)
        else
            StopFarm()
        end
    end,
})

-- Single label under the toggle
Tab:CreateLabel("Enable it while you're moving")

-- Show the window
Window:SetVisible(true)

-- Cleanup on destroy
Window:OnDestroy(function()
    StopFarm()
end)