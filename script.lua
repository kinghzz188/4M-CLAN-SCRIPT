-- KING SCRIPT UI (Delta Executor)

-- Services
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

-- GUI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KING_SCRIPT_UI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

-- Floating Toggle Button
local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0, 35, 0, 35)
ToggleButton.Position = UDim2.new(0, 10, 0.5, -18)
ToggleButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ToggleButton.BorderSizePixel = 0
ToggleButton.Text = ""
ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = ScreenGui
ToggleButton.Active = true
ToggleButton.Draggable = true

-- Main UI Frame
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 350)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Visible = false
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui

-- UI Corner for Rounded Edges
local UICorner1 = Instance.new("UICorner", ToggleButton)
local UICorner2 = Instance.new("UICorner", MainFrame)

-- Title
local Title = Instance.new("TextLabel")
Title.Text = "KING SCRIPT"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true
Title.Parent = MainFrame

-- Tabs List
local Tabs = {"Main", "Farm", "Pets", "Misc", "Teleport", "Credits"}
for i, tabName in ipairs(Tabs) do
    local TabButton = Instance.new("TextButton")
    TabButton.Size = UDim2.new(1, -20, 0, 30)
    TabButton.Position = UDim2.new(0, 10, 0, 40 + ((i - 1) * 35))
    TabButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    TabButton.Text = tabName
    TabButton.TextColor3 = Color3.new(1, 1, 1)
    TabButton.Font = Enum.Font.Gotham
    TabButton.TextSize = 16
    TabButton.BorderSizePixel = 0
    TabButton.Parent = MainFrame

    local corner = Instance.new("UICorner", TabButton)
end

-- Show/Hide Toggle
ToggleButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
