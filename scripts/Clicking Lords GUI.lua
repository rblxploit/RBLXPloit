--[[
Game : https://www.roblox.com/games/5827736698/Clicking-Lords
Codded by : Keathunsar : https://github.com/dady172172/Roblox-Cheats
Gui made by : https://v3rmillion.net/member.php?action=profile&uid=507120
Go vouch release thread : https://v3rmillion.net/showthread.php?tid=1040650
]]--
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3'))()
kVars = {}
kVars.windowName = "Clicking Lords GUI" -- Window Name here
local w = library:CreateWindow(kVars.windowName) -- Creates the window
local b = w:CreateFolder("Auto") -- Creates the folder(U will put here your buttons,etc)

b:Toggle("Auto Click",function(bool)
    kVars.varAutoClicker = bool
    if bool then autoclicker() end
end)
function autoclicker()
    spawn(function()
        while kVars.varAutoClicker do
            wait()
            game:GetService("Workspace").Events.AddClick:FireServer()
        end
    end)

end

b:Toggle("Collect Gems",function(bool)
    kVars.varAutoCollectGems = bool
    if bool then autoCollectGems() end
end)

function autoCollectGems()
    spawn(function()
        while kVars.varAutoCollectGems do
            wait()
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.name == "s1" or v.Name == "s2" then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
                end
            end
        end
    end)
end
---- Closing ----
kVars.closeing = game:GetService("CoreGui").ChildRemoved:Connect(function(child)
	if child.Name == kVars.windowName then
		kVars.closing = true
		wait(.1)
		table.clear(kVars)
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