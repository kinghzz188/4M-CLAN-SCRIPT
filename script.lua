-- Remover versões antigas
if game.CoreGui:FindFirstChild("KING_SCRIPT") then
	game.CoreGui:FindFirstChild("KING_SCRIPT"):Destroy()
end

-- Criar GUI
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "KING_SCRIPT"
gui.ResetOnSpawn = false

-- Botão Flutuante
local toggleButton = Instance.new("TextButton")
toggleButton.Parent = gui
toggleButton.Size = UDim2.new(0, 100, 0, 40)
toggleButton.Position = UDim2.new(0, 20, 0.5, -20)
toggleButton.Text = "📜 Abrir Menu"
toggleButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.TextSize = 18

-- Menu Principal
local menu = Instance.new("Frame")
menu.Parent = gui
menu.Size = UDim2.new(0, 300, 0, 200)
menu.Position = UDim2.new(0.5, -150, 0.5, -100)
menu.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
menu.Visible = false
menu.Active = true
menu.Draggable = true

-- Título
local title = Instance.new("TextLabel", menu)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
title.Text = "👑 KING MENU"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 20

-- Exemplo de botão
local exampleButton = Instance.new("TextButton", menu)
exampleButton.Size = UDim2.new(1, -20, 0, 40)
exampleButton.Position = UDim2.new(0, 10, 0, 60)
exampleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
exampleButton.Text = "⚡ Auto Punch"
exampleButton.TextColor3 = Color3.new(1, 1, 1)
exampleButton.Font = Enum.Font.GothamBold
exampleButton.TextSize = 16
exampleButton.MouseButton1Click:Connect(function()
	print("Auto Punch ativado!")
end)

-- Mostrar/Ocultar o menu
local aberto = false
toggleButton.MouseButton1Click:Connect(function()
	aberto = not aberto
	menu.Visible = aberto
	toggleButton.Text = aberto and "📜 Fechar Menu" or "📜 Abrir Menu"
end)
