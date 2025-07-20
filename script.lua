--[[
    VTBR CLAN SCRIPT - Muscle Legends
    Criado por KING
--]]

-- UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("💪 VTBR CLAN SCRIPT", "DarkTheme")

-- ABA: Main
local TabMain = Window:NewTab("Main")
local SectionMain = TabMain:NewSection("Auto Farm")

-- ABA: Farm
local TabFarm = Window:NewTab("Farm")
local SectionAutoRock = TabFarm:NewSection("Auto Rock")
local SectionRebirth = TabFarm:NewSection("Rebirths")
local SectionEquip = TabFarm:NewSection("Auto Equip Tools")
local SectionStats = TabFarm:NewSection("Stats")

-- Auto Rock
local autoRockEnabled = false
local selectedRock = ""

local rocks = {
    "Tiny Rock",
    "Starter Rock",
    "Legend Beach Rock",
    "Frozen Rock",
    "Mythical Rock",
    "Eternal Rock",
    "Legend Rock",
    "Muscle King Rock",
    "Jungle Rock"
}

SectionAutoRock:NewToggle("Auto Rock", "Ativa/desativa Auto Rock", function(state)
    autoRockEnabled = state
end)

for _, rock in ipairs(rocks) do
    SectionAutoRock:NewButton(rock, "Selecionar " .. rock, function()
        selectedRock = rock
        game.StarterGui:SetCore("SendNotification", {
            Title = "Auto Rock",
            Text = rock .. " selecionada",
            Duration = 3
        })
    end)
end

-- Loop de Auto Rock
task.spawn(function()
    while true do
        if autoRockEnabled and selectedRock ~= "" then
            local tool = nil
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == selectedRock then
                    tool = v
                    break
                end
            end
            if tool then
                tool.Parent = game.Players.LocalPlayer.Character
                tool:Activate()
            end
        end
        task.wait(0.5)
    end
end)

-- Abas restantes (exemplo de estrutura)
local TabPets = Window:NewTab("Pets")
TabPets:NewSection("Sistema de Pets em breve...")

local TabMisc = Window:NewTab("Misc")
TabMisc:NewSection("Outros recursos aqui.")

local TabKiller = Window:NewTab("Killer")
TabKiller:NewSection("Modo PVP em breve...")

local TabTeleport = Window:NewTab("Teleport")
TabTeleport:NewSection("Teleporte personalizado em breve...")

local TabCredits = Window:NewTab("Credits")
TabCredits:NewSection("Feito por: KING / VTBR CLAN")

-- FIM
