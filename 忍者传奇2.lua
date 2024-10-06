local ULlib = loadstring(game:HttpGet("https://github.com/AURORA666Script/ui/raw/main/kinghub.txt"))()

local lib = loadstring(game:HttpGet("https://github.com/AURORA666Script/ui/raw/main/vapeui.txt"))()
local OpenUI = Instance.new("ScreenGui")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner") 
local UIColor = Instance.new("UIGradient")
OpenUI.Name = "OpenUI" 
OpenUI.Parent = game.CoreGui 
OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
TextButton.Parent = OpenUI 
TextButton.BackgroundColor3 = Color3.fromRGB(5, 6, 7)
TextButton.BackgroundTransparency = 0.5
TextButton.Position = UDim2.new(0.0235790554, 0, 0.466334164, 0) 
TextButton.Size = UDim2.new(0, 50, 0, 50)
TextButton.Text = ""
TextButton.Draggable = true
TextLabel.Parent = TextButton
TextLabel.BackgroundColor3 = Color3.fromRGB(5, 6, 7)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "开/关"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14
TextLabel.TextXAlignment = Enum.TextXAlignment.Center
TextLabel.TextYAlignment = Enum.TextYAlignment.Center
UICorner.CornerRadius = UDim.new(1, 0) 
UICorner.Parent = TextButton
UIColor.Rotation = 45
UIColor.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
}
UIColor.Parent = TextLabel
TextButton.MouseButton1Click:Connect(function() 
  if uihide == false then
	uihide = true
	game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
else
	uihide = false
	game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 560, 0, 319),"Out","Quad",0.4,true)
		end 
		
end)

uihide = false

local win = ULlib:Window("忍者传奇2",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("主要功能")

local swingBlade = false
local sellelement = false
local buyAllSword = false
local buyAllCrystals = false
local buyAllSkills = false
local planets = {"Ground", "Planet Zephyr", "Planet Omega", "Planet Inferno", "Planet Elemental", "Planet Chaos"}

tab:Toggle("自动挥舞", false, function(state)
    swingBlade = state
    if swingBlade then
        while swingBlade do
            game:GetService("Players").LocalPlayer.saberEvent:FireServer("swingBlade")
            wait()
        end
    end
end)

tab:Toggle("自动卖晶体", false, function(state)
    sellelement = state
    if sellelement then
        while sellelement do
            game.workspace.sellAreaCircles["sellAreaCircle"].circleInner.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
			wait()
			game.workspace.sellAreaCircles["sellAreaCircle"].circleInner.CFrame = game.Workspace.Part.CFrame
			wait()
	    end
	end
end)

tab:Toggle("自动购买剑", false, function(state)
    buyAllSword = state
    if buyAllSword then
        while buyAllSword do
            for _, planet in ipairs(planets) do
                local item = {
                    whichItems = "Swords",
                    whichPlanet = planet
                }
                game:GetService("Players").LocalPlayer.saberEvent:FireServer("buyAllItems", item)
                wait()
            end
        end
    end
end)

tab:Toggle("自动购买储存水晶", false, function(state)
    buyAllCrystals = state
    if buyAllCrystals then
        while buyAllCrystals do
            for _, planet in ipairs(planets) do
                local item = {
                    whichItems = "Crystals",
                    whichPlanet = planet
                }
                game:GetService("Players").LocalPlayer.saberEvent:FireServer("buyAllItems", item)
                wait()
            end
        end
    end
end)

tab:Toggle("自动购买技能", false, function(state)
    buyAllSkills = state
    if buyAllSkills then
        while buyAllSkills do
            for _, planet in ipairs(planets) do
                local item = {
                    whichItems = "Skills",
                    whichPlanet = planet
                }
                game:GetService("Players").LocalPlayer.saberEvent:FireServer("buyAllItems", item)
                wait()
            end
        end
    end
end)

tab:Button("最大跳跃", function()
    game.Players.LocalPlayer.multiJumpCount.Value = "50"
end)