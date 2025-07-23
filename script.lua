-- KING SCRIPT - Adaptado para executor Delta

-- Criar botão flutuante para abrir/fechar o menu local Button = Instance.new("TextButton") Button.Size = UDim2.new(0, 40, 0, 40) Button.Position = UDim2.new(0, 10, 0.5, -20) Button.Text = "" Button.BackgroundColor3 = Color3.new(0, 0, 0) Button.BackgroundTransparency = 0.2 Button.TextColor3 = Color3.new(1, 1, 1) Button.BorderSizePixel = 0 Button.Active = true Button.Draggable = true Button.Name = "OpenMenuButton" Button.Parent = game.CoreGui

-- Criar menu principal local ScreenGui = Instance.new("ScreenGui", game.CoreGui) ScreenGui.Name = "KingScriptUI"

local MainFrame = Instance.new("Frame") MainFrame.Size = UDim2.new(0, 500, 0, 300) MainFrame.Position = UDim2.new(0.5, -250, 0.5, -150) MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20) MainFrame.BorderSizePixel = 0 MainFrame.Visible = false MainFrame.Parent = ScreenGui

local Title = Instance.new("TextLabel") Title.Size = UDim2.new(1, 0, 0, 30) Title.BackgroundTransparency = 1 Title.Text = "KING SCRIPT" Title.Font = Enum.Font.SourceSansBold Title.TextSize = 24 Title.TextColor3 = Color3.new(1, 1, 1) Title.Parent = MainFrame

local Tabs = {"Main", "Farm", "Animals", "Misc", "Assassin", "Teleport", "Credits"} local Buttons = {}

for i, name in ipairs(Tabs) do local Tab = Instance.new("TextButton") Tab.Size = UDim2.new(0, 70, 0, 30) Tab.Position = UDim2.new(0, (i - 1) * 72, 0, 30) Tab.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Tab.TextColor3 = Color3.new(1, 1, 1) Tab.Font = Enum.Font.SourceSansBold Tab.TextSize = 16 Tab.Text = name Tab.Parent = MainFrame Buttons[name] = Tab end

-- Conteúdo padrão do menu (simples) local Content = Instance.new("Frame") Content.Size = UDim2.new(1, 0, 1, -60) Content.Position = UDim2.new(0, 0, 0, 60) Content.BackgroundTransparency = 1 Content.Parent = MainFrame

local function createOption(text) local Option = Instance.new("TextButton") Option.Size = UDim2.new(1, -20, 0, 30) Option.Position = UDim2.new(0, 10, 0, #Content:GetChildren() * 35) Option.BackgroundColor3 = Color3.fromRGB(40, 40, 40) Option.TextColor3 = Color3.new(1, 1, 1) Option.Font = Enum.Font.SourceSans Option.TextSize = 16 Option.Text = text Option.Parent = Content end

createOption("Auto Rock") createOption("Reencarnações") createOption("Auto Equip") createOption("Estatísticas")

-- Função para alternar visibilidade Button.MouseButton1Click:Connect(function() MainFrame.Visible = not MainFrame.Visible end)

