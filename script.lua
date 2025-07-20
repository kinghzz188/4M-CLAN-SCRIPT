-- Rayfield UI Lib
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "💪 KING SCRIPT - Muscle Legends",
   LoadingTitle = "KING SCRIPT",
   LoadingSubtitle = "by KING",
   ConfigurationSaving = {
      Enabled = false
   },
   Discord = {
      Enabled = false
   },
   KeySystem = false
})

local FarmTab = Window:CreateTab("🏋️ Auto Farm", 4483362458)

local SelectedRock = nil
local AutoRockOn = false

FarmTab:CreateToggle({
   Name = "Auto Rock",
   CurrentValue = false,
   Callback = function(Value)
       AutoRockOn = Value
   end,
})

FarmTab:CreateDropdown({
   Name = "Escolher Pedra",
   Options = {
       "Tiny Rock", "Starter Rock", "Legend Beach Rock",
       "Frozen Rock", "Mythical Rock", "Eternal Rock",
       "Legend Rock", "Muscle King Rock", "Jungle Rock"
   },
   CurrentOption = "Starter Rock",
   Callback = function(Option)
       SelectedRock = Option
   end,
})

-- Loop Auto Rock
task.spawn(function()
   while true do
       task.wait(0.5)
       if AutoRockOn and SelectedRock then
           local rock = workspace:FindFirstChild(SelectedRock)
           if rock and game.Players.LocalPlayer.Character then
               local char = game.Players.LocalPlayer.Character
               char:WaitForChild("HumanoidRootPart").CFrame = rock.CFrame + Vector3.new(0, 3, 0)
               firetouchinterest(char.Head, rock, 0)
               firetouchinterest(char.Head, rock, 1)
           end
       end
   end
end)
