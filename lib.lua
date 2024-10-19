local lib = {}

local loaderV3 = Instance.new("ScreenGui")
local background = Instance.new("ImageButton")
local container = Instance.new("Frame")
local padding = Instance.new("UIPadding")
local header = Instance.new("TextLabel")
local close = Instance.new("ImageButton")
local icon = Instance.new("ImageLabel")


loaderV3.Name = "loaderV3"
loaderV3.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
loaderV3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
loaderV3.ResetOnSpawn = false
loaderV3.IgnoreGuiInset = true
loaderV3.OnTopOfCoreBlur = true
lib["MainGui"] = loaderV3

background.Name = "background"
background.Parent = loaderV3
background.AnchorPoint = Vector2.new(0.5, 0.5)
background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
background.BackgroundTransparency = 1.000
background.BorderColor3 = Color3.fromRGB(0, 0, 0)
background.BorderSizePixel = 0
background.Position = UDim2.new(0.5, 0, 0.5, 0)
background.Size = UDim2.new(1, 0, 1, 0)
background.AutoButtonColor = false
background.Image = "rbxassetid://14407899530"
background.ImageTransparency = 0.200

container.Name = "container"
container.Parent = loaderV3
container.AnchorPoint = Vector2.new(0.5, 0.5)
container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
container.BackgroundTransparency = 1.000
container.BorderColor3 = Color3.fromRGB(0, 0, 0)
container.BorderSizePixel = 0
container.Position = UDim2.new(0.5, 0, 0.5, 0)
container.Size = UDim2.new(1, 0, 1, 0)

padding.Name = "padding"
padding.Parent = container
padding.PaddingTop = UDim.new(0, 50)

header.Name = "header"
header.Parent = container
header.AnchorPoint = Vector2.new(0.5, 0)
header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
header.BackgroundTransparency = 1.000
header.BorderColor3 = Color3.fromRGB(0, 0, 0)
header.BorderSizePixel = 0
header.Position = UDim2.new(0.5, 0, 0, 0)
header.Size = UDim2.new(1, 0, 0, 60)
header.Font = Enum.Font.GothamMedium
header.Text = "Main"
header.TextColor3 = Color3.fromRGB(255, 255, 255)
header.TextSize = 30.000
header.TextTransparency = 0.100
lib["Header"] = header

close.Name = "close"
close.Parent = container
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.000
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0, 20, 0, -30)
close.Size = UDim2.new(0, 50, 0, 50)

icon.Name = "icon"
icon.Parent = close
icon.AnchorPoint = Vector2.new(0.5, 0.5)
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.BackgroundTransparency = 1.000
icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
icon.BorderSizePixel = 0
icon.Position = UDim2.new(0.5, 0, 0.5, 0)
icon.Size = UDim2.new(0.5, 0, 0.5, 0)
icon.Image = "rbxassetid://11293981586"
icon.ImageTransparency = 0.200


local function PGCM_script()
	close.MouseButton1Click:Once(function() 
		lib.MainGui:Destroy()	
	end)
end
coroutine.wrap(PGCM_script)()


lib["CreateScrollGui"] = function(name, visible) 
	local main = Instance.new("ScrollingFrame")
	local list = Instance.new("UIListLayout")
	local padding = Instance.new("UIPadding")
	
	
	main.Name = name or "main"
	main.Parent = container
	main.Active = true
	main.Visible = visible
	main.AnchorPoint = Vector2.new(0.5, 0)
	main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	main.BackgroundTransparency = 1.000
	main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	main.BorderSizePixel = 0
	main.Position = UDim2.new(0.5, 0, 0, 100)
	main.Size = UDim2.new(1, -20, 1, -110)
	main.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	main.CanvasSize = UDim2.new(0, 0, 0, 0)
	main.ScrollBarThickness = 2
	main.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	
	list.Name = "list"
	list.Parent = main
	list.HorizontalAlignment = Enum.HorizontalAlignment.Center
	list.SortOrder = Enum.SortOrder.LayoutOrder
	list.Padding = UDim.new(0, 10)
	
	padding.Name = "padding"
	padding.Parent = main
	padding.PaddingBottom = UDim.new(0, 5)
	padding.PaddingLeft = UDim.new(0, 5)
	padding.PaddingRight = UDim.new(0, 5)
	padding.PaddingTop = UDim.new(0, 5)
	
	local function QNKLSAB_script()
		local tween_service = game:GetService("TweenService")
		local info = TweenInfo.new(.2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

		main.DescendantAdded:Connect(function(ins) 
			if ins:IsA("ImageButton") then
				ins.MouseEnter:Connect(function()
					tween_service:Create(ins, info, {BackgroundTransparency = .95}):Play()
					tween_service:Create(ins.stroke, info, {Thickness = 2}):Play()
				end)
				ins.MouseButton1Down:Connect(function()
					tween_service:Create(ins, info, {BackgroundTransparency = .7}):Play()
					tween_service:Create(ins.stroke, info, {Thickness = 3}):Play()
				end)
				ins.InputEnded:Connect(function()
					tween_service:Create(ins, info, {BackgroundTransparency = .9}):Play()
					tween_service:Create(ins.stroke, info, {Thickness = 0}):Play()
				end)
			end
		end)
	end
	coroutine.wrap(QNKLSAB_script)()
	return main
end

lib["CreateButton"] = function(name, gui, ico, func, noicon, pht) 
	local main = Instance.new("ImageButton")
	local padding = Instance.new("UIPadding")
	local stroke = Instance.new("UIStroke")
	


	main.Name = name
	main.Parent = gui
	main.AnchorPoint = Vector2.new(0.5, 0.5)
	main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	main.BackgroundTransparency = 0.900
	main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	main.BorderSizePixel = 0
	main.LayoutOrder = 1
	main.Size = UDim2.new(0.200000003, 420, 0, 50)
	main.AutoButtonColor = false

	padding.Name = "padding"
	padding.Parent = main
	padding.PaddingBottom = UDim.new(0, 10)
	padding.PaddingLeft = UDim.new(0, 20)
	padding.PaddingRight = UDim.new(0, 20)
	padding.PaddingTop = UDim.new(0, 10)

	stroke.Name = "stroke"
	stroke.Parent = main
	stroke.Color = Color3.fromRGB(255, 255, 255)
	stroke.Transparency = 0.800
	stroke.Thickness = 0.000
	stroke.LineJoinMode = Enum.LineJoinMode.Miter
	
	local label = Instance.new("TextLabel")
	label.Name = "label"
	label.Parent = main
	label.AnchorPoint = Vector2.new(0, 0.5)
	label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	label.BackgroundTransparency = 1.000
	label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	label.BorderSizePixel = 0
	label.Position = UDim2.new(0, 0, 0.5, 0)
	label.Size = UDim2.new(0.5, 0, 1, 0)
	label.Font = Enum.Font.Gotham
	label.Text = name
	label.TextColor3 = Color3.fromRGB(255, 255, 255)
	label.TextSize = 18.000
	label.TextTransparency = 0.100
	label.TextXAlignment = Enum.TextXAlignment.Left


	if not noicon then 
		local icon = Instance.new("ImageLabel")
		icon.Name = "icon"
		icon.Parent = main
		icon.AnchorPoint = Vector2.new(1, 0.5)
		icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		icon.BackgroundTransparency = 1.000
		icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		icon.BorderSizePixel = 0
		icon.Position = UDim2.new(1, 0, 0.5, 0)
		icon.Size = UDim2.new(0, 20, 0, 20)
		icon.Image = ico or "rbxassetid://117474033428241"
		icon.ImageTransparency = 0.500
	else
		local value = Instance.new("TextLabel")
		value.Name = "value"
		value.Parent = main
		value.AnchorPoint = Vector2.new(1, 0.5)
		value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		value.BackgroundTransparency = 1.000
		value.BorderColor3 = Color3.fromRGB(0, 0, 0)
		value.BorderSizePixel = 0
		value.Position = UDim2.new(1, 0, 0.5, 0)
		value.Size = UDim2.new(0.5, 0, 1, 0)
		value.Font = Enum.Font.Gotham
		value.Text = "Off"
		value.TextColor3 = Color3.fromRGB(255, 255, 255)
		value.TextSize = 18.000
		value.TextTransparency = 0.500
		value.TextXAlignment = Enum.TextXAlignment.Right
	end

	-- Scripts:

	local function NUYZ_script()
		main.MouseButton1Click:Connect(func)
	end
	coroutine.wrap(NUYZ_script)()
	return main
end

return lib