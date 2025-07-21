-- Criação da GUI
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.ResetOnSpawn = false

-- Função de Auto Farm (simula clique no botão de treinar)
local farming = false
function startFarm()
    farming = true
    while farming do
        -- Alvo do clique (botão de soco ou exercício no Muscle Legends)
        game:GetService("ReplicatedStorage").Events.ClickEvent:FireServer()
        wait(0.1) -- velocidade do clique
    end
end

-- Parar Auto Farm
function stopFarm()
    farming = false
end

-- Menu principal
local menu = Instance.new("Frame", gui)
menu.Size = UDim2.new(0, 300, 0, 200)
menu.Position = UDim2.new(0.5, -150, 0.5, -100)
menu.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
menu.Visible = false
menu.Active = true
menu.Draggable = true

-- Título
local title = Instance.new("TextLabel", menu)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "KING SCRIPT MENU"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 20

-- Botão Main Farm
local farmBtn = Instance.new("TextButton", menu)
farmBtn.Size = UDim2.new(0.8, 0, 0, 40)
farmBtn.Position = UDim2.new(0.1, 0, 0.3, 0)
farmBtn.Text = "Main Farm [OFF]"
farmBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
farmBtn.TextColor3 = Color3.new(1, 1, 1)
farmBtn.Font = Enum.Font.Gotham
farmBtn.TextSize = 16
farmBtn.MouseButton1Click:Connect(function()
    if farming then
        stopFarm()
        farmBtn.Text = "Main Farm [OFF]"
        farmBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    else
        startFarm()
        farmBtn.Text = "Main Farm [ON]"
        farmBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
    end
end)

-- Botão flutuante para abrir menu (fixo no canto superior esquerdo)
local toggleButton = Instance.new("ImageButton", gui)
toggleButton.Size = UDim2.new(0, 50, 0, 50)
toggleButton.Position = UDim2.new(0, 115, 0, 15) -- posição exata como na imagem
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- quadrado preto
toggleButton.Image = "" -- futuramente pode usar um link de imagem
toggleButton.Active = true
toggleButton.Draggable = true -- flutua

-- Toggle visibilidade do menu
toggleButton.MouseButton1Click:Connect(function()
    menu.Visible = not menu.Visible
end)
