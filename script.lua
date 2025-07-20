-- KING SCRIPT UI Estilo VTBR
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "KING SCRIPT",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "KingScript"
})

-- Anti-AFK
local VirtualUser = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
    VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- MAIN
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddToggle({
    Name = "Auto Rock",
    Default = false,
    Callback = function(Value)
        if Value then
            print("Auto Rock ligado")
            -- Coloque sua lógica de farm na pedra aqui
        else
            print("Auto Rock desligado")
        end
    end    
})

MainTab:AddToggle({
    Name = "Rebirths",
    Default = false,
    Callback = function(Value)
        if Value then
            print("Rebirth automático ligado")
            -- Lógica de renascer aqui
        else
            print("Rebirth automático desligado")
        end
    end    
})

MainTab:AddToggle({
    Name = "Auto Equip Tools",
    Default = false,
    Callback = function(Value)
        if Value then
            print("Auto Equip Tools ligado")
            -- Código para equipar ferramentas
        else
            print("Auto Equip Tools desligado")
        end
    end    
})

MainTab:AddButton({
    Name = "Stats",
    Callback = function()
        print("Exibindo estatísticas...")
        -- Código para exibir stats aqui
    end    
})

-- Crie outras abas como Farm, Pets, Misc etc. da mesma forma:
local FarmTab = Window:MakeTab({Name = "Farm", Icon = "", PremiumOnly = false})
FarmTab:AddParagraph("Breve", "Mais funções serão adicionadas")

local PetsTab = Window:MakeTab({Name = "Pets", Icon = "", PremiumOnly = false})
PetsTab:AddParagraph("Breve", "Mais funções serão adicionadas")

local MiscTab = Window:MakeTab({Name = "Misc", Icon = "", PremiumOnly = false})
MiscTab:AddParagraph("Breve", "Mais funções serão adicionadas")

local KillerTab = Window:MakeTab({Name = "Killer", Icon = "", PremiumOnly = false})
KillerTab:AddParagraph("Breve", "Mais funções serão adicionadas")

local TeleportTab = Window:MakeTab({Name = "Teleport", Icon = "", PremiumOnly = false})
TeleportTab:AddParagraph("Breve", "Mais funções serão adicionadas")

local CreditsTab = Window:MakeTab({Name = "Credits", Icon = "", PremiumOnly = false})
CreditsTab:AddParagraph("Feito por:", "Sad & Nii - VTBR")

-- Inicia UI
OrionLib:Init()
