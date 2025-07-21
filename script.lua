-- Criação da GUI
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.ResetOnSpawn = false

-- Frame do menu principal
local menu = Instance.new("Frame", gui)
menu.Size = UDim2.new(0, 300, 0, 200)
menu.Position = UDim2.new(0.5, -150, 0.5, -100)
menu.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
menu.Visible = true -- Começa visível
menu.Active = true
menu.Draggable = true -- Flutua

-- Botão flutuante para abrir/fechar
local toggleButton = Instance.new("ImageButton", gui)
toggleButton.Size = UDim2.new(0, 50, 0, 50)
toggleButton.Position = UDim2.new(0, 10, 0.5, -25) -- Lado esquerdo da tela
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Preto por enquanto
toggleButton.Image = "" -- Aqui você pode colocar o link de uma imagem futuramente
toggleButton.Active = true
toggleButton.Draggable = true -- Ícone também pode ser arrastado

-- Função de alternar visibilidade do menu
toggleButton.MouseButton1Click:Connect(function()
    menu.Visible = not menu.Visible
end)

-- Exemplo de conteúdo no menu
local texto = Instance.new("TextLabel", menu)
texto.Size = UDim2.new(1, 0, 0, 50)
texto.Text = "KING SCRIPT MENU"
texto.TextColor3 = Color3.new(1, 1, 1)
texto.BackgroundTransparency = 1
texto.Font = Enum.Font.GothamBold
texto.TextSize = 20
