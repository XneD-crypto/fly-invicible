-- ========== ERROR 407 — PREMIUM EDITION ==========

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Error407Gui"
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999

-- Основное окно (стартует с нулевого размера, потом вырастет)
local Main = Instance.new("Frame")
Main.Name = "MainFrame"
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 0, 0, 0) -- начнём с нуля
Main.BackgroundColor3 = Color3.fromRGB(10, 10, 14)
Main.BorderSizePixel = 0
Main.Active = true
Main.ClipsDescendants = true
Main.Parent = ScreenGui

-- Скругление
local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 16)
MainCorner.Parent = Main

-- Обводка (красная, тонкая)
local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(255, 60, 60)
MainStroke.Thickness = 1.5
MainStroke.Transparency = 0.3
MainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainStroke.Parent = Main

-- Градиент фона
local BgGradient = Instance.new("UIGradient")
BgGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(15, 15, 20)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 5, 5)),
})
BgGradient.Rotation = 45
BgGradient.Parent = Main

-- Верхняя панель заголовка
local Header = Instance.new("Frame")
Header.Size = UDim2.new(1, 0, 0, 44)
Header.Position = UDim2.new(0, 0, 0, 0)
Header.BackgroundColor3 = Color3.fromRGB(25, 5, 5)
Header.BorderSizePixel = 0
Header.Parent = Main

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 16)
HeaderCorner.Parent = Header

-- Маскируем нижнюю часть заголовка, чтобы углы были только сверху
local HeaderFix = Instance.new("Frame")
HeaderFix.Size = UDim2.new(1, 0, 0.5, 0)
HeaderFix.Position = UDim2.new(0, 0, 0.5, 0)
HeaderFix.BackgroundColor3 = Color3.fromRGB(25, 5, 5)
HeaderFix.BorderSizePixel = 0
HeaderFix.Parent = Header

-- Иконка (красный кружок с крестом)
local IconDot = Instance.new("Frame")
IconDot.Size = UDim2.new(0, 16, 0, 16)
IconDot.Position = UDim2.new(0, 14, 0.5, -8)
IconDot.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
IconDot.BorderSizePixel = 0
IconDot.Parent = Header

local DotCorner = Instance.new("UICorner")
DotCorner.CornerRadius = UDim.new(1, 0)
DotCorner.Parent = IconDot

local DotGlow = Instance.new("UIStroke")
DotGlow.Color = Color3.fromRGB(255, 120, 120)
DotGlow.Thickness = 2
DotGlow.Transparency = 0.5
DotGlow.Parent = IconDot

-- Заголовок
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -50, 1, 0)
Title.Position = UDim2.new(0, 40, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "error 407"
Title.TextColor3 = Color3.fromRGB(255, 90, 90)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Center
Title.Parent = Header

-- Тонкая разделительная линия под заголовком
local Divider = Instance.new("Frame")
Divider.Size = UDim2.new(1, -24, 0, 1)
Divider.Position = UDim2.new(0, 12, 0, 44)
Divider.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
Divider.BackgroundTransparency = 0.6
Divider.BorderSizePixel = 0
Divider.Parent = Main

-- Контейнер текста
local Body = Instance.new("Frame")
Body.Size = UDim2.new(1, -24, 1, -70)
Body.Position = UDim2.new(0, 12, 0, 56)
Body.BackgroundTransparency = 1
Body.Parent = Main

-- Основной текст
local Message = Instance.new("TextLabel")
Message.Size = UDim2.new(1, 0, 1, 0)
Message.BackgroundTransparency = 1
Message.Text = "упс, походу вас нету в базе данных,\nвы не можете использовать скрипт"
Message.TextColor3 = Color3.fromRGB(230, 230, 230)
Message.Font = Enum.Font.Gotham
Message.TextSize = 15
Message.TextWrapped = true
Message.TextXAlignment = Enum.TextXAlignment.Center
Message.TextYAlignment = Enum.TextYAlignment.Center
Message.LineHeight = 1.2
Message.Parent = Body

-- Внутреннее свечение (мягкий красный отблеск)
local Glow = Instance.new("ImageLabel")
Glow.Size = UDim2.new(0, 200, 0, 200)
Glow.Position = UDim2.new(0.5, -100, 0.5, -100)
Glow.BackgroundTransparency = 1
Glow.Image = "rbxassetid://5028857084" -- мягкое свечение
Glow.ImageColor3 = Color3.fromRGB(255, 40, 40)
Glow.ImageTransparency = 0.85
Glow.ZIndex = 0
Glow.Parent = Main

-- ========== ПЛАВНОЕ ПОЯВЛЕНИЕ ==========
TweenService:Create(Main, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 250, 0, 200)
}):Play()

-- Мягкое пульсирование обводки
task.spawn(function()
    while Main.Parent do
        TweenService:Create(MainStroke, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
            Transparency = 0.75
        }):Play()
        task.wait(1.2)
        TweenService:Create(MainStroke, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
            Transparency = 0.3
        }):Play()
        task.wait(1.2)
    end
end)

-- ========== ПЕРЕТАСКИВАНИЕ (СЕНСОР + МЫШЬ) ==========
local dragging = false
local dragInput, dragStart, startPos

Header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch 
    or input.UserInputType == Enum.UserInputType.MouseButton1 then
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

Header.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch 
    or input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        local delta = input.Position - dragStart
        Main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

print("[ERROR 407] Интерфейс загружен.")
