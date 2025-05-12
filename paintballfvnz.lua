local _0x8E9A = Instance.new("ScreenGui")
local _0x3F7C = Instance.new("Frame")
local _0x5B27 = Instance.new("TextButton")
local _0x8275 = Instance.new("TextButton")
local _0xB45A = Instance.new("ImageButton")
local _0xA85F = Instance.new("TextLabel")
local _0x8D23 = Instance.new("TextButton")

_0x8E9A.Name = "Fvnz Menu"
_0x8E9A.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

_0x3F7C.Size = UDim2.new(0, 200, 0, 250)
_0x3F7C.Position = UDim2.new(0, 10, 0, 10)
_0x3F7C.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
_0x3F7C.BackgroundTransparency = 0.1
_0x3F7C.BorderSizePixel = 0
_0x3F7C.AnchorPoint = Vector2.new(0, 0)
_0x3F7C.Parent = _0x8E9A

local _0xF7A1 = Instance.new("UICorner")
_0xF7A1.CornerRadius = UDim.new(0, 10)
_0xF7A1.Parent = _0x3F7C

_0x5B27.Size = UDim2.new(0, 180, 0, 30)
_0x5B27.Position = UDim2.new(0.5, -90, 0.15, -15)
_0x5B27.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
_0x5B27.Text = "AutoFarm (Inactive)"
_0x5B27.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x5B27.TextSize = 14
_0x5B27.Font = Enum.Font.SourceSansBold
_0x5B27.TextTransparency = 0
_0x5B27.Parent = _0x3F7C

local _0xF9E4 = Instance.new("UICorner")
_0xF9E4.CornerRadius = UDim.new(0, 8)
_0xF9E4.Parent = _0x5B27

_0x8275.Size = UDim2.new(0, 90, 0, 30)
_0x8275.Position = UDim2.new(0.5, -45, 0.3, -15)
_0x8275.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
_0x8275.Text = "Activate Script"
_0x8275.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x8275.TextSize = 14
_0x8275.Font = Enum.Font.SourceSansBold
_0x8275.TextTransparency = 0
_0x8275.Parent = _0x3F7C

_0xB45A.Size = UDim2.new(0, 30, 0, 30)
_0xB45A.Position = UDim2.new(0.5, -15, 0.75, -35)
_0xB45A.BackgroundTransparency = 1
_0xB45A.Image = "rbxassetid://1234567890" -- Remplace par le bon ID de l'image
_0xB45A.Parent = _0x3F7C

_0x8D23.Size = UDim2.new(0, 120, 0, 30)
_0x8D23.Position = UDim2.new(0.5, -60, 0.85, -10)
_0x8D23.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
_0x8D23.Text = "Copy Discord Link"
_0x8D23.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x8D23.TextSize = 12
_0x8D23.Font = Enum.Font.SourceSansBold
_0x8D23.TextTransparency = 0
_0x8D23.Parent = _0x3F7C

_0xA85F.Size = UDim2.new(0, 200, 0, 20)
_0xA85F.Position = UDim2.new(0.5, -100, 1, -25)
_0xA85F.BackgroundTransparency = 1
_0xA85F.Text = "Menu created By Fvnz"
_0xA85F.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xA85F.TextSize = 12
_0xA85F.Font = Enum.Font.SourceSans
_0xA85F.TextTransparency = 0
_0xA85F.Parent = _0x3F7C

-- Fonction pour copier le lien Discord
_0x8D23.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/7nnxqSmcyX")
    print("Discord link copied to clipboard!")
end)

-- Toggle ON/OFF pour le script
local _0x74D8 = false
_0x8275.MouseButton1Click:Connect(function()
    _0x74D8 = not _0x74D8
    if _0x74D8 then
        print('✅ | Script Activated')
        _0x5B27.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        _0x5B27.Text = "AutoFarm (Active)"
        _0x8275.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        _0x8275.Text = "Deactivate Script"
    else
        print('❌ | Script Deactivated')
        _0x5B27.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        _0x5B27.Text = "AutoFarm (Inactive)"
        _0x8275.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        _0x8275.Text = "Activate Script"
    end
end)

-- Script d'AutoFarm
local _0x5F1A = string.gsub(tostring(math.random()):sub(3), "%d", function(c)
    return string.char(96 + math.random(1, 26))
end)
print('✅ | Running AutoFarm Script with GUI toggle! [SessionID ' .. _0x5F1A .. ']')

local _0x9C79 = game:GetService("Players")
local _0x6891 = _0x9C79.LocalPlayer
local _0x576C = game:GetService("Workspace")

local function _0xB7D4(func)
    local _0x9E6A, _0xA73B = pcall(func)
    if not _0x9E6A then
        warn('⛔ | Error occurred: ' .. _0xA73B .. ' [SessionID ' .. _0x5F1A .. ']')
    end
end

local function _0xE08F(_0x52DA, _0x79A1)
    local _0xC943 = _0x52DA * CFrame.new(0, 0, -15)
    for _, _0x332A in ipairs(_0x576C.__THINGS.__ENTITIES:GetChildren()) do
        if _0x332A:FindFirstChild("HumanoidRootPart") then
            local _0xA18A = _0x332A.HumanoidRootPart
            _0xA18A.CanCollide = false
            _0xA18A.Anchored = true
            _0xA18A.CFrame = _0xC943
        elseif _0x332A:FindFirstChild("Hitbox") then
            local _0x534B = _0x332A:GetAttribute("Directory")
            if not (_0x534B == "White" and _0x332A:GetAttribute("OwnerUID") == _0x6891.UserId) and
               (_0x79A1 and _0x534B ~= _0x79A1.Name) then
                _0x332A.Hitbox.CanCollide = false
                _0x332A.Hitbox.Anchored = true
                _0x332A.Hitbox.CFrame = _0xC943 * CFrame.new(math.random(-5, 5), 0, math.random(-5, 5))
            end
        end
    end
    for _, _0xB27F in ipairs(_0x9C79:GetPlayers()) do
        if _0xB27F ~= _0x6891 and _0xB27F.Character and _0xB27F.Character:FindFirstChild("HumanoidRootPart") then
            if not _0x79A1 or _0x79A1.Name ~= _0xB27F.Team.Name then
                if not _0xB27F.Character:FindFirstChild("ForceField") then
                    local _0xAE6A = _0xB27F.Character.HumanoidRootPart
                    _0xAE6A.CanCollide = false
                    _0xAE6A.Anchored = true
                    _0xAE6A.CFrame = _0xC943 * CFrame.new(math.random(-5, 5), 0, math.random(-5, 5))
                end
            end
        end
    end
end

while wait(0.1) do
    _0xB7D4(function()
        if not _0x74D8 or not _0x6891.Character or not _0x6891.Character:FindFirstChild("HumanoidRootPart") then
            return
        end
        local _0x524F = _0x6891.Character.HumanoidRootPart.CFrame
        local _0x3D65 = _0x6891.Team
        _0xE08F(_0x524F, _0x3D65)
    end)
end
