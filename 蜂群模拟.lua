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

local win = ULlib:Window("Eat the world(LSTMArchive开源制作)",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("主要功能")

local ToolCollect = false
local Making = false

tab:Toggle("自动使用花粉采集器",false,function(state)
    ToolCollect = state
    if ToolCollect then
    while ToolCollect do
    game:GetService("ReplicatedStorage").Events.ToolCollect:FireServer()
    wait()
    end
end
end)
tab:Toggle("自动收集花粉(蒲公英)",false,function(state)
    ToolCollect = state
    if ToolCollect then
    while ToolCollect do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-47.992244720458984, 4.746883869171143, 217.41290283203125)
    game:GetService("ReplicatedStorage").Events.ToolCollect:FireServer()
    wait()
    end
end
end)
tab:Toggle("自动收集花粉(三叶草)",false,function(state)
    ToolCollect = state
    if ToolCollect then
    while ToolCollect do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(142.328857421875, 34.24687957763672, 191.83651733398438)
    game:GetService("ReplicatedStorage").Events.ToolCollect:FireServer()
    wait()
    end
end
end)
tab:Toggle("自动收集花粉(蓝花)",false,function(state)
    ToolCollect = state
    if ToolCollect then
    while ToolCollect do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(123.95781707763672, 4.746883869171143, 106.66554260253906)
    game:GetService("ReplicatedStorage").Events.ToolCollect:FireServer()
    wait()
    end
end
end)
tab:Toggle("自动收集花粉(蘑菇)",false,function(state)
    ToolCollect = state
    if ToolCollect then
    while ToolCollect do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-77.71565246582031, 4.746883869171143, 114.29756927490234)
    game:GetService("ReplicatedStorage").Events.ToolCollect:FireServer()
    wait()
    end
end
end)
tab:Toggle("自动收集花粉(向日葵)",false,function(state)
    ToolCollect = state
    if ToolCollect then
    while ToolCollect do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-203.63072204589844, 4.746883869171143, 172.4333953857422)
    game:GetService("ReplicatedStorage").Events.ToolCollect:FireServer()
    wait()
    end
end
end)
tab:Toggle("自动收集花粉(蒲公英田)",false,function(state)
    ToolCollect = state
    if ToolCollect then
    while ToolCollect do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-47.992244720458984, 4.746883869171143, 217.41290283203125)
    game:GetService("ReplicatedStorage").Events.ToolCollect:FireServer()
    wait()
    end
end
end)
tab:Toggle("自动制作蜂蜜",false,function(state)
    Making = state
    if Making then
    while Making do
    game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
    wait()
    end
end
end)