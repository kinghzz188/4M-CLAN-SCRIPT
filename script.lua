-- KING SCRIPT Muscle Legends UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("💪 KING SCRIPT - Muscle Legends", "DarkTheme")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Auto Farm")

-- Auto Rock (Farm Pedra)
local autoRock = false
MainSection:NewToggle("Auto Rock", "Farm automático na pedra", function(state)
    autoRock = state
    if autoRock then
        while autoRock and wait(0.2) do
            local args = {
                [1] = workspace:FindFirstChild("Rock"),
                [2] = "Hit"
            }
            game:GetService("ReplicatedStorage").Events.StrengthEvent:FireServer(unpack(args))
        end
    end
end)

-- Créditos
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Feito por KING - 4M CLAN SCRIPT")
CreditsSection:NewLabel("Script 100% gratuito")
