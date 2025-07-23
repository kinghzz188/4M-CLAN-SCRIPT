-- KING SCRIPT UI (Delta Executor compatível)

-- Criar GUI principal
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KingScriptUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

-- Criar botão flutuante
local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0, 160, 0, 40)
ToggleButton.Position = UDim2.new(0, 10, 0.5, -20)
ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Text = "▶️ King Script ⬆️"
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.TextSize = 18
ToggleButton.Parent = ScreenGui
ToggleButton.Active = true
ToggleButton.Draggable = true

-- Criar janela principal oculta
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 400, 0, 300)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Visible = false
MainFrame.Parent = ScreenGui

-- Título da interface
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Title.Text = "KING SCRIPT"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 24
Title.Parent = MainFrame

-- Exemplo: Botão de Auto Rock
local AutoRock = Instance.new("TextButton")
AutoRock.Size = UDim2.new(0, 160, 0, 40)
AutoRock.Position = UDim2.new(0, 20, 0, 60)
AutoRock.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
AutoRock.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoRock.Text = "Auto Rock"
AutoRock.Font = Enum.Font.SourceSans
AutoRock.TextSize = 20
AutoRock.Parent = MainFrame

AutoRock.MouseButton1Click:Connect(function()
	print("Auto Rock ativado!")
	-- Aqui você coloca a função real
end)

-- Toggle abrir/fechar
local aberto = false
ToggleButton.MouseButton1Click:Connect(function()
	aberto = not aberto
	MainFrame.Visible = aberto
	if aberto then
		ToggleButton.Text = "⬅️ King Script ⬇️"
	else
		ToggleButton.Text = "▶️ King Script ⬆️"
	end
end)
