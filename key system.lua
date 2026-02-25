local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")


local screenGui = Instance.new("ScreenGui")
screenGui.Name = "valt31Key"
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = 999
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui


local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 620, 0, 420)
mainFrame.Position = UDim2.new(0.5, -310, 0.5, -210)
mainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 6)
uiCorner.Parent = mainFrame

local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(40, 40, 50)
uiStroke.Thickness = 1
uiStroke.Transparency = 0.6
uiStroke.Parent = mainFrame


local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 45)
topBar.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
topBar.BorderSizePixel = 0
topBar.Parent = mainFrame

local topStroke = Instance.new("UIStroke")
topStroke.Color = Color3.fromRGB(50, 50, 60)
topStroke.Thickness = 1
topStroke.Parent = topBar

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0.4, 0, 1, 0)
titleLabel.Position = UDim2.new(0, 15, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "valt31"
titleLabel.TextColor3 = Color3.fromRGB(120, 220, 100)
titleLabel.Font = Enum.Font.GothamBlack
titleLabel.TextSize = 22
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = topBar

local searchBox = Instance.new("TextBox")
searchBox.Size = UDim2.new(0.3, 0, 0, 28)
searchBox.Position = UDim2.new(0.5, -100, 0.5, -14)
searchBox.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
searchBox.Text = ""
searchBox.PlaceholderText = "Search"
searchBox.PlaceholderColor3 = Color3.fromRGB(140, 140, 160)
searchBox.TextColor3 = Color3.fromRGB(220, 220, 220)
searchBox.Font = Enum.Font.Gotham
searchBox.TextSize = 14
searchBox.Parent = topBar

local searchCorner = Instance.new("UICorner")
searchCorner.CornerRadius = UDim.new(0, 4)
searchCorner.Parent = searchBox


local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0, 180, 1, -45)
sidebar.Position = UDim2.new(0, 0, 0, 45)
sidebar.BackgroundColor3 = Color3.fromRGB(20, 20, 26)
sidebar.BorderSizePixel = 0
sidebar.Parent = mainFrame

local sideStroke = Instance.new("UIStroke")
sideStroke.Color = Color3.fromRGB(45, 45, 55)
sideStroke.Thickness = 1
sideStroke.Parent = sidebar

local navList = Instance.new("UIListLayout")
navList.Padding = UDim.new(0, 4)
navList.SortOrder = Enum.SortOrder.LayoutOrder
navList.Parent = sidebar

local navItems = {"Home", "Main", "Player", "Combat", "ESP", "Auto", "Misc", "Fun", "UI Settings"}

for _, name in ipairs(navItems) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -10, 0, 36)
    btn.Position = UDim2.new(0, 5, 0, 0)
    btn.BackgroundTransparency = (name == "Home") and 0.3 or 1
    btn.BackgroundColor3 = Color3.fromRGB(35, 80, 50)
    btn.BorderSizePixel = 0
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(200, 255, 180)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextSize = 15
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.Parent = sidebar
    
    local pad = Instance.new("UIPadding")
    pad.PaddingLeft = UDim.new(0, 12)
    pad.Parent = btn
    
    local icon = Instance.new("TextLabel")
    icon.Size = UDim2.new(0, 20, 1, 0)
    icon.BackgroundTransparency = 1
    icon.Text = "•"
    icon.TextColor3 = Color3.fromRGB(120, 220, 100)
    icon.Font = Enum.Font.GothamBold
    icon.TextSize = 18
    icon.Parent = btn
end


local content = Instance.new("Frame")
content.Size = UDim2.new(1, -200, 1, -65)
content.Position = UDim2.new(0, 190, 0, 55)
content.BackgroundTransparency = 1
content.Parent = mainFrame

local contentLayout = Instance.new("UIListLayout")
contentLayout.Padding = UDim.new(0, 16)
contentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
contentLayout.SortOrder = Enum.SortOrder.LayoutOrder
contentLayout.Parent = content


local warningFrame = Instance.new("Frame")
warningFrame.Size = UDim2.new(0.9, 0, 0, 80)
warningFrame.BackgroundColor3 = Color3.fromRGB(40, 10, 10)
warningFrame.BorderSizePixel = 0
warningFrame.Parent = content

local warnCorner = Instance.new("UICorner")
warnCorner.CornerRadius = UDim.new(0, 6)
warnCorner.Parent = warningFrame

local warnStroke = Instance.new("UIStroke")
warnStroke.Color = Color3.fromRGB(220, 40, 40)
warnStroke.Thickness = 2
warnStroke.Parent = warningFrame

local warnLabel = Instance.new("TextLabel")
warnLabel.Size = UDim2.new(1, -20, 1, -10)
warnLabel.Position = UDim2.new(0, 10, 0, 5)
warnLabel.BackgroundTransparency = 1
warnLabel.Text = "No Paid Features.\nThis is a key system preview only. Game-specific features require purchase."
warnLabel.TextColor3 = Color3.fromRGB(255, 180, 180)
warnLabel.Font = Enum.Font.GothamSemibold
warnLabel.TextSize = 16
warnLabel.TextWrapped = true
warnLabel.TextXAlignment = Enum.TextXAlignment.Left
warnLabel.Parent = warningFrame


local getKeyBtn = Instance.new("TextButton")
getKeyBtn.Size = UDim2.new(0.8, 0, 0, 45)
getKeyBtn.BackgroundColor3 = Color3.fromRGB(30, 50, 70)
getKeyBtn.BorderSizePixel = 0
getKeyBtn.Text = "GET KEY (copy link)"
getKeyBtn.TextColor3 = Color3.fromRGB(180, 220, 255)
getKeyBtn.Font = Enum.Font.GothamSemibold
getKeyBtn.TextSize = 16
getKeyBtn.Parent = content

local gkCorner = Instance.new("UICorner")
gkCorner.CornerRadius = UDim.new(0, 6)
gkCorner.Parent = getKeyBtn


local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.8, 0, 0, 50)
textBox.BackgroundColor3 = Color3.fromRGB(28, 28, 36)
textBox.BorderSizePixel = 0
textBox.Text = ""
textBox.PlaceholderText = "Enter Key..."
textBox.PlaceholderColor3 = Color3.fromRGB(140, 140, 160)
textBox.TextColor3 = Color3.fromRGB(220, 220, 240)
textBox.Font = Enum.Font.GothamSemibold
textBox.TextSize = 18
textBox.Parent = content

local tbCorner = Instance.new("UICorner")
tbCorner.CornerRadius = UDim.new(0, 6)
tbCorner.Parent = textBox


local submitBtn = Instance.new("TextButton")
submitBtn.Size = UDim2.new(0.8, 0, 0, 50)
submitBtn.BackgroundColor3 = Color3.fromRGB(35, 80, 50)
submitBtn.BorderSizePixel = 0
submitBtn.Text = "VERIFY KEY"
submitBtn.TextColor3 = Color3.fromRGB(220, 255, 220)
submitBtn.Font = Enum.Font.GothamBold
submitBtn.TextSize = 18
submitBtn.Parent = content

local sbCorner = Instance.new("UICorner")
sbCorner.CornerRadius = UDim.new(0, 6)
sbCorner.Parent = submitBtn


local status = Instance.new("TextLabel")
status.Size = UDim2.new(0.8, 0, 0, 40)
status.BackgroundTransparency = 1
status.Text = ""
status.TextColor3 = Color3.fromRGB(255, 100, 100)
status.Font = Enum.Font.GothamBold
status.TextSize = 16
status.Visible = false
status.Parent = content


local loadingFrame = Instance.new("Frame")
loadingFrame.Size = UDim2.new(1, 0, 1, 0)
loadingFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
loadingFrame.BackgroundTransparency = 0.4
loadingFrame.Visible = false
loadingFrame.Parent = mainFrame

local loadText = Instance.new("TextLabel")
loadText.Size = UDim2.new(1, 0, 1, 0)
loadText.BackgroundTransparency = 1
loadText.Text = "Loading valt31..."
loadText.TextColor3 = Color3.fromRGB(120, 220, 100)
loadText.Font = Enum.Font.GothamBlack
loadText.TextSize = 30
loadText.Parent = loadingFrame


local disclaimer = Instance.new("TextLabel")
disclaimer.Size = UDim2.new(1, -40, 0, 60)
disclaimer.Position = UDim2.new(0, 20, 1, -70)
disclaimer.BackgroundTransparency = 1
disclaimer.Text = "this script is made by @valt31 | Obsidian UI \nFor educational purposes only"
disclaimer.TextColor3 = Color3.fromRGB(140, 140, 160)
disclaimer.Font = Enum.Font.Gotham
disclaimer.TextSize = 13
disclaimer.TextWrapped = true
disclaimer.Parent = mainFrame


local function hover(btn, norm, hov)
    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = hov}):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = norm}):Play()
    end)
end

hover(getKeyBtn, Color3.fromRGB(30, 50, 70), Color3.fromRGB(45, 70, 100))
hover(submitBtn, Color3.fromRGB(35, 80, 50), Color3.fromRGB(50, 110, 70))


local correctKey = "valt31yt"

getKeyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://direct-link.net/3837503/bZnHm15Gd9iB")
    status.Text = "Link copied to clipboard!"
    status.TextColor3 = Color3.fromRGB(120, 220, 100)
    status.Visible = true
    task.delay(3, function() status.Visible = false end)
end)

submitBtn.MouseButton1Click:Connect(function()
    local input = textBox.Text:gsub("%s+", "")

    if input == correctKey then
        status.Text = "Access Granted"
        status.TextColor3 = Color3.fromRGB(120, 220, 100)
        status.Visible = true

        loadingFrame.Visible = true
        textBox.Visible = false
        submitBtn.Visible = false
        getKeyBtn.Visible = false
        warningFrame.Visible = false

        task.wait(1.8)
        screenGui:Destroy()

       
        loadstring(game:HttpGet("https://raw.githubusercontent.com/valt31yt/Valt-31-hub/refs/heads/main/main%20hub"))()
    else
        status.Text = "Invalid Key"
        status.TextColor3 = Color3.fromRGB(255, 100, 100)
        status.Visible = true
        task.delay(2.5, function() status.Visible = false end)

        
        local orig = mainFrame.Position
        for i = 1, 4 do
            TweenService:Create(mainFrame, TweenInfo.new(0.06), {
                Position = orig + UDim2.new(0, math.random(-8,8), 0, math.random(-8,8))
            }):Play()
            task.wait(0.06)
        end
        TweenService:Create(mainFrame, TweenInfo.new(0.1), {Position = orig}):Play()
    end
end)

