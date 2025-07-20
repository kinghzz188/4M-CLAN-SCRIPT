-- Interface básica
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(1, 0, 1, 0)
Button.Text = "Clique aqui"
Button.BackgroundColor3 = Color3.fromRGB(60, 60, 255)
Button.TextColor3 = Color3.new(1, 1, 1)

Button.MouseButton1Click:Connect(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "4M CLAN SCRIPT",
        Text = "Botão funcionando!",
        Duration = 3
    })
end)
