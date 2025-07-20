-- KING SCRIPT 💀 por KING

-- Carregando UI Library (usando Rayfield como exemplo)
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "KING SCRIPT 💀",
   LoadingTitle = "KING SCRIPT Loading...",
   LoadingSubtitle = "By KING",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "KING_SCRIPT", -- Para configs salvas
   },
   Discord = {
      Enabled = false,
   },
   KeySystem = false
})

-- MAIN
local MainTab = Window:CreateTab("Main", 4483362458)

MainTab:CreateToggle({
   Name = "Anti-AFK System",
   CurrentValue = false,
   Callback = function(Value)
       if Value then
           local vu = game:GetService("VirtualUser")
           game:GetService("Players").LocalPlayer.Idled:connect(function()
               vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
               wait(1)
               vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
           end)
       end
   end,
})

MainTab:CreateButton({
   Name = "Auto Brawls",
   Callback = function()
       while true do
           game.ReplicatedStorage.Brawl:FireServer()
           wait(5)
       end
   end,
})

MainTab:CreateButton({
   Name = "Jungle Gym",
   Callback = function()
       local args = {
           [1] = "JungleGym"
       }
       game:GetService("ReplicatedStorage").Gym:FireServer(unpack(args))
   end,
})

MainTab:CreateButton({
   Name = "Entrenar Gimnasios",
   Callback = function()
       for i,v in pairs(game:GetService("Workspace").Gyms:GetChildren()) do
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
           wait(2)
       end
   end,
})

MainTab:CreateButton({
   Name = "OP Things/Farms",
   Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/zRkCgAtg"))()
   end,
})

-- ABA DE CRÉDITOS
local CreditsTab = Window:CreateTab("Credits", 4483362458)

CreditsTab:CreateParagraph({Title = "KING SCRIPT", Content = "Criado por KING 💀\nInterface inspirada no VTBR CLAN SCRIPT."})
