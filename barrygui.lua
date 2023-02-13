local stagerespawnval
local on = false
local target
local stagetotp
local stagetoset
local guardspeedtoset
local raycer = loadstring(game:HttpGet("https://raw.githubusercontent.com/gigimoose23/firebase/main/rayfieldmodified.lua"))()


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
           --Variables
            local sendcharacterRemote = game.ReplicatedStorage.CharacterMorphs.SendCharacter
            local plr = game.Players.LocalPlayer
            local stagechangeremote = game.ReplicatedStorage.StageChange
            stagerespawnval = plr.leaderstats.Stage.Value
        
        
        
            --SendCharacter
            sendcharacterRemote:FireServer(1)
            wait(0.5)
            plr.PlayerGui.BarryGui:Destroy()
        
            --Tp to  plr and kill them (cframe)
            plr.Character.HumanoidRootPart.CFrame = game.Players[target].Character.HumanoidRootPart.CFrame

            wait(0.4)
        
            --Kill localplayer
            stagechangeremote:FireServer(stagerespawnval)
            plr.SpawnVal.Value = stagerespawnval
            plr.Character:Destroy()
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


--Localplayer

local localplayer = window:CreateTab("LocalPlayer")
local section_main_localplayer = localplayer:CreateSection("Main")

local slow_barry = fe:CreateButton({
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
