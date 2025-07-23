-- KING SCRIPT UI
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "KingScriptUI"
gui.ResetOnSpawn = false

-- Botão flutuante
local toggleButton = Instance.new("ImageButton", gui)
toggleButton.Size = UDim2.new(0, 50, 0, 50)
toggleButton.Position = UDim2.new(0, 20, 0.5, -25)
toggleButton.Image = "rbxassetid://6031071053" -- ícone temporário
toggleButton.BackgroundTransparency = 1
toggleButton.ZIndex = 3

-- Janela principal
local mainFrame = Instance.new("Frame", gui)
mainFrame.Size = UDim2.new(0, 400, 0, 300)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.BorderSizePixel = 0
mainFrame.Visible = false
mainFrame.ZIndex = 2

-- Draggable
mainFrame.Active = true
mainFrame.Draggable = true

-- Título
local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "KING SCRIPT"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 22

-- Menu lateral
local sideMenu = Instance.new("Frame", mainFrame)
sideMenu.Size = UDim2.new(0, 100, 1, -40)
sideMenu.Position = UDim2.new(0, 0, 0, 40)
sideMenu.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local buttons = {
    "Main",
    "Farm",
    "Misc",
    "Teleport",
    "Killer",
    "Pets",
    "Credits"
}

-- Área de conteúdo
local contentFrame = Instance.new("Frame", mainFrame)
contentFrame.Size = UDim2.new(1, -100, 1, -40)
contentFrame.Position = UDim2.new(0, 100, 0, 40)
contentFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

-- Função para limpar conteúdo
local function clearContent()
    for _, child in ipairs(contentFrame:GetChildren()) do
        if not child:IsA("UIListLayout") then
            child:Destroy()
        end
    end
end

-- Criar botões do menu
for _, name in ipairs(buttons) do
    local btn = Instance.new("TextButton", sideMenu)
    btn.Size = UDim2.new(1, 0, 0, 30)
    btn.Text = name
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 14
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)

    btn.MouseButton1Click:Connect(function()
        clearContent()
        local label = Instance.new("TextLabel", contentFrame)
        label.Size = UDim2.new(1, 0, 0, 30)
        label.Text = "Coming soon: " .. name
        label.Font = Enum.Font.Gotham
        label.TextSize = 14
        label.TextColor3 = Color3.fromRGB(200, 200, 200)
        label.BackgroundTransparency = 1
    end)
end

-- Mostrar/ocultar janela ao clicar no botão
toggleButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = not mainFrame.Visible
end)
