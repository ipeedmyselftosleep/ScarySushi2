local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "👹 Scary Shushi Script [Chapter 2!]",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "have fun",
   LoadingSubtitle = "by zay",
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
   Name = "Workspace",
   Callback = function()
        -- Teleport to Starting Position Script

local player = game.Players.LocalPlayer
local startingPosition = Vector3.new(-54.86871337890625, 952.1504516601562, 55.60028839111328)

-- Teleport function to Starting location
local function teleportToStarting()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
        player.Character:SetPrimaryPartCFrame(CFrame.new(startingPosition) * CFrame.Angles(0, currentRotation.Y, 0))
    end
end

-- Call the teleport function
teleportToStarting()
  
    end,
})

local Button = MainTab:CreateButton({
   Name = "Monster",
   Callback = function()
       -- Teleport to Monster Position Script

local player = game.Players.LocalPlayer
local monsterPosition = Vector3.new(7.668905735015869, 956.4793090820312, 67.62030029296875)

-- Teleport function to Monster location
local function teleportToMonster()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
        player.Character:SetPrimaryPartCFrame(CFrame.new(monsterPosition) * CFrame.Angles(0, currentRotation.Y, 0))
    end
end

-- Call the teleport function
teleportToMonster()

   end,
})

local Button = MainTab:CreateButton({
   Name = "Rice",
   Callback = function()
       -- Teleport to Night Grains Position Script

local player = game.Players.LocalPlayer
local nightGrainsPosition = Vector3.new(-693.851318359375, -156.176513671875, 757.2453002929688)

-- Teleport function to Night Grains location
local function teleportToNightGrains()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
        player.Character:SetPrimaryPartCFrame(CFrame.new(nightGrainsPosition) * CFrame.Angles(0, currentRotation.Y, 0))
    end
end

-- Call the teleport function
teleportToNightGrains()

   end,
})

local Button = MainTab:CreateButton({
   Name = "Seaweed",
   Callback = function()
       -- Teleport to Ghost Weeds Position Script

local player = game.Players.LocalPlayer
local ghostWeedsPosition = Vector3.new(-690.3502807617188, -154.32652282714844, 548.877685546875)

-- Teleport function to Ghost Weeds location
local function teleportToGhostWeeds()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
        player.Character:SetPrimaryPartCFrame(CFrame.new(ghostWeedsPosition) * CFrame.Angles(0, currentRotation.Y, 0))
    end
end

-- Call the teleport function
teleportToGhostWeeds()

   end,
})

local Button = MainTab:CreateButton({
   Name = "Temple(Portal 2)",
   Callback = function()
       -- Teleport to Temple Position Script

local player = game.Players.LocalPlayer
local templePosition = Vector3.new(-348.5218811035156, -68.74864196777344, -250.97373962402344)

-- Teleport function to Temple location
local function teleportToTemple()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
        player.Character:SetPrimaryPartCFrame(CFrame.new(templePosition) * CFrame.Angles(0, currentRotation.Y, 0))
    end
end

-- Call the teleport function
teleportToTemple()

   end,
})

local Button = MainTab:CreateButton({
   Name = "Ocean(Portal 3)",
   Callback = function()
       -- Teleport to Ocean Position Script

local player = game.Players.LocalPlayer
local oceanPosition = Vector3.new(-60.976417541503906, -12.01259708404541, 388.5896301269531)

-- Teleport function to Ocean location
local function teleportToOcean()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
        player.Character:SetPrimaryPartCFrame(CFrame.new(oceanPosition) * CFrame.Angles(0, currentRotation.Y, 0))
    end
end

-- Call the teleport function
teleportToOcean()

   end,
})

local Button = MainTab:CreateButton({
   Name = "Fungus Plant(Portal 4)",
   Callback = function()
       -- Teleport to Fungus Position Script

local player = game.Players.LocalPlayer
local fungusPosition = Vector3.new(-143.5018768310547, 67.74790954589844, -632.1419067382812)

-- Teleport function to Fungus location
local function teleportToFungus()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
        player.Character:SetPrimaryPartCFrame(CFrame.new(fungusPosition) * CFrame.Angles(0, currentRotation.Y, 0))
    end
end

-- Call the teleport function
teleportToFungus()

   end,
})

local Button = MainTab:CreateButton({
   Name = "End of Game",
   Callback = function()
       -- Teleport to End Position Script

local player = game.Players.LocalPlayer
local endPosition = Vector3.new(491.50946044921875, 1050.0340576171875, 1703.1329345703125)

-- Teleport function to End location
local function teleportToEnd()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local currentRotation = player.Character.HumanoidRootPart.CFrame.Rotation
        player.Character:SetPrimaryPartCFrame(CFrame.new(endPosition) * CFrame.Angles(0, currentRotation.Y, 0))
    end
end

-- Call the teleport function
teleportToEnd()

   end,
})

local OtherTab = Window:CreateTab("OtherScripts", 4483362458) -- Title, Image
local Section = OtherTab:CreateSection("Highly Advised")

local Button = OtherTab:CreateButton({
   Name = "Flyv2",
   Callback = function()
       --ARCEUS X FLY V2 SCRIPT BY me_ozoneYT
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
   end,
})

local Button = OtherTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Infinite-Yield_500"))()

   end,
})

local CreditTab = Window:CreateTab("Credits", nil) -- Title, Image
local Section = CreditTab:CreateSection("Welcome")

local Button = CreditTab:CreateButton({
   Name = "Creator : HI! my name is zay :skull:",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Button = CreditTab:CreateButton({
   Name = "Discord : If any script problems send to @ipeedmysleftosleep",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Button = CreditTab:CreateButton({
   Name = "My first script please enjoy :3",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})