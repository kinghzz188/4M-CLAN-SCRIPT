-- Carrega a interface estilo Kavo UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("▼ KING SCRIPT", "DarkTheme")

-- 🧱 Aba Principal (Main)
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Farm")

-- Auto Rock
local autoRock = false
MainSection:NewToggle("▶ Auto Rock", "Ativa farm na pedra", function(state)
    autoRock = state
    while autoRock do
        local args = {[1] = workspace:FindFirstChild("RockStage")}
        game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
        task.wait(0.1)
    end
end)

-- Auto Rebirth
local autoRebirth = false
MainSection:NewToggle("▶ Auto Rebirth", "Rebirth automático", function(state)
    autoRebirth = state
    while autoRebirth do
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
        task.wait(1)
    end
end)

-- Auto Equip
MainSection:NewButton("▶ Auto Equip Tool", "Equipe a ferramenta automaticamente", function()
    local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
    if tool then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end)

-- 📊 Stats
MainSection:NewButton("▼ Mostrar Stats", "Abre estatísticas", function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "KING SCRIPT",
        Text = "Mostrando estatísticas...",
        Duration = 3
    })
end)

-- 🐾 Aba de Pets
local Pets = Window:NewTab("Pets")
local PetsSection = Pets:NewSection("Em breve")

-- 💀 Killer
local Killer = Window:NewTab("Killer")
local KillerSection = Killer:NewSection("Em breve")

-- 🌍 Teleport
local Teleport = Window:NewTab("Teleport")
local TeleportSection = Teleport:NewSection("Em breve")

-- 🎮 Misc
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Anti AFK")

-- Anti AFK
MiscSection:NewButton("▶ Ativar Anti-AFK", "Evita ser kickado por inatividade", function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "KING SCRIPT",
        Text = "Anti AFK Ativado",
        Duration = 5
    })
end)

-- 🙏 Créditos
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Criado por KING")
CreditsSection:NewLabel("Script feito com ChatGPT")

print("KING SCRIPT carregado com sucesso.")
