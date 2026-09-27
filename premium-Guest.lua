-- ========== PREMIUM POWER (GUEST) — ПОЛНАЯ ВЕРСИЯ ==========
wait(1)

pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "POWER PREMIUM",
        Text = "Guest Edition | Amir7487",
        Duration = 5
    })
end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MainGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- Кнопка открытия/закрытия (30x30, чёрная, перетаскивается)
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

-- Меню 250x300
local Main = Instance.new("Frame")
Main.Name = "MainMenu"
Main.Size = UDim2.new(0, 250, 0, 300)
Main.Position = UDim2.new(0.5, -125, 0.5, -150)
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
Title.Text = "PREMIUM POWER (guest)"
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
    Btn.Size = UDim2.new(1, 0, 0, 34)
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

-- 1. Infinite Yield
local IYBtn = createGrayButton("INFINITE YIELD")
IYBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source', true))()
end)

-- 2. Слендер
local SlenderBtn = createGrayButton("СЛЕНДЕР")
SlenderBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/7Nv28tRE"))()
end)

-- 3. Телекинез
local TelekinesisBtn = createGrayButton("ТЕЛЕКИНЕЗ")
TelekinesisBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md', true))()
end)

-- 4. Grab Kill NPC
local GrabKillBtn = createGrayButton("GRAB KILL NPC")
GrabKillBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GUI-Offical/FileTest/refs/heads/main/Grab%20R6.txt", true))()
end)

-- 5. Чёрная дыра
local BlackHoleBtn = createGrayButton("ЧЕРНАЯ ДЫРА")
BlackHoleBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XneD-crypto/Scripts/refs/heads/main/BringParts"))()
end)

-- 6. Float
local FloatBtn = createGrayButton("FLOAT")
FloatBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
end)

-- 7. Noob Skin All
local NoobSkinBtn = createGrayButton("NOOB SKIN ALL")
NoobSkinBtn.MouseButton1Click:Connect(function()
    local function SendNotification(title, text)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = title, Text = text, Duration = 5
        })
    end
    SendNotification("Delta Injector", "Поиск всех ClickDetector...")

    if game:GetService("CoreGui"):FindFirstChild("PurchasePromptApp") then
        game:GetService("CoreGui").PurchasePromptApp:Destroy()
    end

    local allDetectors = {}
    for _, obj in pairs(game:GetService("Workspace"):GetDescendants()) do
        if obj:IsA("ClickDetector") then
            table.insert(allDetectors, obj)
        end
    end

    if #allDetectors == 0 then
        SendNotification("Delta Injector", "ClickDetector не найдены.")
        return
    end

    for i = 1, 20000 do
        for _, detector in ipairs(allDetectors) do
            fireclickdetector(detector)
        end
        if i % 30 == 1 then task.wait() end
    end
    SendNotification("Delta Injector", "Готово! 20000 циклов.")
end)

-- 8. Подсветка-unAnchored
local UnanchoredHighlightBtn = createGrayButton("ПОДСВЕТКА-UNANCHORED")
UnanchoredHighlightBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XneD-crypto/backlight-unAnchored/refs/heads/main/parts.lua"))()
end)

-- 9. Waypoints
local WaypointsBtn = createGrayButton("WAYPOINTS")
WaypointsBtn.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "WaypointGUI"
    screenGui.Parent = player.PlayerGui
    screenGui.ResetOnSpawn = false

    local button = Instance.new("ImageButton")
    button.Size = UDim2.new(0, 30, 0, 30)
    button.Position = UDim2.new(0.5, -15, 0.05, 0)
    button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    button.Active = true
    button.Draggable = true
    button.Parent = screenGui

    local uICorner = Instance.new("UICorner")
    uICorner.CornerRadius = UDim.new(1, 0)
    uICorner.Parent = button

    local waypointEnabled = false
    local currentWaypoint = nil

    local function createStationaryWaypoint()
        if currentWaypoint then currentWaypoint:Destroy() end
        if not player.Character then return end
        local hrp = player.Character:FindFirstChild("HumanoidRootPart")
        if not hrp then return end

        local anchor = Instance.new("Part")
        anchor.Anchored = true
        anchor.CanCollide = false
        anchor.Size = Vector3.new(0.1, 0.1, 0.1)
        anchor.Transparency = 1
        anchor.Position = hrp.Position
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
        distLabel.TextColor3 = Color3.new(1, 1, 1)
        distLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
        distLabel.TextStrokeTransparency = 0.2
        distLabel.TextSize = 18
        distLabel.Font = Enum.Font.GothamBold
        distLabel.Text = "0"
        distLabel.Parent = billboard

        task.spawn(function()
            while anchor and anchor.Parent do
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local dist = (player.Character.HumanoidRootPart.Position - anchor.Position).Magnitude
                    distLabel.Text = string.format("%d", math.floor(dist))
                end
                task.wait(0.1)
            end
        end)
        currentWaypoint = anchor
    end

    button.MouseButton1Click:Connect(function()
        waypointEnabled = not waypointEnabled
        if waypointEnabled then
            createStationaryWaypoint()
        else
            if currentWaypoint then currentWaypoint:Destroy(); currentWaypoint = nil end
        end
    end)
end)

-- 10. Control NPC v1
local ControlNPC1Btn = createGrayButton("CONTROL NPC V1")
ControlNPC1Btn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/qwertys/refs/heads/main/qwerty8.lua"))()
end)

-- 11. Leave Button
local LeaveBtn = createGrayButton("LEAVE BUTTON")
LeaveBtn.MouseButton1Click:Connect(function()
    local localPlayer = game.Players.LocalPlayer
    local gui = Instance.new("ScreenGui")
    gui.Parent = game.CoreGui
    gui.Name = "DeltaScript"

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 80, 0, 40)
    btn.Position = UDim2.new(0, 10, 0, 10)
    btn.BackgroundColor3 = Color3.new(0, 0, 0)
    btn.BorderColor3 = Color3.new(1, 1, 1)
    btn.BorderSizePixel = 2
    btn.Text = "LEAVE"
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.TextSize = 14
    btn.Draggable = true
    btn.Parent = gui

    btn.MouseButton1Click:Connect(function()
        localPlayer:Kick("Left by script")
    end)
end)

-- 12. Drop/Grab
local DropGrabBtn = createGrayButton("DROP/GRAB")
DropGrabBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jmhC0iGC"))()
end)

-- 13. Reset
local ResetBtn = createGrayButton("RESET")
ResetBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/fVHQ7iJA"))()
end)

-- 14. FPS-MS-Counter
local FpsMsBtn = createGrayButton("FPS-MS-COUNTER")
FpsMsBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XneD-crypto/Script/refs/heads/main/FPS/MS%25counter.lua"))()
end)

-- 15. Hitbox
local HitboxBtn = createGrayButton("HITBOX")
HitboxBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/bpcnrjE4"))()
end)

-- 16. ESP Inventory
local EspInvBtn = createGrayButton("ESP INVENTORY")
EspInvBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://paste.denizenscript.com/View/136336.txt", true))()
end)

-- 17. Auto Clicker
local AutoClickerBtn = createGrayButton("AUTO CLICKER")
AutoClickerBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/dWUXMmEj"))()
end)

-- 18. Invis
local InvisBtn = createGrayButton("INVIS")
InvisBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invisible-script-20557"))()
end)

-- 19. Death Note
local DeathNoteBtn = createGrayButton("DEATH NOTE")
DeathNoteBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet(('h'..'t'..'t'..'p'..'s'..':'..'/'..'/'..'p'..'a'..'s'..'t'..'e'..'f'..'y'..'.'..'a'..'pp'..'/'..'G'..'o'..'K'..'x'..'Y'..'B'..'k'..'U'..'/'..'r'..'a'..'w'), true))()
end)

-- 20. R6 Animations
local R6Btn = createGrayButton("R6 ANIMATIONS")
R6Btn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-R6-Animations-on-R15-16865"))()
end)

-- 21. Delite Barrier
local DeliteBarrierBtn = createGrayButton("DELITE BARRIER")
DeliteBarrierBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6FQBmY9U"))()
end)

-- 22. Prison Life
local PrisonLifeBtn = createGrayButton("PLACE PRISON LIFE")
PrisonLifeBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-Click-to-Kill-Undetected-Beta-61248"))()
end)

-- 23. Build a Boat
local BuildBoatBtn = createGrayButton("PLACE BUILD A BOAT")
BuildBoatBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://api.luarmor.net/files/v3/loaders/49f02b0d8c1f60207c84ae76e12abc1e.lua'))()
end)

-- 24. MM2 Key
local MM2KeyBtn = createGrayButton("PLACE MM2 KEY")
MM2KeyBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://api.overdrivehub.xyz/v1/auth"))()
end)

-- 25. Place Tank Game
local TankGameBtn = createGrayButton("PLACE TANK GAME")
TankGameBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/TankGame"))()
end)

-- 26. Place Da Hood
local DaHoodBtn = createGrayButton("PLACE DA HOOD")
DaHoodBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://depso.pages.dev/Cracks/SwagMode.luau"))()
end)

-- 27. Убрать задержку
local NoCooldownBtn = createGrayButton("УБРАТЬ ЗАДЕРЖКУ")
NoCooldownBtn.MouseButton1Click:Connect(function()
    local w; w = hookfunction(wait, function(s) return w(0) end)
    task.spawn(function()
        while task.wait(0.1) do
            for _, t in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                local c = t:FindFirstChild("CooldownTime")
                local o = t:FindFirstChild("onCooldown")
                if c then c.Value = 0 end
                if o then o.Value = false end
            end
            for _, t in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                local c = t:FindFirstChild("CooldownTime")
                local o = t:FindFirstChild("onCooldown")
                if c then c.Value = 0 end
                if o then o.Value = false end
            end
        end
    end)
end)

-- 28. Ломает ИИ
local AiBreakerBtn = createGrayButton("ЛОМАЕТ ИИ")
AiBreakerBtn.MouseButton1Click:Connect(function()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local player = game.Players.LocalPlayer
    local CombatEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("CombatRegister")

    task.spawn(function()
        while true do
            local character = player.Character
            if character and character.PrimaryPart then
                local args = {
                    [1] = {
                        [1] = "swingsfx", [2] = "Melee", [3] = 1, [4] = "Ground",
                        [5] = false, [6] = ReplicatedStorage.CombatAnimations.Melee.Punch1,
                        [7] = 2, [8] = 5, [9] = character.PrimaryPart.CFrame,
                    }
                }
                CombatEvent:InvokeServer(unpack(args))
            end
            task.wait(0.2)
        end
    end)
end)

-- 29. Техподдержка
local SupportBtn = createGrayButton("ТЕХНИЧЕСКАЯ ПОДДЕРЖКА")
SupportBtn.MouseButton1Click:Connect(function()
    local CoreGui = game:GetService("CoreGui")
    local old = CoreGui:FindFirstChild("PremiumPowerSupport")
    if old then old:Destroy() end

    local gui = Instance.new("ScreenGui")
    gui.Name = "PremiumPowerSupport"
    gui.Parent = CoreGui
    gui.ResetOnSpawn = false

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 400, 0, 200)
    frame.Position = UDim2.new(0.5, -200, 0.5, -100)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    frame.BorderSizePixel = 0
    frame.Active = true
    frame.Draggable = true
    frame.Parent = gui

    local c = Instance.new("UICorner", frame)
    c.CornerRadius = UDim.new(0, 10)

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 40)
    title.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
    title.BackgroundTransparency = 0.5
    title.Text = "Техническая поддержка PREMIUM POWER"
    title.TextColor3 = Color3.new(1, 1, 1)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 16
    title.Parent = frame

    local close = Instance.new("TextButton")
    close.Size = UDim2.new(0, 30, 0, 30)
    close.Position = UDim2.new(1, -35, 0, 5)
    close.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
    close.Text = "X"
    close.TextColor3 = Color3.new(1, 1, 1)
    close.Font = Enum.Font.GothamBold
    close.TextSize = 16
    close.Parent = frame
    close.MouseButton1Click:Connect(function() gui:Destroy() end)

    local text = Instance.new("TextLabel")
    text.Size = UDim2.new(1, -40, 1, -60)
    text.Position = UDim2.new(0, 20, 0, 50)
    text.BackgroundTransparency = 1
    text.Text = "По вопросам и багам: телеграм @Ddboog\n\n(мы быстро исправим баги)"
    text.TextColor3 = Color3.fromRGB(220, 220, 220)
    text.TextSize = 15
    text.TextWrapped = true
    text.TextXAlignment = Enum.TextXAlignment.Left
    text.TextYAlignment = Enum.TextYAlignment.Top
    text.Parent = frame
end)

-- 30. Aura Sit (NPC)
local AuraSitBtn = createGrayButton("AURA SIT (NPC)")
AuraSitBtn.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local gui = Instance.new("ScreenGui")
    gui.Parent = player:WaitForChild("PlayerGui")
    gui.ResetOnSpawn = false

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 120, 0, 50)
    btn.Position = UDim2.new(0.5, -60, 0, 20)
    btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    btn.Text = "SIT FORCE"
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 16
    btn.Parent = gui

    btn.MouseButton1Click:Connect(function()
        local char = player.Character
        if not char then return end
        local root = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso")
        if not root then return end

        for _, obj in ipairs(workspace:GetDescendants()) do
            if obj:IsA("Humanoid") and obj.Parent ~= char then
                local npcRoot = obj.Parent:FindFirstChild("HumanoidRootPart") or obj.Parent:FindFirstChild("Torso")
                if npcRoot and (root.Position - npcRoot.Position).Magnitude <= 999 then
                    obj.Sit = true
                    obj.Jump = false
                    obj.PlatformStand = true
                end
            end
        end
        btn.Text = "SITTING..."
        task.wait(0.3)
        btn.Text = "SIT FORCE"
    end)
end)

-- 31. Kantitor Executor
local KantitorBtn = createGrayButton("KANTITOR ECECUTOR")
KantitorBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XneD-crypto/Kantitor-ecexutor/refs/heads/main/experiment.lua"))()
end)

-- ========== ПЕРЕТАСКИВАНИЕ КНОПКИ МЕНЮ ==========
local tDrag = false
local tInput, tStart, tPos

Toggle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        tDrag = true
        tStart = input.Position
        tPos = Toggle.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                tDrag = false
            end
        end)
    end
end)

Toggle.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch and tDrag then
        tInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(fu
