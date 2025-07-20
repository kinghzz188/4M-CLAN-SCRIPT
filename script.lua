
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
    Name = "VTBR CLAN SCRIPT", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "VTBRCLAN"
})

-- Aba Main
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "",
	PremiumOnly = false
})

MainTab:AddToggle({
	Name = "Anti-AFK System",
	Default = false,
	Callback = function(Value)
        -- código anti afk
	end
})

MainTab:AddSection("Auto Brawls")
MainTab:AddButton({
	Name = "▶Auto Brawls",
	Callback = function()
        -- auto brawls code
	end
})

MainTab:AddButton({
	Name = "▶Jungle Gym",
	Callback = function()
        -- jungle gym code
	end
})

MainTab:AddButton({
	Name = "▶Entrenar Gimnasios",
	Callback = function()
        -- gym training code
	end
})

MainTab:AddButton({
	Name = "▶OP Things/Farms",
	Callback = function()
        -- OP farm code
	end
})

-- Criar as outras abas
local tabs = {"Farm", "Pets", "Misc", "Killer", "Teleport", "Credits"}
for _, tabName in ipairs(tabs) do
    Window:MakeTab({
        Name = tabName,
        Icon = "",
        PremiumOnly = false
    })
end

OrionLib:Init()
