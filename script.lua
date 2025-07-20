
-- KING SCRIPT 👑 para Muscle Legends
-- Créditos: VTBR_KING

-- Carregar UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/UI-Librarys/main/FluxLib.txt"))()
local Window = Library:CreateWindow("KING SCRIPT 👑", "by VTBR_KING", Color3.fromRGB(35, 35, 35), Color3.fromRGB(0, 200, 255), "muscle_legends_gui")

-- Aba Principal
local Main = Window:CreateTab("Main")
Main:CreateToggle("🛡️ Anti-AFK System", function(state)
    if state then
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end
end)

Main:CreateButton("⚔️ Auto Brawls", function()
    print("Auto Brawls Ativado")
end)

Main:CreateButton("🏋️ Jungle Gym", function()
    print("Jungle Gym Ativado")
end)

Main:CreateButton("🏃‍♂️ Entrenar Gimnasios", function()
    print("Entrenar Gimnasios Ativado")
end)

Main:CreateButton("🔥 OP Things/Farms", function()
    print("Farms Ativadas")
end)

-- Outras Abas (placeholders)
Window:CreateTab("Farm")
Window:CreateTab("Pets")
Window:CreateTab("Misc")
Window:CreateTab("Killer")
Window:CreateTab("Teleport")

-- Créditos
local Credits = Window:CreateTab("Credits")
Credits:CreateLabel("KING SCRIPT 👑")
Credits:CreateLabel("Feito por VTBR_KING")
Credits:CreateLabel("Discord: em breve...")
