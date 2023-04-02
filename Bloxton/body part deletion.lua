
local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/moon606/Scripts/main/ui%20librarys%20backup/solaris%20ui.lua"))()







local win = SolarisLib:New({
  Name = "SolarisLib",
  FolderToSave = "SolarisLibStuff"
})







local tab = win:Tab("Tab 1")



local sec = tab:Section("Elements")







sec:Button("legs", function()

local PartsToInis = {"Handle","LeftHand","LeftLowerArm","LeftUpperArm","Head","RightHand","RightUpperArm","RightLowerArm","UpperTorso","HumanoidRootPart"}



game.Players.LocalPlayer.Character.Head.NameGui:ClearAllChildren()
for i = 1, 30 do
	task.wait(.1)
	for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("BasePart") then
			
			
			for _,e in pairs(PartsToInis) do
			if v.Parent.Name == e or v.Name == e then


				if v:FindFirstChild("OriginalSize") then


					game:GetService("ReplicatedStorage").DataEvents.sendMorphData:FireServer("Toddler")

					v:FindFirstChild("OriginalSize"):Destroy()



					game:GetService("ReplicatedStorage").DataEvents.sendMorphData:FireServer("Adult")
				end
			end
		end
		end
		end
end
end)


sec:Button("invisible", function()
  local PartsToInis = {"Handle","LeftLowerArm","RightLowerArm","LeftUpperArm","RightUpperArm","Head","LeftLowerLeg","LeftUpperLeg","LeftHand","RightLowerLeg","RightUpperLeg","UpperTorso","LeftFoot","LowerTorso","RightHand","RightFoot"}



game.Players.LocalPlayer.Character.Head.NameGui:ClearAllChildren()
for i = 1, 30 do
	task.wait(.1)
	for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("BasePart") then
			
			
			for _,e in pairs(PartsToInis) do
			if v.Parent.Name == e or v.Name == e then


				if v:FindFirstChild("OriginalSize") then


					game:GetService("ReplicatedStorage").DataEvents.sendMorphData:FireServer("Toddler")

					v:FindFirstChild("OriginalSize"):Destroy()



					game:GetService("ReplicatedStorage").DataEvents.sendMorphData:FireServer("Adult")
				end
			end
		end
		end
		end
end
end)



sec:Button("arms", function()

local PartsToInis = {"Handle","Head","LeftLowerLeg","LeftUpperLeg","LeftHand","RightLowerLeg","RightUpperLeg","UpperTorso","LeftFoot","LowerTorso","RightHand","RightFoot"}



game.Players.LocalPlayer.Character.Head.NameGui:ClearAllChildren()
for i = 1, 30 do
	task.wait(.1)
	for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("BasePart") then
			
			
			for _,e in pairs(PartsToInis) do
			if v.Parent.Name == e or v.Name == e then


				if v:FindFirstChild("OriginalSize") then


					game:GetService("ReplicatedStorage").DataEvents.sendMorphData:FireServer("Toddler")

					v:FindFirstChild("OriginalSize"):Destroy()



					game:GetService("ReplicatedStorage").DataEvents.sendMorphData:FireServer("Adult")
				end
			end
		end
		end
		end
end

end)
