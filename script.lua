-- // KING SCRIPT - Menu Flutuante com Toggle \\ --

local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

-- Remove menus anteriores (evita duplicação)
if CoreGui:FindFirstChild("KingScriptUI") then
    CoreGui:FindFirstChild("KingScriptUI"):Destroy()
end

-- Interface principal
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "KingScriptUI"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Botão para abrir/fechar menu
local ToggleButton = Instance.new("TextButton", ScreenGui)
ToggleButton.Size = UDim2.new(0, 100, 0, 30)
ToggleButton.Position = UDim2.new(0, 10, 0, 10)
ToggleButton.Text = "📜 Menu"
ToggleButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.TextSize = 18

-- Menu Principal
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 300, 0, 200)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

-- Título
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.Text = "👑 KING SCRIPT"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20

-- Botão Combate
local CombatTab = Instance.new("TextLabel", MainFrame)
CombatTab.Size = UDim2.new(0, 120, 0, 30)
CombatTab.Position = UDim2.new(0, 10, 0, 40)
CombatTab.Text = "🥊 COMBATE"
CombatTab.TextColor3 = Color3.fromRGB(255, 255, 255)
CombatTab.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CombatTab.Font = Enum.Font.GothamBold
CombatTab.TextSize = 16
CombatTab.TextXAlignment = Enum.TextXAlignment.Left
CombatTab.TextYAlignment = Enum.TextYAlignment.Center

-- Botão Auto Punch
local AutoPunch = Instance.new("TextButton", MainFrame)
AutoPunch.Size = UDim2.new(0, 280, 0, 30)
AutoPunch.Position = UDim2.new(0, 10, 0, 80)
AutoPunch.Text = "⚡ Auto Punch"
AutoPunch.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
AutoPunch.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoPunch.Font = Enum.Font.GothamBold
AutoPunch.TextSize = 16

-- Botão Fast Punch
local FastPunch = Instance.new("TextButton", MainFrame)
FastPunch.Size = UDim2.new(0, 280, 0, 30)
FastPunch.Position = UDim2.new(0, 10, 0, 120)
FastPunch.Text = "⚡ Fast Punch"
FastPunch.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
FastPunch.TextColor3 = Color3.fromRGB(255, 255, 255)
FastPunch.Font = Enum.Font.GothamBold
FastPunch.TextSize = 16

-- Mostrar/Ocultar o menu
ToggleButton.MouseButton1Click:Connect(function()
	MainFrame.Visible = not MainFrame.Visible
end)

-- Funções de exemplo (coloque seu código aqui)
AutoPunch.MouseButton1Click:Connect(function()
    print("Auto Punch ativado!") -- aqui vai sua função real
end)

FastPunch.MouseButton1Click:Connect(function()
    print("Fast Punch ativado!") -- aqui vai sua função real
end)
