-- Interface KING SCRIPT com barra preta no topo

-- Criar barra preta no topo
local TopBar = Instance.new("TextLabel")
TopBar.Text = "▼ KING SCRIPT"
TopBar.Size = UDim2.new(0, 300, 0, 30)
TopBar.Position = UDim2.new(0.5, -150, 0, 10)
TopBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TopBar.TextColor3 = Color3.fromRGB(255, 255, 255)
TopBar.Font = Enum.Font.SourceSansBold
TopBar.TextSize = 20
TopBar.BorderSizePixel = 0
TopBar.Name = "KingTopBar"
TopBar.Parent = game:GetService("CoreGui")

-- Script da interface Kavo
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

MainSection:NewToggle("▶Rebirths", "Rebirth automático", function(state)
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

-- Abas vazias
Window:NewTab("Farm"):NewSection("Breve")
Window:NewTab("Pets"):NewSection("Breve")
Window:NewTab("Misc"):NewSection("Breve")
Window:NewTab("Killer"):NewSection("Breve")
Window:NewTab("Teleport"):NewSection("Breve")

-- Créditos
local Credits = Window:NewTab("Credits")
Credits:NewSection("Script feito por Sad & Nii.")
Credits:NewSection("VTBR")

-- Mensagem final
print("KING SCRIPT com barra personalizada carregado com sucesso!")
