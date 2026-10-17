local Scripts = {
    ["10430600758"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/TotallyNOTGambling.lua",
    ["7395930870"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/SellLemons.lua",
    ["10768399438"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/HowToDrift.lua",
    ["10769709426"]   = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/BrainrotTrading.lua",
    ["10098095975"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/%2B1StrengthPerClick.lua",
    ["8185839087"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/BiggerEveryStep.lua",
    ["10152905521"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/%2B1MuscletoBreakWalls.lua",
    ["10323871857"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/Zenith.lua",
    ["10767138232"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/KukirinLife.lua",
    ["10765256426"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/WheelieOnKukirin.lua",
    ["10770342542"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/EscooterLife.lua",
    ["10514330086"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/DeagleDuels.lua",
}

local gameId = tostring(game.GameId)
local url = Scripts[gameId]

if url then
    print("[Draxi Loader] Juego detectado (" .. gameId .. "). Cargando script...")
    local ok, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    if not ok then
        warn("[Draxi Loader] Error al ejecutar el script: " .. tostring(err))
    end
else
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Drac311/lib/refs/heads/main/DraxiLib.lua"))()

    local Window = Library:CreateWindow({
        Name = "Draxi Loader",
        Footer = "",
        Discord = "",
        StartVisible = true,
        ConfigName = "LoaderError",
    })

    local function Find(parent, name)
        return parent and parent:FindFirstChild(name, true)
    end

    local function CopyText(text)
        local fn = setclipboard or toclipboard or set_clipboard or (syn and syn.write_clipboard) or (Clipboard and Clipboard.set)
        if fn then
            return (pcall(fn, text))
        end
        return false
    end

    local root = Find(Window.Gui, "DraxiScript")
    if root then
        local ds = root:FindFirstChild("DS")
        if ds then ds:Destroy() end
        local shadow = root:FindFirstChild("DS_Shadow")
        if shadow then shadow:Destroy() end
    end

    local pages = Find(Window.Gui, "Pages")
    if pages then pages.Visible = false end

    local guiF = Find(Window.Gui, "Gui")
    if guiF then
        for _, child in ipairs(guiF:GetChildren()) do
            if child.Name ~= "TitleFrame" and child:IsA("GuiObject") then
                child.Visible = false
            end
        end

        local errLabel = Instance.new("TextLabel")
        errLabel.Name = "ErrorLabel"
        errLabel.BackgroundTransparency = 1
        errLabel.Size = UDim2.new(0.85, 0, 0.25, 0)
        errLabel.Position = UDim2.new(0.5, 0, 0.45, 0)
        errLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        errLabel.Text = "ERROR: juego no soportado"
        errLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        errLabel.TextScaled = true
        errLabel.TextWrapped = true
        errLabel.FontFace = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        errLabel.Parent = guiF

        local limit = Instance.new("UITextSizeConstraint")
        limit.MaxTextSize = 40
        limit.Parent = errLabel

        local idBtn = Instance.new("TextButton")
        idBtn.Name = "IdButton"
        idBtn.BackgroundTransparency = 1
        idBtn.AutoButtonColor = false
        idBtn.Size = UDim2.new(0.85, 0, 0.15, 0)
        idBtn.Position = UDim2.new(0.5, 0, 0.62, 0)
        idBtn.AnchorPoint = Vector2.new(0.5, 0.5)
        idBtn.Text = "Game ID: " .. gameId
        idBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
        idBtn.TextScaled = true
        idBtn.TextWrapped = true
        idBtn.FontFace = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        idBtn.Parent = guiF

        local idLimit = Instance.new("UITextSizeConstraint")
        idLimit.MaxTextSize = 24
        idLimit.Parent = idBtn

        idBtn.MouseButton1Click:Connect(function()
            if CopyText(gameId) then
                idBtn.Text = "Game ID: " .. gameId .. " (Copied!)"
                task.delay(1.5, function()
                    if idBtn and idBtn.Parent then
                        idBtn.Text = "Game ID: " .. gameId
                    end
                end)
            end
        end)
    end

    local titleF = Find(Window.Gui, "TitleFrame")
    if titleF then
        local minBtn = titleF:FindFirstChild("minimize")
        if minBtn then minBtn.Visible = false end
    end

    local closeBtn = Find(Window.Gui, "close")
    if closeBtn then
        closeBtn.MouseButton1Click:Connect(function()
            Window:Destroy()
        end)
    end
end