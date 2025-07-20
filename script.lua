-- Interface KING SCRIPT (estilo VTBR CLAN SCRIPT)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("▼ KING SCRIPT", "DarkTheme")

-- Aba Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("")

MainSection:NewToggle("▶Auto Rock", "Farm automático na pedra", function(state)
    if state then
        print("Auto Rock ligado")
    else
        print("Auto Rock desligado")
    end
end)

MainSection:NewToggle("▶Rebirths", "Renascer automaticamente", function(state)
    if state then
        print("Rebirth ligado")
    else
        print("Rebirth desligado")
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

-- Outras Abas
local Farm = Window:NewTab("Farm")
Farm:NewSection("Breve")

local Pets = Window:NewTab("Pets")
Pets:NewSection("Breve")

local Misc = Window:NewTab("Misc")
Misc:NewSection("Breve")

local Killer = Window:NewTab("Killer")
Killer:NewSection("Breve")

local Teleport = Window:NewTab("Teleport")
Teleport:NewSection("Breve")

local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Feito por Sad & Nii.")
CreditsSection:NewLabel("VTBR")

-- Sucesso
print("KING SCRIPT carregado com sucesso!")
