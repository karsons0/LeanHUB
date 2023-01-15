-- Gui to Lua
-- Version: 3.2

-- Instances:

local LH = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local GameName = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Start = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local X = Instance.new("TextButton")
local C = Instance.new("TextLabel")

--Properties:

LH.Name = "LH"
LH.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LH.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = LH
Frame.BackgroundColor3 = Color3.fromRGB(69, 69, 69)
Frame.Position = UDim2.new(0.351467431, 0, 0.292929292, 0)
Frame.Size = UDim2.new(0.287759483, 0, 0.451178461, 0)

UICorner.CornerRadius = UDim.new(0, 50)
UICorner.Parent = Frame

GameName.Name = "GameName"
GameName.Parent = Frame
GameName.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
GameName.Position = UDim2.new(0.25124377, 0, 0.25373134, 0)
GameName.Size = UDim2.new(0.49751243, 0, 0.186567158, 0)
GameName.Font = Enum.Font.SourceSans
GameName.TextColor3 = Color3.fromRGB(255, 255, 255)
GameName.TextScaled = true
GameName.TextSize = 14.000
GameName.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 50)
UICorner_2.Parent = GameName

Start.Name = "Start"
Start.Parent = Frame
Start.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
Start.Position = UDim2.new(0.25124377, 0, 0.481343269, 0)
Start.Size = UDim2.new(0.49751243, 0, 0.186567158, 0)
Start.Font = Enum.Font.SourceSans
Start.Text = "Start"
Start.TextColor3 = Color3.fromRGB(255, 255, 255)
Start.TextScaled = true
Start.TextSize = 14.000
Start.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 50)
UICorner_3.Parent = Start

X.Name = "X"
X.Parent = Frame
X.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
X.BackgroundTransparency = 1.000
X.Position = UDim2.new(0.855721414, 0, 0.00746268639, 0)
X.Size = UDim2.new(0.0895522386, 0, 0.186567158, 0)
X.Font = Enum.Font.SourceSans
X.Text = "X"
X.TextColor3 = Color3.fromRGB(255, 255, 255)
X.TextScaled = true
X.TextSize = 14.000
X.TextWrapped = true

C.Name = "C"
C.Parent = LH
C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
C.BackgroundTransparency = 1.000
C.Position = UDim2.new(0.428060114, 0, 0.311447799, 0)
C.Size = UDim2.new(0.143163919, 0, 0.0538720526, 0)
C.Font = Enum.Font.SourceSans
C.TextColor3 = Color3.fromRGB(255, 255, 255)
C.TextScaled = true
C.TextSize = 14.000
C.TextWrapped = true
C.Text = "Lean Hub | Game Detector"

X.MouseButton1Click:Connect(function()
    LH:Destroy()
end)


if game.PlaceId == 9498006165 then
    GameName.Text = "Tapping Simulator"
    Start.MouseButton1Click:Connect(function()
        LH:Destroy()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Ariemakesthebest/LeanHUB/master/TappingSimulator.lua'))()
    end)
end


