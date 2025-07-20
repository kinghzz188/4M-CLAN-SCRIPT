-- GUI usando UI Lib
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall"))()

local Window = Library:CreateWindow("💪 KING SCRIPT - Muscle Legends")
local FarmTab = Window:CreateFolder("Farm")

-- Auto Rock Dropdown
local SelectedRock = nil
local AutoFarmEnabled = false

FarmTab:Toggle("Auto Rock", function(value)
    AutoFarmEnabled = value
end)

FarmTab:Dropdown("Selecionar Rock", {
    "Tiny Rock",
    "Starter Rock",
    "Legend Beach Rock",
    "Frozen Rock",
    "Mythical Rock",
    "Eternal Rock",
    "Legend Rock",
    "Muscle King Rock",
    "Jungle Rock"
}, true, function(selected)
    SelectedRock = selected
end)

-- Auto Farm Loop
spawn(function()
    while true do
        wait(0.5)
        if AutoFarmEnabled and SelectedRock then
            local rock = workspace:FindFirstChild(SelectedRock)
            if rock then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rock.CFrame + Vector3.new(0, 3, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, rock, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, rock, 1)
            end
        end
    end
end)
