-- Interface KING SCRIPT
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("▼ KING SCRIPT", "DarkTheme")

-- Variáveis globais
_G.AutoRock = false

-- Função Auto Rock
function AutoRockFunc()
    while _G.AutoRock do
        pcall(function()
            local rock = game.Workspace:FindFirstChild("Rock")
            if rock then
                game:GetService("ReplicatedStorage").MuscleEvent:FireServer("GainMuscle")
            end
        end)
        task.wait(0.1)
    end
end

-- Main Tab
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Auto Farms")

MainSection:NewToggle("▶ Auto Rock", "Farm automático na pedra", function(state)
    _G.AutoRock = state
    if state then
        AutoRockFunc()
    end
end)

-- Credits
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Script feito por KING")
