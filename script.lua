-- KING SCRIPT INTERFACE
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("👑 KING SCRIPT", "DarkTheme")

-- Funções ativas
local autoRock = false
local autoRebirth = false
local autoEquip = false

-- Função Auto Rock
spawn(function()
    while true do
        wait(0.1)
        if autoRock then
            local rock = workspace:FindFirstChild("Rock")
            if rock then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rock.CFrame
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, rock, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, rock, 1)
            end
        end
    end
end)

-- Função Auto Rebirth
spawn(function()
    while true do
        wait(1)
        if autoRebirth then
            local args = {
                [1] = "rebirth"
            }
            game:GetService("ReplicatedStorage").events.RemoteFunction:InvokeServer(unpack(args))
        end
    end
end)

-- Função Auto Equip
spawn(function()
    while true do
        wait(1)
        if autoEquip then
            local args = {
                [1] = "equipbest"
            }
            game:GetService("ReplicatedStorage").events.RemoteFunction:InvokeServer(unpack(args))
        end
    end
end)

-- Anti AFK
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- Tabs
local Main = Window:NewTab("Main")
local Section = Main:NewSection("Funções")

Section:NewToggle("🪨 Auto Rock", "Farm automático na pedra", function(state)
    autoRock = state
end)

Section:NewToggle("🔁 Auto Rebirth", "Rebirth automático", function(state)
    autoRebirth = state
end)

Section:NewToggle("🛠️ Auto Equip", "Equipe as melhores ferramentas", function(state)
    autoEquip = state
end)

-- Créditos
local Credits = Window:NewTab("Créditos")
local C = Credits:NewSection("Feito por KING e ChatGPT")
C:NewLabel("Repositório: 4M-CLAN-SCRIPT")
