-- Destrói versão anterior se existir
if game.CoreGui:FindFirstChild("KING_SCRIPT") then
    game.CoreGui:FindFirstChild("KING_SCRIPT"):Destroy()
end

-- GUI principal
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "KING_SCRIPT"
gui.ResetOnSpawn = false

-- Botão flutuante com imagem de coroa
local toggleButton = Instance.new("ImageButton")
toggleButton.Name = "AbrirFecharMenu"
toggleButton.Parent = gui
toggleButton.Size = UDim2.new(0, 60, 0, 60)
toggleButton.Position = UDim2.new(0, 10, 0.5, -30)
toggleButton.BackgroundTransparency = 1
toggleButton.Image = "http://www.roblox.com/asset/?id=15245511671" -- Coroa
toggleButton.ImageColor3 = Color3.new(1, 1, 1)

-- Efeito de flutuação do ícone
local runService = game:GetService("RunService")
local originalY = toggleButton.Position.Y.Offset
local t = 0

runService.RenderStepped:Connect(function(dt)
	t += dt * 2 -- velocidade
	local offset = math.sin(t) * 5 -- altura do movimento
	toggleButton.Position = UDim2.new(0, 10, 0.5, originalY + offset)
end)

-- Menu principal
local menu = Instance.new("Frame", gui)
menu.Size = UDim2.new(0, 300, 0, 200)
menu.Position = UDim2.new(0.5, -150, 0.5, -100)
menu.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
menu.Visible = false
menu.Active = true
menu.Draggable = true

-- Título do menu
local title = Instance.new("TextLabel", menu)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
title.Text = "👑 KING MENU"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 22

-- Botão Auto Punch
local autoPunch = Instance.new("TextButton", menu)
autoPunch.Size = UDim2.new(1, -20, 0, 40)
autoPunch.Position = UDim2.new(0, 10, 0, 60)
autoPunch.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
autoPunch.Text = "⚡ Auto Punch"
autoPunch.TextColor3 = Color3.new(1, 1, 1)
autoPunch.Font = Enum.Font.GothamBold
autoPunch.TextSize = 18
autoPunch.MouseButton1Click:Connect(function()
    print("⚡ Auto Punch ativado!")
end)

-- Mostrar ou esconder menu
local aberto = false
toggleButton.MouseButton1Click:Connect(function()
	aberto = not aberto
	menu.Visible = aberto
end)
