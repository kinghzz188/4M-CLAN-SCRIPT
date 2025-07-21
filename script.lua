-- Destroi se já existir
pcall(function()
	game.CoreGui:FindFirstChild("KING_GUI"):Destroy()
end)

-- GUI principal
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "KING_GUI"
gui.ResetOnSpawn = false

-- Botão flutuante com coroa
local icon = Instance.new("ImageButton", gui)
icon.Name = "AbrirFechar"
icon.Size = UDim2.new(0, 60, 0, 60)
icon.Position = UDim2.new(0, 30, 0.5, -30)
icon.BackgroundTransparency = 1
icon.Image = "http://www.roblox.com/asset/?id=15245511671" -- ícone de coroa

-- Flutuação
local RunService = game:GetService("RunService")
local yBase = icon.Position.Y.Offset
local t = 0
RunService.RenderStepped:Connect(function(dt)
	t += dt * 2
	icon.Position = UDim2.new(0, 30, 0.5, yBase + math.sin(t) * 5)
end)

-- Menu
local menu = Instance.new("Frame", gui)
menu.Name = "KingMenu"
menu.Size = UDim2.new(0, 300, 0, 150)
menu.Position = UDim2.new(0.5, -150, 0.5, -75)
menu.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
menu.BorderSizePixel = 0
menu.Visible = false
menu.Active = true
menu.Draggable = true

-- Título
local title = Instance.new("TextLabel", menu)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
title.Text = "👑 KING MENU"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 22

-- Botão Auto Punch
local button = Instance.new("TextButton", menu)
button.Size = UDim2.new(1, -20, 0, 40)
button.Position = UDim2.new(0, 10, 0, 60)
button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.GothamBold
button.TextSize = 18
button.Text = "⚡ Auto Punch"

button.MouseButton1Click:Connect(function()
	print("Auto Punch ativado!")
end)

-- Alternar exibição do menu
icon.MouseButton1Click:Connect(function()
	menu.Visible = not menu.Visible
end)
