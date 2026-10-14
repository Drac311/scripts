local Scripts = {
    ["99248560898681"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/TotallyNOTGambling.lua",
    ["79268393072444"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/SellLemons.lua",
    ["91374382281493"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/HowToDrift.lua",
    ["89677157950817"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/BrainrotTrading.lua",
    ["10769709426"]   = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/BrainrotTrading.lua",
    ["120766736586332"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/%2B1StrengthPerClick.lua",
    ["108284916145176"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/BiggerEveryStep.lua",
    ["93829858358973"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/%2B1MuscletoBreakWalls.lua",
    ["135526003033215"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/Zenith.lua",
    ["93377485784638"] = "https://raw.githubusercontent.com/Drac311/scripts/refs/heads/main/pvp-qot",
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
    warn("[Draxi Loader] No hay script asignado para este juego (ID: " .. gameId .. ")")
end
