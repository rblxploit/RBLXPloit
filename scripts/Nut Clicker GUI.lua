--[[
Game : https://www.roblox.com/games/5114752311
Coded by : Keathunsar : https://github.com/dady172172/Roblox-Cheats
Gui made by : https://v3rmillion.net/member.php?action=profile&uid=244024
]]--

---- Variables ----
kVars = {}
kVars.WindowName = "Nut Clicker GUI"
kVars.txtName = kVars.WindowName .. ".txt"
kVars.lp = game:GetService('Players').LocalPlayer
kVars.rs = game:GetService('ReplicatedStorage')
kVars.vu = game:GetService('VirtualUser')
kVars.HttpService = game:GetService("HttpService")
kVars.themes = {}
kVars.tmp = {}
---- Load Settings ----
if readfile and isfile and isfile(kVars.txtName) then
    kVars.tmp = kVars.HttpService:JSONDecode(readfile(kVars.txtName))
    for i,v in pairs(kVars.tmp) do
        kVars.themes[i] = Color3.fromRGB(v[1], v[2], v[3])
    end
else
    print("Loading defult theme. Your injector does not support readfile or isfile.")
    kVars.themes = {
        Background = Color3.fromRGB(24, 24, 24),
        Glow = Color3.fromRGB(0, 0, 0),
        Accent = Color3.fromRGB(10, 10, 10),
        LightContrast = Color3.fromRGB(20, 20, 20),
        DarkContrast = Color3.fromRGB(14, 14, 14),  
        TextColor = Color3.fromRGB(255, 255, 255)
   }
end

---- Save Settings ----
function saveSettings()
    if writefile then
        kVars.themes = {}
        for i,v in pairs(game:GetService('CoreGui')[kVars.WindowName]:GetChildren()) do
            if v.Name == "ColorPicker" then
                kVars.themes[v.Title.Text] = {v.Container.Inputs.R.Textbox.text, v.Container.Inputs.G.Textbox.text, v.Container.Inputs.B.Textbox.text}
            end
        end
        writefile(kVars.txtName, kVars.HttpService:JSONEncode(kVars.themes))
    else
        print("You do not have injector dose not support writefile.")
    end
end

---- Destroy multiple instances ----
if game:GetService('CoreGui'):FindFirstChild(kVars.WindowName) then
   game:GetService('CoreGui'):FindFirstChild(kVars.WindowName):Destroy()
   wait(.2)
end

---- antiAFK ----
kVars.AntiAfk = game:GetService('Players').LocalPlayer.Idled:connect(function()
   kVars.vu:CaptureController()
   kVars.vu:ClickButton2(Vector2.new())
end)

---- Load window ----
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))() --someone reuploaded it so I put it in place of the original back up so guy can get free credit.
local Window = library.new(kVars.WindowName, 5013109572)

---- pages ----
local pageFarm = Window:addPage("Farm", 3117485989)
local pagePlayer = Window:addPage("Player", 5012544693)
local pageSettings = Window:addPage("Settings", 6942070576)
local sectionAutoFarm = pageFarm:addSection("Auto Farm")
local sectionUpgrade = pageFarm:addSection("Upgrade")
local sectionPlayerStats = pagePlayer:addSection("Stats")
local sectionTpToPlayer = pagePlayer:addSection("Teleport To Player")
local sectionTheme = pageSettings:addSection("Theme")
local sectionKeybinds = pageSettings:addSection("Keybinds")

----  ----
sectionAutoFarm:addToggle("Click", false, function(bool)
    kVars.boolClick = bool
    if bool then fClick() end
end)

function fClick()
    spawn(function()
        while kVars.boolClick do
            task.wait()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()
            game:GetService("Players").LocalPlayer.PlayerGui.Clicker.ClickerFrame.TextButton.Giver.RemoteFunction:InvokeServer()    

        end
    end)
end
kVars.upgradeList = {{name = "250", num = 1}, {name = "2500", num = 2}, {name = "25k", num = 3}, {name = "250k", num = 4}, {name = "2.5m", num = 5}, {name = "25m", num = 6}, {name = "250m", num = 7}, {name = "2.5b", num = 8}, {name = "25b", num = 9}, {name = "250b", num = 10}, {name = "2.5t", num = 11}, {name ="25qd", num = 12}}
local upgradeList1 = {}
for i,v in pairs(kVars.upgradeList) do
    table.insert(upgradeList1, v.name)
end
kVars.upgradeSelection = "none"
sectionUpgrade:addDropdown("Dropdown", upgradeList1, function(txt)
    for i,v in pairs(kVars.upgradeList) do
        if v.name == txt then
            kVars.upgradeSelection = v.num
        end
    end
 end)

 sectionUpgrade:addToggle("Buy Upgrade", false, function(bool)
    kVars.boolBuyUpgrade = bool
    if bool then fBuyUpgrade() end
end)

function fBuyUpgrade()
    spawn(function()
        while kVars.boolBuyUpgrade do
            wait()
            local a = "Upgrade" .. tostring(kVars.upgradeSelection) .. "Button"
               game:GetService("Players").LocalPlayer.PlayerGui.Upgrading.UpgradeFrame.MainFrame[a].Fire.RemoteFunction:InvokeServer()
        end
    end)
end

---- player stats section ----
sectionPlayerStats:addSlider("Walk Speed", 16, kVars.lp.Character:WaitForChild('Humanoid').WalkSpeed, 1024, function(value)
    kVars.lp.Character:WaitForChild('Humanoid').WalkSpeed = value
end)

sectionPlayerStats:addSlider("Jump Power", 50, kVars.lp.Character:WaitForChild('Humanoid').JumpPower, 1024, function(value)
    kVars.lp.Character:WaitForChild('Humanoid').JumpPower = value
end)

sectionPlayerStats:addToggle("Inf Jump", false, function(bool)
    kVars.boolInfJump = bool
end)

kVars.InfJumpConnect = game:GetService("UserInputService").JumpRequest:connect(function()
	if kVars.boolInfJump and kVars.lp.Character:FindFirstChild("Humanoid") then
		kVars.lp.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
	end
end)

---- tp to player section ----
sectionTpToPlayer:addTextbox("PlayerName", "Name", function(value, focusLost)
    if focusLost then
        kVars.teleportToPlayer = value
        print(value)
    end
end)

sectionTpToPlayer:addButton("Teleport", function()
    local cnf = true
    if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") and kVars.teleportToPlayer ~= nil then
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            local hrp = game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart')
            if string.find(string.lower(v.DisplayName), string.lower(kVars.teleportToPlayer)) then
                hrp.CFrame = v.Character.HumanoidRootPart.CFrame
                cnf = false
            elseif string.find(string.lower(v.Name), string.lower(kVars.teleportToPlayer)) then
                hrp.CFrame = v.Character.HumanoidRootPart.CFrame
                cnf = false
            end
        end
        if cnf == true then
            Window:Notify("Error", "Could not find player.")
        end
    else
        Window:Notify("Error", "You didn't put a valid playername in the textbox.")
    end
end)

---- Theme ----
for theme, color in pairs(kVars.themes) do
    sectionTheme:addColorPicker(theme, color, function(color3)
        Window:setTheme(theme, color3)
    end)
    Window:setTheme(theme, color)
end

sectionTheme:addButton("Save Theme", function()
    saveSettings()
end)

sectionKeybinds:addKeybind("Open/Close Menu", Enum.KeyCode.Backquote, function()
	Window:toggle()
end, function()
end)

---- Select main page to display ----
Window:SelectPage(Window.pages[1], true)

---- Closing ----
kVars.ClosingConnect = game:GetService("CoreGui").ChildRemoved:Connect(function(child)
	if child.Name == kVars.WindowName then
	    kVars.InfJumpConnect:Disconnect()
        kVars.AntiAfk:Disconnect()
		for i,v in pairs(kVars) do
			if type(v) == "boolean" then
				v = false
			end
		end
        wait(.1)
		kVars.ClosingConnect:Disconnect()
		script:Destroy()
	end
end)

syn.protect_gui(game:GetService("CoreGui")[kVars.WindowName])



--[[
section1:addToggle("Title", false, function(bool)
   kVars.bool = bool
   if bool then function() end
end)
section1:addButton("Title", function()
   print("Clicked")
end)
section1:addTextbox("Notification", "Default", function(value, focusLost)
   print("Input", value)

   if focusLost then
      Window:Notify("Title", value)
   end
end)

section2:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
   print("Activated Keybind")
   Window:toggle()
end, function()
   print("Changed Keybind")
end)
section2:addColorPicker("ColorPicker", Color3.fromRGB(50, 50, 50))
section2:addColorPicker("ColorPicker2")
section2:addSlider("Slider", min, current, max, function(value)
   print("Dragged", value)
end)
kVars.list1 = {"Hello", "World", "Hello World", "Word", 1, 2, 3}
section2:addDropdown("Dropdown", kVars.list1, function(txt)
   print(txt)
end)
section2:addButton("Button", function()
   kVars.list1 = {"fuck you", "and your", "mom"}
end)

-- second page
local theme = Window:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do --all in one theme changer, i know, im cool
   colors:addColorPicker(theme, color, function(color3)
      Window:setTheme(theme, color3)
   end)
end
Window:Notify("title", "msg")
-- load
Window:SelectPage(Window.pages[1], true) -- no default for more freedom
]]--