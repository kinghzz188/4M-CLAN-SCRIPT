-- Destroi GUI antiga se existir
pcall(function()
    game.CoreGui:FindFirstChild("KING_GUI"):Destroy()
end)

-- Criar GUI principal
local gui = Instance.new("ScreenGui")
gui.Name = "KING_GUI"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

-- Ícone flutuante (preto quadrado)
local icon = Instance.new("ImageButton")
icon.Name = "ToggleButton"
icon.Size = UDim2.new(0, 60, 0, 60)
icon.Position = UDim2.new(0, 20, 0.5, -30)
icon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
icon.BorderSizePixel = 0
icon.Parent = gui

-- Flutuar o ícone
local RunService = game:GetService("RunService")
local baseY = icon.Position.Y.Offset
local time = 0
RunService.RenderStepped:Connect(function(dt)
	time += dt * 2
	icon.Position = UDim2.new(0, 20, 0.5, baseY + math.sin(time) * 6)
end)

-- Menu principal
local frame = Instance.new("Frame")
frame.Name = "KingMenu"
frame.Size = UDim2.new(0, 300, 0, 180)
frame.Position = UDim2.new(0.5, -150, 0.5, -90)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Visible = false
frame.Active = true
frame.Draggable = true
frame.Parent = gui

-- Título do menu
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
title.Text = "👑 KING MENU"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.Parent = frame

-- Botão de exemplo: Auto Rock
local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -20, 0, 40)
button.Position = UDim2.new(0, 10, 0, 60)
button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.GothamBold
button.TextSize = 18
button.Text = "🪨 Auto Rock"
button.Parent = frame

button.MouseButton1Click:Connect(function()
    print("Auto Rock ativado!")
end)

-- Clicar no ícone preto mostra/esconde o menu
icon.MouseButton1Click:Connect(function()
	frame.Visible = not frame.Visible
end)
