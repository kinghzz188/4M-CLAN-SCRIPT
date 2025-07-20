-- GUI do 4M CLAN SCRIPT
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ClanScriptUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 250, 0, 220)
Frame.Position = UDim2.new(0.5, -125, 0.5, -110)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 8)

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "4M CLAN SCRIPT"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 8)

-- Função de botão
local function createButton(text, yPos, callback)
    local Button = Instance.new("TextButton", Frame)
    Button.Size = UDim2.new(1, -20, 0, 40)
    Button.Position = UDim2.new(0, 10, 0, yPos)
    Button.Text = text
    Button.BackgroundColor3 = Color3.fromRGB(50, 50, 200)
    Button.TextColor3 = Color3.new(1, 1, 1)
    Button.Font = Enum.Font.Gotham
    Button.TextSize = 14
    Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 6)

    Button.MouseButton1Click:Connect(callback)
end

-- Botões e prints (depois trocamos por funções reais)
createButton("Auto Rebirth", 50, function()
    print("Auto Rebirth ativado")
end)

createButton("Auto Upgrade", 100, function()
    print("Auto Upgrade ativado")
end)

createButton("Auto Farm", 150, function()
    print("Auto Farm ativado")
end)

-- Notificação de sucesso
game.StarterGui:SetCore("SendNotification", {
    Title = "4M CLAN SCRIPT",
    Text = "Script iniciado com sucesso!",
    Duration = 3
})
