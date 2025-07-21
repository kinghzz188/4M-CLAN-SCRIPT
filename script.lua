-- KING SCRIPT - Versão com interface flutuante idêntica ao VTBR CLAN SCRIPT

-- Biblioteca de interface local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() local Window = Library.CreateLib("▼ KING SCRIPT", "DarkTheme")

-- Variáveis de controle getgenv().autoRock = false

-- Função Auto Rock real function AutoRock() spawn(function() while autoRock do local args = { [1] = workspace:FindFirstChild("Rock") } pcall(function() if args[1] then game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("HitRock"):FireServer(args[1]) end end) task.wait(0.2) end end) end

-- Abas local Main = Window:NewTab("Main") local MainSection = Main:NewSection("Automatizações")

MainSection:NewToggle("▶ Auto Rock", "Farm automático em rochas", function(value) autoRock = value if value then AutoRock() end end)

MainSection:NewButton("▼ Stats", "Mostra estatísticas (exemplo)", function() game:GetService("StarterGui"):SetCore("SendNotification", { Title = "KING SCRIPT", Text = "Estatísticas não disponíveis ainda.", Duration = 3 }) end)

local Credits = Window:NewTab("Credits") local CreditsSection = Credits:NewSection("Desenvolvido por KING") CreditsSection:NewLabel("Script criado por Sad & Nii") CreditsSection:NewLabel("Personalizado por kinghzz188")

print("KING SCRIPT carregado com sucesso!")

