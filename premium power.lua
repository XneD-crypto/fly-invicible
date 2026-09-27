-- БАЗОВЫЙ КАРКАС МЕНЮ PREMIUM POWER
wait(1)
pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "POWER PREMIUM",
        Text = "Активирован | Amir7487",
        Duration = 5
    })
end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MainGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Toggle = Instance.new("TextButton")
Toggle.Name = "ToggleBtn"
Toggle.Size = UDim2.new(0, 30, 0, 30)
Toggle.Position = UDim2.new(0, 20, 0.5, -15)
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Text = "🎮"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.Font = Enum.Font.SourceSans
Toggle.TextSize = 18
Toggle.Parent = ScreenGui
local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(1, 0)
Corner.Parent = Toggle

-- Основное меню (увеличил высоту для 11 кнопок)
local Main = Instance.new("Frame")
Main.Name = "MainMenu"
Main.Size = UDim2.new(0, 250, 0, 300) -- Увеличил высоту для 11 кнопок
Main.Position = UDim2.new(0.5, -125, 0.5, -190)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
Main.Visible = false
Main.Parent = ScreenGui
local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = Main

local Top = Instance.new("Frame")
Top.Size = UDim2.new(1, 0, 0, 35)
Top.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
Top.Parent = Main
local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(0, 10)
TopCorner.Parent = Top

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -45, 1, 0)
Title.Position = UDim2.new(0, 10, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "PREMIUM POWER"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Top

local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Position = UDim2.new(1, -30, 0, 5)
Close.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.Font = Enum.Font.GothamBold
Close.TextSize = 14
Close.Parent = Top
local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 5)
CloseCorner.Parent = Close

local Scroll = Instance.new("ScrollingFrame")
Scroll.Size = UDim2.new(1, -12, 1, -50)
Scroll.Position = UDim2.new(0, 6, 0, 40)
Scroll.BackgroundTransparency = 1
Scroll.ScrollBarThickness = 6
Scroll.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 120)
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
Scroll.ScrollingDirection = Enum.ScrollingDirection.Y
Scroll.VerticalScrollBarInset = Enum.ScrollBarInset.Always
Scroll.Parent = Main

local List = Instance.new("UIListLayout")
List.Padding = UDim.new(0, 6)
List.Parent = Scroll

List:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    Scroll.CanvasSize = UDim2.new(0, 0, 0, List.AbsoluteContentSize.Y)
end)

local function createGrayButton(name)
    local Btn = Instance.new("TextButton")
    Btn.Size = UDim2.new(1, 0, 0, 34) -- Уменьшил для 11 кнопок
    Btn.BackgroundColor3 = Color3.fromRGB(80, 80, 85)
    Btn.Text = name
    Btn.TextColor3 = Color3.new(1, 1, 1)
    Btn.Font = Enum.Font.GothamSemibold
    Btn.TextSize = 11
    Btn.Parent = Scroll
    
    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(0, 6)
    BtnCorner.Parent = Btn
    
    Btn.MouseEnter:Connect(function()
        game:GetService("TweenService"):Create(Btn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(110, 110, 115)}):Play()
    end)
    
    Btn.MouseLeave:Connect(function()
        game:GetService("TweenService"):Create(Btn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(80, 80, 85)}):Play()
    end)
    
    return Btn
end

-- КНОПКА 1: Infinite Yield
local IYBtn = createGrayButton("INFINITE YIELD")
IYBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source', true))()
    print("Infinite Yield запущен")
end)

-- КНОПКА 2: Слендер
local SlenderBtn = createGrayButton("СЛЕНДЕР")
SlenderBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/7Nv28tRE"))()
    print("Скрипт 'Слендер' запущен")
end)

-- КНОПКА 21: полёт
local FlightBtn = createGrayButton("ПОЛЁТ")
FlightBtn.MouseButton1Click:Connect(function()
    local UserInputService = game:GetService("UserInputService")
    local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
    if isMobile then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/396abc/Script/refs/heads/main/MobileFly.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/396abc/Script/refs/heads/main/FlyR15.lua"))()
    end
    print("Полёт запущен")
end)

-- КНОПКА 3: Телекинез
local TelekinesisBtn = createGrayButton("ТЕЛЕКИНЕЗ")
TelekinesisBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md'),true))()
    print("Скрипт 'Телекинез' запущен")
end)

-- КНОПКА 4: Grab-перенос
local GrabMoveBtn = createGrayButton("GRAB-ПЕРЕНОС")
GrabMoveBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zR1UwReC"))()
    print("Grab-перенос запущен")
end)

-- КНОПКА 5: Grab-руки
local GrabHandsBtn = createGrayButton("GRAB-РУКИ")
GrabHandsBtn.MouseButton1Click:Connect(function()
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local backpack = player:WaitForChild("Backpack")

    local grabTool = Instance.new("Tool")
    grabTool.Name = "Grab"
    grabTool.ToolTip = "Grab parts"
    grabTool.CanBeDropped = false
    grabTool.RequiresHandle = true

    local handle = Instance.new("Part")
    handle.Name = "Handle"
    handle.Size = Vector3.new(1, 1, 1)
    handle.Transparency = 0.5
    handle.BrickColor = BrickColor.new("Bright blue")
    handle.CanCollide = false
    handle.Anchored = false
    handle.Parent = grabTool

    local currentPart = nil
    local partWeld = nil
    local originalProperties = {}

    local function cleanup()
        if partWeld then 
            partWeld:Destroy()
            partWeld = nil
        end
        
        if currentPart then
            currentPart.CanCollide = originalProperties.CanCollide or true
            currentPart.Anchored = originalProperties.Anchored or false
        end
        
        currentPart = nil
        originalProperties = {}
    end

    local function attachPartToHand(part)
        cleanup()
        
        local character = player.Character
        if not character then return false end
        
        local toolHandle = grabTool:FindFirstChild("Handle")
        if not toolHandle then return false end
        
        originalProperties.CanCollide = part.CanCollide
        originalProperties.Anchored = part.Anchored
        
        part.CanCollide = false
        part.Anchored = false
        
        partWeld = Instance.new("Weld")
        partWeld.Name = "HandWeld"
        partWeld.Part0 = toolHandle
        partWeld.Part1 = part
        
        partWeld.C0 = CFrame.new(0, 0, 0)
        partWeld.C1 = CFrame.new(0, 0, 0)
        
        partWeld.Parent = toolHandle
        currentPart = part
        
        toolHandle.Transparency = 1
        
        return true
    end

    local function findPartNearCharacter()
        local character = player.Character
        if not character then return nil end
        
        local root = character:FindFirstChild("HumanoidRootPart")
        if not root then return nil end
        
        local closestPart = nil
        local closestDistance = 8
        
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("BasePart") and not obj.Anchored and obj.Parent ~= character then
                local distance = (obj.Position - root.Position).Magnitude
                if distance < closestDistance then
                    local isInCharacter = false
                    local parent = obj.Parent
                    while parent do
                        if parent:FindFirstChild("Humanoid") then
                            isInCharacter = true
                            break
                        end
                        parent = parent.Parent
                    end
                    
                    if not isInCharacter then
                        closestPart = obj
                        closestDistance = distance
                    end
                end
            end
        end
        
        return closestPart
    end

    grabTool.Equipped:Connect(function()
        local toolHandle = grabTool:FindFirstChild("Handle")
        if toolHandle then
            toolHandle.Transparency = 0.5
        end
        
        local targetPart = findPartNearCharacter()
        if targetPart then
            if attachPartToHand(targetPart) then
                print("Part attached to tool handle: " .. targetPart.Name)
            else
                print("Failed to attach part to tool handle")
            end
        else
            print("No parts found nearby")
        end
    end)

    grabTool.Unequipped:Connect(function()
        local toolHandle = grabTool:FindFirstChild("Handle")
        if toolHandle then
            toolHandle.Transparency = 0.5
        end
        
        cleanup()
        print("Part released from hand")
    end)

    grabTool.Activated:Connect(function()
        print("Tool activated - part remains in hand")
    end)

    player.CharacterAdded:Connect(function(character)
        cleanup()
    end)

    grabTool.Destroying:Connect(function()
        cleanup()
    end)

    grabTool.Parent = backpack
    print("Grab tool installed - part attached to tool handle")
end)

-- КНОПКА 6: 1488
local Btn1488 = createGrayButton("1488")
Btn1488.MouseButton1Click:Connect(function()
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer

    local Tool = Instance.new("Tool")
    Tool.Name = "1488"
    Tool.RequiresHandle = true
    Tool.ToolTip = ""

    local Handle = Instance.new("Part")
    Handle.Name = "Handle"
    Handle.Size = Vector3.new(0.1, 0.1, 0.1)
    Handle.Transparency = 1
    Handle.CanCollide = false
    Handle.Anchored = false
    Handle.Parent = Tool

    local backpack = Player:WaitForChild("Backpack")
    local existingTool = backpack:FindFirstChild("1488")
    if existingTool then existingTool:Destroy() end

    Tool.Parent = backpack

    local anchoredPart = nil
    local originalAnchored = false
    local originalCFrame = nil

    function findNearestUnanchoredPart(position, radius)
        local closest = nil
        local minDist = radius
        for _, obj in ipairs(workspace:GetDescendants()) do
            if obj:IsA("BasePart") and not obj.Anchored and obj.CanCollide then
                local humanoidParent = obj.Parent:FindFirstChildOfClass("Humanoid")
                if not humanoidParent and obj.Parent ~= Player.Character then
                    local dist = (obj.Position - position).Magnitude
                    if dist < minDist then
                        minDist = dist
                        closest = obj
                    end
                end
            end
        end
        return closest
    end

    function freezePart(part)
        if not part then return end
        
        anchoredPart = part
        originalAnchored = part.Anchored
        originalCFrame = part.CFrame
        
        part.Anchored = true
    end

    function unfreezePart()
        if anchoredPart then
            anchoredPart.Anchored = originalAnchored
            anchoredPart = nil
            originalCFrame = nil
        end
    end

    Tool.Equipped:Connect(function()
        task.wait(0.05)
        
        local char = Player.Character
        if not char then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then return end
        
        unfreezePart()
        
        local target = findNearestUnanchoredPart(root.Position, 10)
        if target then
            freezePart(target)
        end
    end)

    Tool.Unequipped:Connect(function()
        unfreezePart()
    end)

    Player.CharacterAdded:Connect(function()
        unfreezePart()
    end)

    print("Инструмент '1488' активирован.")
end)

-- КНОПКА 7: Fe kill NPC
local FeKillBtn = createGrayButton("FE KILL NPC")
FeKillBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GUI-Offical/TestFile-Broken/refs/heads/main/Protected_8925751398564838.lua.txt"))()
    print("FE Kill NPC запущен")
end)

-- КНОПКА 8: grab kill npc
local GrabKillBtn = createGrayButton("GRAB KILL NPC")
GrabKillBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GUI-Offical/FileTest/refs/heads/main/Grab%20R6.txt", true))()
    print("Grab Kill NPC запущен")
end)

-- ======== ДОБАВЛЕНИЕ КНОПКИ UNIVERSAL ALL KILL (PARTS) ========

-- КНОПКА 48: UNIVERSAL ALL KILL (parts)
local UniversalAllKillBtn = createGrayButton("UNIVERSAL ALL KILL (PARTS)")
UniversalAllKillBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/D5cGAQFX"))()
    print("Universal All Kill (parts) запущен")
end)

print("Добавлена кнопка: UNIVERSAL ALL KILL (PARTS) (Всего 48 кнопок)")

-- КНОПКА 9: черная дыра
local BlackHoleBtn = createGrayButton("ЧЕРНАЯ ДЫРА")
BlackHoleBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XneD-crypto/Scripts/refs/heads/main/BringParts"))()
    print("Черная дыра запущена")
end)

-- КНОПКА 10: float
local FloatBtn = createGrayButton("FLOAT")
FloatBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
    print("Float запущен")
end)

-- КНОПКА 11: anti damage
local AntiDamageBtn = createGrayButton("ANTI DAMAGE")
AntiDamageBtn.MouseButton1Click:Connect(function()
    local pid = game.PlaceId
    if pid ~= 189707 then
        print("Error not found natural disasters survival game!")
        return
    end
    local rs = game:GetService("RunService")
    local hb = rs.Heartbeat
    local rsd = rs.RenderStepped
    local lp = game.Players.LocalPlayer
    local z = Vector3.zero
    local function f(c)
        local r = c:WaitForChild("HumanoidRootPart")
        if r then
            local con
            con = hb:Connect(function()
                if not r.Parent then
                    con:Disconnect()
                end
                local v = r.AssemblyLinearVelocity
                r.AssemblyLinearVelocity = z
                rsd:Wait()
                r.AssemblyLinearVelocity = v
            end)
        end
    end
    f(lp.Character)
    lp.CharacterAdded:Connect(f)
    print("Anti Damage активирован")
end)

-- Перетаскивание
local dragging = false
local dragInput, startPos, dragStart

Top.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Main.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Top.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        local delta = input.Position - dragStart
        Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- ======== ДОБАВЛЕНИЕ КНОПКИ GODMODE ========

-- КНОПКА 46: godmode
local GodmodeBtn = createGrayButton("GODMODE")
GodmodeBtn.MouseButton1Click:Connect(function()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner_Frame = Instance.new("UICorner")
    local UIPadding_Frame = Instance.new("UIPadding")
    local TitleLabel = Instance.new("TextLabel")
    local ToggleButton = Instance.new("TextButton")
    local UICorner_Button = Instance.new("UICorner")
    
    ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.ResetOnSpawn = false
    ScreenGui.IgnoreGuiInset = true
    
    Frame.Parent = ScreenGui
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = UDim2.new(0, 220, 0, 130)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 37, 43)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Active = true
    Frame.Draggable = true
    
    UICorner_Frame.CornerRadius = UDim.new(0, 12)
    UICorner_Frame.Parent = Frame
    
    UIPadding_Frame.PaddingTop = UDim.new(0, 10)
    UIPadding_Frame.PaddingBottom = UDim.new(0, 10)
    UIPadding_Frame.PaddingLeft = UDim.new(0, 10)
    UIPadding_Frame.PaddingRight = UDim.new(0, 10)
    UIPadding_Frame.Parent = Frame
    
    TitleLabel.Name = "TitleLabel"
    TitleLabel.Parent = Frame
    TitleLabel.BackgroundColor3 = Color3.fromRGB(45, 47, 53)
    TitleLabel.Size = UDim2.new(1, 0, 0, 35)
    TitleLabel.Font = Enum.Font.GothamSemibold
    TitleLabel.Text = "Killbrick Toggle"
    TitleLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
    TitleLabel.TextSize = 18.000
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Center
    TitleLabel.TextYAlignment = Enum.TextYAlignment.Center
    local TitleCorner = Instance.new("UICorner")
    TitleCorner.CornerRadius = UDim.new(0, 8)
    TitleCorner.Parent = TitleLabel
    
    ToggleButton.Name = "ToggleButton"
    ToggleButton.Parent = Frame
    ToggleButton.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
    ToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ToggleButton.BorderSizePixel = 0
    ToggleButton.Position = UDim2.new(0.5, 0, 0.65, 0)
    ToggleButton.AnchorPoint = Vector2.new(0.5, 0.5)
    ToggleButton.Size = UDim2.new(0.8, 0, 0, 45)
    ToggleButton.Font = Enum.Font.GothamMedium
    ToggleButton.Text = "OFF"
    ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton.TextSize = 16.000
    ToggleButton.AutoButtonColor = false
    
    UICorner_Button.CornerRadius = UDim.new(0, 8)
    UICorner_Button.Parent = ToggleButton
    
    local player = game:GetService("Players").LocalPlayer
    local isEnabled = false
    
    local onColor = Color3.fromRGB(60, 179, 113)
    local offColor = Color3.fromRGB(200, 60, 60)
    
    local function updateButtonAppearance()
        if isEnabled then
            ToggleButton.Text = "ON"
            ToggleButton.BackgroundColor3 = onColor
        else
            ToggleButton.Text = "OFF"
            ToggleButton.BackgroundColor3 = offColor
        end
    end
    
    local function toggleFeature()
        isEnabled = not isEnabled
        updateButtonAppearance()
    end
    
    ToggleButton.MouseButton1Click:Connect(function()
        toggleFeature()
    end)
    
    local function applyToggleEffect()
        while task.wait(0.1) do
            local character = player.Character
            if not character then return end
            
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then return end
    
            local parts = workspace:GetPartBoundsInRadius(humanoidRootPart.Position, 10)
            for _, part in ipairs(parts) do
                if part:IsA("BasePart") then
                    part.CanTouch = not isEnabled
                end
            end
        end
    end
    
    updateButtonAppearance()
    
    player.CharacterAdded:Connect(function(character)
        character:WaitForChild("HumanoidRootPart")
        task.spawn(applyToggleEffect)
        updateButtonAppearance()
    end)
    
    if player.Character then
        player.Character:WaitForChild("HumanoidRootPart")
        task.spawn(applyToggleEffect)
    end
    
    print("Godmode запущен")
end)

print("Добавлена кнопка: GODMODE (Всего 46 кнопок)")

-- ======== ДОБАВЛЕНИЕ 3 НОВЫХ КНОПОК ========

-- Увеличь высоту меню если нужно (измени эту строку в основном коде)
-- Main.Size = UDim2.new(0, 250, 0, 420) -- Было 380, стало 420 для 14 кнопок

-- КНОПКА 12: noob skin all
local NoobSkinBtn = createGrayButton("NOOB SKIN ALL")
NoobSkinBtn.MouseButton1Click:Connect(function()
    local function SendNotification(title, text)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = 5
        })
    end

    SendNotification("Delta Injector", "Поиск всех ClickDetector...")

    if game:GetService("CoreGui"):FindFirstChild("PurchasePromptApp") then
        game:GetService("CoreGui").PurchasePromptApp:Destroy()
        SendNotification("Delta Injector", "PurchasePromptApp удален.")
    end

    local player = game:GetService("Players").LocalPlayer
    if player and player:FindFirstChild("PlayerGui") then
        local mainGui = player.PlayerGui:FindFirstChild("MainGui")
        if mainGui and mainGui:FindFirstChild("HoverSound") then
            mainGui.HoverSound.Volume = 0
        end
    end

    local allDetectors = {}
    for _, obj in pairs(game:GetService("Workspace"):GetDescendants()) do
        if obj:IsA("ClickDetector") then
            table.insert(allDetectors, obj)
        end
    end

    if #allDetectors == 0 then
        SendNotification("Delta Injector", "НЕ РАБОТАЕТ: ClickDetector не найдены.")
        return
    else
        SendNotification("Delta Injector", "Найдено детекторов: " .. #allDetectors .. ". Начинаю клики.")
    end

    for i = 1, 20000 do
        for _, detector in ipairs(allDetectors) do
            fireclickdetector(detector)
        end
        if i % 30 == 1 then
            task.wait()
        end
    end

    SendNotification("Delta Injector", "Готово! 20000 циклов выполнено.")
    print("Noob Skin All запущен")
end)

-- ======== ДОБАВЛЕНИЕ КНОПКИ ПОДСВЕТКА-UNANCHORED ========

-- КНОПКА 49: подсветка-unAnchored
local UnanchoredHighlightBtn = createGrayButton("ПОДСВЕТКА-UNANCHORED")
UnanchoredHighlightBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XneD-crypto/backlight-unAnchored/refs/heads/main/parts.lua"))()
    print("Подсветка-unAnchored запущена")
end)

print("Добавлена кнопка: ПОДСВЕТКА-UNANCHORED (Всего 49 кнопок)")

-- ======== ДОБАВЛЕНИЕ КНОПКИ FREE GAMEPASS V3 ========

-- КНОПКА 33: free gamepass v3
local FreeGamepassV3Btn = createGrayButton("FREE GAMEPASS V3")
FreeGamepassV3Btn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/u0BZVHy3"))()
    print("Free Gamepass v3 запущен")
end)

print("Добавлена кнопка: FREE GAMEPASS V3 (Всего 13 кнопки)")

-- КНОПКА 14: waypoints
local WaypointsBtn = createGrayButton("WAYPOINTS")
WaypointsBtn.MouseButton1Click:Connect(function()
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "WaypointGUI"
    screenGui.Parent = player.PlayerGui
    screenGui.ResetOnSpawn = false

    local button = Instance.new("ImageButton")
    button.Size = UDim2.new(0, 30, 0, 30)
    button.Position = UDim2.new(0.5, -15, 0.05, 0)
    button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    button.Image = ""
    button.Active = true
    button.Draggable = true
    button.Parent = screenGui

    local uICorner = Instance.new("UICorner")
    uICorner.CornerRadius = UDim.new(1, 0)
    uICorner.Parent = button

    local uiStroke = Instance.new("UIStroke")
    uiStroke.Color = Color3.fromRGB(100, 100, 100)
    uiStroke.Thickness = 1.5
    uiStroke.Parent = button

    local icon = Instance.new("Frame")
    icon.Size = UDim2.new(0, 10, 0, 10)
    icon.Position = UDim2.new(0.5, -5, 0.5, -5)
    icon.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    icon.BorderSizePixel = 0
    icon.Parent = button

    local iconCorner = Instance.new("UICorner")
    iconCorner.CornerRadius = UDim.new(1, 0)
    iconCorner.Parent = icon

    local statusRing = Instance.new("Frame")
    statusRing.Size = UDim2.new(1, 0, 1, 0)
    statusRing.BackgroundTransparency = 1
    statusRing.Parent = button

    local ringStroke = Instance.new("UIStroke")
    ringStroke.Color = Color3.fromRGB(150, 150, 150)
    ringStroke.Thickness = 2
    ringStroke.Parent = statusRing

    local waypointEnabled = false
    local currentWaypoint = nil
    local waypointPosition = nil

    local function createStationaryWaypoint()
        if currentWaypoint then
            currentWaypoint:Destroy()
            currentWaypoint = nil
        end

        if not player.Character then return end
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart then return end
        
        waypointPosition = humanoidRootPart.Position

        local anchor = Instance.new("Part")
        anchor.Anchored = true
        anchor.CanCollide = false
        anchor.Size = Vector3.new(0.1, 0.1, 0.1)
        anchor.Transparency = 1
        anchor.Position = waypointPosition
        anchor.Parent = workspace

        local billboard = Instance.new("BillboardGui")
        billboard.Size = UDim2.new(0, 150, 0, 80)
        billboard.StudsOffset = Vector3.new(0, 2.5, 0)
        billboard.AlwaysOnTop = true
        billboard.Adornee = anchor
        billboard.Parent = anchor

        local distLabel = Instance.new("TextLabel")
        distLabel.Size = UDim2.new(1, 0, 0, 24)
        distLabel.Position = UDim2.new(0, 0, 0, -10)
        distLabel.BackgroundTransparency = 1
        distLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        distLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        distLabel.TextStrokeTransparency = 0.2
        distLabel.TextSize = 18
        distLabel.Font = Enum.Font.GothamBold
        distLabel.Text = "0"
        distLabel.Parent = billboard

        local marker = Instance.new("Frame")
        marker.Size = UDim2.new(0, 14, 0, 14)
        marker.Position = UDim2.new(0.5, -7, 0.5, -7)
        marker.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        marker.BorderSizePixel = 0
        marker.Parent = billboard

        local markerCorner = Instance.new("UICorner")
        markerCorner.CornerRadius = UDim.new(1, 0)
        markerCorner.Parent = marker

        local markerRing = Instance.new("Frame")
        markerRing.Size = UDim2.new(1, 0, 1, 0)
        markerRing.BackgroundTransparency = 1
        markerRing.Parent = marker

        local markerStroke = Instance.new("UIStroke")
        markerStroke.Color = Color3.fromRGB(255, 255, 255)
        markerStroke.Thickness = 1.5
        markerStroke.Parent = markerRing

        local function updateDistance()
            while anchor and anchor.Parent and task.wait(0.1) do
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local hrp = player.Character.HumanoidRootPart
                    local dist = (hrp.Position - anchor.Position).Magnitude
                    distLabel.Text = string.format("%d", math.floor(dist))
                    
                    if dist < 10 then
                        distLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
                    elseif dist < 50 then
                        distLabel.TextColor3 = Color3.fromRGB(255, 255, 50)
                    else
                        distLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    end
                end
            end
        end

        spawn(updateDistance)
        currentWaypoint = anchor
    end

    button.MouseButton1Click:Connect(function()
        waypointEnabled = not waypointEnabled

        if waypointEnabled then
            createStationaryWaypoint()
            ringStroke.Color = Color3.fromRGB(80, 255, 80)
            icon.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
            uiStroke.Color = Color3.fromRGB(200, 200, 255)
        else
            if currentWaypoint then
                currentWaypoint:Destroy()
                currentWaypoint = nil
                waypointPosition = nil
            end
            ringStroke.Color = Color3.fromRGB(150, 150, 150)
            icon.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
            uiStroke.Color = Color3.fromRGB(100, 100, 100)
        end
    end)

    print("Waypoints запущены.")
end)

print("3 новые кнопки добавлены: NOOB SKIN ALL, FREE GAMEPASS, WAYPOINTS")

-- ======== ДОБАВЛЕНИЕ 3 НОВЫХ КНОПОК ========

-- КНОПКА 15: control NPC v1
local ControlNPC1Btn = createGrayButton("CONTROL NPC V1")
ControlNPC1Btn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/qwertys/refs/heads/main/qwerty8.lua"))()
    print("Control NPC v1 запущен")
end)

-- КНОПКА 16: control NPC v2
local ControlNPC2Btn = createGrayButton("CONTROL NPC V2")
ControlNPC2Btn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/fe-source/refs/heads/main/NPC/source/main.Luau"))()
    print("Control NPC v2 запущен")
end)

-- КНОПКА 17: кнопка Leave
local LeaveBtn = createGrayButton("LEAVE BUTTON")
LeaveBtn.MouseButton1Click:Connect(function()
    -- Delta Injector Script for Roblox: Steal a brainrot
    -- Created by Colin
    
    local UserInputService = game:GetService("UserInputService")
    local Players = game:GetService("Players")
    local localPlayer = Players.LocalPlayer
    
    -- Create main GUI
    local ScreenGui = Instance.new("ScreenGui")
    local LeaveButton = Instance.new("TextButton")
    
    ScreenGui.Parent = game.CoreGui
    ScreenGui.Name = "DeltaScript"
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Leave Button
    LeaveButton.Name = "LeaveButton"
    LeaveButton.Parent = ScreenGui
    LeaveButton.BackgroundColor3 = Color3.new(0, 0, 0)
    LeaveButton.BorderColor3 = Color3.new(1, 1, 1)
    LeaveButton.BorderSizePixel = 2
    LeaveButton.Position = UDim2.new(0, 10, 0, 10)
    LeaveButton.Size = UDim2.new(0, 80, 0, 40)
    LeaveButton.Font = Enum.Font.SourceSansBold
    LeaveButton.Text = "LEAVE"
    LeaveButton.TextColor3 = Color3.new(1, 1, 1)
    LeaveButton.TextSize = 14
    LeaveButton.Active = true
    LeaveButton.Draggable = true
    
    -- Mobile dragging functionality for Leave button
    local leaveDragging = false
    local leaveDragInput, leaveDragStart, leaveStartPos
    
    local function updateLeaveInput(input)
        local delta = input.Position - leaveDragStart
        LeaveButton.Position = UDim2.new(leaveStartPos.X.Scale, leaveStartPos.X.Offset + delta.X, 
                                        leaveStartPos.Y.Scale, leaveStartPos.Y.Offset + delta.Y)
    end
    
    LeaveButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            -- Start dragging only if holding for more than 0.3 seconds
            local dragStartTime = tick()
            leaveDragStart = input.Position
            leaveStartPos = LeaveButton.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    -- If tap was shorter than 0.3 seconds, it's a click
                    if tick() - dragStartTime < 0.3 then
                        -- Leave function
                        localPlayer:Kick("Left by script")
                    end
                    leaveDragging = false
                end
            end)
            
            -- Wait a bit before enabling dragging to prevent accidental clicks
            wait(0.3)
            leaveDragging = true
        end
    end)
    
    LeaveButton.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            leaveDragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == leaveDragInput and leaveDragging then
            updateLeaveInput(input)
        end
    end)
    
    print("Leave Button создана на экране")
end)

print("3 новые кнопки добавлены: CONTROL NPC V1, CONTROL NPC V2, LEAVE BUTTON")

-- ======== ДОБАВЛЕНИЕ 6 НОВЫХ КНОПОК ========

-- КНОПКА 18: drop/grab
local DropGrabBtn = createGrayButton("DROP/GRAB")
DropGrabBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jmhC0iGC"))()
    print("Drop/Grab запущен")
end)

-- ======== ДОБАВЛЕНИЕ КНОПКИ DROP/GRAB V4.0 ========

-- КНОПКА 39: drop/grab v4.0
local DropGrabV4Btn = createGrayButton("DROP/GRAB V4.0")
DropGrabV4Btn.MouseButton1Click:Connect(function()
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    
    local player = Players.LocalPlayer
    
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "InventoryHelper"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = player:WaitForChild("PlayerGui")
    
    local dropButton = Instance.new("TextButton")
    dropButton.Name = "Drop"
    dropButton.Size = UDim2.new(0, 100, 0, 40)
    dropButton.Position = UDim2.new(0, 10, 1, -50)
    dropButton.AnchorPoint = Vector2.new(0, 1)
    dropButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
    dropButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropButton.Text = "DROP"
    dropButton.Visible = false
    dropButton.BackgroundTransparency = 0.3
    local dropCorner = Instance.new("UICorner")
    dropCorner.CornerRadius = UDim.new(0.5, 0)
    dropCorner.Parent = dropButton
    dropButton.Parent = screenGui
    
    local grabButton = Instance.new("TextButton")
    grabButton.Name = "Grab"
    grabButton.Size = UDim2.new(0, 100, 0, 40)
    grabButton.Position = UDim2.new(1, -110, 1, -50)
    grabButton.AnchorPoint = Vector2.new(1, 1)
    grabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 255)
    grabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    grabButton.Text = "GRAB"
    grabButton.Visible = true
    grabButton.BackgroundTransparency = 0.3
    local grabCorner = Instance.new("UICorner")
    grabCorner.CornerRadius = UDim.new(0.5, 0)
    grabCorner.Parent = grabButton
    grabButton.Parent = screenGui
    
    local deleteButton = Instance.new("TextButton")
    deleteButton.Name = "DeleteScript"
    deleteButton.Size = UDim2.new(0, 40, 0, 40)
    deleteButton.Position = UDim2.new(0.5, -20, 0, 10)
    deleteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    deleteButton.TextColor3 = Color3.fromRGB(255, 0, 0)
    deleteButton.Text = "X"
    deleteButton.TextScaled = true
    deleteButton.BackgroundTransparency = 0.2
    deleteButton.ZIndex = 10
    local deleteCorner = Instance.new("UICorner")
    deleteCorner.CornerRadius = UDim.new(0.2, 0)
    deleteCorner.Parent = deleteButton
    deleteButton.Parent = screenGui
    
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        deleteButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    deleteButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = deleteButton.Position
    
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    deleteButton.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input == dragInput) then
            update(input)
        end
    end)
    
    deleteButton.MouseButton1Click:Connect(function()
        screenGui:Destroy()
        isGrabbing = false
        grabConnection = nil
    end)
    
    local currentTool = nil
    local isGrabbing = false
    local grabConnection = nil
    local lastGrabTime = 0
    local GRAB_COOLDOWN = 0.5
    
    local function dropTool()
        if currentTool then
            currentTool.Parent = workspace
    
            local character = player.Character
            if character then
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    currentTool.Handle.Position = humanoidRootPart.Position + humanoidRootPart.CFrame.LookVector * 5
                end
            end
    
            currentTool = nil
            dropButton.Visible = false
        end
    end
    
    local function collectTools()
        if not isGrabbing or not player.Character then return end
    
        local currentTime = tick()
        if currentTime - lastGrabTime < GRAB_COOLDOWN then return end
        lastGrabTime = currentTime
    
        for _, tool in ipairs(workspace:GetChildren()) do
            if tool:IsA("Tool") and tool.Parent == workspace then
                tool.Parent = player.Backpack
            end
        end
    end
    
    local function updateEquippedTool()
        local character = player.Character
        if not character then
            currentTool = nil
            dropButton.Visible = false
            return
        end
    
        for _, item in pairs(character:GetChildren()) do
            if item:IsA("Tool") then
                currentTool = item
                dropButton.Visible = true
                return
            end
        end
    
        currentTool = nil
        dropButton.Visible = false
    end
    
    local function setupCharacter(character)
        currentTool = nil
        dropButton.Visible = false
        grabButton.Visible = true
    
        character.ChildAdded:Connect(function(child)
            if child:IsA("Tool") then
                currentTool = child
                dropButton.Visible = true
            end
        end)
    
        character.ChildRemoved:Connect(function(child)
            if child:IsA("Tool") then
                updateEquippedTool()
            end
        end)
    
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.Died:Connect(function()
            dropButton.Visible = false
            grabButton.Visible = false
            isGrabbing = false
            grabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 255)
            grabButton.Text = "GRAB"
    
            if grabConnection then
                grabConnection:Disconnect()
                grabConnection = nil
            end
        end)
    end
    
    if player.Character then
        setupCharacter(player.Character)
        updateEquippedTool()
    end
    
    player.CharacterAdded:Connect(setupCharacter)
    player.CharacterRemoving:Connect(function()
        dropButton.Visible = false
        grabButton.Visible = false
        currentTool = nil
    end)
    
    RunService.Heartbeat:Connect(function()
        if player.Character then
            updateEquippedTool()
        else
            dropButton.Visible = false
            grabButton.Visible = false
        end
    end)
    
    dropButton.MouseButton1Click:Connect(dropTool)
    
    grabButton.MouseButton1Click:Connect(function()
        if not player.Character then return end
    
        isGrabbing = not isGrabbing
    
        if isGrabbing then
            grabButton.BackgroundColor3 = Color3.fromRGB(255, 150, 50)
            grabButton.Text = "GRABBING"
    
            grabConnection = RunService.Heartbeat:Connect(collectTools)
        else
            grabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 255)
            grabButton.Text = "GRAB"
    
            if grabConnection then
                grabConnection:Disconnect()
                grabConnection = nil
            end
        end
    end)
    
    print("Drop/Grab v4.0 запущен")
end)

print("Добавлена кнопка: DROP/GRAB V4.0 (Всего 39 кнопок)")

-- КНОПКА 19: reset
local ResetBtn = createGrayButton("RESET")
ResetBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/fVHQ7iJA"))()
    print("Reset запущен")
end)


-- КНОПКА 51: FPS-MS-COUNTER
local FpsMsBtn = createGrayButton("FPS-MS-COUNTER")
FpsMsBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XneD-crypto/Script/refs/heads/main/FPS/MS%25counter.lua"))()
    print("FPS-MS-Counter запущен")
end)

-- КНОПКА 22: hitbox
local HitboxBtn = createGrayButton("HITBOX")
HitboxBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/bpcnrjE4"))()
    print("Hitbox запущен")
end)

print("6 новых кнопок добавлено: DROP/GRAB, RESET, EMOTES, ПОЛЁТ, HITBOX")

-- ======== ДОБАВЛЕНИЕ 3 НОВЫХ КНОПОК ========

-- КНОПКА 23: esp inventory
local EspInventoryBtn = createGrayButton("ESP INVENTORY")
EspInventoryBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://paste.denizenscript.com/View/136336.txt", true))()
    print("ESP Inventory запущен")
end)

-- КНОПКА 24: auto clicker
local AutoClickerBtn = createGrayButton("AUTO CLICKER")
AutoClickerBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/dWUXMmEj"))()
    print("Auto Clicker запущен")
end)

-- КНОПКА 25: invis
local InvisBtn = createGrayButton("INVIS")
InvisBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invisible-script-20557"))()
    print("Invis запущен")
end)

print("3 новые кнопки добавлены: ESP INVENTORY, AUTO CLICKER, INVIS")

-- ======== ДОБАВЛЕНИЕ 7 НОВЫХ КНОПОК ========

-- КНОПКА 26: death note
local DeathNoteBtn = createGrayButton("DEATH NOTE")
DeathNoteBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet(('h'..'t'..'t'..'p'..'s'..':'..'/'..'/'..'p'..'a'..'s'..'t'..'e'..'f'..'y'..'.'..'a'..'pp'..'/'..'G'..'o'..'K'..'x'..'Y'..'B'..'k'..'U'..'/'..'r'..'a'..'w'), true))()
    print("Death Note запущен")
end)

-- КНОПКА 27: r6
local R6Btn = createGrayButton("R6 ANIMATIONS")
R6Btn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-R6-Animations-on-R15-16865"))()
    print("R6 Animations запущен")
end)

-- КНОПКА 28: dead rails v3
local DeadRailsBtn = createGrayButton("Place DEAD RAILS V3")
DeadRailsBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://skullhub.xyz/loader.lua'))()
    print("Dead Rails v3 запущен")
end)

-- ======== ДОБАВЛЕНИЕ КНОПКИ DELITE BARRIER ========

-- КНОПКА 45: delite barrier
local DeliteBarrierBtn = createGrayButton("DELITE BARRIER")
DeliteBarrierBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6FQBmY9U"))()
    print("Delite Barrier запущен")
end)

print("Добавлена кнопка: DELITE BARRIER (Всего 45 кнопок)")

-- КНОПКА 30: prison life
local PrisonLifeBtn = createGrayButton("Place PRISON LIFE")
PrisonLifeBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-Click-to-Kill-Undetected-Beta-61248"))()
    print("Prison Life запущен")
end)

-- КНОПКА 31: build a boat
local BuildBoatBtn = createGrayButton("Place BUILD A BOAT")
BuildBoatBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://api.luarmor.net/files/v3/loaders/49f02b0d8c1f60207c84ae76e12abc1e.lua'))()
    print("Build a Boat запущен")
end)

-- КНОПКА 32: mm2 key
local MM2KeyBtn = createGrayButton("Place MM2 KEY")
MM2KeyBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://api.overdrivehub.xyz/v1/auth"))()
    print("MM2 Key запущен")
end)

print("7 новых кнопок добавлены: DEATH NOTE, R6 ANIMATIONS, DEAD RAILS V3, РАСШИРЕНИЕ КУРТОК, PRISON LIFE, BUILD A BOAT, MM2 KEY")

-- ======== ДОБАВЛЕНИЕ КНОПКИ Place Tank Game ========

-- КНОПКА 34: Place Tank Game
local PlaceTankGameBtn = createGrayButton("PLACE TANK GAME")
PlaceTankGameBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/TankGame"))()
    print("Place Tank Game запущен")
end)

print("Добавлена кнопка: PLACE TANK GAME (Всего 34 кнопки)")

-- ======== ДОБАВЛЕНИЕ 3 НОВЫХ КНОПОК ========

-- КНОПКА 35: Place Da hood
local DaHoodBtn = createGrayButton("PLACE DA HOOD")
DaHoodBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://depso.pages.dev/Cracks/SwagMode.luau"))()
    print("Place Da Hood запущен")
end)

-- КНОПКА 36: убрать задержку
local NoCooldownBtn = createGrayButton("УБРАТЬ ЗАДЕРЖКУ")
NoCooldownBtn.MouseButton1Click:Connect(function()
    local w; w = hookfunction(wait, function(s) return w(0) end) 
    task.spawn(function() 
        while task.wait(0.1) do 
            for _,t in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                local c=t:FindFirstChild("CooldownTime") 
                local o=t:FindFirstChild("onCooldown") 
                if c then c.Value=0 end 
                if o then o.Value=false end 
            end 
            for _,t in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                local c=t:FindFirstChild("CooldownTime") 
                local o=t:FindFirstChild("onCooldown") 
                if c then c.Value=0 end 
                if o then o.Value=false end 
            end 
        end 
    end)
    print("Убрать задержку запущено")
end)

-- КНОПКА 37: ломает ИИ
local AiBreakerBtn = createGrayButton("ЛОМАЕТ ИИ")
AiBreakerBtn.MouseButton1Click:Connect(function()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local CombatEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("CombatRegister")
    local MobAiBreaker = true

    task.spawn(function()
        while true do
            if MobAiBreaker then
                local character = player.Character
                if character and character.PrimaryPart then
                    local args = {
                        [1] = {
                            [1] = "swingsfx",
                            [2] = "Melee",
                            [3] = 1,
                            [4] = "Ground",
                            [5] = false,
                            [6] = ReplicatedStorage.CombatAnimations.Melee.Punch1,
                            [7] = 2,
                            [8] = 5,
                            [9] = character.PrimaryPart.CFrame,
                        }
                    }

                    CombatEvent:InvokeServer(unpack(args))
                end
            end
            task.wait(0.2)
        end
    end)
    print("Ломает ИИ запущено")
end)

print("Добавлено 3 кнопки: PLACE DA HOOD, УБРАТЬ ЗАДЕРЖКУ, ЛОМАЕТ ИИ (Всего 37 кнопок)")

-- ======== ДОБАВЛЕНИЕ КНОПКИ ТЕХНИЧЕСКАЯ ПОДДЕРЖКА ========

-- КНОПКА 38: ТЕХНИЧЕСКАЯ ПОДДЕРЖКА
local SupportBtn = createGrayButton("ТЕХНИЧЕСКАЯ ПОДДЕРЖКА")
SupportBtn.MouseButton1Click:Connect(function()
    local PremiumPowerLib = {}

    function PremiumPowerLib:CreateWindow()
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        
        local CoreGui = game:GetService("CoreGui")
        local UserInputService = game:GetService("UserInputService")
        
        local oldGui = CoreGui:FindFirstChild("PremiumPowerSupport")
        if oldGui then
            oldGui:Destroy()
        end
        
        local ScreenGui = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local TextLabel = Instance.new("TextLabel")
        local SupportText = Instance.new("TextLabel")
        local CloseButton = Instance.new("TextButton")
        
        ScreenGui.Name = "PremiumPowerSupport"
        ScreenGui.Parent = CoreGui
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ScreenGui.ResetOnSpawn = false
        
        Frame.Name = "MainFrame"
        Frame.Parent = ScreenGui
        Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0.5, -250, 0.5, -125)
        Frame.Size = UDim2.new(0, 500, 0, 250)
        Frame.Active = true
        
        local dragging, dragInput, dragStart, startPos
        
        local function updateInput(input)
            local delta = input.Position - dragStart
            Frame.Position = UDim2.new(
                startPos.X.Scale, 
                startPos.X.Offset + delta.X,
                startPos.Y.Scale, 
                startPos.Y.Offset + delta.Y
            )
        end
        
        Frame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = Frame.Position
                
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
        
        Frame.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        
        UserInputService.InputChanged:Connect(function(input)
            if dragging and (input == dragInput) then
                updateInput(input)
            end
        end)
        
        TextLabel.Parent = Frame
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
        TextLabel.BackgroundTransparency = 0.5
        TextLabel.Size = UDim2.new(1, 0, 0, 40)
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.Text = "Техническая поддержка скрипта : PREMIUM POWER"
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 18
        TextLabel.TextWrapped = true
        
        CloseButton.Name = "CloseButton"
        CloseButton.Parent = Frame
        CloseButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
        CloseButton.BorderSizePixel = 0
        CloseButton.Position = UDim2.new(1, -35, 0, 5)
        CloseButton.Size = UDim2.new(0, 30, 0, 30)
        CloseButton.Font = Enum.Font.GothamBold
        CloseButton.Text = "X"
        CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        CloseButton.TextSize = 18
        CloseButton.MouseButton1Click:Connect(function()
            ScreenGui:Destroy()
        end)
        
        SupportText.Parent = Frame
        SupportText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SupportText.BackgroundTransparency = 1
        SupportText.Position = UDim2.new(0, 20, 0, 50)
        SupportText.Size = UDim2.new(1, -40, 1, -60)
        SupportText.Font = Enum.Font.Gotham
        SupportText.Text = "Здравствуйте пользователь данного скрипта, если у вас есть какие нибудь вопросы или вы хотите рассказать какие то баги, обращайтесь в поддержку в телеграмме юз @Ddboog\n\n(мы быстро исправим баги)"
        SupportText.TextColor3 = Color3.fromRGB(220, 220, 220)
        SupportText.TextSize = 16
        SupportText.TextWrapped = true
        SupportText.TextXAlignment = Enum.TextXAlignment.Left
        SupportText.TextYAlignment = Enum.TextYAlignment.Top
        
        ScreenGui.Enabled = true
    end

    PremiumPowerLib:CreateWindow()
    print("Окно технической поддержки открыто")
end)

print("Добавлена кнопка: ТЕХНИЧЕСКАЯ ПОДДЕРЖКА (Всего 38 кнопок)")
            
-- ======== ПЕРЕТАСКИВАНИЕ КНОПКИ МЕНЮ ========

local toggleDragging = false
local toggleDragInput, toggleStartPos, toggleDragStart

Toggle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        toggleDragging = true
        toggleDragStart = input.Position
        toggleStartPos = Toggle.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                toggleDragging = false
            end
        end)
    end
end)

Toggle.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch and toggleDragging then
        toggleDragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if toggleDragging and input == toggleDragInput then
        local delta = input.Position - toggleDragStart
        Toggle.Position = UDim2.new(
            toggleStartPos.X.Scale, 
            toggleStartPos.X.Offset + delta.X, 
            toggleStartPos.Y.Scale, 
            toggleStartPos.Y.Offset + delta.Y
        )
    end
end)

print("Кнопка меню теперь перетаскивается пальцем по экрану")

-- Открытие/закрытие с изменением иконки
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
    if Main.Visible then
        Toggle.Text = "🎉"
    else
        Toggle.Text = "🎮"
    end
end)

Close.MouseButton1Click:Connect(function()
    Main.Visible = false
    Toggle.Text = "🎮"
end)

print("Premium Power меню загружено. 11 кнопок доступно.")

-- ======== ДОБАВЛЕНИЕ КНОПКИ AURA SIT (NPC) ========

-- КНОПКА 41: Aura sit (NPC)
local AuraSitBtn = createGrayButton("AURA SIT (NPC)")
AuraSitBtn.MouseButton1Click:Connect(function()
    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")
    
    local localPlayer = Players.LocalPlayer
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "AuraSitGUI"
    screenGui.Parent = localPlayer:WaitForChild("PlayerGui")
    screenGui.ResetOnSpawn = false
    
    local toggleButton = Instance.new("TextButton")
    toggleButton.Size = UDim2.new(0, 120, 0, 50)
    toggleButton.Position = UDim2.new(0.5, -60, 0, 20)
    toggleButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleButton.Text = "SIT FORCE"
    toggleButton.Font = Enum.Font.GothamBold
    toggleButton.TextSize = 16
    toggleButton.BorderSizePixel = 0
    toggleButton.ZIndex = 10
    toggleButton.Parent = screenGui
    
    local dragging, dragInput, dragStart, startPos
    local function updateInput(input)
        local delta = input.Position - dragStart
        toggleButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    toggleButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = toggleButton.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    toggleButton.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input == dragInput or input.UserInputType == Enum.UserInputType.Touch) then
            updateInput(input)
        end
    end)
    
    local radius = 999
    
    local function forceSitAll()
        local character = localPlayer.Character
        if not character then return end
        local rootPart = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso")
        if not rootPart then return end
    
        for _, obj in ipairs(workspace:GetDescendants()) do
            if obj:IsA("Humanoid") and obj.Parent ~= character then
                local npcRoot = obj.Parent:FindFirstChild("HumanoidRootPart") or obj.Parent:FindFirstChild("UpperTorso") or obj.Parent:FindFirstChild("Torso")
                if npcRoot and (rootPart.Position - npcRoot.Position).Magnitude <= radius then
                    obj.Sit = true
                    obj.Jump = false
                    obj.PlatformStand = true
                end
            end
        end
    end
    
    toggleButton.MouseButton1Click:Connect(function()
        forceSitAll()
        toggleButton.Text = "SITTING..."
        task.wait(0.3)
        toggleButton.Text = "SIT FORCE"
    end)
    
    toggleButton.TouchLongPress:Connect(function()
        toggleButton.Text = "DRAG ME"
        task.wait(1)
        toggleButton.Text = "SIT FORCE"
    end)
    
    print("Aura Sit (NPC) запущен")
end)

print("Добавлена кнопка: AURA SIT (NPC) (Всего 41 кнопка)")

-- ======== ДОБАВЛЕНИЕ КНОПКИ KANTITOR ECECUTOR ========

-- КНОПКА 50: Kantitor Ecexutor
local KantitorBtn = createGrayButton("KANTITOR ECECUTOR")
KantitorBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XneD-crypto/Kantitor-ecexutor/refs/heads/main/experiment.lua"))()
    print("Kantitor Executor запущен")
end)

print("Добавлена кнопка: KANTITOR ECECUTOR (Всего 50 кнопок)")


-- ======== ДОБАВЛЕНИЕ КНОПКИ ПУСТЫЕ СЕРВЕРА ========

-- КНОПКА 43: пустые сервера
local EmptyServersBtn = createGrayButton("ПУСТЫЕ СЕРВЕРА")
EmptyServersBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XneD-crypto/empty-servers/refs/heads/main/player.lua"))()
    print("Скрипт 'Пустые сервера' запущен (проверьте работу ссылки)")
end)

print("Добавлена кнопка: ПУСТЫЕ СЕРВЕРА (Всего 43 кнопки)")