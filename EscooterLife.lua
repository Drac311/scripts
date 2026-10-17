local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Drac311/lib/refs/heads/main/DraxiLib.lua"))()

local Players    = game:GetService("Players")
local RunService = game:GetService("RunService")
local RS         = game:GetService("ReplicatedStorage")

local Window = Library:CreateWindow({
    Name = "Draxi Hub",
    Footer = "Join the discord for more updates!",
    ToggleText = "DS",
    ToggleScale = 0.8,
    StartVisible = true,
    ConfigName = "DownhillScript",
    ScriptUrl = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/EscooterLife.lua",
})
local Tab = Window:CreateTab("Downhill")

local Reliable = RS:WaitForChild("BLINK_RELIABLE_REMOTE", 10)

local inputPacket = buffer.create(1)
buffer.writeu8(inputPacket, 0, 6)

local function sendInput(v)
    pcall(function() Reliable:FireServer(inputPacket, { v }) end)
end

local TILT_DEGREES  = 60
local INPUT_VALUE   = Vector3.new(0, 1, 4)
local SEND_HZ       = 60
local TILT_PERIOD   = 9
local FLAT_PERIOD   = 6
local CYCLE_TIME    = TILT_PERIOD + FLAT_PERIOD
local CYCLES_BEFORE_PAUSE = 4
local PAUSE_TIME    = 3.5
local ACTIVE_TIME   = CYCLE_TIME * CYCLES_BEFORE_PAUSE

local active       = false
local conn
local lockX        = nil
local lockZ        = nil
local currentTilt  = 0
local tiltForward  = true
local groupElapsed = 0
local paused       = false
local pauseTimer   = 0
local initialPos   = nil

local function getChar()
    return Players.LocalPlayer.Character
end

local function getHRP()
    local char = getChar()
    if not char then return nil end
    return char:FindFirstChild("HumanoidRootPart")
end

local function getVehicle()
    local char = getChar()
    if not char then return nil end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum or not hum.SeatPart then return nil end
    local vehicle = hum.SeatPart.Parent
    while vehicle and not vehicle:IsA("Model") do
        vehicle = vehicle.Parent
    end
    return vehicle
end

local function stop()
    if conn then conn:Disconnect() conn = nil end
    active = false
    currentTilt = 0
    groupElapsed = 0
    paused = false
    pauseTimer = 0
    lockX = nil
    lockZ = nil
    initialPos = nil
    sendInput(Vector3.new(0, 0, 0))
end

local function start()
    if active then return end

    local hrp = getHRP()
    if hrp then
        initialPos = Vector3.new(hrp.Position.X, hrp.Position.Y, hrp.Position.Z)
        lockX = initialPos.X
        lockZ = initialPos.Z
    end

    active = true
    groupElapsed = 0
    currentTilt = 0
    paused = false
    pauseTimer = 0

    local accum = 0
    local interval = 1 / SEND_HZ

    conn = RunService.Heartbeat:Connect(function(dt)
        if not active then return end

        if paused then
            pauseTimer = pauseTimer + dt
            if pauseTimer >= PAUSE_TIME then
                paused = false
                pauseTimer = 0
                groupElapsed = 0
                local hrpNow = getHRP()
                if hrpNow then
                    lockX = hrpNow.Position.X
                    lockZ = hrpNow.Position.Z
                end
            end
            return
        end

        accum = accum + dt
        if accum >= interval then
            accum = accum - interval
            sendInput(INPUT_VALUE)
        end

        groupElapsed = groupElapsed + dt

        if groupElapsed >= ACTIVE_TIME then
            paused = true
            pauseTimer = 0
            currentTilt = 0
            lockX = nil
            lockZ = nil
            sendInput(Vector3.new(0, 0, 0))
            return
        end

        local phaseTime = groupElapsed % CYCLE_TIME
        local target = 0
        if phaseTime < TILT_PERIOD then
            target = math.rad(TILT_DEGREES) * (tiltForward and 1 or -1)
        end
        local speed = (target == 0) and 4 or 8
        currentTilt = currentTilt + (target - currentTilt) * math.min(dt * speed, 1)

        local hrpNow = getHRP()
        if hrpNow and lockX and lockZ then
            pcall(function()
                local pos = hrpNow.Position
                local locked = Vector3.new(lockX, pos.Y, lockZ)
                local _, yaw, _ = hrpNow.CFrame:ToOrientation()
                hrpNow.CFrame = CFrame.new(locked)
                    * CFrame.Angles(0, yaw, 0)
                    * CFrame.Angles(currentTilt, 0, 0)
            end)
        end

        local vehicle = getVehicle()
        if vehicle and vehicle.PrimaryPart and lockX and lockZ then
            pcall(function()
                local base = vehicle.PrimaryPart.CFrame
                local pos  = base.Position
                local locked = Vector3.new(lockX, pos.Y, lockZ)
                local _, yaw, _ = base:ToOrientation()
                vehicle.PrimaryPart.CFrame = CFrame.new(locked)
                    * CFrame.Angles(0, yaw, 0)
                    * CFrame.Angles(currentTilt, 0, 0)
            end)
        end
    end)
end

Tab:CreateLabel("Get on the scooter then enable Auto Farm")

Tab:CreateDropdown({
    Name = "Tilt Direction",
    Options = { "Backward", "Forward" },
    Default = "Backward",
    Callback = function(v)
        tiltForward = (v == "Backward")
    end,
})

Tab:CreateToggle({
    Name = "Auto Farm",
    Default = false,
    Callback = function(state)
        if state then start() else stop() end
    end,
})

Window:OnDestroy(stop)
Players.LocalPlayer.CharacterAdded:Connect(function()
    if active then stop() end
end)