-- Destrói versão antiga se existir
pcall(function()
	if game.CoreGui:FindFirstChild("KING_SCRIPT") then
		game.CoreGui.KING_SCRIPT:Destroy()
	end
end)

-- GUI principal
local gui = Instance.new("ScreenGui")
gui.Name = "KING_SCRIPT"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

-- Botão de coroa flutuante
local toggleBtn = Instance.new("ImageButton")
toggleBtn.Name = "ToggleButton"
toggleBtn.Parent = gui
toggleBtn.Size = UDim2.new(0, 60, 0, 60)
toggleBtn.Position = UDim2.new(0, 20, 0.5, -30)
toggleBtn.BackgroundTransparency = 1
toggleBtn.Image = "http://www.roblox.com/asset/?id=15245511671" -- Ícone coroa

-- Efeito de flutuação
local RS = game:GetService("RunService")
local baseY = toggleBtn.Position.Y.Offset
local time = 0

RS.RenderStepped:Connect(function(dt)
	time += dt * 2
	local offset = math.sin(time) * 5
	toggleBtn.Position = UDim2.new(0, 20, 0.5, baseY + offset)
end)

-- Menu principal
local menu = Instance.new("Frame")
menu.Parent = gui
menu.Size = UDim2.new(0, 300, 0, 180)
menu.Position = UDim2.new(0.5, -150, 0.5, -90)
menu.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
menu.BorderSizePixel = 0
menu.Visible = false
menu.Active = true
menu.Draggable = true

-- Título
local title = Instance.new("TextLabel")
title.Parent = menu
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
title.Text = "👑 KING MENU"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 22

-- Botão Auto Punch
local autoPunch = Instance.new("TextButton")
autoPunch.Parent = menu
autoPunch.Size = UDim2.new(1, -20, 0, 40)
autoPunch.Position = UDim2.new(0, 10, 0, 60)
autoPunch.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
autoPunch.Text = "⚡ Auto Punch"
autoPunch.TextColor3 = Color3.new(1, 1, 1)
autoPunch.Font = Enum.Font.GothamBold
autoPunch.TextSize = 18

autoPunch.MouseButton1Click:Connect(function()
	print("Auto Punch ativado!")
end)

-- Mostrar/ocultar menu
local menuAberto = false
toggleBtn.MouseButton1Click:Connect(function()
	menuAberto = not menuAberto
	menu.Visible = menuAberto
end)
