local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TabBar = Instance.new("Frame")
local ContentFrame = Instance.new("Frame")

local Tabs = {
    {Name = "Main", Buttons = {"Auto Rock", "Rebirths", "Auto Equip", "Stats"}},
    {Name = "Farm", Buttons = {}},
    {Name = "Pets", Buttons = {}},
    {Name = "Misc", Buttons = {}},
    {Name = "Killer", Buttons = {}},
    {Name = "Teleport", Buttons = {}},
    {Name = "Credits", Buttons = {"Created by KING"}}
}

ScreenGui.Name = "KingScriptGUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 600, 0, 350)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.Text = "KING SCRIPT"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 25
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)

TabBar.Name = "TabBar"
TabBar.Parent = MainFrame
TabBar.Position = UDim2.new(0, 0, 0, 40)
TabBar.Size = UDim2.new(1, 0, 0, 30)
TabBar.BackgroundTransparency = 1

ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = MainFrame
ContentFrame.Position = UDim2.new(0, 0, 0, 70)
ContentFrame.Size = UDim2.new(1, 0, 1, -70)
ContentFrame.BackgroundTransparency = 1

local function createContent(buttons)
	ContentFrame:ClearAllChildren()
	for i, btnName in ipairs(buttons) do
		local Button = Instance.new("TextButton")
		Button.Parent = ContentFrame
		Button.Text = btnName
		Button.Font = Enum.Font.SourceSans
		Button.TextSize = 20
		Button.Size = UDim2.new(0.9, 0, 0, 35)
		Button.Position = UDim2.new(0.05, 0, 0, (i - 1) * 40)
		Button.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		Button.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button.BorderSizePixel = 0
		Button.MouseButton1Click:Connect(function()
			print("Clicked:", btnName)
		end)
	end
end

-- Criar botões de aba
for i, tab in ipairs(Tabs) do
	local TabBtn = Instance.new("TextButton")
	TabBtn.Parent = TabBar
	TabBtn.Text = tab.Name
	TabBtn.Font = Enum.Font.SourceSans
	TabBtn.TextSize = 16
	TabBtn.Size = UDim2.new(0, 80, 1, 0)
	TabBtn.Position = UDim2.new(0, (i - 1) * 85, 0, 0)
	TabBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	TabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	TabBtn.MouseButton1Click:Connect(function()
		createContent(tab.Buttons)
	end)
end

-- Carregar primeira aba
createContent(Tabs[1].Buttons)
