-- Gui Script + Auto Rock para Roblox
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("KING SCRIPT", "DarkTheme")

local Tab = Window:NewTab("Auto")
local Section = Tab:NewSection("Funções")

-- Variável de controle
local autoRock = false

-- Função Auto Rock
Section:NewToggle("Auto Rock", "Ativa o Auto Rock (loop automático)", function(state)
    autoRock = state
    while autoRock do
        -- Exemplo: disparar um RemoteEvent ou ativar uma ferramenta
        -- Você precisa substituir a linha abaixo pela ação correta do jogo!
        local args = {
            [1] = "RockPunch" -- nome fictício de ação, mude conforme seu jogo
        }
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

        wait(0.5) -- tempo entre ações (pode ajustar)
    end
end)
