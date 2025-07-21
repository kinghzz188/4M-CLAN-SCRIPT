--// KING SCRIPT MENU FLUTUANTE (SOME/APARECE COM CLIQUE) //

-- Cria a GUI principal local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "KingScriptGUI" ScreenGui.ResetOnSpawn = false ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Cria o botão de abrir/fechar menu local ToggleButton = Instance.new("TextButton") ToggleButton.Size = UDim2.new(0, 100, 0, 40) ToggleButton.Position = UDim2.new(0, 10, 0, 10) ToggleButton.Text = "📜 Menu" ToggleButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) ToggleButton.TextColor3 = Color3.new(1, 1, 1) ToggleButton.Parent = ScreenGui

-- Cria o Frame do menu principal local MainFrame = Instance.new("Frame") MainFrame.Size = UDim2.new(0, 300, 0, 200) MainFrame.Position = UDim2.new(0.5, -150, 0.5, -100) MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25) MainFrame.BorderSizePixel = 0 MainFrame.Visible = true MainFrame.Active = true MainFrame.Draggable = true MainFrame.Parent = ScreenGui

-- Título local Title = Instance.new("TextLabel") Title.Text = "👑 KING SCRIPT" Title.Size = UDim2.new(1, 0, 0, 40) Title.BackgroundColor3 = Color3.fromRGB(35, 35, 35) Title.TextColor3 = Color3.new(1, 1, 1) Title.Font = Enum.Font.SourceSansBold Title.TextScaled = true Title.Parent = MainFrame

-- Botão de Auto Punch local AutoPunch = Instance.new("TextButton") AutoPunch.Text = "Auto Punch 👊" AutoPunch.Size = UDim2.new(1, -20, 0, 40) AutoPunch.Position = UDim2.new(0, 10, 0, 60) AutoPunch.BackgroundColor3 = Color3.fromRGB(50, 50, 50) AutoPunch.TextColor3 = Color3.new(1, 1, 1) AutoPunch.Parent = MainFrame

-- Botão de Fast Punch local FastPunch = Instance.new("TextButton") FastPunch.Text = "Fast Punch ⚡" FastPunch.Size = UDim2.new(1, -20, 0, 40) FastPunch.Position = UDim2.new(0, 10, 0, 110) FastPunch.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FastPunch.TextColor3 = Color3.new(1, 1, 1) FastPunch.Parent = MainFrame

-- Mostra/Esconde o menu ao clicar no botão ToggleButton.MouseButton1Click:Connect(function() MainFrame.Visible = not MainFrame.Visible end)

-- Funções dos botões (apenas prints como exemplo) AutoPunch.MouseButton1Click:Connect(function() print("Auto Punch ativado") end)

FastPunch.MouseButton1Click:Connect(function() print("Fast Punch ativado") end)

