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

local win = ULlib:Window("火箭发射",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("购买功能")

local buyFuel = false
local buyBackpack = false
local buyRocket = false

tab:Toggle("自动买收集器", false, function(state)
    buyFuel = state
    if buyFuel then
        while buyFuel do
            for i = 1, 12, 1 do
                game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer("FuelScoop", i)
                wait(1)
            end
        end
    end
end)

tab:Toggle("自动买背包", false, function(state)
    buyBackpack = state
    if buyBackpack then
        while buyBackpack do
            for i = 1, 13, 1 do
                game:GetService("ReplicatedStorage").BuyItem:InvokeServer("Backpack", i)
                wait(1)
            end
        end
    end
end)

tab:Toggle("自动买火箭", false, function(state)
    buyRocket = state
    if buyRocket then
        while buyRocket do
            for i = 1, 10, 1 do
                game:GetService("ReplicatedStorage").BuyRocket:InvokeServer("Rocket", i)
                wait(1)
            end
        end
    end
end)

local tab = win:Tab("其他功能")
tab:Button("传送基地",function()
game:GetService("ReplicatedStorage").Teleport:FireServer()
end)

tab:Button("上火箭",function()
game:GetService("ReplicatedStorage").BoardRocket:FireServer()
end)

tab:Button("清空火箭上面玩家",function()
game:GetService("ReplicatedStorage").RemovePlayer:FireServer()
end)

tab:Button("发射台岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-123.15931701660156, 2.7371432781219482, 3.491959810256958)
end)

tab:Button("白云岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76.13252258300781, 170.55825805664062, -60.4516716003418)
end)

tab:Button("浮漂岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-66.51714324951172, 720.4866333007812, -5.391753196716309)
end)

tab:Button("卫星岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.2462043762207, 1429.4990234375, 1.3739361763000488)
end)

tab:Button("蜜蜂迷宫岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6.5361199378967285, 3131.249267578125, -29.759048461914062)
end)

tab:Button("月球人救援", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7.212917804718018, 5016.341796875, -19.815933227539062)
end)

tab:Button("暗物质岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.43186950683594, 6851.94091796875, 7.890637397766113)
end)

tab:Button("太空岩石岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.92888641357422, 8942.955078125, 8.674375534057617)
end)

tab:Button("零号火星岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.44503402709961, 11270.0927734375, -1.273137092590332)
end)

tab:Button("太空水晶小行星岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.579089164733887, 15295.6318359375, -27.54974365234375)
end)

tab:Button("月球浆果岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.601255416870117, 18410.9609375, 0.9418511986732483)
end)

tab:Button("铺路石岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3.272758960723877, 22539.494140625, 63.283935546875)
end)

tab:Button("流星岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-45.515689849853516, 27961.560546875, -7.358333110809326)
end)

tab:Button("升级岛", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.7595248222351074, 33959.98828125, 53.93095397949219)
end)

local tab = win:Tab("主要功能")

local isFuelScoopEnabled = false

tab:Toggle("自动收集燃料", false, function(Value)
    isFuelScoopEnabled = Value
end)

function CollectFuel()
    while true do
        wait()
        
        if isFuelScoopEnabled then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.878255367279053, 7.27484130859375, 7.71745491027832)
            for i, h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if h:IsA("Tool") and h.Name == "FuelScoop" then
                    h:Activate()
                end
            end
        end
    end
end

CollectFuel()