-- VTBR CLAN UI - Flutuante sem emojis
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- GUI Principal
local ScreenGui = Instance.new("ScreenGui", gui)
ScreenGui.Name = "VTBRCLAN_SCRIPT"
ScreenGui.ResetOnSpawn = false

-- Botão flutuante
local OpenButton = Instance.new("TextButton", ScreenGui)
OpenButton.Size = UDim2.new(0, 40, 0, 40)
OpenButton.Position = UDim2.new(0, 20, 0, 120)
OpenButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.Text = ""
OpenButton.Draggable = true
OpenButton.Active = true

-- Menu Principal
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 500, 0, 320)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -160)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.Visible = false
MainFrame.Active = true
MainFrame.Draggable = true

-- Título
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundTransparency = 1
Title.Text = "VTBR CLAN SCRIPT"
Title.TextColor3 = Color3.new(1,1,1)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 22

-- Tabs
local TabsFrame = Instance.new("Frame", MainFrame)
TabsFrame.Size = UDim2.new(1, 0, 0, 30)
TabsFrame.Position = UDim2.new(0, 0, 0, 30)
TabsFrame.BackgroundTransparency = 1

local Tabs = {
    Principal = {"Auto Rock", "Reencarnações", "Auto Equip Tools", "Stats"},
    Farm = {},
    Animais = {},
    Misc = {},
    Assassino = {},
    Teletransporte = {},
    Credits = {}
}

local SelectedTab = "Principal"

local function ShowMenu(tab)
    for _, child in pairs(MainFrame:GetChildren()) do
        if child.Name == "MenuFrame" then
            child:Destroy()
        end
    end

    local MenuFrame = Instance.new("Frame", MainFrame)
    MenuFrame.Name = "MenuFrame"
    MenuFrame.Size = UDim2.new(1, -10, 1, -65)
    MenuFrame.Position = UDim2.new(0, 5, 0, 60)
    MenuFrame.BackgroundTransparency = 1

    for i, item in ipairs(Tabs[tab]) do
        local Btn = Instance.new("TextButton", MenuFrame)
        Btn.Size = UDim2.new(1, -10, 0, 30)
        Btn.Position = UDim2.new(0, 5, 0, (i - 1) * 35)
        Btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Btn.TextColor3 = Color3.new(1, 1, 1)
        Btn.Text = item
        Btn.Font = Enum.Font.SourceSans
        Btn.TextSize = 16
    end
end

-- Criar botões de abas
local i = 0
for tabName, _ in pairs(Tabs) do
    local Btn = Instance.new("TextButton", TabsFrame)
    Btn.Size = UDim2.new(0, 70, 1, 0)
    Btn.Position = UDim2.new(0, i * 75, 0, 0)
    Btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Btn.TextColor3 = Color3.new(1,1,1)
    Btn.Text = tabName
    Btn.Font = Enum.Font.SourceSansBold
    Btn.TextSize = 14

    Btn.MouseButton1Click:Connect(function()
        SelectedTab = tabName
        ShowMenu(tabName)
    end)

    i = i + 1
end

-- Mostrar tab inicial
ShowMenu(SelectedTab)

-- Toggle do botão
OpenButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
