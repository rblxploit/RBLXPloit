--[[
Game : https://www.roblox.com/games/5852812686
Codded by : Keathunsar : https://github.com/dady172172/Roblox-Cheats
Gui made by : https://v3rmillion.net/member.php?action=profile&uid=507120
Go vouch release thread : https://v3rmillion.net/showthread.php?tid=1040650
]]--
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3'))()
kVars = {}
kVars.windowName = "Candy Clicking Simulator GUI" -- Window Name here
script.Name = kVars.windowName
local w = library:CreateWindow(kVars.windowName) -- Creates the window
local f = w:CreateFolder("Farm") -- Creates the folder(U will put here your buttons,etc)

--- Anti AFK ---
local VirtualUser = game:service('VirtualUser')
kVars.AntiAfk = game:service('Players').LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

f:Toggle("click",function(bool)
    kVars.boolClick = bool
    if bool then fClick() end
end)

function fClick()
    spawn(function()
        while kVars.boolClick do
            wait()
            game:GetService("ReplicatedStorage").Events.ClickEvent:InvokeServer()
         end
    end)

end

kVars.varRebirth = 1
f:Box("Box","number",function(value) -- "number" or "string"
    local checkIfNumber = tonumber(value)
    if checkIfNumber then
        kVars.varRebirth = value
    end
end)

f:Toggle("Rebirth",function(bool)
    kVars.boolRebirth = bool
    if bool then fRebirth() end
end)

function fRebirth()
    spawn(function()
        while kVars.boolRebirth do
            wait()
            if kVars.varRebirth == nil then return end
            game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(kVars.varRebirth)
         end
    end)

end

---- Closing ----
kVars.closeing = script.Parent.ChildRemoved:Connect(function(child)
	if child.Name == script.Name then
		kVars.closing = true
		wait(.1)
		table.clear(kVars)
        kVars.AntiAfk:Disconnect()
		kVars.closeing:Disconnect()
		script:Destroy()
	end
end)


--[[
b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Button("Button",function()
    print("Elym Winning")
end)

b:Toggle("Toggle",function(bool)
    shared.toggle = bool
    print(shared.toggle)
end)

b:Slider("Slider",{
    min = 10; -- min value of the slider
    max = 50; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    print(value)
end)

b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    print(mob)
end)

b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
    print("Yes")
end)

b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
    print(color)
end)

b:Box("Box","number",function(value) -- "number" or "string"
    print(value)
end)

b:DestroyGui()


How to refresh a dropdown:
1)Create the dropdown and save it in a variable
local yourvariable = b:Dropdown("Hi",yourtable,function(a)
    print(a)
end)
2)Refresh it using the function
yourvariable:Refresh(yourtable)
How to refresh a label:
1)Create your label and save it in a variable
local yourvariable = b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})
2)Refresh it using the function
yourvariable:Refresh("Hello") It will only change the text ofc
]]