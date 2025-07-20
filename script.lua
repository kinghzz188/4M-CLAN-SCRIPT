-- VTBR CLAN SCRIPT Interface -- Criado por: kinghzz188 (4M CLAN)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() local Window = Library.CreateLib("▼ VTBR CLAN SCRIPT", "DarkTheme")

-- Aba Main local Main = Window:NewTab("Main") local MainSection = Main:NewSection("Main")

MainSection:NewButton("▶Auto Rock", "Ativa o farm na pedra", function() print("Auto Rock ativado") end)

MainSection:NewButton("▶Rebirths", "Faz renascimento automático", function() print("Auto Rebirth ativado") end)

MainSection:NewButton("▶Auto Equip Tools", "Equipa ferramentas automaticamente", function() print("Auto Equip ativado") end)

MainSection:NewLabel("▼Stats") MainSection:NewLabel("Strength") MainSection:NewLabel("Actual: 2.10T") MainSection:NewLabel("Gained: 0") MainSection:NewLabel("Durability") MainSection:NewLabel("Actual: 6.12T") MainSection:NewLabel("Gained: 0") MainSection:NewLabel("Rebirths") MainSection:NewLabel("Actual: 18.98K")

-- Outras abas (Farm, Pets, Misc, Killer, Teleport, Credits) Window:NewTab("Farm") Window:NewTab("Pets") Window:NewTab("Misc") Window:NewTab("Killer") Window:NewTab("Teleport")

local Credits = Window:NewTab("Credits") local CreditSection = Credits:NewSection("Créditos") CreditSection:NewLabel("Script feito por Sad & Nii.") CreditSection:NewLabel("VTBR")

-- Fim do Script

