-- Carrega a UI library Orion
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

-- Janela principal
local Window = OrionLib:MakeWindow({
    Name = "4M CLAN SCRIPT",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "4MCLANCONFIG"
})

-- Aba Main
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddButton({
    Name = "Auto Rebirth",
    Callback = function()
        print("Auto Rebirth ativado")
    end
})

MainTab:AddButton({
    Name = "Auto Upgrade",
    Callback = function()
        print("Auto Upgrade ativado")
    end
})

MainTab:AddButton({
    Name = "Auto Farm",
    Callback = function()
        print("Auto Farm ativado")
    end
})

-- Aba Teleport
local TeleportTab = Window:MakeTab({
    Name = "Teleport",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

TeleportTab:AddButton({Name = "Spawn", Callback = function() print("Teleport: Spawn") end})
TeleportTab:AddButton({Name = "Secret Area", Callback = function() print("Teleport: Secret Area") end})
TeleportTab:AddButton({Name = "Tiny Island", Callback = function() print("Teleport: Tiny Island") end})
TeleportTab:AddButton({Name = "Teleport Frozen", Callback = function() print("Teleport: Frozen") end})
TeleportTab:AddButton({Name = "Mythical", Callback = function() print("Teleport: Mythical") end})
TeleportTab:AddButton({Name = "Inferno", Callback = function() print("Teleport: Inferno") end})
TeleportTab:AddButton({Name = "Legend", Callback = function() print("Teleport: Legend") end})
TeleportTab:AddButton({Name = "Muscle King Gym", Callback = function() print("Teleport: Gym") end})
TeleportTab:AddButton({Name = "Jungle", Callback = function() print("Teleport: Jungle") end})
TeleportTab:AddButton({Name = "Brawl Lava", Callback = function() print("Teleport: Lava") end})
TeleportTab:AddButton({Name = "Brawl Desert", Callback = function() print("Teleport: Desert") end})
TeleportTab:AddButton({Name = "Brawl Regular", Callback = function() print("Teleport: Regular") end})

-- Aba Créditos
local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

CreditsTab:AddParagraph("Script feito por", "Sad & Nii.\nVTBR")

-- Inicializa a interface
OrionLib:Init()
