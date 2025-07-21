-- VTBR CLAN STYLE UI SCRIPT
local ScreenGui = Instance.new("ScreenGui")
local ToggleButton = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TabsFrame = Instance.new("Frame")
local Tabs = {"Main", "Farm", "Pets", "Misc", "Killer", "Teleport", "Credits"}

local TabButtons = {}
local SelectedTab = "Main"

-- Submenus simulados
local Menus = {
    Main = {"Auto Rock", "Rebirths", "Auto Equip Tools", "Stats"},
    Farm = {"Farm A", "Farm B"},
    Pets = {"Auto Hatch", "Equip Best"},
    Misc = {"Speed Hack", "Jump Boost"},
    Killer = {"Auto Kill", "Target Player"},
    Teleport = {"City", "Gym", "Arena"},
    Credits = {"Script by VTBR_KING"}
}

-- Configurações
ScreenGui.Name = "VTBRCLAN_SCRIPT"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- Botão flutuante
ToggleButton.Size = UDim2.new(0, 40, 0, 40)
ToggleButton.Position = UDim2.new(0, 520, 0, 120)
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.Text = ""
ToggleButton.Draggable = true
ToggleButton.Active = true
ToggleButton.Parent = ScreenGui

-- Janela principal
MainFrame.Size = UDim2.new(0, 450, 0, 300)
MainFrame.Position = UDim2.new(0.5, -225, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.Visible = false
MainFrame.Parent = ScreenGui

-- Título
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundTransparency = 1
Title.Text = "VTBR CLAN SCRIPT"
Title.TextColor3 = Color3.new(1,1,1)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 22
Title.Parent = MainFrame

-- Área de abas
TabsFrame.Size = UDim2.new(1, 0, 0, 30)
TabsFrame.Position = UDim2.new(0, 0, 0, 30)
TabsFrame.BackgroundTransparency = 1
TabsFrame.Parent = MainFrame

-- Criar abas
for i, name in ipairs(Tabs) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 60, 1, 0)
    btn.Position = UDim2.new(0, (i - 1) * 65, 0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Text = name
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 14
    btn.Parent = TabsFrame

    btn.MouseButton1Click:Connect(function()
        SelectedTab = name
        for _, c in pairs(MainFrame:GetChildren()) do
            if c:IsA("Frame") and c.Name == "MenuFrame" then
                c:Destroy()
            end
        end
        showMenu(name)
    end)

    TabButtons[name] = btn
end

-- Mostrar menu de cada aba
function showMenu(tab)
    local menuFrame = Instance.new("Frame")
    menuFrame.Name = "MenuFrame"
    menuFrame.Size = UDim2.new(1, -10, 1, -65)
    menuFrame.Position = UDim2.new(0, 5, 0, 60)
    menuFrame.BackgroundTransparency = 1
    menuFrame.Parent = MainFrame

    for i, item in ipairs(Menus[tab]) do
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(1, -10, 0, 30)
        btn.Position = UDim2.new(0, 5, 0, (i - 1) * 35)
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.Text = "▶️ " .. item
        btn.Font = Enum.Font.SourceSans
        btn.TextSize = 16
        btn.Parent = menuFrame
    end
end

-- Mostrar aba inicial
showMenu("Main")

-- Toggle do menu
ToggleButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
