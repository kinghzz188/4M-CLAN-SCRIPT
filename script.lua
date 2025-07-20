-- Gui principal
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Tabs = Instance.new("Frame")
local MiscButton = Instance.new("TextButton")
local Pages = Instance.new("Frame")
local MiscPage = Instance.new("Frame")
local AntiAfkToggle = Instance.new("TextButton")

-- Parent do Gui
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "4MCLAN_GUI"
ScreenGui.ResetOnSpawn = false

-- MainFrame
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.Size = UDim2.new(0, 300, 0, 250)
MainFrame.Position = UDim2.new(0.1, 0, 0.2, 0)

-- Tabs
Tabs.Name = "Tabs"
Tabs.Parent = MainFrame
Tabs.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Tabs.Size = UDim2.new(1, 0, 0, 30)

-- Botão da aba Misc
MiscButton.Name = "MiscButton"
MiscButton.Parent = Tabs
MiscButton.Text = "Misc"
MiscButton.Size = UDim2.new(0, 60, 1, 0)
MiscButton.BackgroundColor3 = Color3.fromRGB(55, 55, 255)
MiscButton.TextColor3 = Color3.new(1,1,1)
MiscButton.MouseButton1Click:Connect(function()
	Pages.MiscPage.Visible = true
end)

-- Páginas
Pages.Name = "Pages"
Pages.Parent = MainFrame
Pages.Size = UDim2.new(1, 0, 1, -30)
Pages.Position = UDim2.new(0, 0, 0, 30)

-- Página Misc
MiscPage.Name = "MiscPage"
MiscPage.Parent = Pages
MiscPage.Size = UDim2.new(1, 0, 1, 0)
MiscPage.Visible = true
MiscPage.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

-- Botão Anti AFK
AntiAfkToggle.Name = "AntiAfkToggle"
AntiAfkToggle.Parent = MiscPage
AntiAfkToggle.Text = "Ativar Anti-AFK"
AntiAfkToggle.Size = UDim2.new(0, 200, 0, 50)
AntiAfkToggle.Position = UDim2.new(0, 50, 0, 50)
AntiAfkToggle.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
AntiAfkToggle.TextColor3 = Color3.new(1, 1, 1)

-- Variável de controle
local antiAfkAtivado = false
local conexaoAfk = nil

AntiAfkToggle.MouseButton1Click:Connect(function()
	antiAfkAtivado = not antiAfkAtivado
	if antiAfkAtivado then
		AntiAfkToggle.Text = "Desativar Anti-AFK"
		conexaoAfk = game:GetService("Players").LocalPlayer.Idled:Connect(function()
			game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
			wait(1)
			game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
		end)
	else
		AntiAfkToggle.Text = "Ativar Anti-AFK"
		if conexaoAfk then
			conexaoAfk:Disconnect()
			conexaoAfk = nil
		end
	end
end)
