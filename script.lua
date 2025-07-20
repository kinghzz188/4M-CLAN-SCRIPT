
-- KING SCRIPT 
-- Feito por KING

-- UI LIBRARY
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("KING SCRIPT 💀", "DarkTheme")

-- TABS
local MainTab = Window:NewTab("Main")
local FarmTab = Window:NewTab("Farm")
local PetsTab = Window:NewTab("Pets")
local MiscTab = Window:NewTab("Misc")
local KillerTab = Window:NewTab("Killer")
local TeleportTab = Window:NewTab("Teleport")
local CreditsTab = Window:NewTab("Credits")

-- MAIN SECTION
local MainSection = MainTab:NewSection("")

MainSection:NewToggle("Anti-AFK System", "Evita ser kickado por inatividade", function(state)
    if state then
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end
end)

MainSection:NewButton("Auto Brawls", "Participa automaticamente dos brawls", function()
    print("Auto Brawls ativado")
end)

MainSection:NewButton("Jungle Gym", "Teleporta e treina no Jungle Gym", function()
    print("Jungle Gym ativado")
end)

MainSection:NewButton("Entrenar Gimnasios", "Treina automaticamente nas academias", function()
    print("Treinando nas academias")
end)

MainSection:NewButton("OP Things/Farms", "Farms e recursos apelões", function()
    print("Farms ativados")
end)

-- CREDITS SECTION
local CreditsSection = CreditsTab:NewSection("Feito por KING")
CreditsSection:NewLabel("Obrigado por usar o KING SCRIPT 💀")
