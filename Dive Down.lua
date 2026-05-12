-- Obfuscated Script
local _={} local __=math.random local ___=string.char
local ____=table.insert local _____=pcall
local _uyrLwWs=732910; local _WckmmiW=532247; local _uyhpGcx=121931; local _GENqKBc=402585; local _iIGmwjG=379733; local _VSeBcCx=301166; local _KTjlfaj=774737; local _YkmCwgM=862188

if _G.DoveDown_KillSignal then
    _G.DoveDown_KillSignal:Fire()
    task.wait(0.6)
end

local KillSignal = Instance.new("BindableEvent")
_G.DoveDown_KillSignal = KillSignal
local SCRIPT_ALIVE = true
KillSignal.Event:Connect(function() SCRIPT_ALIVE = false end)

local Players          = game:GetService("Players")
local RunService       = game:GetService("RunService")
local TweenService     = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui          = game:GetService("CoreGui")
local LocalPlayer      = Players.LocalPlayer

task.delay(1, function()
    pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Packets")
            :WaitForChild("Packet"):WaitForChild("RemoteEvent")
            :FireServer(buffer.fromstring(string.char(7)))
    end)
end)

local Themes = {
    ["Abyss"] = {
        bg        = Color3.fromRGB(10,  10,  12),
        surface   = Color3.fromRGB(17,  17,  21),
        surface2  = Color3.fromRGB(24,  24,  30),
        surface3  = Color3.fromRGB(32,  32,  42),
        border    = Color3.fromRGB(42,  42,  54),
        accent    = Color3.fromRGB(124, 111, 255),
        accent2   = Color3.fromRGB(165, 148, 255),
        accentDim = Color3.fromRGB(42,  36,  64),
        text      = Color3.fromRGB(232, 230, 240),
        text2     = Color3.fromRGB(136, 132, 160),
        text3     = Color3.fromRGB(90,  88, 112),
        on        = Color3.fromRGB(95,  255, 176),
        off       = Color3.fromRGB(37,  37,  50),
        knob      = Color3.fromRGB(232, 230, 240),
        stripe    = Color3.fromRGB(124, 111, 255),
    },
    ["Neon City"] = {
        bg        = Color3.fromRGB(5,   5,  12),
        surface   = Color3.fromRGB(9,   9,  22),
        surface2  = Color3.fromRGB(13,  13,  32),
        surface3  = Color3.fromRGB(20,  20,  42),
        border    = Color3.fromRGB(30,  30,  74),
        accent    = Color3.fromRGB(0,  220, 255),
        accent2   = Color3.fromRGB(96, 238, 255),
        accentDim = Color3.fromRGB(0,   61,  80),
        text      = Color3.fromRGB(200, 240, 255),
        text2     = Color3.fromRGB(80, 112, 144),
        text3     = Color3.fromRGB(48,  69,  96),
        on        = Color3.fromRGB(0,  220, 255),
        off       = Color3.fromRGB(30,  30,  74),
        knob      = Color3.fromRGB(200, 240, 255),
        stripe    = Color3.fromRGB(180,   0, 255),
    },
    ["Blood Moon"] = {
        bg        = Color3.fromRGB(12,   4,   4),
        surface   = Color3.fromRGB(22,   8,   8),
        surface2  = Color3.fromRGB(32,  12,  12),
        surface3  = Color3.fromRGB(40,  14,  14),
        border    = Color3.fromRGB(80,  18,  18),
        accent    = Color3.fromRGB(255,  45,  45),
        accent2   = Color3.fromRGB(255, 100, 100),
        accentDim = Color3.fromRGB(110,  16,  16),
        text      = Color3.fromRGB(255, 215, 215),
        text2     = Color3.fromRGB(160,  80,  80),
        text3     = Color3.fromRGB(112,  64,  64),
        on        = Color3.fromRGB(255,  55,  55),
        off       = Color3.fromRGB(80,  18,  18),
        knob      = Color3.fromRGB(255, 215, 215),
        stripe    = Color3.fromRGB(255,  45,  45),
    },
    ["Candy Pop"] = {
        bg        = Color3.fromRGB(16,   8,  22),
        surface   = Color3.fromRGB(24,  16,  36),
        surface2  = Color3.fromRGB(32,  20,  58),
        surface3  = Color3.fromRGB(40,  24,  80),
        border    = Color3.fromRGB(88,  36, 122),
        accent    = Color3.fromRGB(215,  70, 255),
        accent2   = Color3.fromRGB(233, 122, 255),
        accentDim = Color3.fromRGB(100,  28, 138),
        text      = Color3.fromRGB(255, 215, 255),
        text2     = Color3.fromRGB(170, 120, 195),
        text3     = Color3.fromRGB(122,  72, 147),
        on        = Color3.fromRGB(215,  70, 255),
        off       = Color3.fromRGB(88,  36, 122),
        knob      = Color3.fromRGB(255, 215, 255),
        stripe    = Color3.fromRGB(255,  80, 200),
    },
    ["Gold Rush"] = {
        bg        = Color3.fromRGB(12,   9,   3),
        surface   = Color3.fromRGB(22,  19,   6),
        surface2  = Color3.fromRGB(30,  24,   9),
        surface3  = Color3.fromRGB(38,  30,  12),
        border    = Color3.fromRGB(88,  64,  14),
        accent    = Color3.fromRGB(255, 185,  25),
        accent2   = Color3.fromRGB(255, 208,  96),
        accentDim = Color3.fromRGB(125,  90,   9),
        text      = Color3.fromRGB(255, 238, 215),
        text2     = Color3.fromRGB(190, 160,  88),
        text3     = Color3.fromRGB(122,  96,  48),
        on        = Color3.fromRGB(255, 185,  25),
        off       = Color3.fromRGB(88,  64,  14),
        knob      = Color3.fromRGB(255, 238, 215),
        stripe    = Color3.fromRGB(255, 185,  25),
    },
    ["Arctic"] = {
        bg        = Color3.fromRGB(7,  11,  17),
        surface   = Color3.fromRGB(13,  20,  32),
        surface2  = Color3.fromRGB(19,  30,  48),
        surface3  = Color3.fromRGB(25,  40,  64),
        border    = Color3.fromRGB(48,  76, 118),
        accent    = Color3.fromRGB(125, 215, 255),
        accent2   = Color3.fromRGB(170, 232, 255),
        accentDim = Color3.fromRGB(38,  98, 148),
        text      = Color3.fromRGB(205, 240, 255),
        text2     = Color3.fromRGB(115, 165, 205),
        text3     = Color3.fromRGB(67, 101, 133),
        on        = Color3.fromRGB(125, 215, 255),
        off       = Color3.fromRGB(48,  76, 118),
        knob      = Color3.fromRGB(205, 240, 255),
        stripe    = Color3.fromRGB(125, 215, 255),
    },
    ["Stealth"] = {
        bg        = Color3.fromRGB(7,   7,   7),
        surface   = Color3.fromRGB(13,  13,  13),
        surface2  = Color3.fromRGB(21,  21,  21),
        surface3  = Color3.fromRGB(29,  29,  29),
        border    = Color3.fromRGB(48,  48,  48),
        accent    = Color3.fromRGB(195, 195, 195),
        accent2   = Color3.fromRGB(224, 224, 224),
        accentDim = Color3.fromRGB(75,  75,  75),
        text      = Color3.fromRGB(228, 228, 228),
        text2     = Color3.fromRGB(132, 132, 132),
        text3     = Color3.fromRGB(84,  84,  84),
        on        = Color3.fromRGB(195, 195, 195),
        off       = Color3.fromRGB(48,  48,  48),
        knob      = Color3.fromRGB(228, 228, 228),
        stripe    = Color3.fromRGB(175, 175, 175),
    },
    ["Sunset"] = {
        bg        = Color3.fromRGB(14,   7,  10),
        surface   = Color3.fromRGB(24,  12,  18),
        surface2  = Color3.fromRGB(34,  16,  26),
        surface3  = Color3.fromRGB(44,  20,  34),
        border    = Color3.fromRGB(90,  38,  56),
        accent    = Color3.fromRGB(255,  90, 130),
        accent2   = Color3.fromRGB(255, 138, 170),
        accentDim = Color3.fromRGB(120,  32,  55),
        text      = Color3.fromRGB(255, 215, 225),
        text2     = Color3.fromRGB(175, 110, 130),
        text3     = Color3.fromRGB(127,  72,  87),
        on        = Color3.fromRGB(255,  90, 130),
        off       = Color3.fromRGB(90,  38,  56),
        knob      = Color3.fromRGB(255, 215, 225),
        stripe    = Color3.fromRGB(255, 100,  80),
    },
    ["Forest"] = {
        bg        = Color3.fromRGB(6,  10,   7),
        surface   = Color3.fromRGB(10,  18,  12),
        surface2  = Color3.fromRGB(16,  26,  18),
        surface3  = Color3.fromRGB(22,  34,  26),
        border    = Color3.fromRGB(32,  65,  40),
        accent    = Color3.fromRGB(75,  200,  95),
        accent2   = Color3.fromRGB(125, 224, 142),
        accentDim = Color3.fromRGB(28,  80,  40),
        text      = Color3.fromRGB(195, 240, 202),
        text2     = Color3.fromRGB(95,  145, 104),
        text3     = Color3.fromRGB(63,  97,  72),
        on        = Color3.fromRGB(75,  200,  95),
        off       = Color3.fromRGB(32,  65,  40),
        knob      = Color3.fromRGB(195, 240, 202),
        stripe    = Color3.fromRGB(75,  200,  95),
    },
    ["Void"] = {
        bg        = Color3.fromRGB(3,   3,   5),
        surface   = Color3.fromRGB(8,   6,  20),
        surface2  = Color3.fromRGB(14,  10,  30),
        surface3  = Color3.fromRGB(20,  14,  40),
        border    = Color3.fromRGB(45,  32,  68),
        accent    = Color3.fromRGB(150,  80, 255),
        accent2   = Color3.fromRGB(184, 120, 255),
        accentDim = Color3.fromRGB(65,  28, 115),
        text      = Color3.fromRGB(220, 205, 245),
        text2     = Color3.fromRGB(110,  88, 170),
        text3     = Color3.fromRGB(74,  56, 120),
        on        = Color3.fromRGB(150,  80, 255),
        off       = Color3.fromRGB(45,  32,  68),
        knob      = Color3.fromRGB(220, 205, 245),
        stripe    = Color3.fromRGB(150,  80, 255),
    },
    ["Rose Gold"] = {
        bg        = Color3.fromRGB(14,  10,  10),
        surface   = Color3.fromRGB(24,  16,  16),
        surface2  = Color3.fromRGB(34,  22,  22),
        surface3  = Color3.fromRGB(44,  28,  28),
        border    = Color3.fromRGB(95,  62,  62),
        accent    = Color3.fromRGB(220, 150, 140),
        accent2   = Color3.fromRGB(240, 180, 174),
        accentDim = Color3.fromRGB(105,  62,  58),
        text      = Color3.fromRGB(255, 230, 225),
        text2     = Color3.fromRGB(175, 130, 125),
        text3     = Color3.fromRGB(127,  88,  84),
        on        = Color3.fromRGB(220, 150, 140),
        off       = Color3.fromRGB(95,  62,  62),
        knob      = Color3.fromRGB(255, 230, 225),
        stripe    = Color3.fromRGB(220, 150, 140),
    },
    ["Toxic Waste"] = {
        bg        = Color3.fromRGB(6,  12,   6),
        surface   = Color3.fromRGB(10,  20,  10),
        surface2  = Color3.fromRGB(16,  28,  16),
        surface3  = Color3.fromRGB(22,  36,  22),
        border    = Color3.fromRGB(28,  60,  28),
        accent    = Color3.fromRGB(40,  255,  70),
        accent2   = Color3.fromRGB(100, 255, 122),
        accentDim = Color3.fromRGB(18,  100,  33),
        text      = Color3.fromRGB(190, 255, 168),
        text2     = Color3.fromRGB(80,  150,  42),
        text3     = Color3.fromRGB(48,  102,  26),
        on        = Color3.fromRGB(40,  255,  70),
        off       = Color3.fromRGB(28,  60,  28),
        knob      = Color3.fromRGB(190, 255, 168),
        stripe    = Color3.fromRGB(40,  255,  70),
    },
}

local ThemeOrder = {
    "Abyss","Neon City","Blood Moon","Candy Pop","Gold Rush","Arctic",
    "Stealth","Sunset","Forest","Void","Rose Gold","Toxic Waste"
}

local T = {}
for k,v in pairs(Themes["Abyss"]) do T[k]=v end

local Registry = {}

local function Reg(obj, prop, key)
    table.insert(Registry, {obj=obj, prop=prop, key=key})
    obj[prop] = T[key]
end

local function Tw(obj, props, t, style, dir)
    if not obj or not obj.Parent then return end
    TweenService:Create(obj,
        TweenInfo.new(t or 0.18, style or Enum.EasingStyle.Quart, dir or Enum.EasingDirection.Out),
        props):Play()
end

local function TwSpring(obj, props)
    if not obj or not obj.Parent then return end
    TweenService:Create(obj,
        TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        props):Play()
end

local function New(cls, props, children)
    local o = Instance.new(cls)
    for k,v in pairs(props or {}) do
        pcall(function() o[k]=v end)
    end
    for _,c in ipairs(children or {}) do c.Parent=o end
    return o
end

local function Corner(r) return New("UICorner",{CornerRadius=UDim.new(0,r or 8)}) end
local function Pad(t,b,l,r) return New("UIPadding",{
    PaddingTop=UDim.new(0,t),PaddingBottom=UDim.new(0,b),
    PaddingLeft=UDim.new(0,l),PaddingRight=UDim.new(0,r)
}) end

local function Stroke(obj, _JksPzt, thick)
    local s = New("UIStroke",{Color=_JksPzt or T.border, Thickness=thick or 1})
    s.Parent=obj; return s
end

local function ZeroVel(hrp)
    pcall(function()
        hrp.AssemblyLinearVelocity  = Vector3.zero
        hrp.AssemblyAngularVelocity = Vector3.zero
    end)
end

local DiveDown = {}
DiveDown.__index = DiveDown

function DiveDown:CreateWindow(cfg)
    local W = {Tabs={}, ActiveTab=nil, Flags={}, SearchIndex={}}
    W.ToggleKey = cfg.ToggleKey and Enum.KeyCode[cfg.ToggleKey] or Enum.KeyCode.K

    local Screen = New("ScreenGui",{
        Name="DiveDown_UI", ResetOnSpawn=false,
        ZIndexBehavior=Enum.ZIndexBehavior.Sibling, DisplayOrder=999
    })
    pcall(function() Screen.Parent=CoreGui end)
    if Screen.Parent~=CoreGui then Screen.Parent=LocalPlayer:WaitForChild("PlayerGui") end
    W.Screen=Screen

    local BgDim = New("Frame",{
        Name="BgDim", Size=UDim2.new(1,0,1,0),
        BackgroundColor3=Color3.fromRGB(0,0,0),
        BackgroundTransparency=1, BorderSizePixel=0, ZIndex=0,
    })
    BgDim.Parent=Screen

    local W_W, W_H = 640, 420
    local Main = New("Frame",{
        Name="Main", Size=UDim2.new(0,W_W,0,0),
        Position=UDim2.new(0.5,-(W_W/2),0.5,-(W_H/2)),
        BackgroundColor3=T.bg, BorderSizePixel=0,
        ClipsDescendants=true, BackgroundTransparency=1,
    },{Corner(14)})
    Main.Parent=Screen
    Reg(Main,"BackgroundColor3","bg")

    local mainStroke = Stroke(Main, T.border, 1)
    table.insert(Registry,{obj=mainStroke, prop="Color", key="border"})

    task.defer(function()
        Tw(Main, {Size=UDim2.new(0,W_W,0,W_H), BackgroundTransparency=0},
            0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
        Tw(BgDim, {BackgroundTransparency=0.84}, 0.35)
    end)

    local Stripe = New("Frame",{
        Size=UDim2.new(1,0,0,2), Position=UDim2.new(0,0,0,0),
        BackgroundColor3=T.stripe, BorderSizePixel=0, ZIndex=8,
    })
    Stripe.Parent=Main
    Reg(Stripe,"BackgroundColor3","stripe")

    local ShimmerBar = New("Frame",{
        Size=UDim2.new(0.3,0,1,0), Position=UDim2.new(-0.4,0,0,0),
        BackgroundColor3=Color3.fromRGB(255,255,255),
        BackgroundTransparency=0.55, BorderSizePixel=0, ZIndex=9,
    },{Corner(1)})
    ShimmerBar.Parent=Stripe

    task.spawn(function()
        while SCRIPT_ALIVE do
            Tw(ShimmerBar,{Position=UDim2.new(1.1,0,0,0),BackgroundTransparency=0.55},1.4,Enum.EasingStyle.Sine)
            task.wait(1.5)
            ShimmerBar.Position=UDim2.new(-0.4,0,0,0)
            ShimmerBar.BackgroundTransparency=0.55
            task.wait(2.5)
        end
    end)

    local Header = New("Frame",{
        Size=UDim2.new(1,0,0,46), Position=UDim2.new(0,0,0,2),
        BackgroundColor3=T.surface, BorderSizePixel=0, ZIndex=6,
    })
    Header.Parent=Main
    Reg(Header,"BackgroundColor3","surface")

    local headerStroke = Stroke(Header, T.border, 1)
    table.insert(Registry,{obj=headerStroke, prop="Color", key="border"})

    local LogoMark = New("Frame",{
        Size=UDim2.new(0,26,0,26),
        Position=UDim2.new(0,14,0.5,-13),
        BackgroundColor3=T.accent, BorderSizePixel=0, ZIndex=7,
        Rotation=45,
    },{Corner(4)})
    LogoMark.Parent=Header
    Reg(LogoMark,"BackgroundColor3","accent")

    local LogoInner = New("Frame",{
        Size=UDim2.new(0,12,0,12),
        Position=UDim2.new(0.5,-6,0.5,-6),
        BackgroundColor3=Color3.fromRGB(255,255,255),
        BackgroundTransparency=0.3, BorderSizePixel=0, ZIndex=8,
    },{Corner(2)})
    LogoInner.Parent=LogoMark

    local TitleLbl = New("TextLabel",{
        Text=cfg.Title or "DIVEDOWN",
        TextSize=13, Font=Enum.Font.GothamBold,
        TextColor3=T.text, BackgroundTransparency=1,
        Size=UDim2.new(0,160,0,18),
        Position=UDim2.new(0,48,0.5,-14),
        TextXAlignment=Enum.TextXAlignment.Left, ZIndex=7,
    })
    TitleLbl.Parent=Header
    Reg(TitleLbl,"TextColor3","text")

    local SubLbl = New("TextLabel",{
        Text="press ["..W.ToggleKey.Name.."] to toggle",
        TextSize=9, Font=Enum.Font.Code,
        TextColor3=T.text3, BackgroundTransparency=1,
        Size=UDim2.new(0,180,0,12),
        Position=UDim2.new(0,48,0.5,4),
        TextXAlignment=Enum.TextXAlignment.Left, ZIndex=7,
    })
    SubLbl.Parent=Header
    Reg(SubLbl,"TextColor3","text3")
    W.SubLbl=SubLbl

    local StatusPill = New("Frame",{
        Size=UDim2.new(0,72,0,22),
        Position=UDim2.new(1,-90,0.5,-11),
        BackgroundColor3=Color3.fromRGB(10,30,18),
        BorderSizePixel=0, ZIndex=7,
    },{Corner(11)})
    StatusPill.Parent=Header
    Stroke(StatusPill, T.on, 1).Parent=StatusPill

    local StatusDot = New("Frame",{
        Size=UDim2.new(0,5,0,5),
        Position=UDim2.new(0,8,0.5,-2),
        BackgroundColor3=T.on, BorderSizePixel=0, ZIndex=8,
    },{Corner(3)})
    StatusDot.Parent=StatusPill
    Reg(StatusDot,"BackgroundColor3","on")

    local StatusTxt = New("TextLabel",{
        Text="ACTIVE", TextSize=9, Font=Enum.Font.GothamBold,
        TextColor3=T.on, BackgroundTransparency=1,
        Size=UDim2.new(1,-20,1,0), Position=UDim2.new(0,18,0,0),
        TextXAlignment=Enum.TextXAlignment.Left, ZIndex=8,
    })
    StatusTxt.Parent=StatusPill
    Reg(StatusTxt,"TextColor3","on")

    task.spawn(function()
        while SCRIPT_ALIVE do
            Tw(StatusDot,{BackgroundTransparency=0.8},0.7)
            task.wait(0.7)
            Tw(StatusDot,{BackgroundTransparency=0},0.7)
            task.wait(0.7)
        end
    end)

    local CloseBtn = New("TextButton",{
        Text="×", TextSize=16, Font=Enum.Font.GothamBold,
        TextColor3=T.text3, BackgroundColor3=T.surface2,
        Size=UDim2.new(0,24,0,24),
        Position=UDim2.new(1,-36,0.5,-12),
        BorderSizePixel=0, ZIndex=7, AutoButtonColor=false,
    },{Corner(12)})
    CloseBtn.Parent=Header
    Reg(CloseBtn,"BackgroundColor3","surface2")
    Reg(CloseBtn,"TextColor3","text3")

    CloseBtn.MouseEnter:Connect(function()
        Tw(CloseBtn,{BackgroundColor3=Color3.fromRGB(120,30,30),TextColor3=Color3.fromRGB(255,100,100)},0.12)
    end)
    CloseBtn.MouseLeave:Connect(function()
        Tw(CloseBtn,{BackgroundColor3=T.surface2,TextColor3=T.text3},0.12)
    end)

    local dragging,dStart,dPos=false,nil,nil
    Header.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 then
            dragging=true; dStart=i.Position; dPos=Main.Position
        end
    end)
    UserInputService.InputChanged:Connect(function(i)
        if dragging and i.UserInputType==Enum.UserInputType.MouseMovement then
            local d=i.Position-dStart
            Main.Position=UDim2.new(dPos.X.Scale,dPos.X.Offset+d.X,dPos.Y.Scale,dPos.Y.Offset+d.Y)
        end
    end)
    UserInputService.InputEnded:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 then dragging=false end
    end)

    local resizing,rStart,rSize=false,nil,nil
    local ResizeCorner = New("TextLabel",{
        Text="⠿", TextSize=12,
        TextColor3=T.text3, BackgroundTransparency=1,
        Size=UDim2.new(0,18,0,18),
        Position=UDim2.new(1,-20,1,-20),
        ZIndex=20,
    })
    ResizeCorner.Parent=Main
    Reg(ResizeCorner,"TextColor3","text3")
    ResizeCorner.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 then
            resizing=true; rStart=i.Position; rSize=Main.AbsoluteSize
        end
    end)
    UserInputService.InputChanged:Connect(function(i)
        if resizing and i.UserInputType==Enum.UserInputType.MouseMovement then
            local d=i.Position-rStart
            Main.Size=UDim2.new(0,math.max(480,rSize.X+d.X),0,math.max(320,rSize.Y+d.Y))
        end
    end)
    UserInputService.InputEnded:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 then resizing=false end
    end)

    local Body = New("Frame",{
        Size=UDim2.new(1,0,1,-48), Position=UDim2.new(0,0,0,48),
        BackgroundTransparency=1, BorderSizePixel=0,
    })
    Body.Parent=Main

    local Sidebar = New("Frame",{
        Size=UDim2.new(0,136,1,0), Position=UDim2.new(0,0,0,0),
        BackgroundColor3=T.surface, BorderSizePixel=0,
    })
    Sidebar.Parent=Body
    Reg(Sidebar,"BackgroundColor3","surface")

    local sideStroke = Stroke(Sidebar, T.border, 1)
    table.insert(Registry,{obj=sideStroke, prop="Color", key="border"})

    local SearchWrap = New("Frame",{
        Size=UDim2.new(1,-16,0,28), Position=UDim2.new(0,8,0,8),
        BackgroundColor3=T.surface2, BorderSizePixel=0, ZIndex=10,
    },{Corner(8)})
    SearchWrap.Parent=Sidebar
    Reg(SearchWrap,"BackgroundColor3","surface2")
    local searchStroke = Stroke(SearchWrap, T.border, 1)
    table.insert(Registry,{obj=searchStroke, prop="Color", key="border"})

    local SearchIcon = New("TextLabel",{
        Text="⌕", TextSize=11, Font=Enum.Font.GothamBold,
        TextColor3=T.text3, BackgroundTransparency=1,
        Size=UDim2.new(0,22,1,0), ZIndex=11,
        TextXAlignment=Enum.TextXAlignment.Center,
    })
    SearchIcon.Parent=SearchWrap
    Reg(SearchIcon,"TextColor3","text3")

    local SearchBox = New("TextBox",{
        Text="", PlaceholderText="Search...",
        TextSize=11, Font=Enum.Font.Gotham,
        TextColor3=T.text, PlaceholderColor3=T.text3,
        BackgroundTransparency=1,
        Size=UDim2.new(1,-24,1,0), Position=UDim2.new(0,22,0,0),
        TextXAlignment=Enum.TextXAlignment.Left,
        ClearTextOnFocus=false, ZIndex=11,
    })
    SearchBox.Parent=SearchWrap
    Reg(SearchBox,"TextColor3","text")
    Reg(SearchBox,"PlaceholderColor3","text3")

    SearchBox.Focused:Connect(function()
        Tw(SearchWrap,{BackgroundColor3=T.surface3},0.12)
        Tw(searchStroke,{Color=T.accent},0.12)
    end)
    SearchBox.FocusLost:Connect(function()
        Tw(SearchWrap,{BackgroundColor3=T.surface2},0.12)
        Tw(searchStroke,{Color=T.border},0.12)
    end)

    local TabList = New("ScrollingFrame",{
        Size=UDim2.new(1,0,1,-46), Position=UDim2.new(0,0,0,46),
        BackgroundTransparency=1, BorderSizePixel=0,
        ScrollBarThickness=0,
        CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y,
    })
    TabList.Parent=Sidebar
    New("UIListLayout",{Padding=UDim.new(0,2),SortOrder=Enum.SortOrder.LayoutOrder}).Parent=TabList
    Pad(4,4,6,6).Parent=TabList

    local SRFrame = New("ScrollingFrame",{
        Size=UDim2.new(1,0,1,-46), Position=UDim2.new(0,0,0,46),
        BackgroundTransparency=1, BorderSizePixel=0,
        ScrollBarThickness=2, ScrollBarImageColor3=T.accent,
        CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y,
        Visible=false, ZIndex=15,
    })
    SRFrame.Parent=Sidebar
    New("UIListLayout",{Padding=UDim.new(0,2)}).Parent=SRFrame
    Pad(4,4,4,4).Parent=SRFrame
    Reg(SRFrame,"ScrollBarImageColor3","accent")

    local function RebuildSearch(q)
        for _,c in pairs(SRFrame:GetChildren()) do
            if c:IsA("TextButton") or c:IsA("Frame") then c:Destroy() end
        end
        if q=="" then SRFrame.Visible=false; TabList.Visible=true; return end
        SRFrame.Visible=true; TabList.Visible=false
        local _BrtdJu=q:lower(); local matches={}
        for _,e in ipairs(W.SearchIndex) do
            if e.name:lower():find(_BrtdJu,1,true) then table.insert(matches,e) end
        end
        if #matches==0 then
            local _PJxzzx=New("TextLabel",{
                Text="No results", TextSize=10, Font=Enum.Font.Gotham,
                TextColor3=T.text3, BackgroundTransparency=1,
                Size=UDim2.new(1,0,0,30), TextXAlignment=Enum.TextXAlignment.Center, ZIndex=16,
            })
            _PJxzzx.Parent=SRFrame
            Reg(_PJxzzx,"TextColor3","text3")
            return
        end
        for _,e in ipairs(matches) do
            local R=New("Frame",{
                Size=UDim2.new(1,0,0,42), BackgroundColor3=T.surface2,
                BorderSizePixel=0, ZIndex=16,
            },{Corner(6)})
            R.Parent=SRFrame
            Reg(R,"BackgroundColor3","surface2")
            Stroke(R, T.border, 1).Parent=R
            New("TextLabel",{
                Text=e.name, TextSize=11, Font=Enum.Font.GothamBold,
                TextColor3=T.text, BackgroundTransparency=1,
                Size=UDim2.new(1,-8,0,16), Position=UDim2.new(0,8,0,5),
                TextXAlignment=Enum.TextXAlignment.Left,
                TextTruncate=Enum.TextTruncate.AtEnd, ZIndex=17,
            }).Parent=R
            New("TextLabel",{
                Text=e.tabName, TextSize=9, Font=Enum.Font.Code,
                TextColor3=T.accent, BackgroundTransparency=1,
                Size=UDim2.new(1,-8,0,12), Position=UDim2.new(0,8,0,24),
                TextXAlignment=Enum.TextXAlignment.Left, ZIndex=17,
            }).Parent=R
            local Btn=New("TextButton",{Text="",Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,ZIndex=18})
            Btn.Parent=R
            Btn.MouseEnter:Connect(function() Tw(R,{BackgroundColor3=T.surface3},0.1) end)
            Btn.MouseLeave:Connect(function() Tw(R,{BackgroundColor3=T.surface2},0.1) end)
            local _YwYuUL=e
            Btn.MouseButton1Click:Connect(function()
                SearchBox.Text=""; SRFrame.Visible=false; TabList.Visible=true
                if _YwYuUL.activate then _YwYuUL.activate() end
            end)
        end
    end
    SearchBox:GetPropertyChangedSignal("Text"):Connect(function() RebuildSearch(SearchBox.Text) end)

    local Content = New("Frame",{
        Size=UDim2.new(1,-136,1,0), Position=UDim2.new(0,136,0,0),
        BackgroundTransparency=1, BorderSizePixel=0, ClipsDescendants=true,
    })
    Content.Parent=Body
    W.Content=Content

    local visible=true; local toggling=false

    local function OpenWindow()
        if toggling then return end; toggling=true
        Main.Visible=true
        local w=Main.AbsoluteSize.X>100 and Main.AbsoluteSize.X or W_W
        Tw(Main,{Size=UDim2.new(0,w,0,W_H),BackgroundTransparency=0},0.32,Enum.EasingStyle.Back,Enum.EasingDirection.Out)
        Tw(BgDim,{BackgroundTransparency=0.84},0.28)
        task.delay(0.34,function() toggling=false end)
    end

    local function CloseWindow()
        if toggling then return end; toggling=true
        local w=Main.AbsoluteSize.X
        Tw(Main,{BackgroundTransparency=1,Size=UDim2.new(0,w,0,0)},0.26,Enum.EasingStyle.Quart,Enum.EasingDirection.In)
        Tw(BgDim,{BackgroundTransparency=1},0.22)
        task.delay(0.28,function() Main.Visible=false; toggling=false end)
    end

    CloseBtn.MouseButton1Click:Connect(function()
        visible=not visible
        if visible then OpenWindow() else CloseWindow() end
    end)

    UserInputService.InputBegan:Connect(function(i,gp)
        if gp or not SCRIPT_ALIVE then return end
        if i.KeyCode==W.ToggleKey then
            visible=not visible
            if visible then OpenWindow() else CloseWindow() end
        end
    end)

    local NotifHolder = New("Frame",{
        Size=UDim2.new(0,240,1,0), Position=UDim2.new(1,-252,0,0),
        BackgroundTransparency=1, ZIndex=200,
    })
    NotifHolder.Parent=Screen
    New("UIListLayout",{
        Padding=UDim.new(0,6),
        VerticalAlignment=Enum.VerticalAlignment.Bottom,
        SortOrder=Enum.SortOrder.LayoutOrder,
    }).Parent=NotifHolder
    Pad(0,14,0,0).Parent=NotifHolder

    W.Notify = function(_, title, desc, dur)
        local _JjTskp=New("Frame",{
            Size=UDim2.new(1,0,0,0),
            BackgroundColor3=T.surface2, BorderSizePixel=0,
            BackgroundTransparency=1, ZIndex=201, ClipsDescendants=true,
        },{Corner(10)})
        local nfStroke=Stroke(_JjTskp,T.accent,1); nfStroke.Parent=_JjTskp
        Pad(10,10,14,12).Parent=_JjTskp
        local Bar=New("Frame",{
            Size=UDim2.new(0,2,1,-16), Position=UDim2.new(0,-14,0,8),
            BackgroundColor3=T.accent, BorderSizePixel=0,
        },{Corner(1)})
        Bar.Parent=_JjTskp; Reg(Bar,"BackgroundColor3","accent")
        New("TextLabel",{
            Text=title, TextSize=12, Font=Enum.Font.GothamBold,
            TextColor3=T.text, BackgroundTransparency=1,
            Size=UDim2.new(1,0,0,16), ZIndex=202,
        }).Parent=_JjTskp
        New("TextLabel",{
            Text=desc or "", TextSize=10, Font=Enum.Font.Code,
            TextColor3=T.text2, BackgroundTransparency=1,
            Size=UDim2.new(1,0,0,14), Position=UDim2.new(0,0,0,18), ZIndex=202,
        }).Parent=_JjTskp
        _JjTskp.Parent=NotifHolder
        Tw(_JjTskp,{BackgroundTransparency=0,Size=UDim2.new(1,0,0,52)},0.22,Enum.EasingStyle.Back,Enum.EasingDirection.Out)
        task.delay(dur or 3.5,function()
            Tw(_JjTskp,{BackgroundTransparency=1,Size=UDim2.new(1,0,0,0)},0.28)
            task.delay(0.3,function() pcall(function() _JjTskp:Destroy() end) end)
        end)
    end

    W.ApplyTheme = function(_, name)
        local _UwvDBf=Themes[name]; if not _UwvDBf then return end
        for k,v in pairs(_UwvDBf) do T[k]=v end
        for _,e in ipairs(Registry) do
            pcall(function()
                if e.obj and e.obj.Parent then
                    local c=e.dynamic and e.dynamic() or T[e.key]
                    if c then Tw(e.obj,{[e.prop]=c},0.22) end
                end
            end)
        end
        for _,tab in ipairs(W.Tabs) do
            if tab==W.ActiveTab then
                tab.BtnLbl.TextColor3=T.text; tab.BtnLbl.Font=Enum.Font.GothamBold
                tab.Pill.BackgroundColor3=T.accent
            else
                tab.BtnLbl.TextColor3=T.text3; tab.BtnLbl.Font=Enum.Font.Gotham
            end
            tab.Page.ScrollBarImageColor3=T.accent
        end
    end

    W.CreateTab = function(_, name, icon)
        local Tab={Name=name}

        local Btn=New("Frame",{
            Size=UDim2.new(1,0,0,34),
            BackgroundColor3=T.surface, BorderSizePixel=0,
        },{Corner(6)})
        Btn.Parent=TabList
        Reg(Btn,"BackgroundColor3","surface")

        local Pill=New("Frame",{
            Size=UDim2.new(0,3,0,18), Position=UDim2.new(0,0,0.5,-9),
            BackgroundColor3=T.accent, BorderSizePixel=0,
            BackgroundTransparency=1,
        },{Corner(2)})
        Pill.Parent=Btn
        Reg(Pill,"BackgroundColor3","accent")

        local IconLbl=New("TextLabel",{
            Text=icon or "·", TextSize=12, Font=Enum.Font.GothamBold,
            TextColor3=T.text3, BackgroundTransparency=1,
            Size=UDim2.new(0,18,1,0), Position=UDim2.new(0,10,0,0),
            TextXAlignment=Enum.TextXAlignment.Center,
        })
        IconLbl.Parent=Btn
        Reg(IconLbl,"TextColor3","text3")

        local BtnLbl=New("TextLabel",{
            Text=name, TextSize=11.5, Font=Enum.Font.Gotham,
            TextColor3=T.text3, BackgroundTransparency=1,
            Size=UDim2.new(1,-32,1,0), Position=UDim2.new(0,30,0,0),
            TextXAlignment=Enum.TextXAlignment.Left,
            TextTruncate=Enum.TextTruncate.AtEnd,
        })
        BtnLbl.Parent=Btn
        Reg(BtnLbl,"TextColor3","text3")

        local BtnClick=New("TextButton",{
            Text="", Size=UDim2.new(1,0,1,0),
            BackgroundTransparency=1, ZIndex=5,
        })
        BtnClick.Parent=Btn

        local Page=New("ScrollingFrame",{
            Name=name.."_Page",
            Size=UDim2.new(1,0,1,0),
            BackgroundTransparency=1, BorderSizePixel=0,
            ScrollBarThickness=2, ScrollBarImageColor3=T.accent,
            CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y,
            Visible=false,
        })
        Page.Parent=Content
        New("UIListLayout",{Padding=UDim.new(0,4),SortOrder=Enum.SortOrder.LayoutOrder}).Parent=Page
        Pad(10,10,12,12).Parent=Page
        Tab.Page=Page; Tab.Btn=Btn; Tab.Pill=Pill; Tab.BtnLbl=BtnLbl; Tab.IconLbl=IconLbl

        local function SetActive(on)
            if on then
                if W.ActiveTab then
                    Tw(W.ActiveTab.Btn,{BackgroundColor3=T.surface},0.16)
                    Tw(W.ActiveTab.Pill,{BackgroundTransparency=1},0.16)
                    W.ActiveTab.BtnLbl.TextColor3=T.text3
                    W.ActiveTab.BtnLbl.Font=Enum.Font.Gotham
                    W.ActiveTab.IconLbl.TextColor3=T.text3
                    W.ActiveTab.Page.Visible=false
                end
                Page.Visible=true
                Page.Position=UDim2.new(0.06,0,0,0)
                Page.BackgroundTransparency=1
                Tw(Page,{Position=UDim2.new(0,0,0,0)},0.2,Enum.EasingStyle.Quart)
                Tw(Btn,{BackgroundColor3=T.surface2},0.16)
                Tw(Pill,{BackgroundTransparency=0},0.16)
                BtnLbl.TextColor3=T.text
                BtnLbl.Font=Enum.Font.GothamBold
                IconLbl.TextColor3=T.accent2
                W.ActiveTab=Tab
            end
        end
        Tab.SetActive=SetActive

        BtnClick.MouseButton1Click:Connect(function() SetActive(true) end)
        BtnClick.MouseEnter:Connect(function()
            if W.ActiveTab~=Tab then Tw(Btn,{BackgroundColor3=T.surface2},0.1) end
        end)
        BtnClick.MouseLeave:Connect(function()
            if W.ActiveTab~=Tab then Tw(Btn,{BackgroundColor3=T.surface},0.1) end
        end)

        if #W.Tabs==0 then SetActive(true) end
        table.insert(W.Tabs,Tab)

        local function Idx(elemName, elemFrame)
            table.insert(W.SearchIndex,{
                name=elemName, tabName=name, tabRef=Tab,
                activate=function()
                    Tab.SetActive(true)
                    if elemFrame and elemFrame.Parent then
                        task.defer(function() task.defer(function()
                            local _VtoJJw=elemFrame.AbsolutePosition.Y
                            local _ouoXZa=Page.AbsolutePosition.Y
                            Page.CanvasPosition=Vector2.new(0,math.max(0,_VtoJJw-_ouoXZa+Page.CanvasPosition.Y-10))
                            Tw(elemFrame,{BackgroundColor3=T.accentDim},0.12)
                            task.delay(0.45,function() Tw(elemFrame,{BackgroundColor3=T.surface},0.2) end)
                        end) end)
                    end
                end,
            })
        end

        Tab.CreateSection = function(_, sName)
            local SF=New("Frame",{
                Size=UDim2.new(1,0,0,22), BackgroundTransparency=1, BorderSizePixel=0,
            })
            SF.Parent=Page
            local Dot=New("Frame",{
                Size=UDim2.new(0,4,0,4), Position=UDim2.new(0,0,0.5,-2),
                BackgroundColor3=T.accent, BorderSizePixel=0,
            },{Corner(2)})
            Dot.Parent=SF; Reg(Dot,"BackgroundColor3","accent")
            local Line=New("Frame",{
                Size=UDim2.new(1,-80,0,1), Position=UDim2.new(0,60,0.5,0),
                BackgroundColor3=T.border, BorderSizePixel=0,
            })
            Line.Parent=SF; Reg(Line,"BackgroundColor3","border")
            local SL=New("TextLabel",{
                Text=sName:upper(), TextSize=9, Font=Enum.Font.GothamBold,
                TextColor3=T.accent, BackgroundTransparency=1,
                Size=UDim2.new(0,60,1,0), Position=UDim2.new(0,8,0,0),
                TextXAlignment=Enum.TextXAlignment.Left,
            })
            SL.Parent=SF; Reg(SL,"TextColor3","accent")
        end

        Tab.CreateButton = function(_, cfg2)
            local BF=New("Frame",{
                Size=UDim2.new(1,0,0,36), BackgroundColor3=T.surface,
                BorderSizePixel=0,
            },{Corner(8)})
            BF.Parent=Page
            Reg(BF,"BackgroundColor3","surface")
            local bStroke=Stroke(BF,T.border,1); bStroke.Parent=BF
            table.insert(Registry,{obj=bStroke,prop="Color",key="border"})

            local nameLbl = New("TextLabel",{
                Text=cfg2.Name, TextSize=12, Font=Enum.Font.Gotham,
                TextColor3=T.text, BackgroundTransparency=1,
                Size=UDim2.new(1,-36,1,0), Position=UDim2.new(0,12,0,0),
                TextXAlignment=Enum.TextXAlignment.Left, ZIndex=2,
            })
            nameLbl.Parent=BF
            Reg(nameLbl,"TextColor3","text")

            local Arr=New("TextLabel",{
                Text="›", TextSize=18, Font=Enum.Font.GothamBold,
                TextColor3=T.text3, BackgroundTransparency=1,
                Size=UDim2.new(0,22,1,0), Position=UDim2.new(1,-26,0,0),
                TextXAlignment=Enum.TextXAlignment.Center, ZIndex=2,
            })
            Arr.Parent=BF; Reg(Arr,"TextColor3","text3")

            local Cl=New("TextButton",{Text="",Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,ZIndex=5})
            Cl.Parent=BF

            Cl.MouseEnter:Connect(function()
                Tw(BF,{BackgroundColor3=T.surface2},0.12)
                Tw(Arr,{TextColor3=T.accent2},0.12)
            end)
            Cl.MouseLeave:Connect(function()
                Tw(BF,{BackgroundColor3=T.surface},0.12)
                Tw(Arr,{TextColor3=T.text3},0.12)
            end)
            Cl.MouseButton1Click:Connect(function()
                Tw(BF,{BackgroundColor3=T.accentDim},0.07)
                task.delay(0.14,function() Tw(BF,{BackgroundColor3=T.surface2},0.14) end)
                task.spawn(function() pcall(cfg2.Callback) end)
            end)

            Idx(cfg2.Name,BF)
            return {SetName=function(_, n2)
                nameLbl.Text=n2
            end}
        end

        Tab.CreateToggle = function(_, cfg2)
            local TF=New("Frame",{
                Size=UDim2.new(1,0,0,36), BackgroundColor3=T.surface,
                BorderSizePixel=0,
            },{Corner(8)})
            TF.Parent=Page
            Reg(TF,"BackgroundColor3","surface")
            local tStroke=Stroke(TF,T.border,1); tStroke.Parent=TF
            table.insert(Registry,{obj=tStroke,prop="Color",key="border"})

            local TL=New("TextLabel",{
                Text=cfg2.Name, TextSize=12, Font=Enum.Font.Gotham,
                TextColor3=T.text, BackgroundTransparency=1,
                Size=UDim2.new(1,-58,0,18), Position=UDim2.new(0,12,0.5,-10),
                TextXAlignment=Enum.TextXAlignment.Left,
            })
            TL.Parent=TF; Reg(TL,"TextColor3","text")

            if cfg2.Sub then
                TL.Size=UDim2.new(1,-58,0,14)
                TL.Position=UDim2.new(0,12,0.5,-14)
                local SubL=New("TextLabel",{
                    Text=cfg2.Sub, TextSize=9, Font=Enum.Font.Code,
                    TextColor3=T.text3, BackgroundTransparency=1,
                    Size=UDim2.new(1,-58,0,12), Position=UDim2.new(0,12,0.5,2),
                    TextXAlignment=Enum.TextXAlignment.Left,
                })
                SubL.Parent=TF; Reg(SubL,"TextColor3","text3")
            end

            local Track=New("Frame",{
                Size=UDim2.new(0,38,0,18), Position=UDim2.new(1,-50,0.5,-9),
                BackgroundColor3=T.off, BorderSizePixel=0,
            },{Corner(9)})
            Track.Parent=TF

            local Knob=New("Frame",{
                Size=UDim2.new(0,12,0,12),
                Position=UDim2.new(0,3,0.5,-6),
                BackgroundColor3=T.knob, BorderSizePixel=0, ZIndex=3,
            },{Corner(6)})
            Knob.Parent=Track; Reg(Knob,"BackgroundColor3","knob")

            local state=cfg2.CurrentValue or false

           local function SetTog(_HGAWqo,fire)
    state = _HGAWqo

    if cfg2.Flag and W.Flags[cfg2.Flag] then
        W.Flags[cfg2.Flag].Value = state
    end

    if state then
        Tw(Track,{BackgroundColor3=T.on},0.2)
        TwSpring(Knob,{Position=UDim2.new(0,22,0.5,-6)})
        Tw(TF,{BackgroundColor3=T.surface2},0.12)
    else
        Tw(Track,{BackgroundColor3=T.off},0.2)
        TwSpring(Knob,{Position=UDim2.new(0,3,0.5,-6)})
        Tw(TF,{BackgroundColor3=T.surface},0.12)
    end

    if fire and cfg2.Callback then
        task.spawn(function()
            pcall(cfg2.Callback,state)
        end)
    end
end

            for i,e in ipairs(Registry) do
                if e.obj==Track and e.prop=="BackgroundColor3" then table.remove(Registry,i); break end
            end
            table.insert(Registry,{obj=Track,prop="BackgroundColor3",key="",dynamic=function()
                return state and T.on or T.off
            end})

            SetTog(state,false)
            local Cl=New("TextButton",{Text="",Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,ZIndex=5})
            Cl.Parent=TF
            Cl.MouseButton1Click:Connect(function() SetTog(not state,true) end)
            Cl.MouseEnter:Connect(function() if not state then Tw(TF,{BackgroundColor3=T.surface2},0.1) end end)
            Cl.MouseLeave:Connect(function() if not state then Tw(TF,{BackgroundColor3=T.surface},0.1) end end)

            if cfg2.Flag then
    W.Flags[cfg2.Flag] = {
        Value = state,

        Set = function(v)
            SetTog(v, true)
            W.Flags[cfg2.Flag].Value = state
        end
    }
end

            Idx(cfg2.Name,TF)
            return {SetValue=function(v) SetTog(v,true) end}
        end

        Tab.CreateSlider = function(_, cfg2)
            local SF2=New("Frame",{
                Size=UDim2.new(1,0,0,52), BackgroundColor3=T.surface,
                BorderSizePixel=0,
            },{Corner(8)})
            SF2.Parent=Page
            Reg(SF2,"BackgroundColor3","surface")
            local slStroke=Stroke(SF2,T.border,1); slStroke.Parent=SF2
            table.insert(Registry,{obj=slStroke,prop="Color",key="border"})

            local mn,mx=cfg2.Range[1],cfg2.Range[2]
            local _SzAHET=math.clamp(cfg2.CurrentValue or mn,mn,mx)
            local _BjAWkF=cfg2.Suffix or ""

            local NL=New("TextLabel",{
                Text=cfg2.Name, TextSize=11, Font=Enum.Font.Gotham,
                TextColor3=T.text, BackgroundTransparency=1,
                Size=UDim2.new(0.65,0,0,18), Position=UDim2.new(0,12,0,8),
                TextXAlignment=Enum.TextXAlignment.Left,
            })
            NL.Parent=SF2; Reg(NL,"TextColor3","text")

            local VL=New("TextLabel",{
                Text=tostring(_SzAHET).._BjAWkF, TextSize=11, Font=Enum.Font.Code,
                TextColor3=T.accent2, BackgroundTransparency=1,
                Size=UDim2.new(0.35,-12,0,18), Position=UDim2.new(0.65,0,0,8),
                TextXAlignment=Enum.TextXAlignment.Right,
            })
            VL.Parent=SF2; Reg(VL,"TextColor3","accent2")

            local TrkBg=New("Frame",{
                Size=UDim2.new(1,-24,0,4), Position=UDim2.new(0,12,0,34),
                BackgroundColor3=T.border, BorderSizePixel=0,
            },{Corner(2)})
            TrkBg.Parent=SF2; Reg(TrkBg,"BackgroundColor3","border")

            local Fill=New("Frame",{
                Size=UDim2.new((_SzAHET-mn)/(mx-mn),0,1,0),
                BackgroundColor3=T.accent, BorderSizePixel=0,
            },{Corner(2)})
            Fill.Parent=TrkBg; Reg(Fill,"BackgroundColor3","accent")

            local Thumb=New("Frame",{
                Size=UDim2.new(0,14,0,14), AnchorPoint=Vector2.new(0.5,0.5),
                Position=UDim2.new((_SzAHET-mn)/(mx-mn),0,0.5,0),
                BackgroundColor3=T.text, BorderSizePixel=0, ZIndex=4,
            },{Corner(7)})
            Thumb.Parent=TrkBg; Reg(Thumb,"BackgroundColor3","text")

            local thumbStroke=Stroke(Thumb,T.accent,2); thumbStroke.Parent=Thumb
            table.insert(Registry,{obj=thumbStroke,prop="Color",key="accent"})

            local draggingSlider=false
            local function UpdSlider(x)
                local _ZpKELK=TrkBg.AbsolutePosition.X
                local _tDpJUD=TrkBg.AbsoluteSize.X
                local _FNlnWz=math.clamp((x-_ZpKELK)/_tDpJUD,0,1)
                local _HGAWqo=math.floor(mn+(mx-mn)*_FNlnWz)
                if cfg2.Increment and cfg2.Increment>1 then
                    _HGAWqo=math.floor(_HGAWqo/cfg2.Increment)*cfg2.Increment
                end
                VL.Text=tostring(_HGAWqo).._BjAWkF
                Fill.Size=UDim2.new(_FNlnWz,0,1,0)
                Thumb.Position=UDim2.new(_FNlnWz,0,0.5,0)
                if cfg2.Callback then task.spawn(function() pcall(cfg2.Callback,_HGAWqo) end) end
            end

            TrkBg.InputBegan:Connect(function(i)
                if i.UserInputType==Enum.UserInputType.MouseButton1 then
                    draggingSlider=true; UpdSlider(i.Position.X)
                end
            end)
            UserInputService.InputChanged:Connect(function(i)
                if draggingSlider and i.UserInputType==Enum.UserInputType.MouseMovement then
                    UpdSlider(i.Position.X)
                end
            end)
            UserInputService.InputEnded:Connect(function(i)
                if i.UserInputType==Enum.UserInputType.MouseButton1 then draggingSlider=false end
            end)

            Idx(cfg2.Name,SF2)
        end

        Tab.CreateDropdown = function(_, cfg2)
            local isOpen=false
            local selected={}
            if cfg2.CurrentOption then
                for _,v in ipairs(cfg2.CurrentOption) do selected[v]=true end
            end

            local DF=New("Frame",{
                Size=UDim2.new(1,0,0,36), BackgroundColor3=T.surface,
                BorderSizePixel=0, ClipsDescendants=false, ZIndex=2,
            },{Corner(8)})
            DF.Parent=Page
            Reg(DF,"BackgroundColor3","surface")
            local ddStroke=Stroke(DF,T.border,1); ddStroke.Parent=DF
            table.insert(Registry,{obj=ddStroke,prop="Color",key="border"})

            local function dispText()
                local _dbGblb={}
                for k,v in pairs(selected) do if v then table.insert(_dbGblb,k) end end
                if #_dbGblb==0 then return "Select..." end
                if #_dbGblb==1 then return _dbGblb[1] end
                return #_dbGblb.." selected"
            end

            New("TextLabel",{
                Text=cfg2.Name, TextSize=9, Font=Enum.Font.Code,
                TextColor3=T.text3, BackgroundTransparency=1,
                Size=UDim2.new(0.6,0,0,12), Position=UDim2.new(0,12,0,5),
                TextXAlignment=Enum.TextXAlignment.Left, ZIndex=3,
            }).Parent=DF

            local SelLbl=New("TextLabel",{
                Text=dispText(), TextSize=12, Font=Enum.Font.Gotham,
                TextColor3=T.text, BackgroundTransparency=1,
                Size=UDim2.new(1,-36,0,14), Position=UDim2.new(0,12,0,19),
                TextXAlignment=Enum.TextXAlignment.Left,
                TextTruncate=Enum.TextTruncate.AtEnd, ZIndex=3,
            })
            SelLbl.Parent=DF; Reg(SelLbl,"TextColor3","text")

            local Chev=New("TextLabel",{
                Text="▾", TextSize=11, Font=Enum.Font.GothamBold,
                TextColor3=T.text3, BackgroundTransparency=1,
                Size=UDim2.new(0,18,1,0), Position=UDim2.new(1,-22,0,0),
                TextXAlignment=Enum.TextXAlignment.Center, ZIndex=3,
            })
            Chev.Parent=DF; Reg(Chev,"TextColor3","text3")

            local DL=New("Frame",{
                Size=UDim2.new(1,0,0,0), Position=UDim2.new(0,0,1,4),
                BackgroundColor3=T.surface2, BorderSizePixel=0,
                ClipsDescendants=true, ZIndex=20, Visible=false,
            },{Corner(8)})
            DL.Parent=DF
            Reg(DL,"BackgroundColor3","surface2")
            local dlStroke=Stroke(DL,T.border,1); dlStroke.Parent=DL
            table.insert(Registry,{obj=dlStroke,prop="Color",key="border"})

            local OptScroll=New("ScrollingFrame",{
                Size=UDim2.new(1,0,1,0), BackgroundTransparency=1, BorderSizePixel=0,
                ScrollBarThickness=2, ScrollBarImageColor3=T.accent,
                CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y, ZIndex=21,
            })
            OptScroll.Parent=DL; Reg(OptScroll,"ScrollBarImageColor3","accent")
            New("UIListLayout",{Padding=UDim.new(0,1)}).Parent=OptScroll
            Pad(4,4,4,4).Parent=OptScroll

            local function fireCB()
                if cfg2.Callback then
                    local _bDAZXd={}
                    for k,v in pairs(selected) do if v then table.insert(_bDAZXd,k) end end
                    if not cfg2.MultipleOptions then _bDAZXd=_bDAZXd[1] or "" end
                    task.spawn(function() pcall(cfg2.Callback,_bDAZXd) end)
                end
            end

            local function rebuildOpts(opts)
                for _,c in pairs(OptScroll:GetChildren()) do
                    if not c:IsA("UIListLayout") and not c:IsA("UIPadding") then c:Destroy() end
                end
                for _,opt in ipairs(opts) do
                    local OB=New("Frame",{
                        Size=UDim2.new(1,0,0,28),
                        BackgroundColor3=selected[opt] and T.accentDim or T.surface2,
                        BorderSizePixel=0, ZIndex=22,
                    },{Corner(5)})
                    OB.Parent=OptScroll
                    if selected[opt] then Reg(OB,"BackgroundColor3","accentDim") end

                    local OLbl=New("TextLabel",{
                        Text=opt, TextSize=11, Font=Enum.Font.Gotham,
                        TextColor3=selected[opt] and T.accent2 or T.text,
                        BackgroundTransparency=1, Size=UDim2.new(1,-22,1,0),
                        Position=UDim2.new(0,9,0,0),
                        TextXAlignment=Enum.TextXAlignment.Left, ZIndex=23,
                    })
                    OLbl.Parent=OB

                    if selected[opt] then
                        New("TextLabel",{
                            Text="✓", TextSize=10, Font=Enum.Font.GothamBold,
                            TextColor3=T.accent, BackgroundTransparency=1,
                            Size=UDim2.new(0,16,1,0), Position=UDim2.new(1,-18,0,0), ZIndex=23,
                        }).Parent=OB
                    end

                    local OClick=New("TextButton",{Text="",Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,ZIndex=24})
                    OClick.Parent=OB
                    OClick.MouseEnter:Connect(function() Tw(OB,{BackgroundColor3=T.surface3},0.1) end)
                    OClick.MouseLeave:Connect(function()
                        Tw(OB,{BackgroundColor3=selected[opt] and T.accentDim or T.surface2},0.1)
                    end)
                    OClick.MouseButton1Click:Connect(function()
                        if not cfg2.MultipleOptions then for k in pairs(selected) do selected[k]=false end end
                        selected[opt]=not selected[opt]
                        SelLbl.Text=dispText()
                        rebuildOpts(opts)
                        fireCB()
                        if not cfg2.MultipleOptions then
                            isOpen=false
                            Tw(DL,{Size=UDim2.new(1,0,0,0)},0.15)
                            task.delay(0.15,function() DL.Visible=false end)
                            Chev.Text="▾"
                            Tw(ddStroke,{Color=T.border},0.12)
                        end
                    end)
                end
            end
            rebuildOpts(cfg2.Options or {})

            local function TogOpen()
                isOpen=not isOpen
                if isOpen then
                    DL.Visible=true
                    local h=math.min(#(cfg2.Options or {})*29+8,180)
                    Tw(DL,{Size=UDim2.new(1,0,0,h)},0.18,Enum.EasingStyle.Back,Enum.EasingDirection.Out)
                    Chev.Text="▴"
                    Tw(ddStroke,{Color=T.accent},0.12)
                else
                    Tw(DL,{Size=UDim2.new(1,0,0,0)},0.15)
                    task.delay(0.15,function() DL.Visible=false end)
                    Chev.Text="▾"
                    Tw(ddStroke,{Color=T.border},0.12)
                end
            end

            local DB=New("TextButton",{Text="",Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,ZIndex=5})
            DB.Parent=DF
            DB.MouseButton1Click:Connect(TogOpen)
            DB.MouseEnter:Connect(function() Tw(DF,{BackgroundColor3=T.surface2},0.1) end)
            DB.MouseLeave:Connect(function() if not isOpen then Tw(DF,{BackgroundColor3=T.surface},0.1) end end)

            Idx(cfg2.Name,nil)
            local dObj={}
            dObj.Refresh=function(newOpts) cfg2.Options=newOpts; rebuildOpts(newOpts) end
            return dObj
        end

        Tab.CreateInput = function(_, cfg2)
            local IF=New("Frame",{
                Size=UDim2.new(1,0,0,52), BackgroundColor3=T.surface,
                BorderSizePixel=0,
            },{Corner(8)})
            IF.Parent=Page
            Reg(IF,"BackgroundColor3","surface")
            local inStroke=Stroke(IF,T.border,1); inStroke.Parent=IF
            table.insert(Registry,{obj=inStroke,prop="Color",key="border"})

            New("TextLabel",{
                Text=cfg2.Name, TextSize=9, Font=Enum.Font.Code,
                TextColor3=T.text3, BackgroundTransparency=1,
                Size=UDim2.new(1,-24,0,14), Position=UDim2.new(0,12,0,7),
                TextXAlignment=Enum.TextXAlignment.Left,
            }).Parent=IF

            local IB=New("TextBox",{
                Text=cfg2.CurrentValue or "", PlaceholderText=cfg2.PlaceholderText or "",
                TextSize=11, Font=Enum.Font.Gotham,
                TextColor3=T.text, PlaceholderColor3=T.text3,
                BackgroundColor3=T.surface2, BorderSizePixel=0,
                Size=UDim2.new(1,-24,0,22), Position=UDim2.new(0,12,0,24),
                TextXAlignment=Enum.TextXAlignment.Left, ClearTextOnFocus=false,
            },{Corner(5)})
            Pad(0,0,6,6).Parent=IB
            IB.Parent=IF
            Reg(IB,"BackgroundColor3","surface2")
            Reg(IB,"TextColor3","text")
            Reg(IB,"PlaceholderColor3","text3")

            IB.Focused:Connect(function()
                Tw(IF,{BackgroundColor3=T.surface2},0.12)
                Tw(inStroke,{Color=T.accent},0.12)
            end)
            IB.FocusLost:Connect(function()
                Tw(IF,{BackgroundColor3=T.surface},0.12)
                Tw(inStroke,{Color=T.border},0.12)
                if cfg2.Callback then task.spawn(function() pcall(cfg2.Callback,IB.Text) end) end
                if cfg2.RemoveTextAfterFocusLost then IB.Text="" end
            end)
            Idx(cfg2.Name,nil)
        end

        return Tab
    end

    return W
end

local player   = Players.LocalPlayer
local Fish     = workspace.Game.Fishes

local UI = DiveDown:CreateWindow({Title="DIVEDOWN  v3", ToggleKey="K"})

local autoFarmEnabled=false;     local autoFarmThread=nil
local mapVacuumEnabled=false;    local mapVacuumThread=nil
local autoSellEnabled=false;     local autoSellThread=nil
local autoSpinEnabled=false;     local autoSpinThread=nil
local autoBuyTreatsEnabled=false; local autoBuyTreatsThread=nil
local autoBuyToolsEnabled=false;  local autoBuyToolsThread=nil
local autoEquipBestEnabled=false
local smartSellEnabled=false
local autoFavoriteEnabled=false
local fishESPEnabled=false;      local areaESPEnabled=false
local ghostModeEnabled=false;    local ghostConnection=nil
local antiDrownEnabled=false;    local antiDrownConnection=nil
local zoneLockEnabled=false;     local zoneLockThread=nil
local fishPullEnabled=false;     local instantInteractEnabled=false
local fastFarmEnabled=false;     local fastFarmThread=nil; local fastFarmRange=50
local fishESPConnections={};     local fishESPGuis={}; local areaESPGuis={}
local originalPrompts={};        local espUpdateThread=nil
local autoCollectEnabled=false;  local autoCollectThread=nil
local autoUpgradeEnabled=false;  local autoRebirthEnabled=false

local selectedPlayer=nil
local followEnabled=false;       local followThread=nil
local spectateEnabled=false;     local spectateConn=nil
local playerESPEnabled=false
local playerESPGuis={};          local playerESPHighlights={}
local playerESPThread=nil
local chatSpyEnabled=false
local flyEnabled=false;          local flyThread=nil; local flySpeed=50
local bodyVel,bodyGyro

local function KillScript()
    SCRIPT_ALIVE=false
    autoFarmEnabled=false; mapVacuumEnabled=false; autoSellEnabled=false
    autoSpinEnabled=false; autoBuyTreatsEnabled=false; autoBuyToolsEnabled=false
    autoEquipBestEnabled=false; smartSellEnabled=false; autoFavoriteEnabled=false
    fishESPEnabled=false; areaESPEnabled=false; ghostModeEnabled=false
    antiDrownEnabled=false; zoneLockEnabled=false; instantInteractEnabled=false
    fishPullEnabled=false; fastFarmEnabled=false
    local threads={autoFarmThread,mapVacuumThread,autoSellThread,autoSpinThread,
        autoBuyTreatsThread,autoBuyToolsThread,espUpdateThread,zoneLockThread,
        autoCollectThread,fastFarmThread,followThread,playerESPThread}
    for _,t in ipairs(threads) do if t then pcall(task.cancel,t) end end
    if ghostConnection then pcall(function() ghostConnection:Disconnect() end) end
    if antiDrownConnection then pcall(function() antiDrownConnection:Disconnect() end) end
    if spectateConn then pcall(function() spectateConn:Disconnect() end) end
    if bodyVel then pcall(function() bodyVel:Destroy() end) end
    if bodyGyro then pcall(function() bodyGyro:Destroy() end) end
    for _,c in pairs(fishESPConnections) do pcall(function() c:Disconnect() end) end
    for fish in pairs(fishESPGuis) do
        pcall(function()
            if fishESPGuis[fish] then
                if fishESPGuis[fish].Gui then fishESPGuis[fish].Gui:Destroy() end
                if fishESPGuis[fish].Highlight then fishESPGuis[fish].Highlight:Destroy() end
            end
        end)
    end
    for _,g in pairs(areaESPGuis) do pcall(function() g:Destroy() end) end
    for plr in pairs(playerESPGuis) do
        pcall(function()
            if playerESPGuis[plr] then playerESPGuis[plr]:Destroy() end
            if playerESPHighlights[plr] then playerESPHighlights[plr]:Destroy() end
        end)
    end
    for prompt,orig in pairs(originalPrompts) do
        pcall(function()
            if prompt and prompt.Parent then
                prompt.HoldDuration=orig.HoldDuration
                prompt.MaxActivationDistance=orig.MaxActivationDistance
                prompt.RequiresLineOfSight=orig.RequiresLineOfSight
            end
        end)
    end
    local char=player.Character
    if char then
        for _,v in pairs(char:GetDescendants()) do
            if v:IsA("BasePart") then pcall(function() v.CanCollide=true end) end
        end
        local _PlUQDD=char:FindFirstChildOfClass("Humanoid")
        if _PlUQDD then pcall(function() _PlUQDD.PlatformStand=false end) end
    end
    local _LfGCaq=workspace.CurrentCamera
    if _LfGCaq and player.Character then
        local myHum=player.Character:FindFirstChildOfClass("Humanoid")
        if myHum then pcall(function() _LfGCaq.CameraSubject=myHum end) end
    end
    task.wait(0.1)
    pcall(function() UI.Screen:Destroy() end)
    _G.DoveDown_KillSignal=nil; KillSignal:Destroy()
end
KillSignal.Event:Connect(KillScript)

local HardcodedZones={
    SunlightZone=Vector3.new(-1935.5,2466.8,-1420.5),
    Area1=Vector3.new(-1934.9,2447.1,-1429.0),
    Area2=Vector3.new(-1929.5,2338.1,-1423.4),
    CoralReef=Vector3.new(-1934.0,2336.6,-1418.3),
    TwilightZone=Vector3.new(-1928.1,2106.0,-1421.2),
    Area3=Vector3.new(-1916.1,2029.2,-1424.2),
    DeepOcean=Vector3.new(-1924.9,1722.5,-1422.4),
    TheDeepDark=Vector3.new(-1938.6,1004.3,-1422.2),
    TheTrenches=Vector3.new(-1938.6,310.9,-1422.2),
    Atlantis=Vector3.new(-1932.6,-17.7,-1423.0),
    AquaForest=Vector3.new(-1932.6,-304.3,-1423.0),
    ShellReef=Vector3.new(-1932.6,-645.4,-1423.0),
    KrakenWorld=Vector3.new(-1932.6,-1107.9,-1423.0),
    MegalodonsLair=Vector3.new(-1927.7,-1591.8,-1418.6),
    IceArea=Vector3.new(-1927.7,-1961.3,-1418.6),
    JellyfishFields=Vector3.new(-1927.7,-2373.8,-1418.6),
    SteampunkZone=Vector3.new(-1927.7,-2885.3,-1418.6),
    DeadWaters=Vector3.new(-1927.7,-3361.3,-1418.6),
    Prehistoric=Vector3.new(-1927.7,-3820.8,-1418.6),
}
local ZoneOrder={"SunlightZone","Area1","Area2","CoralReef","TwilightZone","Area3","DeepOcean",
    "TheDeepDark","TheTrenches","Atlantis","AquaForest","ShellReef","KrakenWorld",
    "MegalodonsLair","IceArea","JellyfishFields","SteampunkZone","DeadWaters","Prehistoric"}

local function hasFilter(ft,f)
    if type(ft)~="table" then return false end
    for k,v in pairs(ft) do
        if type(k)=="number" and v==f then return true end
        if type(k)=="string" and k==f and v==true then return true end
    end
    return false
end
local function isAnyFilter(ft)
    if type(ft)~="table" then return true end
    local n=0; for _ in pairs(ft) do n=n+1 end; return n==0
end
local function firePacket(str)
    pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Packets")
            :WaitForChild("Packet"):WaitForChild("RemoteEvent")
            :FireServer(buffer.fromstring(str))
    end)
end
local function fireBuyItem(store,item)
    pcall(function()
        local s=string.char(4)..string.char(#store)..store..string.char(#item)..item
        firePacket(s)
    end)
end
local function firePacketMethod(name)
    local p={RespawnPlayer={id=7},ClaimOfflineReward={id=10},CancelDeathScreen={id=11},SpinWheel={id=19,r=true}}
    local d=p[name]; if not d then return end
    pcall(function()
        local s=string.char(d.id); if d.r then s=s.."\001" end; firePacket(s)
    end)
end

local targetFishInput=""; local selectedSpecificFish="Any"
local selectedMutationFilters={}; local selectedRarityFilters={}

local function getFishFilters(fish)
    local _JEyEaT=fish:FindFirstChild(fish.Name.."BillboardPart")
    local mut,rar="",""
    if _JEyEaT then
        local g=_JEyEaT:FindFirstChild("BillboardGui")
        local f=g and g:FindFirstChild("Frame")
        if f then
            local _VrSrFt=f:FindFirstChild("Mutations"); if _VrSrFt then mut=_VrSrFt.ContentText end
            local _VmNgkL=f:FindFirstChild("Rarity"); if _VmNgkL then rar=_VmNgkL.ContentText end
        end
    end
    return mut,rar
end

local function checkFilters(mut,rar)
    local mutOk=isAnyFilter(selectedMutationFilters)
    if not mutOk then
        local _hLsfKB=mut:lower()
        for k,v in pairs(selectedMutationFilters) do
            local f=type(k)=="number" and v or k
            if f~="None" and f~="Any" and _hLsfKB:find(f:lower()) then mutOk=true; break end
            if f=="None" and (_hLsfKB=="" or _hLsfKB=="none" or _hLsfKB=="normal") then mutOk=true; break end
        end
    end
    local rarOk=isAnyFilter(selectedRarityFilters)
    if not rarOk then
        local _JVsWHW=rar:lower()
        for k,v in pairs(selectedRarityFilters) do
            local f=type(k)=="number" and v or k
            if f~="Normal" and f~="Any" and _JVsWHW:find(f:lower()) then rarOk=true; break end
            if f=="Normal" and (_JVsWHW=="" or _JVsWHW=="normal") then rarOk=true; break end
        end
    end
    return mutOk and rarOk
end

local AutoTab=UI:CreateTab("Autofarm","🎣")

AutoTab:CreateSection("Filters")

local function getUniqueFishes()
    local m,l={},{"Any"}
    for _,v in ipairs(Fish:GetChildren()) do
        if v:IsA("Model") and not m[v.Name] then m[v.Name]=true; table.insert(l,v.Name) end
    end
    table.sort(l,function(a,b)
        if a=="Any" then return true end
        if b=="Any" then return false end
        return a<b
    end)
    return l
end

local FishDrop=AutoTab:CreateDropdown({
    Name="Target Fish", Options=getUniqueFishes(), CurrentOption={"Any"}, MultipleOptions=false,
    Callback=function(o) selectedSpecificFish=type(o)=="table" and o[1] or o end,
})
local isRefreshing=false
local function doRefresh()
    if isRefreshing then return end; isRefreshing=true
    task.delay(0.5,function()
        if FishDrop then FishDrop.Refresh(getUniqueFishes()) end
        isRefreshing=false
    end)
end
Fish.ChildAdded:Connect(doRefresh); Fish.ChildRemoved:Connect(doRefresh)

AutoTab:CreateInput({
    Name="Fish Name Filter (Manual)", PlaceholderText="e.g. Clownfish",
    RemoveTextAfterFocusLost=false,
    Callback=function(t) targetFishInput=t end,
})

AutoTab:CreateDropdown({
    Name="Mutation Filter",
    Options={"None","Silver","Gold","Rainbow","Dry","Frozen","Shocked","Chocolate","Infected","Magma","Evil","Yinyang","Hacker","Taco","Galaxy"},
    CurrentOption={}, MultipleOptions=true,
    Callback=function(o) selectedMutationFilters=type(o)=="table" and o or {o} end,
})

AutoTab:CreateDropdown({
    Name="Rarity Filter",
    Options={"Normal","Common","Rare","Epic","Legendary","Mythical","Secret","Divine"},
    CurrentOption={}, MultipleOptions=true,
    Callback=function(o) selectedRarityFilters=type(o)=="table" and o or {o} end,
})

AutoTab:CreateSection("Catching")

AutoTab:CreateToggle({Name="Fish Pull",Sub="Teleport fish to me",CurrentValue=false,Flag="FishPull",
    Callback=function(v) fishPullEnabled=v end})

AutoTab:CreateToggle({
    Name="Autofarm Fish",
    Sub="Teleports to each fish",
    CurrentValue=false,
    Flag="AutofarmToggle",
    Callback=function(v)
        autoFarmEnabled=v
        if autoFarmEnabled then
            if autoFarmThread then task.cancel(autoFarmThread) end
            autoFarmThread=task.spawn(function()
                while autoFarmEnabled and SCRIPT_ALIVE do
                    pcall(function()
                        local char=player.Character
                        local hrp=char and char:FindFirstChild("HumanoidRootPart")
                        if not hrp then task.wait(0.25); return end
                        for _,fish in ipairs(Fish:GetChildren()) do
                            if not autoFarmEnabled then break end
                            if not fish:IsA("Model") then continue end
                            if fish:GetAttribute("Claimed") then continue end
                            local root=fish:FindFirstChild("RootPart"); if not root then continue end
                            local prompt=root:FindFirstChildWhichIsA("ProximityPrompt")
                            if not (prompt and prompt.Enabled) then continue end
                            local _jxKUYh=fish.Name
                            local nameOk=
                                (selectedSpecificFish=="Any" and targetFishInput=="")
                                or (selectedSpecificFish~="Any" and _jxKUYh==selectedSpecificFish)
                                or (targetFishInput~="" and _jxKUYh:lower():find(targetFishInput:lower()))
                            if not nameOk then continue end
                            local mut,rar=getFishFilters(fish)
                            if not checkFilters(mut,rar) then continue end
                            local oldCF=hrp.CFrame
                            local origDist=prompt.MaxActivationDistance
                            local origHold=prompt.HoldDuration
                            local origLOS=prompt.RequiresLineOfSight
                            prompt.MaxActivationDistance=100
                            prompt.HoldDuration=0
                            prompt.RequiresLineOfSight=false
                            ZeroVel(hrp)
                            hrp.CFrame=root.CFrame+Vector3.new(0,3,0)
                            task.wait(0.12)
                            fireproximityprompt(prompt)
                            task.wait(0.05)
                            fireproximityprompt(prompt)
                            task.wait(0.1)
                            pcall(function()
                                prompt.MaxActivationDistance=origDist
                                prompt.HoldDuration=origHold
                                prompt.RequiresLineOfSight=origLOS
                            end)
                            ZeroVel(hrp)
                            hrp.CFrame=oldCF
                            task.wait(0.08)
                        end
                    end)
                    task.wait(0.05)
                end
            end)
        else
            if autoFarmThread then task.cancel(autoFarmThread); autoFarmThread=nil end
        end
    end,
})

AutoTab:CreateSection("Fast Farm")

AutoTab:CreateSlider({
    Name="Fast Farm Range", Range={10,200}, Increment=10, Suffix=" studs", CurrentValue=50,
    Callback=function(v) fastFarmRange=v end,
})

AutoTab:CreateToggle({
    Name="Fast Farm", Sub="No teleport — range based",
    CurrentValue=false, Flag="FastFarm",
    Callback=function(v)
        fastFarmEnabled=v
        if fastFarmEnabled then
            if fastFarmThread then task.cancel(fastFarmThread) end
            fastFarmThread=task.spawn(function()
                while fastFarmEnabled and SCRIPT_ALIVE do
                    local char=player.Character
                    local hrp=char and char:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        for _,fish in ipairs(Fish:GetChildren()) do
                            if not fastFarmEnabled then break end
                            if not (fish:IsA("Model") and fish.Parent and not fish:GetAttribute("Claimed")) then continue end
                            local _pNVHNv=fish:FindFirstChild("RootPart"); if not _pNVHNv then continue end
                            local dist=(hrp.Position-_pNVHNv.Position).Magnitude
                            if dist>fastFarmRange then continue end
                            local mut,rar=getFishFilters(fish)
                            if not checkFilters(mut,rar) then continue end
                            local pr=_pNVHNv:FindFirstChildWhichIsA("ProximityPrompt")
                            if not (pr and pr.Enabled) then continue end
                            local origD,origH=pr.MaxActivationDistance,pr.HoldDuration
                            pr.MaxActivationDistance=fastFarmRange; pr.HoldDuration=0
                            pcall(function() fireproximityprompt(pr) end)
                            task.wait(0.05)
                            pcall(function() if pr and pr.Parent then pr.MaxActivationDistance=origD; pr.HoldDuration=origH end end)
                            task.wait(0.05)
                        end
                    end
                    task.wait(0.1)
                end
            end)
        else
            if fastFarmThread then task.cancel(fastFarmThread); fastFarmThread=nil end
        end
    end,
})

AutoTab:CreateToggle({
    Name="TNT Farm", Sub="Equip TNT first",
    CurrentValue=false, Flag="TNTFarm",
    Callback=function(v)
        mapVacuumEnabled=v
        if mapVacuumEnabled then
            if mapVacuumThread then task.cancel(mapVacuumThread) end
            mapVacuumThread=task.spawn(function()
                while mapVacuumEnabled and SCRIPT_ALIVE do
                    local _QTVTvm={}
                    for _,f in pairs(Fish:GetChildren()) do
                        if f:IsA("Model") and f.Parent and not f:GetAttribute("Claimed") then table.insert(_QTVTvm,f) end
                    end
                    if #_QTVTvm>0 then
                        pcall(function() require(player.PlayerScripts.Client).Network.Fire("TNTActivated",_QTVTvm) end)
                    end
                    task.wait(0.3)
                end
            end)
        else
            if mapVacuumThread then task.cancel(mapVacuumThread); mapVacuumThread=nil end
        end
    end,
})

AutoTab:CreateSection("Inventory Value")

local RarityValues = {
    ["Normal"]    = 10,
    ["Common"]    = 50,
    ["Rare"]      = 250,
    ["Epic"]      = 1000,
    ["Legendary"] = 5000,
    ["Mythical"]  = 25000,
    ["Secret"]    = 100000,
    ["Divine"]    = 500000,
}

local MutationMultipliers = {
    ["Silver"]    = 1.5,
    ["Gold"]      = 2.5,
    ["Rainbow"]   = 5.0,
    ["Dry"]       = 1.5,
    ["Frozen"]    = 2.0,
    ["Shocked"]   = 2.0,
    ["Chocolate"] = 1.5,
    ["Infected"]  = 2.0,
    ["Magma"]     = 3.0,
    ["Evil"]      = 2.5,
    ["Yinyang"]   = 3.0,
    ["Hacker"]    = 4.0,
    ["Taco"]      = 2.0,
    ["Galaxy"]    = 6.0,
}

local function getFishValueData(tool)
    local rar,mut="Normal","None"
    for _,desc in pairs(tool:GetDescendants()) do
        if desc:IsA("TextLabel") then
            if desc.Name=="Rarity" then
                rar=desc.Text:gsub("<[^>]+>",""):gsub("^%s+",""):gsub("%s+$","")
            elseif desc.Name=="Mutations" then
                local t=desc.Text:gsub("<[^>]+>",""):gsub("^%s+",""):gsub("%s+$","")
                if t~="" then mut=t end
            end
        end
    end
    return rar,mut
end

local function calcInventoryValue()
    local _ExTOVX=player:FindFirstChild("Backpack")
    if not _ExTOVX then return 0,0,{} end
    local totalValue=0; local fishCount=0; local breakdown={}
    for _,tool in pairs(_ExTOVX:GetChildren()) do
        if tool:IsA("Tool") then
            local rar,mut=getFishValueData(tool)
            local baseVal=RarityValues[rar] or 10
            local mutMult=1
            for mutName,mult in pairs(MutationMultipliers) do
                if mut:lower():find(mutName:lower()) then
                    mutMult=math.max(mutMult,mult)
                end
            end
            local fishVal=math.floor(baseVal*mutMult)
            totalValue=totalValue+fishVal
            fishCount=fishCount+1
            local rarKey=rar..(mut~="None" and (" + "..mut) or "")
            breakdown[rarKey]=(breakdown[rarKey] or 0)+1
        end
    end
    return totalValue,fishCount,breakdown
end

local function fmtNum(n)
    local s=tostring(math.floor(n))
    return s:reverse():gsub("(%d%d%d)","%1,"):reverse():gsub("^,","")
end

local invValueLbl=AutoTab:CreateButton({
    Name="💰 Inventory Value: — (click to scan)",
    Callback=function()
        local _HGAWqo,count,breakdown=calcInventoryValue()
        UI:Notify("Inventory","Fish: "..count.." | Value: ~"..fmtNum(_HGAWqo),5)
        local lines={}
        for k,v in pairs(breakdown) do table.insert(lines,v.."x "..k) end
        table.sort(lines)
        for i=1,math.min(#lines,3) do
            task.delay(0.4*i,function() UI:Notify("Breakdown",lines[i],4) end)
        end
        invValueLbl:SetName("💰 Value: ~"..fmtNum(_HGAWqo).." ("..count.." fish)")
    end,
})

local autoTrackEnabled=false
AutoTab:CreateToggle({
    Name="Auto Track Value", Sub="Updates label every 5s",
    CurrentValue=false, Flag="AutoTrackValue",
    Callback=function(v)
        autoTrackEnabled=v
        if autoTrackEnabled then
            task.spawn(function()
                while autoTrackEnabled and SCRIPT_ALIVE do
                    local _HGAWqo,count=calcInventoryValue()
                    invValueLbl:SetName("💰 Value: ~"..fmtNum(_HGAWqo).." ("..count.." fish)")
                    task.wait(5)
                end
            end)
        else
            invValueLbl:SetName("💰 Inventory Value: — (click to scan)")
        end
    end,
})

AutoTab:CreateSection("Selling")

AutoTab:CreateToggle({
    Name="Auto Sell Fish", Sub="Fires sell every 2.5s",
    CurrentValue=false, Flag="AutoSell",
    Callback=function(v)
        autoSellEnabled=v
        if autoSellEnabled then
            if autoSellThread then task.cancel(autoSellThread) end
            autoSellThread=task.spawn(function()
                while autoSellEnabled and SCRIPT_ALIVE do firePacket("\003\001"); task.wait(2.5) end
            end)
        else
            if autoSellThread then task.cancel(autoSellThread); autoSellThread=nil end
        end
    end,
})

AutoTab:CreateSection("Zone Lock")

local zoneLockTarget=ZoneOrder[1]
AutoTab:CreateDropdown({
    Name="Lock Zone", Options=ZoneOrder, CurrentOption={ZoneOrder[1]}, MultipleOptions=false,
    Callback=function(o) zoneLockTarget=type(o)=="table" and o[1] or o end,
})
AutoTab:CreateToggle({
    Name="Zone Lock", Sub="Snaps back if drifted",
    CurrentValue=false, Flag="ZoneLock",
    Callback=function(v)
        zoneLockEnabled=v
        if zoneLockEnabled then
            local char=player.Character or player.CharacterAdded:Wait()
            local hrp=char and char:FindFirstChild("HumanoidRootPart")
            local _SuVRjX=HardcodedZones[zoneLockTarget]
            if hrp and _SuVRjX then ZeroVel(hrp); char:PivotTo(CFrame.new(_SuVRjX+Vector3.new(0,5,0))) end
            if zoneLockThread then task.cancel(zoneLockThread) end
            zoneLockThread=task.spawn(function()
                while zoneLockEnabled and SCRIPT_ALIVE do
                    local c=player.Character; local _tAuvSn=HardcodedZones[zoneLockTarget]
                    if c and _tAuvSn then
                        local _pNVHNv=c:FindFirstChild("HumanoidRootPart")
                        if _pNVHNv and (_pNVHNv.Position-_tAuvSn).Magnitude>40 then
                            ZeroVel(_pNVHNv); c:PivotTo(CFrame.new(_tAuvSn+Vector3.new(0,5,0)))
                        end
                    end
                    task.wait(1)
                end
            end)
        else
            if zoneLockThread then task.cancel(zoneLockThread); zoneLockThread=nil end
        end
    end,
})

local OceanTab=UI:CreateTab("Ocean","🌊")

OceanTab:CreateSection("Teleportation")

local selArea=ZoneOrder[1]
OceanTab:CreateDropdown({
    Name="Select Zone", Options=ZoneOrder, CurrentOption={ZoneOrder[1]}, MultipleOptions=false,
    Callback=function(o) selArea=type(o)=="table" and o[1] or o end,
})
OceanTab:CreateButton({Name="Teleport to Zone",Callback=function()
    local _SuVRjX=HardcodedZones[selArea]; if not _SuVRjX then return end
    local char=player.Character or player.CharacterAdded:Wait()
    if char then
        local hrp=char:FindFirstChild("HumanoidRootPart"); if hrp then ZeroVel(hrp) end
        char:PivotTo(CFrame.new(_SuVRjX)*CFrame.new(0,5,0))
    end
end})
OceanTab:CreateButton({Name="Return to Aquarium",Callback=function()
    workspace:WaitForChild("Network"):WaitForChild("Teleport-RemoteEvent"):FireServer("Aquarium")
end})

OceanTab:CreateSection("Movement")

OceanTab:CreateSlider({Name="Swim Speed",Range={1,100},Increment=1,Suffix="x",CurrentValue=1,
    Callback=function(v) pcall(function() workspace:SetAttribute("AdminSpeedMultiplier",v) end) end})

OceanTab:CreateSlider({Name="Walk Speed",Range={1,500},Increment=1,CurrentValue=16,
    Callback=function(v)
        local c=player.Character; local h=c and c:FindFirstChildOfClass("Humanoid")
        if h then h.WalkSpeed=v end
    end})

OceanTab:CreateSlider({Name="Fly Speed",Range={10,300},Increment=5,CurrentValue=50,
    Callback=function(v)
        flySpeed=v
        if bodyVel then bodyVel.MaxForce=Vector3.new(v*1e3,v*1e3,v*1e3) end
    end})

OceanTab:CreateToggle({Name="Fly",Sub="WASD + Space / Shift",CurrentValue=false,Flag="Fly",Callback=function(v)
    flyEnabled=v
    local char=player.Character; local hrp=char and char:FindFirstChild("HumanoidRootPart")
    local _PlUQDD=char and char:FindFirstChildOfClass("Humanoid")
    if not hrp or not _PlUQDD then return end
    if flyEnabled then
        _PlUQDD.PlatformStand=true
        bodyVel=Instance.new("BodyVelocity",hrp); bodyVel.Velocity=Vector3.zero
        bodyVel.MaxForce=Vector3.new(flySpeed*1e3,flySpeed*1e3,flySpeed*1e3)
        bodyGyro=Instance.new("BodyGyro",hrp); bodyGyro.MaxTorque=Vector3.new(9e9,9e9,9e9)
        bodyGyro.P=9e4; bodyGyro.CFrame=hrp.CFrame
        flyThread=task.spawn(function()
            while flyEnabled and SCRIPT_ALIVE do
                local _LfGCaq=workspace.CurrentCamera; local _PSNcxv=Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then _PSNcxv=_PSNcxv+_LfGCaq.CFrame.LookVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then _PSNcxv=_PSNcxv-_LfGCaq.CFrame.LookVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then _PSNcxv=_PSNcxv-_LfGCaq.CFrame.RightVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then _PSNcxv=_PSNcxv+_LfGCaq.CFrame.RightVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then _PSNcxv=_PSNcxv+Vector3.new(0,1,0) end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then _PSNcxv=_PSNcxv-Vector3.new(0,1,0) end
                bodyVel.Velocity=_PSNcxv*flySpeed; bodyGyro.CFrame=workspace.CurrentCamera.CFrame; task.wait()
            end
        end)
    else
        if flyThread then task.cancel(flyThread); flyThread=nil end
        if bodyVel then bodyVel:Destroy(); bodyVel=nil end
        if bodyGyro then bodyGyro:Destroy(); bodyGyro=nil end
        if _PlUQDD then _PlUQDD.PlatformStand=false end
    end
end})

OceanTab:CreateToggle({Name="Ghost Mode",Sub="Noclip through walls",CurrentValue=false,Flag="Ghost",Callback=function(v)
    ghostModeEnabled=v
    if ghostModeEnabled then
        if ghostConnection then ghostConnection:Disconnect() end
        local function applyNC(c)
            if not c then return end
            for _,p in pairs(c:GetDescendants()) do
                if p:IsA("BasePart") then pcall(function() p.CanCollide=false end) end
            end
        end
        applyNC(player.Character)
        ghostConnection=RunService.Heartbeat:Connect(function()
            if not SCRIPT_ALIVE or not ghostModeEnabled then return end
            local c=player.Character; if not c then return end
            local hrp=c:FindFirstChild("HumanoidRootPart")
            if hrp and hrp.CanCollide then applyNC(c) end
        end)
    else
        if ghostConnection then ghostConnection:Disconnect(); ghostConnection=nil end
        local c=player.Character
        if c then for _,p in pairs(c:GetDescendants()) do
            if p:IsA("BasePart") then pcall(function() p.CanCollide=true end) end
        end end
    end
end})

OceanTab:CreateToggle({Name="Reach",Sub="Extends prompt range to 50",CurrentValue=false,Flag="Reach",Callback=function(v)
    instantInteractEnabled=v
    local conns={}
    if instantInteractEnabled then
        local function _JEyEaT(pr)
            if not pr:IsA("ProximityPrompt") then return end
            if not originalPrompts[pr] then
                originalPrompts[pr]={HoldDuration=pr.HoldDuration,MaxActivationDistance=pr.MaxActivationDistance,RequiresLineOfSight=pr.RequiresLineOfSight}
            end
            pr.HoldDuration=0; pr.MaxActivationDistance=50; pr.RequiresLineOfSight=false
        end
        for _,o in pairs(workspace:GetDescendants()) do if o:IsA("ProximityPrompt") then _JEyEaT(o) end end
        conns["da"]=workspace.DescendantAdded:Connect(function(d)
            if d:IsA("ProximityPrompt") then task.wait(); _JEyEaT(d) end
        end)
    else
        if conns and conns["da"] then conns["da"]:Disconnect() end
        for pr,orig in pairs(originalPrompts) do
            if pr and pr.Parent then
                pr.HoldDuration=orig.HoldDuration
                pr.MaxActivationDistance=orig.MaxActivationDistance
                pr.RequiresLineOfSight=orig.RequiresLineOfSight
            end
        end
        table.clear(originalPrompts)
    end
end})

OceanTab:CreateSection("Protection")

OceanTab:CreateToggle({Name="Anti Drown",CurrentValue=false,Flag="AntiDrown",Callback=function(v)
    antiDrownEnabled=v
    if antiDrownEnabled then
        if not antiDrownConnection then
            local _syAUrU=false
            antiDrownConnection=player.AttributeChanged:Connect(function(attr)
                if attr=="IsDrowning" and player:GetAttribute("IsDrowning")==true then
                    if _syAUrU or not antiDrownEnabled then return end; _syAUrU=true
                    local c=player.Character; if c then
                        local _pNVHNv=c:FindFirstChild("HumanoidRootPart")
                        if _pNVHNv then
                            local _VeAzsf=_pNVHNv.CFrame
                            workspace:WaitForChild("Network"):WaitForChild("Teleport-RemoteEvent"):FireServer("Aquarium")
                            task.wait(0.2); _pNVHNv.CFrame=_VeAzsf
                        end
                    end
                    task.wait(1); _syAUrU=false
                end
            end)
        end
    else
        if antiDrownConnection then antiDrownConnection:Disconnect(); antiDrownConnection=nil end
    end
end})

local AquaTab=UI:CreateTab("Aquarium","🐠")

AquaTab:CreateSection("Equip")

local function equipBest()
    local _FKyzNR=workspace:FindFirstChild("Network"); if not _FKyzNR then return end
    local _CeXkAs=_FKyzNR:FindFirstChild("RequestEquipBestFish-RemoteFunction") or _FKyzNR:FindFirstChild("RequestEquipBestFish")
    if _CeXkAs then
        if _CeXkAs:IsA("RemoteFunction") then _CeXkAs:InvokeServer()
        elseif _CeXkAs:IsA("RemoteEvent") then _CeXkAs:FireServer() end
    end
end
AquaTab:CreateButton({Name="Equip Best Aquarium Fish",Callback=function() pcall(equipBest) end})
AquaTab:CreateToggle({Name="Auto Equip Best Fish",Sub="Updates every second",CurrentValue=false,Flag="AutoEquip",Callback=function(v)
    autoEquipBestEnabled=v
    if autoEquipBestEnabled then
        task.spawn(function()
            while autoEquipBestEnabled and SCRIPT_ALIVE do pcall(equipBest); task.wait(1) end
        end)
    end
end})

AquaTab:CreateSection("Auto Collect")

local function getCollectPart()
    local plot=workspace.Game.Plots:FindFirstChild(player.Name); if not plot then return nil end
    local _kWurPZ=plot:FindFirstChild("CollectZone"); if not _kWurPZ then return nil end
    local _jxKUYh=_kWurPZ:FindFirstChild("Functional"); if not _jxKUYh then return nil end
    return _jxKUYh:FindFirstChild("Hitbox")
end

AquaTab:CreateButton({Name="Collect Once",Callback=function()
    local _KsLIpP=getCollectPart()
    if not _KsLIpP then UI:Notify("Error","CollectZone not found!",3); return end
    local char=player.Character; local hrp=char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local _NpcHys=hrp.CFrame; ZeroVel(hrp); char:PivotTo(CFrame.new(_KsLIpP.Position+Vector3.new(0,3,0)))
    task.wait(0.3); ZeroVel(hrp); char:PivotTo(_NpcHys)
    UI:Notify("Aquarium","Collected!",2)
end})

AquaTab:CreateToggle({Name="Auto Collect Earnings",Sub="Every 30 seconds",CurrentValue=false,Flag="AutoCollect",Callback=function(v)
    autoCollectEnabled=v
    if autoCollectEnabled then
        if autoCollectThread then task.cancel(autoCollectThread) end
        autoCollectThread=task.spawn(function()
            while autoCollectEnabled and SCRIPT_ALIVE do
                local _KsLIpP=getCollectPart()
                if _KsLIpP then
                    local char=player.Character; local hrp=char and char:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local _NpcHys=hrp.CFrame; ZeroVel(hrp)
                        char:PivotTo(CFrame.new(_KsLIpP.Position+Vector3.new(0,3,0)))
                        task.wait(0.4); ZeroVel(hrp); char:PivotTo(_NpcHys)
                    end
                end
                task.wait(30)
            end
        end)
    else
        if autoCollectThread then task.cancel(autoCollectThread); autoCollectThread=nil end
    end
end})

AquaTab:CreateSection("Smart Sell")

local smartSellRarities={}
AquaTab:CreateDropdown({
    Name="Sell Rarity Filter",
    Options={"Normal","Common","Rare","Epic","Legendary","Mythical","Secret","Divine"},
    CurrentOption={},MultipleOptions=true,
    Callback=function(o) smartSellRarities=o end,
})

local function getFishRar(tool)
    for _,c in pairs(tool:GetChildren()) do
        if c:IsA("BasePart") then
            local bg=c:FindFirstChild("BillboardGui")
            local _EpliHV=bg and bg:FindFirstChild("Frame")
            local _VmNgkL=_EpliHV and _EpliHV:FindFirstChild("Rarity")
            if _VmNgkL then return _VmNgkL.Text end
        end
    end
    return tool.Name:match("%[(.-)%]") or "Unknown"
end

AquaTab:CreateToggle({Name="Smart Sell Fish",Sub="Sells by rarity filter",CurrentValue=false,Flag="SmartSell",Callback=function(v)
    smartSellEnabled=v
    if smartSellEnabled then
        task.spawn(function()
            while smartSellEnabled and SCRIPT_ALIVE do
                local _ExTOVX=player:FindFirstChild("Backpack")
                if _ExTOVX then for _,tool in ipairs(_ExTOVX:GetChildren()) do
                    if not smartSellEnabled then break end
                    if tool:IsA("Tool") then
                        local rar=getFishRar(tool)
                        if rar and rar~="Unknown" and hasFilter(smartSellRarities,rar) then
                            local char=player.Character; if char then
                                tool.Parent=char
                                game:GetService("ReplicatedStorage"):WaitForChild("Packets")
                                    :WaitForChild("Packet"):WaitForChild("RemoteEvent")
                                    :FireServer(buffer.fromstring("\002\001\r"),{player})
                            end
                            task.wait(0.05)
                        end
                    end
                end end
                task.wait(1)
            end
        end)
    end
end})

AquaTab:CreateSection("Fish Protection")

local favRarities={}
AquaTab:CreateDropdown({
    Name="Favorite Rarities",
    Options={"Rare","Epic","Legendary","Mythical","Secret","Divine"},
    CurrentOption={},MultipleOptions=true,
    Callback=function(o) favRarities=o or {} end,
})
local function isSelRar(r)
    if not r then return false end
    for _,v in pairs(favRarities) do if v:lower()==r:lower() then return true end end
    return false
end
local function getRar(tool)
    for _,v in pairs(tool:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name=="Rarity" then return v.Text:gsub("<[^>]+>","") end
    end
    return tool.Name:match("%[(.-)%]") or "Unknown"
end
AquaTab:CreateToggle({Name="Auto Favorite Fish",Sub="Marks fish with ★",CurrentValue=false,Flag="AutoFav",Callback=function(v)
    autoFavoriteEnabled=v
    if autoFavoriteEnabled then
        task.spawn(function()
            while autoFavoriteEnabled and SCRIPT_ALIVE do
                local _ExTOVX=player:FindFirstChild("Backpack")
                if _ExTOVX then for _,tool in ipairs(_ExTOVX:GetChildren()) do
                    if tool:IsA("Tool") and isSelRar(getRar(tool)) then
                        pcall(function()
                            if not tool:GetAttribute("Favorited") then
                                tool:SetAttribute("Favorited",true)
                                if not tool.Name:find("★") then tool.Name="★ "..tool.Name end
                            end
                        end)
                    end
                end end
                task.wait(2)
            end
        end)
    end
end})

local PlayersTab=UI:CreateTab("Players","👤")

local function getPlayerList()
    local names={}
    for _,p in pairs(Players:GetPlayers()) do
        if p~=player then table.insert(names,p.Name) end
    end
    table.sort(names); return names
end

PlayersTab:CreateSection("Select Player")

local playerDrop=PlayersTab:CreateDropdown({
    Name="Select Player", Options=getPlayerList(), CurrentOption={}, MultipleOptions=false,
    Callback=function(o)
        selectedPlayer=type(o)=="table" and o[1] or o
        UI:Notify("Players","Selected: "..tostring(selectedPlayer),2)
    end,
})

PlayersTab:CreateButton({Name="Refresh Player List",Callback=function()
    playerDrop.Refresh(getPlayerList())
    UI:Notify("Players","List refreshed!",2)
end})

Players.PlayerAdded:Connect(function() task.wait(1); playerDrop.Refresh(getPlayerList()) end)
Players.PlayerRemoving:Connect(function() task.wait(0.5); playerDrop.Refresh(getPlayerList()) end)

PlayersTab:CreateSection("Teleportation")

PlayersTab:CreateButton({Name="Teleport To Player",Callback=function()
    if not selectedPlayer then UI:Notify("Error","No player selected!",2); return end
    local target=Players:FindFirstChild(selectedPlayer)
    if not target or not target.Character then UI:Notify("Error","Player not found!",2); return end
    local thrp=target.Character:FindFirstChild("HumanoidRootPart")
    local myChar=player.Character
    if thrp and myChar then
        ZeroVel(myChar:FindFirstChild("HumanoidRootPart"))
        myChar:PivotTo(thrp.CFrame*CFrame.new(3,0,3))
        UI:Notify("Teleport","Teleported to "..selectedPlayer,2)
    end
end})

PlayersTab:CreateToggle({Name="Follow Player",Sub="Stays 4 studs behind",CurrentValue=false,Flag="FollowPlayer",Callback=function(v)
    followEnabled=v
    if followEnabled then
        if not selectedPlayer then UI:Notify("Error","No player selected!",2); return end
        if followThread then task.cancel(followThread) end
        followThread=task.spawn(function()
            while followEnabled and SCRIPT_ALIVE do
                local target=Players:FindFirstChild(selectedPlayer)
                if target and target.Character then
                    local tHRP=target.Character:FindFirstChild("HumanoidRootPart")
                    local myChar=player.Character
                    local myHRP=myChar and myChar:FindFirstChild("HumanoidRootPart")
                    if tHRP and myHRP then
                        local dist=(myHRP.Position-tHRP.Position).Magnitude
                        if dist>6 then ZeroVel(myHRP); myChar:PivotTo(tHRP.CFrame*CFrame.new(4,0,0)) end
                    end
                end
                task.wait(0.2)
            end
        end)
    else
        if followThread then task.cancel(followThread); followThread=nil end
    end
end})

PlayersTab:CreateSection("Spectate")

PlayersTab:CreateToggle({Name="Spectate Player",Sub="Camera locks to target",CurrentValue=false,Flag="Spectate",Callback=function(v)
    spectateEnabled=v
    if spectateEnabled then
        if not selectedPlayer then UI:Notify("Error","No player selected!",2); return end
        local target=Players:FindFirstChild(selectedPlayer)
        if not target or not target.Character then UI:Notify("Error","Player not found!",2); return end
        workspace.CurrentCamera.CameraSubject=target.Character:FindFirstChildOfClass("Humanoid")
        UI:Notify("Spectate","Now spectating "..selectedPlayer,2)
        spectateConn=Players.PlayerRemoving:Connect(function(p)
            if p.Name==selectedPlayer and spectateEnabled then
                local myHum=player.Character and player.Character:FindFirstChildOfClass("Humanoid")
                workspace.CurrentCamera.CameraSubject=myHum
                UI:Notify("Spectate","Player left — returning camera",2)
                spectateEnabled=false
            end
        end)
    else
        local myHum=player.Character and player.Character:FindFirstChildOfClass("Humanoid")
        workspace.CurrentCamera.CameraSubject=myHum
        if spectateConn then spectateConn:Disconnect(); spectateConn=nil end
        UI:Notify("Spectate","Returned to own camera",2)
    end
end})

PlayersTab:CreateSection("Player Info")

PlayersTab:CreateButton({Name="Get Player Info",Callback=function()
    if not selectedPlayer then UI:Notify("Error","No player selected!",2); return end
    local target=Players:FindFirstChild(selectedPlayer)
    if not target then UI:Notify("Error","Player not found!",2); return end
    local cash=target:GetAttribute("Cash") or "N/A"
    local level=target:GetAttribute("Level") or "N/A"
    local rebirth=target:GetAttribute("RebirthLevel") or "N/A"
    local _LYkQpo=target.AccountAge or "N/A"
    UI:Notify(selectedPlayer,"Lvl:"..tostring(level).." | Cash:"..tostring(cash).." | Rebirth:"..tostring(rebirth),6)
    task.wait(0.5)
    UI:Notify(selectedPlayer.." Info","Account Age: "..tostring(_LYkQpo).." days",5)
end})

PlayersTab:CreateButton({Name="Copy Player UserID",Callback=function()
    if not selectedPlayer then UI:Notify("Error","No player selected!",2); return end
    local target=Players:FindFirstChild(selectedPlayer)
    if not target then UI:Notify("Error","Player not found!",2); return end
    pcall(function() setclipboard(tostring(target.UserId)) end)
    UI:Notify("Copied","UserID "..target.UserId.." copied!",3)
end})

PlayersTab:CreateSection("Player ESP")

local function removePlayerESP(plr)
    if playerESPGuis[plr] then pcall(function() playerESPGuis[plr]:Destroy() end); playerESPGuis[plr]=nil end
    if playerESPHighlights[plr] then pcall(function() playerESPHighlights[plr]:Destroy() end); playerESPHighlights[plr]=nil end
end

local function createPlayerESP(plr)
    if not playerESPEnabled or plr==player then return end
    if not plr.Character then return end
    local hrp=plr.Character:FindFirstChild("HumanoidRootPart"); if not hrp then return end
    local bg=Instance.new("BillboardGui")
    bg.Adornee=hrp; bg.Size=UDim2.new(0,180,0,56)
    bg.StudsOffset=Vector3.new(0,3,0); bg.AlwaysOnTop=true; bg.Enabled=true
    local nameL=Instance.new("TextLabel")
    nameL.BackgroundTransparency=1; nameL.Size=UDim2.new(1,0,0.5,0)
    nameL.Text=plr.Name; nameL.TextColor3=Color3.fromRGB(255,255,255)
    nameL.TextStrokeTransparency=0; nameL.TextScaled=true
    nameL.Font=Enum.Font.GothamBold; nameL.Parent=bg
    local distL=Instance.new("TextLabel")
    distL.BackgroundTransparency=1; distL.Size=UDim2.new(1,0,0.5,0)
    distL.Position=UDim2.new(0,0,0.5,0); distL.Text="0 studs"
    distL.TextColor3=Color3.fromRGB(0,212,255)
    distL.TextStrokeTransparency=0; distL.TextScaled=true
    distL.Font=Enum.Font.Code; distL.Parent=bg
    local _ESqjxr=game:GetService("CoreGui")
    pcall(function() bg.Parent=_ESqjxr end)
    if bg.Parent~=_ESqjxr then bg.Parent=player:WaitForChild("PlayerGui") end
    local hl=Instance.new("Highlight"); hl.Adornee=plr.Character
    hl.FillColor=Color3.fromRGB(0,212,255); hl.OutlineColor=Color3.fromRGB(255,255,255)
    hl.FillTransparency=0.5; hl.OutlineTransparency=0; hl.Enabled=true
    pcall(function() hl.Parent=_ESqjxr end)
    if hl.Parent~=_ESqjxr then hl.Parent=player:WaitForChild("PlayerGui") end
    playerESPGuis[plr]=bg
    playerESPHighlights[plr]=hl
    bg.distLabel=distL
end

PlayersTab:CreateToggle({Name="Player ESP",Sub="Billboard + highlight on all",CurrentValue=false,Flag="PlayerESP",Callback=function(v)
    playerESPEnabled=v
    if playerESPEnabled then
        for _,plr in pairs(Players:GetPlayers()) do if plr~=player then createPlayerESP(plr) end end
        Players.PlayerAdded:Connect(function(plr)
            if not playerESPEnabled then return end
            plr.CharacterAdded:Connect(function() task.wait(0.5); createPlayerESP(plr) end)
        end)
        for _,plr in pairs(Players:GetPlayers()) do
            if plr~=player then
                plr.CharacterAdded:Connect(function()
                    task.wait(0.5); if playerESPEnabled then removePlayerESP(plr); createPlayerESP(plr) end
                end)
            end
        end
        if playerESPThread then task.cancel(playerESPThread) end
        playerESPThread=task.spawn(function()
            while playerESPEnabled and SCRIPT_ALIVE do
                local myChar=player.Character
                local myHRP=myChar and myChar:FindFirstChild("HumanoidRootPart")
                for plr,gui in pairs(playerESPGuis) do
                    pcall(function()
                        if plr.Character then
                            local tHRP=plr.Character:FindFirstChild("HumanoidRootPart")
                            if tHRP and myHRP and gui.distLabel then
                                local dist=math.floor((myHRP.Position-tHRP.Position).Magnitude)
                                gui.distLabel.Text=dist.." studs"
                            end
                        end
                    end)
                end
                task.wait(0.1)
            end
        end)
        UI:Notify("Player ESP","Enabled for "..(#Players:GetPlayers()-1).." players",3)
    else
        if playerESPThread then task.cancel(playerESPThread); playerESPThread=nil end
        for plr in pairs(playerESPGuis) do removePlayerESP(plr) end
        table.clear(playerESPGuis); table.clear(playerESPHighlights)
        UI:Notify("Player ESP","Disabled",2)
    end
end})

Players.PlayerRemoving:Connect(function(plr) removePlayerESP(plr) end)

PlayersTab:CreateSection("Chat Spy")

PlayersTab:CreateToggle({Name="Chat Spy",Sub="Notifies on all messages",CurrentValue=false,Flag="ChatSpy",Callback=function(v)
    chatSpyEnabled=v
    if chatSpyEnabled then
        for _,plr in pairs(Players:GetPlayers()) do
            plr.Chatted:Connect(function(msg)
                if not chatSpyEnabled then return end
                UI:Notify(plr.Name,msg,4)
            end)
        end
        Players.PlayerAdded:Connect(function(plr)
            plr.Chatted:Connect(function(msg)
                if not chatSpyEnabled then return end
                UI:Notify(plr.Name,msg,4)
            end)
        end)
        UI:Notify("Chat Spy","Now spying on all chat",2)
    else
        UI:Notify("Chat Spy","Disabled",2)
    end
end})

local VisTab=UI:CreateTab("Visuals","👁")

VisTab:CreateSection("Fish ESP")

local espMutF={}; local espRarF={}

local function updateESP(fish,_rMJdVW)
    if not fishESPEnabled or not fish.Parent then return end
    local mut,rar="None","Normal"
    local _WnedNl=fish:FindFirstChild(fish.Name.."BillboardPart")
    if _WnedNl then
        local g=_WnedNl:FindFirstChild("BillboardGui"); local f=g and g:FindFirstChild("Frame")
        if f then
            local _VrSrFt=f:FindFirstChild("Mutations")
            if _VrSrFt then local t=_VrSrFt.Text:gsub("<[^>]+>",""); if t~="" then mut=t end end
            local _VmNgkL=f:FindFirstChild("Rarity")
            if _VmNgkL then local t=_VmNgkL.Text:gsub("<[^>]+>",""); if t~="" then rar=t end end
        end
    end
    local mutOk=isAnyFilter(espMutF)
    if not mutOk then
        local _hLsfKB=mut:lower()
        if hasFilter(espMutF,"None") and (_hLsfKB=="" or _hLsfKB=="none" or _hLsfKB=="normal") then mutOk=true
        else for k,v in pairs(espMutF) do
            local _pIkGgt=type(k)=="number" and v or k
            if _pIkGgt~="Any" and _pIkGgt~="None" and _hLsfKB:find(_pIkGgt:lower()) then mutOk=true; break end
        end end
    end
    local rarOk=isAnyFilter(espRarF)
    if not rarOk then
        local _JVsWHW=rar:lower()
        if hasFilter(espRarF,"Normal") and (_JVsWHW=="" or _JVsWHW=="normal") then rarOk=true
        else for k,v in pairs(espRarF) do
            local _pIkGgt=type(k)=="number" and v or k
            if _pIkGgt~="Any" and _pIkGgt~="Normal" and _JVsWHW:find(_pIkGgt:lower()) then rarOk=true; break end
        end end
    end
    _rMJdVW.Gui.Enabled=mutOk and rarOk; _rMJdVW.Highlight.Enabled=mutOk and rarOk
    if not (mutOk and rarOk) then return end
    _rMJdVW.TextLabel.Text=fish.Name
        ..(rar~="Normal" and (" ["..rar.."]") or "")
        ..(mut~="None" and (" ["..mut.."]") or "")
    local _JVsWHW=rar:lower()
    local _JksPzt=Color3.fromRGB(150,150,150)
    if     _JVsWHW:find("divine")    then _JksPzt=Color3.fromRGB(0,255,255)
    elseif _JVsWHW:find("secret")    then _JksPzt=Color3.fromRGB(255,0,0)
    elseif _JVsWHW:find("mythical")  then _JksPzt=Color3.fromRGB(170,0,255)
    elseif _JVsWHW:find("legendary") then _JksPzt=Color3.fromRGB(255,170,0)
    elseif _JVsWHW:find("epic")      then _JksPzt=Color3.fromRGB(255,0,150)
    elseif _JVsWHW:find("rare")      then _JksPzt=Color3.fromRGB(0,150,255)
    elseif mut~="None"          then _JksPzt=Color3.fromRGB(255,255,0) end
    _rMJdVW.TextLabel.TextColor3=_JksPzt; _rMJdVW.Highlight.FillColor=_JksPzt
end

local function removeESP(fish)
    if fishESPGuis[fish] then
        if fishESPGuis[fish].Gui then fishESPGuis[fish].Gui:Destroy() end
        if fishESPGuis[fish].Highlight then fishESPGuis[fish].Highlight:Destroy() end
        fishESPGuis[fish]=nil
    end
end

local function createESP(fish)
    if not fishESPEnabled or fishESPGuis[fish] or not fish:IsA("Model") then return end
    task.spawn(function()
        local _pNVHNv=fish:WaitForChild("RootPart",10)
        if not _pNVHNv or not fishESPEnabled or fishESPGuis[fish] then return end
        local bg=Instance.new("BillboardGui"); bg.Adornee=_pNVHNv
        bg.Size=UDim2.new(0,160,0,52); bg.StudsOffset=Vector3.new(0,2.5,0)
        bg.AlwaysOnTop=true; bg.Enabled=false
        local tl=Instance.new("TextLabel"); tl.BackgroundTransparency=1
        tl.Size=UDim2.new(1,0,1,0); tl.Text=fish.Name
        tl.TextColor3=Color3.fromRGB(150,150,150)
        tl.TextStrokeTransparency=0; tl.TextScaled=true; tl.Parent=bg
        local _ESqjxr=game:GetService("CoreGui")
        pcall(function() bg.Parent=_ESqjxr end)
        if bg.Parent~=_ESqjxr then bg.Parent=player:WaitForChild("PlayerGui") end
        local hl=Instance.new("Highlight"); hl.Adornee=fish
        hl.FillColor=Color3.fromRGB(150,150,150); hl.OutlineColor=Color3.new(1,1,1)
        hl.FillTransparency=0.5; hl.OutlineTransparency=0; hl.Enabled=false
        pcall(function() hl.Parent=_ESqjxr end)
        if hl.Parent~=_ESqjxr then hl.Parent=player:WaitForChild("PlayerGui") end
        local _rMJdVW={Gui=bg,Highlight=hl,TextLabel=tl}
        fishESPGuis[fish]=_rMJdVW; updateESP(fish,_rMJdVW)
    end)
end

VisTab:CreateDropdown({Name="ESP Mutation Filter",
    Options={"None","Silver","Gold","Rainbow","Dry","Frozen","Shocked","Chocolate","Infected","Magma","Evil","Yinyang","Hacker","Taco","Galaxy"},
    CurrentOption={},MultipleOptions=true,
    Callback=function(o) espMutF=type(o)=="table" and o or {o} end,
})
VisTab:CreateDropdown({Name="ESP Rarity Filter",
    Options={"Normal","Common","Rare","Epic","Legendary","Mythical","Secret","Divine"},
    CurrentOption={},MultipleOptions=true,
    Callback=function(o) espRarF=type(o)=="table" and o or {o} end,
})
VisTab:CreateToggle({Name="Fish ESP",Sub="Billboard + highlight on fish",CurrentValue=false,Flag="FishESP",Callback=function(v)
    fishESPEnabled=v
    if fishESPEnabled then
        for _,f in pairs(Fish:GetChildren()) do createESP(f) end
        fishESPConnections["add"]=Fish.ChildAdded:Connect(createESP)
        fishESPConnections["_CeXkAs"]=Fish.ChildRemoved:Connect(removeESP)
        if espUpdateThread then task.cancel(espUpdateThread) end
        espUpdateThread=task.spawn(function()
            while fishESPEnabled and SCRIPT_ALIVE do
                for fish,_rMJdVW in pairs(fishESPGuis) do updateESP(fish,_rMJdVW) end
                task.wait(0.5)
            end
        end)
    else
        if fishESPConnections["add"] then fishESPConnections["add"]:Disconnect() end
        if fishESPConnections["_CeXkAs"] then fishESPConnections["_CeXkAs"]:Disconnect() end
        if espUpdateThread then task.cancel(espUpdateThread); espUpdateThread=nil end
        for fish in pairs(fishESPGuis) do removeESP(fish) end
        table.clear(fishESPGuis)
    end
end})

VisTab:CreateSection("Area ESP")

local function createAreaESP(marker)
    if not areaESPEnabled then return end
    local _KOEpDy=marker:IsA("Model") and marker:FindFirstChildWhichIsA("BasePart",true)
        or (marker:IsA("BasePart") and marker or nil)
    if not _KOEpDy then return end
    local bg=Instance.new("BillboardGui"); bg.Adornee=_KOEpDy
    bg.Size=UDim2.new(0,150,0,40); bg.StudsOffset=Vector3.new(0,5,0); bg.AlwaysOnTop=true
    local tl=Instance.new("TextLabel"); tl.BackgroundTransparency=1
    tl.Size=UDim2.new(1,0,1,0); tl.Text="[Zone] "..marker.Name
    tl.TextColor3=Color3.fromRGB(0,150,255); tl.TextStrokeTransparency=0; tl.TextScaled=true; tl.Parent=bg
    local _ESqjxr=game:GetService("CoreGui")
    pcall(function() bg.Parent=_ESqjxr end)
    if bg.Parent~=_ESqjxr then bg.Parent=player:WaitForChild("PlayerGui") end
    areaESPGuis[marker]=bg
end

VisTab:CreateToggle({Name="Area ESP",Sub="Shows zone markers",CurrentValue=false,Flag="AreaESP",Callback=function(v)
    areaESPEnabled=v
    local _OPAubF=workspace.Game:FindFirstChild("OceanZoneMarkers"); if not _OPAubF then return end
    if areaESPEnabled then
        for _,m in pairs(_OPAubF:GetChildren()) do createAreaESP(m) end
        fishESPConnections["aadd"]=_OPAubF.ChildAdded:Connect(createAreaESP)
        fishESPConnections["arem"]=_OPAubF.ChildRemoved:Connect(function(m)
            if areaESPGuis[m] then areaESPGuis[m]:Destroy(); areaESPGuis[m]=nil end
        end)
    else
        if fishESPConnections["aadd"] then fishESPConnections["aadd"]:Disconnect() end
        if fishESPConnections["arem"] then fishESPConnections["arem"]:Disconnect() end
        for _,g in pairs(areaESPGuis) do g:Destroy() end
        table.clear(areaESPGuis)
    end
end})

local ShopTab=UI:CreateTab("Shop","🛒")

ShopTab:CreateSection("Spin Wheel")
ShopTab:CreateButton({Name="Spin Wheel Once",Callback=function() firePacketMethod("SpinWheel") end})
ShopTab:CreateToggle({Name="Auto Spin Wheel",Sub="Every 10 seconds",CurrentValue=false,Flag="AutoSpin",Callback=function(v)
    autoSpinEnabled=v
    if autoSpinEnabled then
        if autoSpinThread then task.cancel(autoSpinThread) end
        autoSpinThread=task.spawn(function()
            while autoSpinEnabled and SCRIPT_ALIVE do firePacketMethod("SpinWheel"); task.wait(10) end
        end)
    else
        if autoSpinThread then task.cancel(autoSpinThread); autoSpinThread=nil end
    end
end})

ShopTab:CreateSection("Auto Buy")

local function autoBuyShop(shopName,getFrame)
    return task.spawn(function()
        while SCRIPT_ALIVE do
            pcall(function()
                local pUI=player:WaitForChild("PlayerGui"):FindFirstChild("PersistentUI")
                if pUI then
                    local _AJcDKd=getFrame(pUI)
                    if _AJcDKd then
                        for _,f in pairs(_AJcDKd:GetChildren()) do
                            if f:IsA("Frame") or f:IsA("ImageButton") or f:IsA("TextButton") then
                                local slot=f:FindFirstChild("SlotTemplate")
                                if slot and slot:FindFirstChild("StockAmount") then
                                    local n=tonumber(slot.StockAmount.Text:match("%d+"))
                                    if n and n>0 then
                                        slot.StockAmount.Text="0x"
                                        for _=1,n do fireBuyItem(shopName,f.Name); task.wait(0.5) end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(3)
        end
    end)
end

ShopTab:CreateToggle({Name="Auto Buy Treats",CurrentValue=false,Flag="AutoTreats",Callback=function(v)
    autoBuyTreatsEnabled=v
    if autoBuyTreatsEnabled then
        if autoBuyTreatsThread then task.cancel(autoBuyTreatsThread) end
        autoBuyTreatsThread=autoBuyShop("Treat",function(pUI)
            return pUI:FindFirstChild("Shops") and pUI.Shops:FindFirstChild("Treat")
                and pUI.Shops.Treat:FindFirstChild("Content") and pUI.Shops.Treat.Content:FindFirstChild("ScrollingFrame")
        end)
    else
        if autoBuyTreatsThread then task.cancel(autoBuyTreatsThread); autoBuyTreatsThread=nil end
    end
end})

ShopTab:CreateToggle({Name="Auto Buy Tools",CurrentValue=false,Flag="AutoTools",Callback=function(v)
    autoBuyToolsEnabled=v
    if autoBuyToolsEnabled then
        if autoBuyToolsThread then task.cancel(autoBuyToolsThread) end
        autoBuyToolsThread=autoBuyShop("Tool",function(pUI)
            return pUI:FindFirstChild("Shops") and pUI.Shops:FindFirstChild("Tool")
                and pUI.Shops.Tool:FindFirstChild("Content") and pUI.Shops.Tool.Content:FindFirstChild("ScrollingFrame")
        end)
    else
        if autoBuyToolsThread then task.cancel(autoBuyToolsThread); autoBuyToolsThread=nil end
    end
end})

ShopTab:CreateSection("Rewards")
ShopTab:CreateButton({Name="Claim Offline Reward",Callback=function() firePacketMethod("ClaimOfflineReward") end})

ShopTab:CreateSection("Progression")

ShopTab:CreateToggle({Name="Auto Upgrade Gear",CurrentValue=false,Flag="AutoUpgrade",Callback=function(v)
    autoUpgradeEnabled=v
    if autoUpgradeEnabled then
        task.spawn(function()
            local Gear=require(game:GetService("ReplicatedStorage").Modules.GearConfig)
            local Net=require(player.PlayerScripts:WaitForChild("Client")).Network
            while autoUpgradeEnabled and SCRIPT_ALIVE do
                local cash=player:GetAttribute("Cash") or 0
                for cat,items in pairs(Gear) do
                    for iname,data in pairs(items) do
                        if data.price and data.price<=cash then
                            pcall(function() Net.Invoke("BuyItem",cat,iname) end)
                        end
                    end
                end
                task.wait(5)
            end
        end)
    end
end})

ShopTab:CreateToggle({Name="Auto Rebirth",CurrentValue=false,Flag="AutoRebirth",Callback=function(v)
    autoRebirthEnabled=v
    if autoRebirthEnabled then
        task.spawn(function()
            local RC=require(game:GetService("ReplicatedStorage").Shared.Dir.RebirthConfig)
            while autoRebirthEnabled and SCRIPT_ALIVE do
                local _SzAHET=player:GetAttribute("RebirthLevel") or 0
                local _PJxzzx=_SzAHET+1; local cfg2=RC[_PJxzzx]
                if not cfg2 then task.wait(5); continue end
                local cash=player:GetAttribute("Cash") or 0
                if cash<cfg2.Requirements.Cash then task.wait(5); continue end
                local _fKhRvT={}; local _gNUFsP=player:FindFirstChild("BackpackFish")
                if _gNUFsP then for _,f in pairs(_gNUFsP:GetChildren()) do _fKhRvT[f.Name]=(_fKhRvT[f.Name] or 0)+1 end end
                local allOk=true; local missing=nil
                for _,req in pairs(cfg2.Requirements.Fish) do
                    if (_fKhRvT[req.Name] or 0)<req.Amount then allOk=false; missing=req.Name; break end
                end
                if allOk then
                    firePacket("\001")
                    UI:Notify("Auto Rebirth","Rebirthing to level ".._PJxzzx,3)
                elseif missing then
                    UI:Notify("Auto Rebirth","Need fish: "..missing,3)
                end
                task.wait(5)
            end
        end)
    end
end})

local ExecTab=UI:CreateTab("Executor","⚡")
ExecTab:CreateSection("Lua Executor")
local curCode=""
ExecTab:CreateInput({
    Name="Script Input", PlaceholderText="Enter Lua code here...",
    RemoveTextAfterFocusLost=false,
    Callback=function(t) curCode=t end,
})
ExecTab:CreateButton({Name="▶  Execute",Callback=function()
    if curCode=="" then UI:Notify("Executor","Nothing to run!",2); return end
    local _jxKUYh,err=loadstring(curCode)
    if not _jxKUYh then UI:Notify("Executor","Syntax error: "..tostring(err),4); return end
    local ok,re=pcall(_jxKUYh)
    if not ok then UI:Notify("Executor","Runtime error: "..tostring(re),4)
    else UI:Notify("Executor","Executed successfully!",2) end
end})
ExecTab:CreateButton({Name="🗑  Clear",Callback=function()
    curCode=""; UI:Notify("Executor","Cleared!",1.5)
end})

local SetTab=UI:CreateTab("Settings","⚙️")

SetTab:CreateSection("Theme")
SetTab:CreateDropdown({
    Name="Select Theme", Options=ThemeOrder, CurrentOption={"Abyss"}, MultipleOptions=false,
    Callback=function(o)
        local chosen=type(o)=="table" and o[1] or o
        UI:ApplyTheme(chosen)
        UI:Notify("Theme",chosen.." applied ✓",2.5)
    end,
})

SetTab:CreateSection("Keybind")
local KbBtn
KbBtn=SetTab:CreateButton({
    Name="Toggle Key: ["..UI.ToggleKey.Name.."] — click to rebind",
    Callback=function()
        UI:Notify("Keybind","Press any key…",3)
        local conn
        conn=UserInputService.InputBegan:Connect(function(i,gp)
            if gp then return end
            if i.UserInputType~=Enum.UserInputType.Keyboard then return end
            conn:Disconnect()
            local _OXbDkg=i.KeyCode
            if _OXbDkg==Enum.KeyCode.Escape then UI:Notify("Keybind","Cancelled",2); return end
            UI.ToggleKey=_OXbDkg
            UI.SubLbl.Text="press [".._OXbDkg.Name.."] to toggle"
            KbBtn:SetName("Toggle Key: [".._OXbDkg.Name.."] — click to rebind")
            UI:Notify("Keybind","Set to [".._OXbDkg.Name.."]",2.5)
        end)
    end,
})

SetTab:CreateSection("Hotkey Binds")

local HotkeyBinds = {}
local listeningFor = nil
local bindButtons = {}

local BindableFeatures = {
    {label="Autofarm Fish",      flag="AutofarmToggle"},
    {label="Fast Farm",          flag="FastFarm"},
    {label="Fish Pull",          flag="FishPull"},
    {label="Auto Sell Fish",     flag="AutoSell"},
    {label="Zone Lock",          flag="ZoneLock"},
    {label="Ghost Mode",         flag="Ghost"},
    {label="Fly",                flag="Fly"},
    {label="Anti Drown",         flag="AntiDrown"},
    {label="Reach",              flag="Reach"},
    {label="Fish ESP",           flag="FishESP"},
    {label="Area ESP",           flag="AreaESP"},
    {label="Player ESP",         flag="PlayerESP"},
    {label="Auto Equip Best",    flag="AutoEquip"},
    {label="Auto Collect",       flag="AutoCollect"},
    {label="Auto Spin Wheel",    flag="AutoSpin"},
    {label="Auto Track Value",   flag="AutoTrackValue"},
    {label="Chat Spy",           flag="ChatSpy"},
    {label="TNT Farm",           flag="TNTFarm"},
}

local function getKeyName(key)
    return key and "["..key.Name.."]" or "[ — ]"
end

local function triggerFlag(flag)
    local entry = UI.Flags[flag]
    if not entry then return end
    entry.Set(not entry.Value)
end

UserInputService.InputBegan:Connect(function(i, gp)
    if gp or not SCRIPT_ALIVE then return end
    if i.UserInputType ~= Enum.UserInputType.Keyboard then return end
    if i.KeyCode == UI.ToggleKey then return end

    if listeningFor then
        local feat = listeningFor
        HotkeyBinds[feat] = i.KeyCode
        for _, f in ipairs(BindableFeatures) do
            if f.flag == feat then
                bindButtons[feat]:SetName(f.label.." — "..getKeyName(i.KeyCode))
                break
            end
        end
        UI:Notify("Hotkey Bound", i.KeyCode.Name.." bound!", 2)
        listeningFor = nil
        return
    end

    for flag, key in pairs(HotkeyBinds) do
        if key == i.KeyCode then
            triggerFlag(flag)
            for _, f in ipairs(BindableFeatures) do
                if f.flag == flag then
                    local entry = UI.Flags[flag]
                    local state = entry and entry.Value or false
                    UI:Notify("Hotkey", f.label.." → "..(state and "ON" or "OFF"), 1.5)
                    break
                end
            end
        end
    end
end)

for _, feat in ipairs(BindableFeatures) do
    local f = feat
    local _PrKiqm = SetTab:CreateButton({
        Name = f.label.." — "..getKeyName(HotkeyBinds[f.flag]),
        Callback = function()
            if listeningFor == f.flag then
                listeningFor = nil
                _PrKiqm:SetName(f.label.." — "..getKeyName(HotkeyBinds[f.flag]))
                UI:Notify("Hotkey", "Cancelled binding for "..f.label, 2)
                return
            end
            listeningFor = f.flag
            _PrKiqm:SetName(f.label.." — [press a key...]")
            UI:Notify("Hotkey", "Press a key to bind "..f.label, 3)
        end,
    })
    bindButtons[f.flag] = _PrKiqm
end

SetTab:CreateButton({
    Name = "Clear All Hotkey Binds",
    Callback = function()
        table.clear(HotkeyBinds)
        listeningFor = nil
        for flag, btn2 in pairs(bindButtons) do
            for _, f in ipairs(BindableFeatures) do
                if f.flag == flag then
                    btn2:SetName(f.label.." — [ — ]")
                    break
                end
            end
        end
        UI:Notify("Hotkeys", "All binds cleared", 2)
    end,
})

SetTab:CreateSection("Misc Actions")
SetTab:CreateButton({Name="Respawn Player",Callback=function() firePacketMethod("RespawnPlayer") end})
SetTab:CreateButton({Name="Cancel Death Screen",Callback=function() firePacketMethod("CancelDeathScreen") end})
SetTab:CreateButton({Name="Weather Machine",Callback=function() firePacket("\024") end})
SetTab:CreateButton({Name="Rainbow Machine",Callback=function() firePacket("\025") end})

SetTab:CreateSection("Script Control")
SetTab:CreateButton({Name="⛔  Kill Script",Callback=function()
    UI:Notify("Script","Shutting down…",1.5)
    task.delay(0.7,KillScript)
end})

SetTab:CreateSection("Credits")
SetTab:CreateButton({Name="Made by Xtuhc",Callback=function()
    UI:Notify("Credits","DiveDown v3 — Made by Xtuhc",4)
end})
SetTab:CreateButton({Name="Discord: .xtuhc",Callback=function()
    UI:Notify("Credits","Feel free to message me!",3)
end})

task.delay(0.9,function()
    UI:Notify("DiveDown v3","Loaded! Press ["..UI.ToggleKey.Name.."] to toggle",4)
end)
