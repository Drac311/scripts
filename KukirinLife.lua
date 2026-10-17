local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Drac311/lib/refs/heads/main/DraxiLib.lua"))()
local Players    = game:GetService("Players")
local RunService = game:GetService("RunService")
local VIM        = game:GetService("VirtualInputManager")

local Window = Library:CreateWindow({
    Name = "Draxi Hub",
    Footer = "Join the discord for more updates!",
    ToggleText = "DS",
    ToggleScale = 0.8,
    StartVisible = true,
    ConfigName = "HoldWD",
    ScriptUrl = "",
})
local Tab = Window:CreateTab("Auto Farm")

-- ─── Config ────────────────────────────────────────────────────
local TARGET_SPEED = 20
local TARGET_RADIUS = 25
local MIN_SPEED     = 5
local REFRESH       = 0.05
local OMEGA_CLAMP   = 4
local STUCK_TIME    = 1.0
local UNSTUCK_TIME  = 0.35

-- ─── Estado ────────────────────────────────────────────────────
local active      = false
local conn        = nil
local lastRefresh = 0
local keyW        = false
local keyD        = false
local lastHeading = nil
local smoothSpeed = 0
local smoothOmega = 0
local prevSpeed   = 0
local stuckTimer  = 0
local unstuckUntil = 0

local function sendKey(state, key)
    pcall(function() VIM:SendKeyEvent(state, key, false, game) end)
end

local function setW(state)
    if keyW == state then return end
    keyW = state
    sendKey(state, Enum.KeyCode.W)
end

local function setD(state)
    if keyD == state then return end
    keyD = state
    sendKey(state, Enum.KeyCode.D)
end

local function getSeat()
    local char = Players.LocalPlayer.Character
    if not char then return nil end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum or not hum.SeatPart then return nil end
    return hum.SeatPart:IsA("VehicleSeat") and hum.SeatPart or nil
end

local function getVehicle(seat)
    local v = seat.Parent
    while v and not v:IsA("Model") do v = v.Parent end
    return v
end

local function update(dt)
    if not active then return end
    if dt <= 0 or dt > 0.2 then dt = 1/60 end

    local seat = getSeat()
    if not seat then stop() return end
    local vehicle = getVehicle(seat)
    local part = (vehicle and vehicle.PrimaryPart) or seat

    local now = tick()

    -- Refresh de teclas (solo si están pulsadas)
    if now - lastRefresh >= REFRESH then
        lastRefresh = now
        if keyW then sendKey(true, Enum.KeyCode.W) end
        if keyD then sendKey(true, Enum.KeyCode.D) end
    end

    -- Medir velocidad (filtrada)
    local v = part.AssemblyLinearVelocity
    local hVel = Vector3.new(v.X, 0, v.Z)
    local rawSpeed = hVel.Magnitude
    smoothSpeed = smoothSpeed * 0.7 + rawSpeed * 0.3

    -- Anti-stuck: si la velocidad se hunde, soltar teclas un instante
    if unstuckUntil > 0 then
        if now < unstuckUntil then
            setW(false)
            setD(false)
            return
        else
            unstuckUntil = 0
            stuckTimer = 0
            lastHeading = nil
            smoothOmega = 0
        end
    end

    if smoothSpeed < 0.8 then
        stuckTimer = stuckTimer + dt
        if stuckTimer > STUCK_TIME then
            unstuckUntil = now + UNSTUCK_TIME
            stuckTimer = 0
            setW(false)
            setD(false)
            return
        end
    else
        stuckTimer = 0
    end

    -- Medir omega con LookVector (más estable que velocidad)
    local look = part.CFrame.LookVector
    local heading = math.atan2(look.X, look.Z)
    local rawOmega = 0
    if rawSpeed > 2 and lastHeading then
        local dH = heading - lastHeading
        if dH >  math.pi then dH = dH - 2*math.pi end
        if dH < -math.pi then dH = dH + 2*math.pi end
        rawOmega = math.abs(dH) / dt
        if rawOmega > OMEGA_CLAMP then rawOmega = 0 end   -- salto → ignorar
    end
    lastHeading = heading
    smoothOmega = smoothOmega * 0.6 + rawOmega * 0.4

    -- Choque: velocidad se desploma de golpe → resetear dinámicas
    if prevSpeed > 10 and smoothSpeed < 2 then
        lastHeading = nil
        smoothOmega = 0
        stuckTimer = 0
    end
    prevSpeed = smoothSpeed

    -- Control
    local targetOmega = smoothSpeed / TARGET_RADIUS

    -- W: soltar si no está girando lo suficiente (para cerrar el círculo)
    if smoothSpeed < MIN_SPEED then
        setW(true)
    elseif smoothOmega < targetOmega * 0.6 then
        setW(false)
    elseif smoothSpeed < TARGET_SPEED - 3 then
        setW(true)
    elseif smoothSpeed > TARGET_SPEED + 3 then
        setW(false)
    end

    -- D: histéresis para evitar temblor
    if smoothSpeed < MIN_SPEED then
        setD(true)
    elseif smoothOmega < targetOmega * 0.85 then
        setD(true)
    elseif smoothOmega > targetOmega * 1.25 then
        setD(false)
    end
end

local function start()
    if active then return end
    if not getSeat() then
        print("[Auto Farm] Get on the scooter first")
        return
    end
    active = true
    keyW = false
    keyD = false
    lastHeading = nil
    smoothSpeed = 0
    smoothOmega = 0
    prevSpeed = 0
    stuckTimer = 0
    unstuckUntil = 0
    lastRefresh = 0
    conn = RunService.Heartbeat:Connect(update)
    print("[Auto Farm] ON")
end

local function stop()
    if not active then return end
    active = false
    if conn then conn:Disconnect() conn = nil end
    setW(false)
    setD(false)
    print("[Auto Farm] OFF")
end

Tab:CreateLabel("Get on the scooter and enable")

Tab:CreateToggle({
    Name = "Auto Farm",
    Default = false,
    Callback = function(s) if s then start() else stop() end end,
})

Window:OnDestroy(stop)
Players.LocalPlayer.CharacterAdded:Connect(function()
    if active then stop() end
end)