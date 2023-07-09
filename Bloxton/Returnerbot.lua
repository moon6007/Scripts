--originally By NathanReturns additions by mo_on





if game.PlaceId == 1990228024 then
	else

	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ERROR! Returner BOT only supports Blox-ton Hotels.", "All")

	game.StarterGui:SetCore("SendNotification", {
		Title = "Error!";
		Text = "ReturnerBOT does not Support this game.";
		Duration = 5;
	})
	error("a")
	return
end



local rejoin = false
for i,v in pairs(game.Workspace:GetDescendants()) do
	if v:IsA("ProximityPrompt") then
		if v.ObjectText == "Panini Sandwich" then
			
		end
	end
end

local function fireproximityprompt(Obj, Amount, Skip)
	if Obj.ClassName == "ProximityPrompt" then 
		Amount = Amount or 1
		local PromptTime = Obj.HoldDuration
		if Skip then 
			Obj.HoldDuration = 0
		end
		for i = 1, Amount do 
			Obj:InputHoldBegin()
			if not Skip then 
				wait(Obj.HoldDuration)
			end
			Obj:InputHoldEnd()
		end
		Obj.HoldDuration = PromptTime
	else 
		error("userdata<ProximityPrompt> expected")
	end
end


local plr = game:GetService("Players").LocalPlayer
if getgenv().DisableAnimate == true then
	plr.Character.Animate.Disabled = true
end
game.Players.PlayerAdded:Connect(function(plr)

	if plr:GetRankInGroup(2788849) == 12 then
		local loc = plr
		local args = {
			[1] = "A Senior Management has been detected, Leaving to evade a Server ban...",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		wait (1.5) 
		--game.Players.LocalPlayer:Kick("Senior Joined")
		local GuiService = game:GetService("GuiService")
		local NotificationType = GuiService:GetNotificationTypeList()
		GuiService:BroadcastNotification("", NotificationType.NATIVE_EXIT)

	end
end)
--

for i,v in pairs(game:GetService("Players"):GetPlayers())  do
	if plr:GetRankInGroup(2788849) == 12 then
		--plr:Kick("Senior Still in Server..")
		local GuiService = game:GetService("GuiService")
		local NotificationType = GuiService:GetNotificationTypeList()
		GuiService:BroadcastNotification("", NotificationType.NATIVE_EXIT)
	end end

spawn(function()
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(50, 43, 89)----tp outside
end)

botversion = "V5"
local name = "Returner BOT"
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("["..name.."]: "..botversion.." has loaded.","All")
game.StarterGui:SetCore("SendNotification", {
	Title = "Returner BOT";
	Text = "Returner BOT Loaded! originally By NathanReturns additions by mo_on";
	Duration = 5;
})

local Player = plr
local Character = Player.Character
Player.CharacterAdded:Connect(function()
	repeat task.wait() until Player.Character
	Character = Player.Character
end)
Character.ChildAdded:Connect(function(child)
	if child.Name == "Arrested" then
		pcall(function()
			local args = {
				[1] = "Cuffs detected Bypassing... ",
				[2] = "All"
			} 

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

			local Settings
			local DefaultSettings = {DisableAnimate="nil",AnimationPack="nil",UsePathfinding="nil"}			
			local function Save()writefile("Returnerbot.hi",game:service'HttpService':JSONEncode(Settings))
			end
			if not pcall(function() readfile(Name) end) then writefile("Returnerbot.hi", game:service'HttpService':JSONEncode(DefaultSettings)) end
			Settings = game:service'HttpService':JSONDecode(readfile("Returnerbot.hi"))
			Settings.DisableAnimate = getgenv().DisableAnimate
			Settings.AnimationPack=getgenv().AnimationPack
			Settings.UsePathfinding =getgenv().UsePathfinding
			Save()


			queue_on_teleport([[
				
				 local Settings
                 Settings = game:service'HttpService':JSONDecode(readfile("Returnerbot.hi"))
                 getgenv().DisableAnimate = Settings.DisableAnimate
                 getgenv().AnimationPack = Settings.AnimationPack
                 getgenv().UsePathfinding = Settings.UsePathfinding
                 
                 loadstring(game:HttpGet("https://raw.githubusercontent.com/moon734/Scripts/main/Bloxton/Returnerbot.lua"))()
                 
                 ]])

			wait ()

			rejoin = true

			wait (6)
		end)
	end
end)


spawn(function()
repeat wait(.1)
		
	if game.Players.LocalPlayer.Character:FindFirstChild("Panini Sandwich") then
		game.Players.LocalPlayer.Character:FindFirstChild("Panini Sandwich"):Activate()
		
	elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Panini Sandwich") then
		
		game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Panini Sandwich"))
		
	end

until false
end)


local Pathfinding = game:GetService("PathfindingService")
local Players = game:GetService("Players")

local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")


for i,v in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
	v:Stop()
end

local Animate = game.Players.LocalPlayer.Character.Animate
if  getgenv().AnimationPack == "Knight" then

	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"

elseif  getgenv().AnimationPack == "Astronaut" then
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"

elseif getgenv().AnimationPack == "Werewolf" then
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
end


local TeleportService = game:GetService("TeleportService")

if getgenv().UsePathfinding == false then
	local speed = _G.Speed
	
	spawn(function()
		plr.Character.Humanoid.WalkToPoint = Vector3.new(76, 44, 89)--walks on carpet thing
	end)
	plr.Character.Humanoid.MoveToFinished:Wait()

	spawn(function()
		repeat task.wait(1)
			pcall(function()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(145, 43, 90)---walks to reg 2 2
				plr.Character.Humanoid.MoveToFinished:Wait()
				wait()

				pcall(function()
					local args = {
						[1] = "Room please. ",----asks for room from reg2
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)

				wait (speed)
				plr.Character.Humanoid.WalkToPoint = Vector3.new(119, 44, 90)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(118, 44, 74)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(145, 44, 76)
				plr.Character.Humanoid.MoveToFinished:Wait()
				wait ()

				pcall(function()
					local args = {
						[1] = "May I have a room? ",----asks for room from reg1 1
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)

				wait (speed)
				plr.Character.Humanoid.WalkToPoint = Vector3.new(118, 44, 74)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(119, 44, 90)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(145, 43, 90)
				plr.Character.Humanoid.MoveToFinished:Wait()
				wait ()

				pcall(function()
					local args = {
						[1] = "Can I have one of your rooms? ",----asks for room from reg2 again 2
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end)

				wait (speed)


				plr.Character.Humanoid.WalkToPoint = Vector3.new(29, 43, 88)---------walk to housekeeping
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(76, 43, 89)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(95, 43, 90)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(117, 44, 110)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(118, 44, 155)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(139, 44, 156)
				plr.Character.Humanoid.MoveToFinished:Wait()
				wait()
				pcall(function()
					local args = {
						[1] = "Can someone clean my room?",----asks for someone to clean room
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end)


				wait(.2)
				
				pcall(function()
					local args = {
						[1] = "Can one of the housekeepers clean my room?",----asks for someone to clean room
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end)

				wait (speed)
				plr.Character.Humanoid.WalkToPoint = Vector3.new(115, 44, 156)---------walk to bar
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(116, 44, 91)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(29, 43, 88)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(76, 43, 89)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(95, 43, 90)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(113, 43, 58)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(106, 43, 45)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(68, 43, 28)---------walk to seat
				plr.Character.Humanoid.MoveToFinished:Wait()

				pcall(function()
					local args = {
						[1] = "Could I have a Churro, Nachos and Chips please? ",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)

				wait (speed)

				plr.Character.Humanoid.WalkToPoint = Vector3.new(68, 43, 19)
				plr.Character.Humanoid.MoveToFinished:Wait()
				pcall(function()
					local args = {
						[1] = "Can I get a Chocolate Milkshake, a Cookie and a bag of Nachos please? ",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait (speed)
				plr.Character.Humanoid.WalkToPoint = Vector3.new(68, 43, 10)
				plr.Character.Humanoid.MoveToFinished:Wait()
				pcall(function()
					local args = {
						[1] = "Could I have a Churro, Nachos and Chips please? ",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait (speed)
				
				
				local sandwitch = game.Players.LocalPlayer.Character:FindFirstChild("Panini Sandwich") or game.Players.LocalPlayer.Backpack:FindFirstChild("Panini Sandwich")
				
				
				if sandwitch then
					plr.Character.Humanoid.WalkToPoint = Vector3.new(113, 44, 60)
					plr.Character.Humanoid.MoveToFinished:Wait()
					plr.Character.Humanoid.WalkToPoint = Vector3.new(115, 44, 90)
					plr.Character.Humanoid.MoveToFinished:Wait()
					plr.Character.Humanoid.WalkToPoint = Vector3.new(145, 43, 90)
					plr.Character.Humanoid.MoveToFinished:Wait()
					
				else
					plr.Character.Humanoid.WalkToPoint = Vector3.new(142, 44, 13)
					plr.Character.Humanoid.MoveToFinished:Wait()
					plr.Character.Humanoid.WalkToPoint = Vector3.new(143, 44, 31)
					plr.Character.Humanoid.MoveToFinished:Wait()
					plr.Character.Humanoid.WalkToPoint = Vector3.new(150, 44, 31)
					plr.Character.Humanoid.MoveToFinished:Wait()
					
					for i,v in pairs(game.Workspace:GetDescendants()) do
						if v:IsA("ProximityPrompt") then
							if v.ObjectText == "Panini Sandwich" then
								fireproximityprompt(v,1,true)
							end
						end
					end

					wait(2)
					plr.Character.Humanoid.WalkToPoint = Vector3.new(113, 44, 60)
					plr.Character.Humanoid.MoveToFinished:Wait()
					plr.Character.Humanoid.WalkToPoint = Vector3.new(115, 44, 90)
					plr.Character.Humanoid.MoveToFinished:Wait()
					plr.Character.Humanoid.WalkToPoint = Vector3.new(145, 43, 90)
					plr.Character.Humanoid.MoveToFinished:Wait()

				end
				
				




				pcall(function()
					local args = {
						[1] = "Room please. ",----asks for room from reg2
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)

				wait (speed)
				plr.Character.Humanoid.WalkToPoint = Vector3.new(119, 44, 90)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(118, 44, 74)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(145, 44, 76)
				plr.Character.Humanoid.MoveToFinished:Wait()

				pcall(function()
					local args = {
						[1] = "May I have a room? ",----asks for room from reg1
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)

				wait (speed)
				plr.Character.Humanoid.WalkToPoint = Vector3.new(118, 44, 74)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(119, 44, 90)
				plr.Character.Humanoid.MoveToFinished:Wait()
				plr.Character.Humanoid.WalkToPoint = Vector3.new(145, 43, 90)
				plr.Character.Humanoid.MoveToFinished:Wait()

				pcall(function()
					local args = {
						[1] = "Can I have one of your rooms? ",----asks for room from reg2 again
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end)

				wait (speed)
			end)
		until false
		end)
	elseif getgenv().UsePathfinding == true then
		
		
		
		
		local speed = _G.Speed


		
		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v:IsA("Part") then
				if v.Name:match("Barrier") or v.Name == "NoSpamToolZone" or v.Name == "SpawnMRs" then
					v:Destroy()
				end
			end
		end
		
		
		spawn(function()
			local Path = Pathfinding:CreatePath({ AgentCanJump = false })
			Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(76, 44, 89))
			for i,v in pairs(Path:GetWaypoints()) do
				Humanoid:MoveTo(v.Position)
				Humanoid.MoveToFinished:Wait()
			end
		end)
		plr.Character.Humanoid.MoveToFinished:Wait()
		
		
		spawn(function()
			repeat task.wait(1)
				
				-- 76, 44, 89
				
				
				local Path = Pathfinding:CreatePath({ AgentCanJump = false })
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(145, 43, 90)) -- walks to reg 2
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				
				
				wait()

				pcall(function()
					local args = {
						[1] = "Room please. ",----asks for room from reg2
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				
				wait(speed)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(145, 44, 76)) -- walks to reg 1
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				
				wait ()

				pcall(function()
					local args = {
						[1] = "May I have a room? ",----asks for room from reg1
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				
				wait(speed)
				
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(145, 43, 90)) -- walks to reg 2
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				
				wait ()

				pcall(function()
					local args = {
						[1] = "Can I have one of your rooms? ",----asks for room from reg2 again
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end)

				wait (speed)
				
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(139, 44, 156)) -- walks to housekeeping
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				
				wait()
				pcall(function()
					local args = {
					[1] = "Can someone clean my room?",----asks for someone to clean room
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			end)
			
			wait(.2)

			pcall(function()
				local args = {
					[1] = "Can one of the housekeepers clean my room?",----asks for someone to clean room
					[2] = "All"
				}          
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			end)
				
				wait(speed)
				
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(68, 43, 28)) -- walks to bar
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				
				
				pcall(function()
					local args = {
						[1] = "Could I have a Churro, Nachos and Chips please? ",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)

				wait (speed)
				
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(68, 43, 19)) -- walks to reg 2
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end

				pcall(function()
					local args = {
						[1] = "Can I get a Chocolate Milkshake, a Cookie and a bag of Nachos please? ",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait (speed)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(68, 43, 10)) -- walks to reg 2
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "Could I have a Churro, Nachos and Chips please? ",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(145, 43, 90)) -- walks to reg 2
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end




				pcall(function()
					local args = {
						[1] = "Room please. ",----asks for room from reg2
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)

				wait (speed)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(145, 44, 76)) -- walks to reg 1
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end

				pcall(function()
					local args = {
						[1] = "May I have a room? ",----asks for room from reg1
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)

				wait (speed)

				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(145, 43, 90)) -- walks to reg 2
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end

				pcall(function()
					local args = {
						[1] = "Can I have one of your rooms? ",----asks for room from reg2 again
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end)
				wait(speed)
			until false
			end)
		
		end



local Dir = game:GetService("CoreGui"):WaitForChild("RobloxPromptGui"):WaitForChild("promptOverlay")
Dir.DescendantAdded:Connect(function(Err)
	if Err.Name == "ErrorTitle" then
		Err:GetPropertyChangedSignal("Text"):Connect(function()
			if Err.Text:sub(0, 12) == "Disconnected" then
				name = game.Players.LocalPlayer.Name
				if not beforeKicked then
					beforeKicked = game.Workspace:WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("HumanoidRootPart").CFrame
				end
				local Settings
				local DefaultSettings = {DisableAnimate="nil",AnimationPack="nil",UsePathfinding="nil"}			
				local function Save()writefile("Returnerbot.hi",game:service'HttpService':JSONEncode(Settings))
				end
				if not pcall(function() readfile(Name) end) then writefile("Returnerbot.hi", game:service'HttpService':JSONEncode(DefaultSettings)) end
				Settings = game:service'HttpService':JSONDecode(readfile("Returnerbot.hi"))
				Settings.DisableAnimate = getgenv().DisableAnimate
				Settings.AnimationPack=getgenv().AnimationPack
				Settings.UsePathfinding =getgenv().UsePathfinding
				Save()


				queue_on_teleport([[
				
				 local Settings
                 Settings = game:service'HttpService':JSONDecode(readfile("Returnerbot.hi"))
                 getgenv().DisableAnimate = Settings.DisableAnimate
                 getgenv().AnimationPack = Settings.AnimationPack
                 getgenv().UsePathfinding = Settings.UsePathfinding
                 
                 loadstring(game:HttpGet("https://raw.githubusercontent.com/moon734/Scripts/main/Bloxton/Returnerbot.lua"))()
                 
                 ]])

				wait()
			rejoin = true
					
				end
		end)
	end
end)


game["Run Service"].RenderStepped:Connect(function()
	if rejoin == true then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
		end
end)
