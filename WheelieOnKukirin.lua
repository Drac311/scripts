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
    ConfigName = "WheelieScript",
    ScriptUrl = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/WheelieOnKukirin.lua",
})
local Tab = Window:CreateTab("Drive")

local WheelieEvent = RS:WaitForChild("ScooterShared"):WaitForChild("Remotes"):WaitForChild("WheelieAngle")
local BurnoutEvent = RS:WaitForChild("ScooterShared"):WaitForChild("Remotes"):WaitForChild("Burnout")

local MIN_ANGLE   = 58
local MAX_ANGLE   = 62
local LERP_SPEED  = 6
local SPIN_RADIUS = 22
local SPIN_SPEED  = 3
local HOVER_HEIGHT = 30

local controllerEnabled = false
local locked = false
local targetInt = 60
local displayPitch = 0
local lastTargetUpdate = 0
local hoverActive = false
local hoverBaseY = nil

local autoFarm = false
local autoFarmToggle = nil

local function randomInt()
    return math.random(MIN_ANGLE, MAX_ANGLE)
end

do
    local okMt, mt = pcall(getrawmetatable, game)
    if okMt and mt and setreadonly and getnamecallmethod and newcclosure then
        local old = mt.__namecall
        pcall(setreadonly, mt, false)
        mt.__namecall = newcclosure(function(self, ...)
            if rawequal(self, WheelieEvent) and getnamecallmethod() == "FireServer" then
                local args = table.pack(...)
                local angle = args[1]
                if controllerEnabled then
                    if locked then
                        args[1] = targetInt
                        return old(self, table.unpack(args, 1, args.n))
                    elseif typeof(angle) == "number"
                       and angle >= MIN_ANGLE and angle <= MAX_ANGLE then
                        locked = true
                        targetInt = randomInt()
                        args[1] = randomInt()
                        return old(self, table.unpack(args, 1, args.n))
                    end
                end
            end
            return old(self, ...)
        end)
        pcall(setreadonly, mt, true)
    end
end

local function getHRP()
    local char = Players.LocalPlayer.Character
    return char and char:FindFirstChild("HumanoidRootPart")
end

local function getVehiclePart()
    local char = Players.LocalPlayer.Character
    if not char then return nil end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum or not hum.SeatPart then return nil end
    local vehicle = hum.SeatPart.Parent
    while vehicle and not vehicle:IsA("Model") do
        vehicle = vehicle.Parent
    end
    if vehicle and vehicle.PrimaryPart then
        return vehicle.PrimaryPart
    end
    return nil
end

local autoSpin    = false
local spinCenter  = nil
local spinAngle   = 0

local function resetSpin()
    local hrp = getHRP()
    if not hrp then return end
    pcall(function() hrp:SetNetworkOwner(Players.LocalPlayer) end)
    spinCenter = Vector3.new(hrp.Position.X, hrp.Position.Y, hrp.Position.Z)
    spinAngle = 0
    hoverBaseY = hrp.Position.Y
end

local BIND_NAME = "DraxiWheelieController"
local renderBound = false
local lastNow = 0

local function applyPitch(part, pitch, yOffset)
    if not part then return end
    pcall(function()
        local cf = part.CFrame
        local linVel = part.AssemblyLinearVelocity
        local angVel = part.AssemblyAngularVelocity

        local pos = cf.Position
        if yOffset and yOffset ~= 0 then
            pos = pos + Vector3.new(0, yOffset, 0)
        end

        local _, yaw, _ = cf:ToOrientation()
        part.CFrame = CFrame.new(pos)
            * CFrame.Angles(0, yaw, 0)
            * CFrame.Angles(pitch, 0, 0)

        part.AssemblyLinearVelocity = linVel
        part.AssemblyAngularVelocity = angVel
    end)
end

local function onRender()
    local now = tick()
    local dt  = math.clamp(now - lastNow, 0, 0.1)
    lastNow = now

    if controllerEnabled and locked then
        if now - lastTargetUpdate > 0.35 then
            lastTargetUpdate = now
            targetInt = randomInt()
        end
        local targetPitch = math.rad(targetInt)
        displayPitch = displayPitch + (targetPitch - displayPitch) * math.min(dt * LERP_SPEED, 1)
    else
        displayPitch = displayPitch + (0 - displayPitch) * math.min(dt * LERP_SPEED, 1)
    end

    local pitch = displayPitch + math.sin(now * 4.5) * math.rad(0.6)

    local hrp = getHRP()
    local vehiclePart = getVehiclePart()

    local yOffset = 0
    if hoverActive then
        yOffset = HOVER_HEIGHT
    end

    applyPitch(hrp, pitch, yOffset)
    if vehiclePart then applyPitch(vehiclePart, pitch, yOffset) end

    if autoSpin and spinCenter then
        local h = getHRP()
        if h then
            spinAngle = spinAngle + dt * SPIN_SPEED
            local offset = Vector3.new(
                math.cos(spinAngle) * SPIN_RADIUS, 0,
                math.sin(spinAngle) * SPIN_RADIUS)
            local basePos = spinCenter + offset
            if hoverActive then
                basePos = basePos + Vector3.new(0, HOVER_HEIGHT, 0)
            end
            local lookDir = spinCenter - basePos
            lookDir = Vector3.new(lookDir.X, 0, lookDir.Z)
            if lookDir.Magnitude > 0.01 then
                pcall(function()
                    h.CFrame = CFrame.new(basePos, basePos + lookDir)
                end)
            end
        end
    end
end

local function bindLoop()
    if renderBound then return end
    lastNow = tick()
    RunService:BindToRenderStep(BIND_NAME, Enum.RenderPriority.Character.Value + 1, onRender)
    renderBound = true
end

local function unbindLoop()
    if renderBound then
        pcall(function() RunService:UnbindFromRenderStep(BIND_NAME) end)
        renderBound = false
    end
end

local farmWatchConn

local function stopAutoFarm()
    autoFarm = false
    if farmWatchConn then
        farmWatchConn:Disconnect()
        farmWatchConn = nil
    end
    if autoFarmToggle then
        autoFarmToggle:Set(false, true)
    end
end

local function startAutoFarm()
    if autoFarm then return end
    autoFarm = true
    controllerEnabled = true
    locked = false
    hoverActive = false
    hoverBaseY = nil
    bindLoop()

    farmWatchConn = RunService.Heartbeat:Connect(function()
        if not autoFarm then return end
        if not locked then return end
        if not autoSpin then
            autoSpin = true
            resetSpin()
            hoverActive = true
        end
        stopAutoFarm()
    end)

    task.delay(20, function()
        if autoFarm and not locked then
            stopAutoFarm()
            controllerEnabled = false
            autoSpin = false
            spinCenter = nil
            hoverActive = false
            unbindLoop()
        end
    end)
end

Tab:CreateLabel("Wheelie at 58-62 to arm, then Auto Farm takes over")

autoFarmToggle = Tab:CreateToggle({
    Name = "Auto Farm",
    Default = false,
    Callback = function(state)
        if state then
            startAutoFarm()
        else
            stopAutoFarm()
            controllerEnabled = false
            locked = false
            autoSpin = false
            spinCenter = nil
            hoverActive = false
            unbindLoop()
        end
    end,
})

Tab:CreateToggle({
    Name = "Auto Spin",
    Default = false,
    Callback = function(state)
        autoSpin = state
        if state then
            resetSpin()
            bindLoop()
        else
            spinCenter = nil
            if not controllerEnabled then unbindLoop() end
        end
    end,
})

Tab:CreateToggle({
    Name = "Burnout",
    Default = false,
    Callback = function(state)
        if BurnoutEvent then
            pcall(function() BurnoutEvent:FireServer(state) end)
        end
    end,
})

Window:OnDestroy(function()
    controllerEnabled = false
    locked = false
    autoSpin = false
    hoverActive = false
    stopAutoFarm()
    unbindLoop()
end)

Players.LocalPlayer.CharacterAdded:Connect(function()
    locked = false
    spinCenter = nil
    hoverActive = false
end)