-- Destroi GUI antiga se existir
pcall(function()
    game.CoreGui:FindFirstChild("KING_GUI"):Destroy()
end)

-- Criar GUI
local gui = Instance.new("ScreenGui")
gui.Name = "KING_GUI"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

-- Ícone flutuante (coroa)
local icon = Instance.new("ImageButton")
icon.Name = "ToggleButton"
icon.Size = UDim2.new(0, 60, 0, 60)
icon.Position = UDim2.new(0, 20, 0.5, -30)
icon.BackgroundTransparency = 1
icon.Image = "http://www.roblox.com/asset/?id=15245511671" -- Ícone de coroa
icon.Parent = gui

-- Flutuar o ícone
local RunService = game:GetService("RunService")
local baseY = icon.Position.Y.Offset
local time = 0
RunService.RenderStepped:Connect(function(dt)
	time += dt * 2
	icon.Position = UDim2.new(0, 20, 0.5, baseY + math.sin(time) * 6)
end)

-- Menu
local frame = Instance.new("Frame")
frame.Name = "KingMenu"
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Visible = false
frame.Active = true
frame.Draggable = true
frame.Parent = gui

-- Título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
title.Text = "👑 KING MENU"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.Parent = frame

-- Botão Auto Rock
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
	-- Aqui você coloca sua função real de Auto Rock
	print("Auto Rock ativado!")
end)

-- Abrir/Fechar Menu ao clicar no ícone
icon.MouseButton1Click:Connect(function()
	frame.Visible = not frame.Visible
end)
