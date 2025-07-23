-- Aguarda o carregamento completo
repeat wait() until game:IsLoaded()
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "KING_CLAN_UI"
gui.Parent = player:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false

-- Botão flutuante
local toggle = Instance.new("ImageButton")
toggle.Size = UDim2.new(0, 50, 0, 50)
toggle.Position = UDim2.new(0, 20, 0.5, -25)
toggle.BackgroundTransparency = 1
toggle.Image = "rbxassetid://7743878859"
toggle.ZIndex = 10
toggle.Parent = gui

-- Janela principal
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 500, 0, 300)
frame.Position = UDim2.new(0.5, -250, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.Visible = false
frame.ZIndex = 5
frame.Parent = gui

-- Draggable
frame.Active = true
frame.Draggable = true

-- Menu lateral
local menu = Instance.new("Frame")
menu.Size = UDim2.new(0, 100, 1, 0)
menu.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
menu.Parent = frame

-- Área de conteúdo
local content = Instance.new("Frame")
content.Size = UDim2.new(1, -100, 1, 0)
content.Position = UDim2.new(0, 100, 0, 0)
content.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
content.Parent = frame

-- Título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "VTBR SCRIPT"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Parent = menu

-- Função de limpar conteúdo
local function clear()
	for _, v in ipairs(content:GetChildren()) do
		if not v:IsA("UIListLayout") then v:Destroy() end
	end
end

-- Layout para o conteúdo
local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0, 5)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Parent = content

-- Seções e botões
local sections = {
	["Main"] = {"Auto Rock", "Rebirths", "Auto Equip Tools", "Stats"},
	["Farm"] = {"Auto Farm", "Auto Collect"},
	["Misc"] = {"Anti AFK", "WalkSpeed"},
	["Teleport"] = {"To Beach", "To Gym"},
	["Killer"] = {"Auto Kill", "Kill Aura"},
	["Pets"] = {"Auto Hatch", "Equip Best"},
	["Credits"] = {"Script by KING"}
}

for name, options in pairs(sections) do
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(1, 0, 0, 30)
	btn.Text = name
	btn.Font = Enum.Font.GothamBold
	btn.TextSize = 14
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	btn.Parent = menu

	btn.MouseButton1Click:Connect(function()
		clear()
		for _, text in ipairs(options) do
			local opt = Instance.new("TextButton")
			opt.Size = UDim2.new(1, -10, 0, 30)
			opt.Text = "▶ " .. text
			opt.Font = Enum.Font.Gotham
			opt.TextSize = 14
			opt.TextColor3 = Color3.fromRGB(255, 255, 255)
			opt.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			opt.Parent = content
		end
	end)
end

-- Botão flutuante toggle
toggle.MouseButton1Click:Connect(function()
	frame.Visible = not frame.Visible
end)
