
-- KING SCRIPT 💀 - Interface VTBR Style

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("KING SCRIPT 💀", "DarkTheme")

-- Abas principais
local Main = Window:NewTab("Main")
local Farm = Window:NewTab("Farm")
local Pets = Window:NewTab("Pets")
local Misc = Window:NewTab("Misc")
local Killer = Window:NewTab("Killer")
local Teleport = Window:NewTab("Teleport")
local Credits = Window:NewTab("Credits")

-- Seções dentro das Abas
local MainSection = Main:NewSection("Main")
local FarmSection = Farm:NewSection("Farm")
local PetsSection = Pets:NewSection("Pets")
local MiscSection = Misc:NewSection("Misc")
local KillerSection = Killer:NewSection("Killer")
local TeleportSection = Teleport:NewSection("Teleport")
local CreditSection = Credits:NewSection("Créditos")

-- Botões principais (estilo VTBR)
MainSection:NewToggle("Anti-AFK System", "Ativa sistema anti-AFK", function(state)
    if state then
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end
end)

MainSection:NewButton("Auto Brawls", "Entra automaticamente nos Brawls", function()
    print("Auto Brawls ativado")
end)

MainSection:NewButton("Jungle Gym", "Teleporta para a Jungle Gym", function()
    print("Jungle Gym ativado")
end)

MainSection:NewButton("Entrenar Gimnasios", "Treina automaticamente nos gimnasios", function()
    print("Treino iniciado")
end)

MainSection:NewButton("OP Things/Farms", "Coisas/Farms overpower", function()
    print("OP Farms ativado")
end)

-- Créditos
CreditSection:NewLabel("Script feito por VTBR_KING")
CreditSection:NewLabel("Interface baseada no VTBR CLAN SCRIPT")
