--[[
A distribution of https://wearedevs.net/scripts
Last updated August 3, 2021

Description: Teleports your player's character to the selected player's character

Instruction: 
1. Inject this script into any game using a Lua executor like JJSploit. 
2. Put the target's username between the quotes of the "targetUsername" variable
]]

targetUsername = ""

players = game:GetService("Players")
targetPlayer = players:FindFirstChild(targetUsername)
players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
