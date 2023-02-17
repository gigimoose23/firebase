local stagerespawnval
local on = false
local target
local stagetotp
local stagetoset
local guardspeedtoset

pcall(function() game.Players.LocalPlayer.GodMode:Destroy() end)



local raycer = loadstring(game:HttpGet("https://raw.githubusercontent.com/gigimoose23/firebase/main/rayfieldmodified_tabletcompatibility.lua"))()


local window = raycer:CreateWindow({
   Name = "BARRY'S PRISON RUN GUI",
   LoadingTitle = "BARRY'S PRISON RUN GUI",
   LoadingSubtitle = "by gigimoose2",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = ""
   },
   Discord = {
      Enabled = false,
      Invite = "", 
      RememberJoins = true 
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "",
      Subtitle = "",
      Note = "",
      FileName = "",
      SaveKey = false,
      GrabKeyFromSite = false,
      Key = ""
   }
})

local fe = window:CreateTab("FE")
local section_main_fe = fe:CreateSection("Main")

local spawnallpasses = fe:CreateButton({
   Name = "Spawn all gamepasses",
   Callback = function()
       for _, child in ipairs(game.ReplicatedStorage.ItemModels.VipRemotes:GetChildren()) do
		if child.ClassName == "RemoteEvent" then
			child:FireServer()

		end
	   end
   end,
})

local godmode = fe:CreateButton({
   Name = "Godmode (TOGGLE)",
   Callback = function()
        
        if on == false then
	        on = true
	        local godmodeval = Instance.new("IntValue")
	        godmodeval.Parent = game.Players.LocalPlayer
	        godmodeval.Name = "GodMode"
        else
	        on = false
	        local todel = game.Players.LocalPlayer:FindFirstChild("GodMode")
	        todel:Destroy()
        end
   end,
})


local killplrtext = fe:CreateInput({
   Name = "Username to kill player",
   PlaceholderText = "Type here",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
        target = Text
   end,
})

local killthatplr = fe:CreateButton({
   Name = "Kill that player (OP)",
   Callback = function()
       if game.Players[target] then
           game.ReplicatedStorage.ItemModels.VipRemotes.r9:FireServer()
wait(1)
local activatescript = game.Players.LocalPlayer.Backpack:WaitForChild("GodBlaster"):WaitForChild("Activate")

local blastsend = activatescript:WaitForChild("send") 
blastsend:FireServer()
wait(0.5)
local beam = game.Players.LocalPlayer.Character.BeamBlaster
beam.weldo.las:Destroy()
beam.light1:Destroy()

local player = game.Players.LocalPlayer 
local backpack = player.Backpack 

for _, child in ipairs(backpack:GetChildren()) do
    child:Destroy() 
end


player.Character.HumanoidRootPart.CFrame = game.Players[target].Character.HumanoidRootPart.CFrame

wait(0.5)

player.Character:Destroy()

       else
           
                
       end
        
   end,
})


local setstagetextbox = fe:CreateInput({
   Name = "Number to change stage to",
   PlaceholderText = "Type here",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
        stagetoset = Text
   end,
})




local setthatstage = fe:CreateButton({
   Name = "Set your stage to that number",
   Callback = function()
        local stagechangerremote = game.ReplicatedStorage.StageChange
        local plr = game.Players.LocalPlayer

	  stagechangerremote:FireServer(stagetoset)
	  plr.SpawnVal.Value = stagetoset
	  plr.Character:Destroy()
        
   end,
})


local becomebarry = fe:CreateButton({
   Name = "BECOME BARRY (OP, CAN CAPTURE PLAYERS)",
   Callback = function()
        --Variables
	
        
        local sendcharacterRemote = game.ReplicatedStorage.CharacterMorphs.SendCharacter
        local plr = game.Players.LocalPlayer
        
        --SendCharacter
        sendcharacterRemote:FireServer(1)
        wait(0.5)
        plr.PlayerGui.BarryGui:Destroy()
	    stagetotp = "p" .. plr.SpawnVal.Value
        plr.Character.HumanoidRootPart.CFrame = game.Workspace.LocalObjects.spawns[stagetotp].go.CFrame
        plr.Character.Humanoid.JumpPower = 50
        
            --Destroy when captured cause tps to thingy
            local intValue = plr.Character.capturevalue
    
            local value = intValue.Value
    
            while true do
                local newValue = intValue.Value
                if newValue > value then
                    value = newValue
                    wait(2.45)
                	  stagetotp = "p" .. plr.SpawnVal.Value
       		          plr.Character.HumanoidRootPart.CFrame = game.Workspace.LocalObjects.spawns[stagetotp].go.CFrame
        		      plr.Character.Humanoid.JumpPower = 50
               end
               wait(0.1)
        end
        


   end,
})



local killnearplrs = fe:CreateButton({
   Name = "KILL NEARBY PLAYERS (Reset to stop)",
   Callback = function()
        game.ReplicatedStorage.ItemModels.VipRemotes.r9:FireServer()
wait(1)
local activatescript = game.Players.LocalPlayer.Backpack:WaitForChild("GodBlaster"):WaitForChild("Activate")

local blastsend = activatescript:WaitForChild("send") 
blastsend:FireServer()
wait(0.5)
local beam = game.Players.LocalPlayer.Character.BeamBlaster
beam.weldo.las:Destroy()
beam.light1:Destroy()

local player = game.Players.LocalPlayer 
local backpack = player.Backpack 

for _, child in ipairs(backpack:GetChildren()) do
    child:Destroy() 
end

        
   end,
})
--Localplayer

local localplayer = window:CreateTab("LocalPlayer")
local section_main_localplayer = localplayer:CreateSection("Main")

local slow_barry = localplayer:CreateButton({
    Name = "Slow Barry/Garry",
    Callback = function()
        
        local plr = game.Players.LocalPlayer
        plr.infopack.guardspeed.Value = 0
        plr.Character:Destroy()
    end,
 })

 local fast_barry = localplayer:CreateButton({
    Name = "Fast Barry/Garry",
    Callback = function()
        
        local plr = game.Players.LocalPlayer
        plr.infopack.guardspeed.Value = 2000
        plr.Character:Destroy()
    end,
 })

 local normal_barry = localplayer:CreateButton({
    Name = "Normal Barry/Garry",
    Callback = function()
        
        local plr = game.Players.LocalPlayer
        plr.infopack.guardspeed.Value = 20
        plr.Character:Destroy()
    end,
 })


 local barryspeedtextbox = localplayer:CreateInput({
    Name = "Number to change speed to",
    PlaceholderText = "Type here",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        guardspeedtoset  = Text
    end,
 })
 

 local custom_barry = localplayer:CreateButton({
    Name = "Set Barry's/Garry's speed to that number",
    Callback = function()
        
        local plr = game.Players.LocalPlayer
        plr.infopack.guardspeed.Value = guardspeedtoset
        plr.Character:Destroy()
    end,
 })
 
 local fly = localplayer:CreateButton({
    Name = "Fly (G to toggle, reset when you die otherwise it will glitch! Not my script)",
    Callback = function()
        
        repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 400 
local speed = 5000 

function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "g" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
    end,
 })
 
 
 local playeresp = localplayer:CreateButton({
    Name = "Player Esp (Script is Unnamed ESP)",
    Callback = function()
        
        pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))() end)
    end,
 })
 

local other = window:CreateTab("Other")
local section_main_other = other:CreateSection("Main")


 
local infyield = other:CreateButton({
   Name = "Inf Yield",
   Callback = function()
       
       pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
   end,
})


local killall = fe:CreateButton({
   Name = "KILL EVERYONE!",
   Callback = function()
        game.ReplicatedStorage.ItemModels.VipRemotes.r9:FireServer()
wait(1)
local activatescript = game.Players.LocalPlayer.Backpack:WaitForChild("GodBlaster"):WaitForChild("Activate")

local blastsend = activatescript:WaitForChild("send") 
blastsend:FireServer()
wait(0.5)
local beam = game.Players.LocalPlayer.Character.BeamBlaster
beam.weldo.las:Destroy()
beam.light1:Destroy()

local player = game.Players.LocalPlayer 
local backpack = player.Backpack 

for _, child in ipairs(backpack:GetChildren()) do
    child:Destroy() 
end


local players = game:GetService("Players")

for i, player in pairs(players:GetPlayers()) do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
    wait(0.7)
end

player.Character:Destroy()
        
   end,
})
