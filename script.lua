-- KING SCRIPT - Script Roblox -- Feito por KING 💀

-- Proteção Anti-AFK local vu = game:GetService("VirtualUser") game:GetService("Players").LocalPlayer.Idled:Connect(function() vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame) wait(1) vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame) end)

-- Interface local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() local Window = Library.CreateLib("KING SCRIPT", "DarkTheme")

-- Tab principal local Main = Window:NewTab("Main") local MainSection = Main:NewSection("Auto Farm")

-- Auto Rock MainSection:NewToggle("Auto Rock", "Treina automaticamente", function(state) _G.AutoRock = state while _G.AutoRock do game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Rock") wait(0.1) end end)

-- Auto Rebirth MainSection:NewToggle("Auto Rebirth", "Renascimentos automáticos", function(state) _G.AutoRebirth = state while _G.AutoRebirth do game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Rebirth") wait(5) end end)

-- Auto Equip Tools MainSection:NewToggle("Auto Equip Tools", "Equipe ferramentas automaticamente", function(state) _G.AutoEquip = state

