-- Interface KING SCRIPT
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("▼ KING SCRIPT", "DarkTheme")

-- Main Tab
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("")

MainSection:NewToggle("▶Auto Rock", "Farm automático na pedra", function(state)
    if state then
        print("Auto Rock ligado")
    else
        print("Auto Rock desligado")
    end
end)

MainSection:NewToggle("▶Rebirths", "Rebirth automático", function(state)
    if state then
        print("Rebirth automático ligado")
    else
        print("Rebirth automático desligado")
    end
end)

MainSection:NewToggle("▶Auto Equip Tools", "Equipe ferramentas automaticamente", function(state)
    if state then
        print("Auto Equip Tools ligado")
    else
        print("Auto Equip Tools desligado")
    end
end)

MainSection:NewButton("▼ Stats", "Ver estatísticas", function()
    print("Mostrando stats...")
end)

-- Farm Tab
local Farm = Window:NewTab("Farm")
local FarmSection = Farm:NewSection("Breve")

-- Pets Tab
local Pets = Window:NewTab("Pets")
local PetsSection = Pets:NewSection("Breve")

-- Misc Tab
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Breve")

-- Killer Tab
local Killer = Window:NewTab("Killer")
local KillerSection = Killer:NewSection("Breve")

-- Teleport Tab
local Teleport = Window:NewTab("Teleport")
local TeleportSection = Teleport:NewSection("Breve")

-- Credits Tab
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Script feito por Sad & Nii.")
CreditsSection:NewLabel("VTBR")

-- Final
print("Interface carregada com sucesso!")
