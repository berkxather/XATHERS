-- Aimbot Scripti yüklendiyse devam eder
repeat task.wait() until getgenv().ExunysDeveloperAimbot
local Aimbot = getgenv().ExunysDeveloperAimbot

-- Fluent UI'yi yükle
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/ElagonDev/Fluent/main/source.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Aimbot Settings",
    SubTitle = "Fluent UI",
    TabWidth = 160,
    Size = UDim2.fromOffset(520, 400),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.RightShift
})

local AimbotTab = Window:AddTab({Title = "Aimbot", Icon = "🎯"})

-- Ayarlar sekmesi
AimbotTab:Toggle({
    Title = "Enabled",
    Default = Aimbot.Settings.Enabled,
    Callback = function(Value)
        Aimbot.Settings.Enabled = Value
    end
})

AimbotTab:Toggle({
    Title = "Team Check",
    Default = Aimbot.Settings.TeamCheck,
    Callback = function(Value)
        Aimbot.Settings.TeamCheck = Value
    end
})

AimbotTab:Toggle({
    Title = "Alive Check",
    Default = Aimbot.Settings.AliveCheck,
    Callback = function(Value)
        Aimbot.Settings.AliveCheck = Value
    end
})

AimbotTab:Toggle({
    Title = "Wall Check",
    Default = Aimbot.Settings.WallCheck,
    Callback = function(Value)
        Aimbot.Settings.WallCheck = Value
    end
})

AimbotTab:Toggle({
    Title = "Offset To Move Direction",
    Default = Aimbot.Settings.OffsetToMoveDirection,
    Callback = function(Value)
        Aimbot.Settings.OffsetToMoveDirection = Value
    end
})

AimbotTab:Slider({
    Title = "Offset Increment",
    Description = "Hedef kayması miktarı",
    Default = Aimbot.Settings.OffsetIncrement,
    Min = 0,
    Max = 30,
    Callback = function(Value)
        Aimbot.Settings.OffsetIncrement = Value
    end
})

AimbotTab:Slider({
    Title = "Sensitivity",
    Description = "CFrame hassasiyeti",
    Default = Aimbot.Settings.Sensitivity,
    Min = 0,
    Max = 1,
    Rounding = true,
    Callback = function(Value)
        Aimbot.Settings.Sensitivity = Value
    end
})

AimbotTab:Slider({
    Title = "Sensitivity2",
    Description = "mousemoverel hassasiyeti",
    Default = Aimbot.Settings.Sensitivity2,
    Min = 1,
    Max = 10,
    Callback = function(Value)
        Aimbot.Settings.Sensitivity2 = Value
    end
})

AimbotTab:Dropdown({
    Title = "LockPart",
    Values = {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso"},
    Multi = false,
    Default = Aimbot.Settings.LockPart,
    Callback = function(Value)
        Aimbot.Settings.LockPart = Value
    end
})

AimbotTab:Dropdown({
    Title = "LockMode",
    Values = {"CFrame", "MouseMoveRel"},
    Default = Aimbot.Settings.LockMode == 1 and "CFrame" or "MouseMoveRel",
    Callback = function(Value)
        Aimbot.Settings.LockMode = (Value == "CFrame" and 1 or 2)
    end
})

AimbotTab:Toggle({
    Title = "Toggle Mode",
    Default = Aimbot.Settings.Toggle,
    Callback = function(Value)
        Aimbot.Settings.Toggle = Value
    end
})
