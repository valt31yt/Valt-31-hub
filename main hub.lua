local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
    Name = "valt31 script",
    Icon = 105545154898407, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Thank you for using this script",
    LoadingSubtitle = "by valt31",
    Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "valt31", -- Create a custom folder for your hub/game
       FileName = "valt31 script"
    },

 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "valt31 keys",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "valt31 key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"valt31yt"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 }) 


 local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
 local chams = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Roblox-Chams-Highlight/refs/heads/main/Highlight.lua"))()
 local targethud = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Lua-TargetHud/refs/heads/main/targethud.lua"))()
 local speed = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Lua-Speed/refs/heads/main/speed.lua"))()




 local aimbotTab = Window:CreateTab("aimbot", "crosshair")

 local Section = aimbotTab:CreateSection("Aimbot Settings")


 local Toggle = aimbotTab:CreateToggle({
    Name = "Aimbot",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Aimbot.Load()
    end,
 })

 local Toggle = aimbotTab:CreateToggle({
    Name = "fov",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().ExunysDeveloperAimbot.FOVSettings.Visible = Value
    end,
 })



 local Slider = aimbotTab:CreateSlider({
    Name = "fov",
    Range = {0, 500},
    Increment = 10,
    Suffix = "fov",
    CurrentValue = 50,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().ExunysDeveloperAimbot.FOVSettings.Radius = Value
    end,
 })


 local ColorPicker = aimbotTab:CreateColorPicker({
    Name = "Color fov",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().ExunysDeveloperAimbot.FOVSettings.Color = Value
    end
})

 local visualsTab = Window:CreateTab("Visuals", "crosshair")

 local Section = visualsTab:CreateSection("chams")


 local Toggle = visualsTab:CreateToggle({
    Name = "Chams",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().chams.enabled = Value
    end,
 })

 local playerTab = Window:CreateTab("Player", "crosshair")

 local Section = playerTab:CreateSection("valt31 sonic speed")


 local Toggle = playerTab:CreateToggle({
    Name = "valt31 sonic speed",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().speed.enabled = Value
    end,
 })


 local Slider = playerTab:CreateSlider({
    Name = "valt31 sonic speed amount",
    Range = {0, 1000},
    Increment = 1,
    Suffix = "sonic amount",
    CurrentValue = 0,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().speed.speed = Value
    end,
 })


 getgenv().speed = {
    enabled = false,       -- Enable or disable the speed boost
    speed = 16,          -- Desired walk speed
    control = false, -- Enable enhanced control
    friction = 2.0,       -- Custom friction factor for more control
    keybind = Enum.KeyCode.KeypadDivide -- yes.. i put it as divide.. on the keypad
}


 Rayfield:Notify({
    Title = "hello",
    Content = "valt31 hub loaded",
    Duration = 6.5,
    Image = 4483362458,
 })
 local playerTab = Window:CreateTab("Combat", "hand-fist")
 local Section = playerTab:CreateSection("hitbox")

local hit12 = Instance.new("TextButton")
hit12.Size = UDim2.new(0.2, 0, 0.1, 0)
hit12.Position = UDim2.new(0.5, 0, 0.0, 0)
hit12.BackgroundColor3 = Color3.new(0, 0, 0)
hit12.BorderColor3 = Color3.new(0, 0, 1)
hit12.BorderSizePixel = 1
hit12.Text = "hitbox big"
hit12.BackgroundTransparency = 0 
hit12.TextColor3 = Color3.new(255, 255, 255)
hit12.Font = Enum.Font.Code
hit12.Parent = sf
hit12.MouseButton1Down:connect(function()
_G.HeadSize = 50
_G.Disabled = true
