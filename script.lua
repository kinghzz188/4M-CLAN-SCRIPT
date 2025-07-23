local ScreenGui = Instance.new("ScreenGui")
local OpenButton = Instance.new("ImageButton")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Tabs = {"Main", "Farm", "Pets", "Misc", "Killer", "Teleport", "Credits"}

ScreenGui.Name = "VTBR_CLAN_GUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

OpenButton.Name = "OpenButton"
OpenButton.Parent = ScreenGui
OpenButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.Size = UDim2.new(0, 50, 0, 50)
OpenButton.Position = UDim2.new(0.5, -25, 0, 10)
OpenButton.Image = "" -- imagem pode ser colocada aqui
OpenButton.ZIndex = 10

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
MainFrame.Size = UDim2.new(0, 500, 0, 300)
MainFrame.Visible = false

UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = MainFrame

-- Aba de navegação
for i, name in ipairs(Tabs) do
    local tabButton = Instance.new("TextButton")
    tabButton.Name = name.."Tab"
    tabButton.Parent = MainFrame
    tabButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    tabButton.Position = UDim2.new(0, (i-1)*65, 0, 0)
    tabButton.Size = UDim2.new(0, 60, 0, 30)
    tabButton.Font = Enum.Font.SourceSansBold
    tabButton.Text = name
    tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    tabButton.TextSize = 14
end

-- Toggle para abrir/fechar
OpenButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
