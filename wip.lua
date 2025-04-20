local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local ownerUsers = {"r3ality_esc"}
local function isLocalUser(player)
	for _, ownerUser in ipairs(ownerUsers) do
		if player.Name == ownerUser then
			return false
		end
	end
	return true
end
local Window = Rayfield:CreateWindow({
   Name = "reality.esc : Murder Mystery 2",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "reality.esc Roblox Cheat",
   LoadingSubtitle = "by dodo",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "reality.esc rcheat"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
        
   KeySystem = isLocalUser(game.Players.LocalPlayer),
   KeySettings = {
      Title = "reality.esc : Auth",
      Subtitle = "Reality Keys",
      Note = "Dm me to get a key.", -- Use this to tell the user how to get a key
      FileName = "keyauth", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {
                "REALITY-uf11hB-VoxXKl-emYKbM-jxeufB-aSpxG5-C2o0ME",
                "REALITY-fzzuZs-hwPJ9P-WwoYo0-FdGWtT-JDQp1t-hoLkQ0",
                "REALITY-EdDiH0-WqYayo-N99ZrZ-PNXGAO-Wxrm2i-QyDhX6",
                "REALITY-6urKp0-FdihOA-AU1vtH-sEB4os-dIKXgj-HeITl4",
                "REALITY-1Nn69Q-VaWyX5-C3z7Qr-b2gpCw-wRlcIe-PzdoFP"
            } -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local MainTab = Window:CreateTab("Basic", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

local Slider = MainTab:CreateSlider({
   Name = "Walk Speed",
   Range = {16, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "walkspeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Jump Power",
   Range = {7.2, 300},
   Increment = 1,
   Suffix = "Power",
   CurrentValue = 7.2,
   Flag = "jumppower", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
           game.Players.LocalPlayer.Character.Humanoid.JumpHeight = Value
           game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})
