repeat task.wait() until game:IsLoaded()
task.wait(1)
local LoadingScreen = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local UIPadding = Instance.new("UIPadding")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Version = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local UIPadding_2 = Instance.new("UIPadding")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Bar = Instance.new("Frame")
local ImageLabel_2 = Instance.new("ImageLabel")
local Bar2 = Instance.new("Frame")
local UIGradient_3 = Instance.new("UIGradient")

--Properties:

LoadingScreen.Name = "LoadingScreen"
LoadingScreen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
--LoadingScreen.OnTopOfCoreBlur = true
LoadingScreen.IgnoreGuiInset = true
LoadingScreen.ZIndexBehavior = Enum.ZIndexBehavior.Global

Main.Name = "Main"
Main.Parent = LoadingScreen
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0,0,0,0)

ImageLabel.Parent = Main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "rbxassetid://4499016847"
ImageLabel.ImageColor3 = Color3.fromRGB(31, 32, 32)

TextLabel.Parent = Main
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.5, 0, 0.400000006, 0)
TextLabel.Size = UDim2.new(0.400000006, 0, 0.400000006, 0)
TextLabel.Font = Enum.Font.GothamMedium
TextLabel.Text = "Easy"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 100.000
TextLabel.TextWrapped = true
TextLabel.ZIndex = 99

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 93, 220))}
UIGradient.Parent = TextLabel

UIPadding.Parent = TextLabel
UIPadding.PaddingBottom = UDim.new(0.0500000007, 0)
UIPadding.PaddingLeft = UDim.new(0.0500000007, 0)
UIPadding.PaddingRight = UDim.new(0.0500000007, 0)
UIPadding.PaddingTop = UDim.new(0.0500000007, 0)

UITextSizeConstraint.Parent = TextLabel

Version.Name = "Version"
Version.Parent = Main
Version.AnchorPoint = Vector2.new(0.5, 0.5)
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1.000
Version.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version.BorderSizePixel = 0
Version.Position = UDim2.new(0.610000014, 0, 0.5, 0)
Version.Rotation = 2.000
Version.Size = UDim2.new(0.224999994, 0, 0.224999994, 0)
Version.Font = Enum.Font.GothamMedium
Version.Text = "V4"
Version.TextColor3 = Color3.fromRGB(255, 255, 255)
Version.TextScaled = true
Version.TextSize = 100.000
Version.TextWrapped = true
Version.ZIndex = 99

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 93, 220))}
UIGradient_2.Parent = Version

UIPadding_2.Parent = Version
UIPadding_2.PaddingBottom = UDim.new(0.0500000007, 0)
UIPadding_2.PaddingLeft = UDim.new(0.0500000007, 0)
UIPadding_2.PaddingRight = UDim.new(0.0500000007, 0)
UIPadding_2.PaddingTop = UDim.new(0.150000006, 0)

UITextSizeConstraint_2.Parent = Version

Bar.Name = "Bar"
Bar.Parent = Main
Bar.AnchorPoint = Vector2.new(0.5, 0.5)
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.5, 0, 0.699999988, 0)
Bar.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
Bar.ZIndex = 99

ImageLabel_2.Parent = Bar
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Size = UDim2.new(1, 0, 1, 0)
ImageLabel_2.Image = "rbxassetid://4499016847"
ImageLabel_2.ImageColor3 = Color3.fromRGB(31, 32, 32)

Bar2.Name = "Bar2"
Bar2.Parent = Bar
Bar2.AnchorPoint = Vector2.new(0.5, 0.5)
Bar2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar2.BackgroundTransparency = 0.250
Bar2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bar2.BorderSizePixel = 0
Bar2.Position = UDim2.new(0.5, 0, 0.5, 0)
Bar2.Size = UDim2.new(0.00100000005, 0, 1, 0)
Bar2.ZIndex = 100

local Status = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local UIPadding = Instance.new("UIPadding")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

--Properties:

Status.Name = "Status"
Status.Parent = Main
Status.AnchorPoint = Vector2.new(0.5, 0.5)
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1.000
Status.BorderColor3 = Color3.fromRGB(0, 0, 0)
Status.BorderSizePixel = 0
Status.Position = UDim2.new(0.5, 0, 0.800000012, 0)
Status.Rotation = 1.000
Status.Size = UDim2.new(0.224999994, 0, 0.224999994, 0)
Status.Font = Enum.Font.GothamMedium
Status.Text = "N/A"
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.TextScaled = true
Status.TextSize = 100.000
Status.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 93, 220))}
UIGradient.Parent = Status

UIPadding.Parent = Status
UIPadding.PaddingBottom = UDim.new(0.0500000007, 0)
UIPadding.PaddingLeft = UDim.new(0.0500000007, 0)
UIPadding.PaddingRight = UDim.new(0.0500000007, 0)
UIPadding.PaddingTop = UDim.new(0.150000006, 0)

UITextSizeConstraint.Parent = Status

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(64, 64, 64)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(146, 147, 148))}
UIGradient_3.Parent = Bar2

local Load = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIGradient = Instance.new("UIGradient")


Load.Name = "Load"
Load.Parent = Main
Load.AnchorPoint = Vector2.new(0.5, 0.5)
Load.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load.BorderSizePixel = 0
Load.Position = UDim2.new(0.5, 0, 0.699999988, 0)
Load.Size = UDim2.new(0.176211447, 0, 0.0575373992, 0)
Load.AutoButtonColor = false
Load.Font = Enum.Font.GothamMedium
Load.Text = "Play"
Load.TextColor3 = Color3.fromRGB(46, 47, 47)
Load.TextScaled = true
Load.TextSize = 14.000
Load.TextWrapped = true

UICorner.Parent = Load

UITextSizeConstraint.Parent = Load
UITextSizeConstraint.MaxTextSize = 50

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 93, 220))}
UIGradient.Parent = Load

Load.MouseButton1Click:Connect(function() 
	LoadingScreen:Destroy()	
end)
Load.Visible = false

shared.LoadingScreenFullyLoaded = true
-- Tweening
shared.VapeFullyLoaded = false
local vapefullload = shared.VapeFullyLoaded
local TweenSer = game:GetService("TweenService")

local GuiOpeningInfo = TweenInfo.new(1.2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
local BarTweenInfo = TweenInfo.new(math.random(1.55,3), Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

local guitween = TweenSer:Create(Main, GuiOpeningInfo, {Size = UDim2.new(1,0,1,0)})
local bartween = TweenSer:Create(Bar2, BarTweenInfo, {Size = UDim2.new(-0.999, 0,1, 0)})

local function UpdateStatus(text) 
	Status.Text = text
end 
local function w(del) 
    task.wait(del or 1)
end
if shared and shared.GuiLibrary then 
    UpdateStatus("Reinject Detected!")
    shared.GuiLibrary.SelfDestruct() 
    w(1.5)
end

UpdateStatus("Loading...")
w(.01)
guitween:Play()
guitween.Completed:Wait()
w(1)

bartween:Play()
bartween.Completed:Wait()
UpdateStatus("Almost there..")
w(.1)
shared.deffont = Enum.Font.GothamMedium
shared.notied = nil
shared.noties = nil
shared.notid = nil
loadstring(game:HttpGet("https://raw.githubusercontent.com/Owner1213/VapeV4ForRoblox/main/NewMainScript.lua", true))()
UpdateStatus("Finished!")
w()
Bar:Destroy()
Load.Visible = true