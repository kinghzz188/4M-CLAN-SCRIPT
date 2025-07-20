
-- KING SCRIPT Interface para Muscle Legends
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("▼ KING SCRIPT", "DarkTheme")

-- Main Tab
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Funções")

MainSection:NewToggle("▶ Auto Rock", "Farm automático na pedra", function(state)
    getgenv().AutoRock = state
    while getgenv().AutoRock do
        wait()
        local rock = game:GetService("Workspace").Rock
        if rock then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rock.CFrame
        end
    end
end)

MainSection:NewToggle("▶ Auto Rebirth", "Rebirth automático", function(state)
    getgenv().AutoRebirth = state
    while getgenv().AutoRebirth do
        wait(2)
        game:GetService("ReplicatedStorage").Rebirth:FireServer()
    end
end)

MainSection:NewToggle("▶ Auto Equip", "Equipe automaticamente", function(state)
    getgenv().AutoEquip = state
    while getgenv().AutoEquip do
        wait(1)
        game:GetService("ReplicatedStorage").EquipTool:FireServer("Fist")
    end
end)

MainSection:NewButton("▼ Stats", "Mostrar estatísticas", function()
    print("Stats ativado (a implementar)")
end)

-- Anti-AFK
local VirtualUser = game:service('VirtualUser')
game:service('Players').LocalPlayer.Idled:connect(function()
    VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- Créditos
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Feito por: KING")
CreditsSection:NewLabel("Interface estilo VTBR adaptada")
