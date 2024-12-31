local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "👹 Scary Shushi Script [Chapter 2!]",
   Icon = 112992462475311, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "It’s not cheating; it’s a feature!",
   LoadingSubtitle = "-zay",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "ScaryHub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Home", nil) -- Title, Image
local Section = MainTab:CreateSection("Main")

local Button = MainTab:CreateButton({
    Name = "Force Third Person",
    Callback = function()
        local player = game.Players.LocalPlayer
        local camera = game.Workspace.CurrentCamera

        -- Force camera mode to Classic
        player.CameraMode = Enum.CameraMode.Classic

        -- Adjust the camera zoom distance
        player.CameraMaxZoomDistance = 12 -- Set this to desired max distance
        player.CameraMinZoomDistance = 12 -- Lock zoom to always stay at this distance

        -- Continuously check and enforce third-person
        game:GetService("RunService").RenderStepped:Connect(function()
            if player.CameraMode ~= Enum.CameraMode.Classic then
                player.CameraMode = Enum.CameraMode.Classic
            end
        end)
        
        print("Force Third Person Mode Activated")
    end,
})

-- Teleport to Workspace Button
local Button = MainTab:CreateButton({
    Name = "Teleport to Workspace",
    Callback = function()
        local player = game.Players.LocalPlayer
        local workspacePosition = Vector3.new(-54.764156341552734, 952.2335205078125, 53.010135650634766)
        
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
            player.Character:SetPrimaryPartCFrame(CFrame.new(workspacePosition) * CFrame.Angles(0, currentRotation.Y, 0))
        else
            warn("Teleport failed! Character or HumanoidRootPart not found.")
        end
    end,
})

-- Teleport to Monster Position Button
local Button = MainTab:CreateButton({
    Name = "Teleport to Monster",
    Callback = function()
        local player = game.Players.LocalPlayer
        local monsterPosition = Vector3.new(7.668905735015869, 956.4793090820312, 67.62030029296875)
        
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
            player.Character:SetPrimaryPartCFrame(CFrame.new(monsterPosition) * CFrame.Angles(0, currentRotation.Y, 0))
        else
            warn("Teleport failed! Character or HumanoidRootPart not found.")
        end
    end,
})

local Dropdown = MainTab:CreateDropdown({
    Name = "Rice & Seaweed",
    Options = {"None", "Night Grains", "Ghost Weeds"},
    CurrentOption = "None",
    MultiSelection = false, 
    Flag = "TeleportDropdown", 
    Callback = function(Option)
        -- Convert Option to string if it's a table
        if type(Option) == "table" then
            Option = Option[1]  -- Take the first element if it's a table
        end
        
        print("Dropdown selected: " .. tostring(Option)) -- Debug print
        
        if Option == "None" then
            print("No option selected") -- Debug print
        elseif Option == "Night Grains" then
            print("Attempting to teleport to Night Grains") -- Debug print
            
            local player = game.Players.LocalPlayer
            print("Player found: " .. tostring(player)) -- Debug print
            
            local nightGrainsPosition = Vector3.new(-693.851318359375, -156.176513671875, 757.2453002929688)
 
            -- Teleport function to Night Grains location
            local function teleportToNightGrains()
                print("Teleport function called") -- Debug print
                
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    print("Character and HumanoidRootPart found") -- Debug print
                    
                    local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
                    player.Character:SetPrimaryPartCFrame(CFrame.new(nightGrainsPosition) * CFrame.Angles(0, currentRotation.Y, 0))
                    
                    print("Teleported to Night Grains") -- Debug print
                else
                    print("Character or HumanoidRootPart not found") -- Debug print
                end
            end
 
            -- Call the teleport function
            teleportToNightGrains()
        elseif Option == "Ghost Weeds" then
            print("Attempting to teleport to Ghost Weeds") -- Debug print
            
            local player = game.Players.LocalPlayer
            print("Player found: " .. tostring(player)) -- Debug print
            
            local ghostWeedsPosition = Vector3.new(-690.3502807617188, -154.32652282714844, 548.877685546875)
 
            -- Teleport function to Ghost Weeds location
            local function teleportToGhostWeeds()
                print("Teleport function called") -- Debug print
                
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    print("Character and HumanoidRootPart found") -- Debug print
                    
                    local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
                    player.Character:SetPrimaryPartCFrame(CFrame.new(ghostWeedsPosition) * CFrame.Angles(0, currentRotation.Y, 0))
                    
                    print("Teleported to Ghost Weeds") -- Debug print
                else
                    print("Character or HumanoidRootPart not found") -- Debug print
                end
            end
 
            -- Call the teleport function
            teleportToGhostWeeds()
        end
    end,
 })

 local Dropdown = MainTab:CreateDropdown({
     Name = "Main Portals",
     Options = {"None", "Temple", "Ocean", "Fungus", "Hacked Portal (Must Go Through)"},
     CurrentOption = "None",
     MultiSelection = false, 
     Flag = "MainPortalsDropdown", 
     Callback = function(Option)
         -- Convert Option to string if it's a table
         if type(Option) == "table" then
             Option = Option[1]  -- Take the first element if it's a table
         end
         
         print("Dropdown selected: " .. tostring(Option)) -- Debug print
         
         if Option == "None" then
             print("No portal selected") -- Debug print
         elseif Option == "Temple" then
             print("Attempting to teleport to Temple") -- Debug print
             
             local player = game.Players.LocalPlayer
             print("Player found: " .. tostring(player)) -- Debug print
             
             local templePosition = Vector3.new(-348.5218811035156, -68.74864196777344, -250.97373962402344)
  
             -- Teleport function to Temple location
             local function teleportToTemple()
                 print("Teleport function called") -- Debug print
                 
                 if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                     print("Character and HumanoidRootPart found") -- Debug print
                     
                     local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
                     player.Character:SetPrimaryPartCFrame(CFrame.new(templePosition) * CFrame.Angles(0, currentRotation.Y, 0))
                     
                     print("Teleported to Temple") -- Debug print
                 else
                     print("Character or HumanoidRootPart not found") -- Debug print
                 end
             end
  
             -- Call the teleport function
             teleportToTemple()
         elseif Option == "Ocean" then
             print("Attempting to teleport to Ocean") -- Debug print
             
             local player = game.Players.LocalPlayer
             print("Player found: " .. tostring(player)) -- Debug print
             
             local oceanPosition = Vector3.new(-60.976417541503906, -12.01259708404541, 388.5896301269531)
  
             -- Teleport function to Ocean location
             local function teleportToOcean()
                 print("Teleport function called") -- Debug print
                 
                 if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                     print("Character and HumanoidRootPart found") -- Debug print
                     
                     local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
                     player.Character:SetPrimaryPartCFrame(CFrame.new(oceanPosition) * CFrame.Angles(0, currentRotation.Y, 0))
                     
                     print("Teleported to Ocean") -- Debug print
                 else
                     print("Character or HumanoidRootPart not found") -- Debug print
                 end
             end
  
             -- Call the teleport function
             teleportToOcean()
         elseif Option == "Fungus" then
             print("Attempting to teleport to Fungus") -- Debug print
             
             local player = game.Players.LocalPlayer
             print("Player found: " .. tostring(player)) -- Debug print
             
             local fungusPosition = Vector3.new(-132.53744506835938, 67.74790954589844, -630.3436889648438)
  
             -- Teleport function to Fungus location
             local function teleportToFungus()
                 print("Teleport function called") -- Debug print
                 
                 if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                     print("Character and HumanoidRootPart found") -- Debug print
                     
                     local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
                     player.Character:SetPrimaryPartCFrame(CFrame.new(fungusPosition) * CFrame.Angles(0, currentRotation.Y, 0))
                     
                     print("Teleported to Fungus") -- Debug print
                 else
                     print("Character or HumanoidRootPart not found") -- Debug print
                 end
             end
  
             -- Call the teleport function
             teleportToFungus()
         elseif Option == "Hacked Portal (Must Go Through)" then
             print("Attempting to teleport to Hacked Portal") -- Debug print
             
             local player = game.Players.LocalPlayer
             print("Player found: " .. tostring(player)) -- Debug print
             
             local hackedPortalPosition = Vector3.new(2088.260009765625, 198.3332977294922, 67.40620422363281)
  
             -- Teleport function to Hacked Portal location
             local function teleportToHackedPortal()
                 print("Teleport function called") -- Debug print
                 
                 if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                     print("Character and HumanoidRootPart found") -- Debug print
                     
                     local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
                     player.Character:SetPrimaryPartCFrame(CFrame.new(hackedPortalPosition) * CFrame.Angles(0, currentRotation.Y, 0))
                     
                     print("Teleported to Hacked Portal") -- Debug print
                 else
                     print("Character or HumanoidRootPart not found") -- Debug print
                 end
             end
  
             -- Call the teleport function
             teleportToHackedPortal()
         end
     end,
 })

 local EndingPortalsDropdown = MainTab:CreateDropdown({
     Name = "Escape Ending Portals",
     Options = {"None", "Ending First Portal", "2nd Portal Ending", "3rd Portal Ending", "4th Portal Ending", "FINAL ENDING"},
     CurrentOption = "None",
     MultiSelection = false, 
     Flag = "EndingPortalsDropdown", 
     Callback = function(Option)
         -- Convert Option to string if it's a table
         if type(Option) == "table" then
             Option = Option[1]  -- Take the first element if it's a table
         end
         
         print("Dropdown selected: " .. tostring(Option)) -- Debug print
         
         if Option == "None" then
             print("No ending portal selected") -- Debug print
         elseif Option == "Ending First Portal" then
             print("Attempting to teleport to Ending First Portal") -- Debug print
             
             local player = game.Players.LocalPlayer
             print("Player found: " .. tostring(player)) -- Debug print
             
             local endingFirstPortalPosition = Vector3.new(-1252.1890869140625, 735.7387084960938, 240.74395751953125)
  
             -- Teleport function to Ending First Portal location
             local function teleportToEndingFirstPortal()
                 print("Teleport function called") -- Debug print
                 
                 if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                     print("Character and HumanoidRootPart found") -- Debug print
                     
                     local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
                     player.Character:SetPrimaryPartCFrame(CFrame.new(endingFirstPortalPosition) * CFrame.Angles(0, currentRotation.Y, 0))
                     
                     print("Teleported to Ending First Portal") -- Debug print
                 else
                     print("Character or HumanoidRootPart not found") -- Debug print
                 end
             end
  
             -- Call the teleport function
             teleportToEndingFirstPortal()
         elseif Option == "2nd Portal Ending" then
             print("Attempting to teleport to 2nd Portal Ending") -- Debug print
             
             local player = game.Players.LocalPlayer
             print("Player found: " .. tostring(player)) -- Debug print
             
             local endingFirstPortal2Position = Vector3.new(-1219.7113037109375, 835.1122436523438, 980.6454467773438)
  
             -- Teleport function to 2nd Portal Ending location
             local function teleportToEndingFirstPortal2()
                 print("Teleport function called") -- Debug print
                 
                 if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                     print("Character and HumanoidRootPart found") -- Debug print
                     
                     local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
                     player.Character:SetPrimaryPartCFrame(CFrame.new(endingFirstPortal2Position) * CFrame.Angles(0, currentRotation.Y, 0))
                     
                     print("Teleported to 2nd Portal Ending") -- Debug print
                 else
                     print("Character or HumanoidRootPart not found") -- Debug print
                 end
             end
  
             -- Call the teleport function
             teleportToEndingFirstPortal2()
         elseif Option == "3rd Portal Ending" then
             print("Attempting to teleport to 3rd Portal Ending") -- Debug print
             
             local player = game.Players.LocalPlayer
             print("Player found: " .. tostring(player)) -- Debug print
             
             local endingFirstPortal3Position = Vector3.new(-2221.650146484375, 740.9329833984375, 1705.3646240234375)
  
             -- Teleport function to 3rd Portal Ending location
             local function teleportToEndingFirstPortal3()
                 print("Teleport function called") -- Debug print
                 
                 if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                     print("Character and HumanoidRootPart found") -- Debug print
                     
                     local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
                     player.Character:SetPrimaryPartCFrame(CFrame.new(endingFirstPortal3Position) * CFrame.Angles(0, currentRotation.Y, 0))
                     
                     print("Teleported to 3rd Portal Ending") -- Debug print
                 else
                     print("Character or HumanoidRootPart not found") -- Debug print
                 end
             end
  
             -- Call the teleport function
             teleportToEndingFirstPortal3()
         elseif Option == "4th Portal Ending" then
             print("Attempting to teleport to 4th Portal Ending") -- Debug print
             
             local player = game.Players.LocalPlayer
             print("Player found: " .. tostring(player)) -- Debug print
             
             local endingFirstPortal4Position = Vector3.new(-1472.1514892578125, 870.061279296875, 1584.638916015625)
  
             -- Teleport function to 4th Portal Ending location
             local function teleportToEndingFirstPortal4()
                 print("Teleport function called") -- Debug print
                 
                 if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                     print("Character and HumanoidRootPart found") -- Debug print
                     
                     local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
                     player.Character:SetPrimaryPartCFrame(CFrame.new(endingFirstPortal4Position) * CFrame.Angles(0, currentRotation.Y, 0))
                     
                     print("Teleported to 4th Portal Ending") -- Debug print
                 else
                     print("Character or HumanoidRootPart not found") -- Debug print
                 end
             end
  
             -- Call the teleport function
             teleportToEndingFirstPortal4()
         elseif Option == "FINAL ENDING" then
             print("Attempting to teleport to FINAL ENDING") -- Debug print
             
             local player = game.Players.LocalPlayer
             print("Player found: " .. tostring(player)) -- Debug print
             
             local endingFinalPosition = Vector3.new(560.116943359375, 1009.1227416992188, 1688.6771240234375)
  
             -- Teleport function to FINAL ENDING location
             local function teleportToEndingFinal()
                 print("Teleport function called") -- Debug print
                 
                 if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                     print("Character and HumanoidRootPart found") -- Debug print
                     
                     local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
                     player.Character:SetPrimaryPartCFrame(CFrame.new(endingFinalPosition) * CFrame.Angles(0, currentRotation.Y, 0))
                     
                     print("Teleported to FINAL ENDING") -- Debug print
                 else
                     print("Character or HumanoidRootPart not found") -- Debug print
                 end
             end
  
             -- Call the teleport function
             teleportToEndingFinal()
         end
     end,
 })

local OtherTab = Window:CreateTab("Other Script(2)", nil) -- Title, Image
local Section = OtherTab:CreateSection("Use it bro")

local Button = OtherTab:CreateButton({
   Name = "FLY v2",
   Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/fG8BW25Y"))() 
   end,
})

local Button = OtherTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Infinite-Yield_500"))()
   end,
})

local CreditTab = Window:CreateTab("Credits", nil) -- Title, Image
local Paragraph = CreditTab:CreateParagraph({Title = "Credits", Content = "Hi! :3, My discord is the same as my GitHub @ipeedmyselftosleep. This is my first script and probably the easiest. Any problems with the script please dm me, this is only a quick version of the script I will be doing updates im just trying to figure out the game real quick."})

Rayfield:Notify({
   Title = "Pearl Hub Loaded Successfully",
   Content = "Enjoy !",
   Duration = 5,
   Image = 112992462475311,
})
