local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Owner1213/VapeV4ForRoblox/main/lib.lua", true))()

shared.FastLoad = false

local main = lib.CreateScrollGui("main", true)

local load
local settings


local s = lib.CreateScrollGui("settings", false)

local fastload


load = lib.CreateButton("Load", main, "rbxassetid://117474033428241", function() 
	lib["MainGui"]:Destroy()
    shared.notid = nil
    shared.notied = nil
    shared.noties = nil
    shared.deffont = Enum.Font.GothamMedium
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Owner1213/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end, false)

settings = lib.CreateButton("Settings", main, "rbxassetid://117474033428241", function() 
	lib["Header"].Text = "Settings"
	main.Visible = false
	s.Visible = true
end, false)

fastload = lib.CreateButton("Fast Load", s, nil, function() 
	local val = fastload.value
	if val.Text == "Off" then 
		val.Text = "On"
		shared.FastLoad = true
	else
		val.Text = "Off"
		shared.FastLoad = false
	end
end, true)

back = lib.CreateButton("Back", s, "rbxassetid://117474033428241", function() 
	lib["Header"].Text = "Main"
	main.Visible = true
	s.Visible = false
end, false)