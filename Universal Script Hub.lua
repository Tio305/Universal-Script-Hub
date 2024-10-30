-- Universal Script Hub
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Universal Script Hub", HidePremium = false, SaveConfig = true, IntroEnabled = false})

local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:MakeNotification({
	Name = "Welcome to Universal Script Hub",
	Content = "I know u used synapse z to execute this",
	Image = "rbxassetid://4483345998",
	Time = 10
})

Main:AddLabel("Welcome to Universal Script Hub")
Main:AddLabel("I know u used Synapse Z to execute this")

local Scripts = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Scripts = Scripts:AddSection({
	Name = "Scripts"
})

Scripts:AddButton({
	Name = "Aimbot (E To Toggle)",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tio305/Aimbot-E-To-Toggle/refs/heads/main/Aimbot.lua",true))()
  	end    
})

Scripts:AddButton({
	Name = "Esp",
	Callback = function()
        -- Esp
local function highlightPlayer(player)
    if player.Character then
        -- Check if a highlight already exists to avoid duplicates
        if not player.Character:FindFirstChild("Highlight") then
            local highlight = Instance.new("Highlight")
            highlight.FillColor = Color3.new(0, 0, 1) -- Change to desired color
            highlight.OutlineColor = Color3.new(1, 1, 1) -- Outline color
            highlight.OutlineTransparency = 0.2
            highlight.FillTransparency = 0.5
            highlight.Parent = player.Character
        end
    end
end

-- Loop through all players and add highlights to their characters
local function highlightAllPlayers()
    local players = game.Players:GetPlayers()
    for _, player in pairs(players) do
        if player ~= game.Players.LocalPlayer then
            highlightPlayer(player)
        end
    end
end

-- Update highlights for all players when they join or respawn
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if player ~= game.Players.LocalPlayer then
            highlightPlayer(player)
        end
    end)
end)

-- Initial highlight setup for players already in the game
highlightAllPlayers()
  	end    
})

Scripts:AddButton({
	Name = "Remote Spy",
	Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
  	end    
})
