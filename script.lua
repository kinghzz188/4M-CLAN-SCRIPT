
-- GUI Criada por KING (4M CLAN)
-- Créditos: KING SCRIPT ☠️

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Tabs = {}
local TabNames = {"Main", "Farm", "Pets", "Misc", "Killer", "Teleport", "Credits"}
local UICorner = Instance.new("UICorner")
local TabContent = Instance.new("Frame")

-- Propriedades da GUI
ScreenGui.Name = "VTBR_CLAN_SCRIPT"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 600, 0, 350)
MainFrame.Position = UDim2.new(0.5, -300, 0.5, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = MainFrame

Title.Name = "Title"
Title.Text = "VTBR CLAN SCRIPT"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.Parent = MainFrame

TabContent.Name = "TabContent"
TabContent.Position = UDim2.new(0, 0, 0, 40)
TabContent.Size = UDim2.new(1, 0, 1, -40)
TabContent.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TabContent.Parent = MainFrame

-- Criando abas
for i, tabName in pairs(TabNames) do
    local button = Instance.new("TextButton")
    button.Name = tabName
    button.Text = tabName
    button.Size = UDim2.new(0, 70, 0, 25)
    button.Position = UDim2.new(0, (i - 1) * 75, 0, 5)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextScaled = true
    button.Parent = MainFrame
    Tabs[tabName] = button
end

-- Exemplo de funções dentro da aba Main
local options = {"Anti-AFK System", "Auto Brawls", "Jungle Gym", "Entrenar Gimnasios", "OP Things/Farms"}
for i, name in ipairs(options) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -20, 0, 30)
    button.Position = UDim2.new(0, 10, 0, (i - 1) * 35 + 10)
    button.Text = name
    button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextScaled = true
    button.Parent = TabContent
end
