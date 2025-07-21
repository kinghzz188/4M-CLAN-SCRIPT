-- KING SCRIPT - Muscle Legends (Auto Punch + Fast Punch)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("👑 KING SCRIPT", "DarkTheme")

local Main = Window:NewTab("🏋️ COMBATE")
local Section = Main:NewSection("Funções de Soco")

-- Variáveis de controle
local autoPunch = false
local fastPunch = false

-- Toggle para Auto Punch
Section:NewToggle("Auto Punch 🤜", "Soca automaticamente", function(state)
    autoPunch = state
end)

-- Toggle para Fast Punch
Section:NewToggle("Fast Punch ⚡", "Soca mais rápido", function(state)
    fastPunch = state
end)

-- Loop do soco
spawn(function()
    while true do
        task.wait(fastPunch and 0.05 or 0.2)
        if autoPunch then
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Punch")
        end
    end
end)
