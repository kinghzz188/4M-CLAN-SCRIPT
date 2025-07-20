-- KING SCRIPT Muscle Legends UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("💪 KING SCRIPT - Muscle Legends", "DarkTheme")

-- Main Tab
local Main = Window:NewTab("Main")
local FarmSection = Main:NewSection("Auto Farm")

-- Variáveis
local autoRock = false
local selectedRock = "Tiny Rock"

-- Dropdown de Pedras
FarmSection:NewDropdown("Selecionar Pedra", "Escolha a pedra para farmar", {
    "Tiny Rock", "Starter Rock", "Legend Beach Rock", "Frozen Rock",
    "Mythical Rock", "Eternal Rock", "Legend Rock", "Muscle King Rock", "Jungle Rock"
}, function(option)
    selectedRock = option
end)

-- Toggle Auto Rock
FarmSection:NewToggle("Auto Rock", "Farm automático na pedra", function(state)
    autoRock = state
    if autoRock then
        while autoRock and wait(0.3) do
            local rock = workspace:FindFirstChild(selectedRock)
            if rock then
                game:GetService("ReplicatedStorage").Events.StrengthEvent:FireServer(rock, "Hit")
            end
        end
    end
end)

-- Créditos
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Feito por KING - 4M CLAN SCRIPT")
CreditsSection:NewLabel("Script 100% gratuito")
