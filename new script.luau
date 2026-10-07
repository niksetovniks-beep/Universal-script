local function _0x0B9F(url)
local _0xC238, _0x925F = pcall(function() return loadstring(game:HttpGet(url))() end)
return _0xC238 and _0x925F or nil
end
local _0x200F = _0x0B9F("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua") or
_0x0B9F("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/main.lua")
if not _0x200F then return end
local _0x9548 = _0x200F:CreateWindow({
Title ="Universal Bypass Hub",
SubTitle ="v17 Final Stable",
TabWidth = 160,
Size = UDim2.fromOffset(580, 460),
Acrylic = false,
Theme ="Dark"})local _0x71CB = {
aimbot = false,
silentAim = true,
aimFOV = 150,
aimSmooth = 2,
aimPart ="Head",
noRecoil = true,
speedhack = false,
speedValue = 60,
flyhack = false,
flySpeed = 50,
noclip = false,
infJump = false,
esp = false,
espBoxes = false,
espNames = false,
espHealth = false
}
local _0x194A = game:GetService("Players")
local _0x46B5 = game:GetService("RunService")
local _0xC2D8 = game:GetService("UserInputService")
local _0x5AE8 = _0x194A.LocalPlayer
local _0xBB30 = workspace.CurrentCamera
local _0xB143 = _0x5AE8:GetMouse()local _0x4A1B = Drawing.new("Circle")
_0x4A1B.Thickness = 1
_0x4A1B.Color = Color3.fromRGB(255, 255, 255)
_0x4A1B.Transparency = 0.8
_0x4A1B.Filled = falselocal _0x2637 = {
Combat = _0x9548:AddTab({ Title ="Combat", Icon ="crosshair"}),
Visuals = _0x9548:AddTab({ Title ="Visuals", Icon ="eye"}),
Movement = _0x9548:AddTab({ Title ="Movement", Icon ="wind"}),
Misc = _0x9548:AddTab({ Title ="Misc", Icon ="box"})
}_0x2637.Combat:AddToggle("AimToggle", {Title ="Enable Aimbot", Default = false}):OnChanged(function(v) _0x71CB.aimbot = v end)
_0x2637.Combat:AddToggle("SilentToggle", {Title ="Silent Aim (Bullet Redir)", Default = true}):OnChanged(function(v) _0x71CB.silentAim = v end)
_0x2637.Combat:AddToggle("RecoilToggle", {Title ="No Recoil & Spread", Default = true}):OnChanged(function(v) _0x71CB.noRecoil = v end)
local _0x0DD3 = _0x2637.Combat:AddKeybind("AimKey", {Title ="Aim Key", Default ="MouseButton2", Mode ="Hold"})
_0x2637.Combat:AddSlider("FOV", {Title ="FOV Size", Default = 150, Min = 10, Max = 800, Rounding = 0}):OnChanged(function(v) _0x71CB.aimFOV = v end)
_0x2637.Combat:AddSlider("Smooth", {Title ="Smoothing", Default = 2, Min = 1, Max = 20, Rounding = 1}):OnChanged(function(v) _0x71CB.aimSmooth = v end)_0x2637.Visuals:AddToggle("ESPMaster", {Title ="Enable ESP", Default = false}):OnChanged(function(v) _0x71CB.esp = v end)
_0x2637.Visuals:AddToggle("ESPBox", {Title ="Show Boxes (Highlights)", Default = false}):OnChanged(function(v) _0x71CB.espBoxes = v end)
_0x2637.Visuals:AddToggle("ESPName", {Title ="Show Names", Default = false}):OnChanged(function(v) _0x71CB.espNames = v end)
_0x2637.Visuals:AddToggle("ESPHealth", {Title ="Show Health", Default = false}):OnChanged(function(v) _0x71CB.espHealth = v end)_0x2637.Movement:AddToggle("SpeedToggle", {Title ="Safe Speed (Bypass)", Default = false}):OnChanged(function(v) _0x71CB.speedhack = v end)
_0x2637.Movement:AddSlider("SpeedVal", {Title ="WalkSpeed Value", Default = 60, Min = 16, Max = 500, Rounding = 0}):OnChanged(function(v) _0x71CB.speedValue = v end)
_0x2637.Movement:AddToggle("FlyToggle", {Title ="Smooth Fly", Default = false}):OnChanged(function(v) _0x71CB.flyhack = v end)
_0x2637.Movement:AddSlider("FlySpeedVal", {Title ="Fly Speed", Default = 50, Min = 10, Max = 300, Rounding = 0}):OnChanged(function(v) _0x71CB.flySpeed = v end)_0x2637.Misc:AddToggle("NoclipToggle", {Title ="Noclip", Default = false}):OnChanged(function(v) _0x71CB.noclip = v end)
_0x2637.Misc:AddToggle("JumpToggle", {Title ="Infinite Jump", Default = false}):OnChanged(function(v) _0x71CB.infJump = v end)local function _0xE37E()
local _0x2B05, _0xC6FF = nil, _0x71CB.aimFOV
local _0x2F63 = _0xC2D8:GetMouseLocation()
for _, v in pairs(_0x194A:GetPlayers()) do
if v ~= _0x5AE8 and v.Character then
local _0x140C = v.Character:FindFirstChild(_0x71CB.aimPart) or v.Character.PrimaryPart
local _0x9BA4 = v.Character:FindFirstChildOfClass("Humanoid")
if _0x140C and _0x9BA4 and _0x9BA4.Health > 0 then
local _0x0B62, _0x4B23 = _0xBB30:WorldToViewportPoint(_0x140C.Position)
if _0x4B23 then
local _0xBFB8 = (Vector2.new(_0x0B62.X, _0x0B62.Y) - _0x2F63).Magnitude
if _0xBFB8 < _0xC6FF then
_0x2B05 = v
_0xC6FF = _0xBFB8
end
end
end
end
end
return _0x2B05
endlocal _0x878F
_0x878F = hookmetamethod(game,"__index", function(self, index)
if not checkcaller() and _0x71CB.silentAim and self == _0xB143 and (index =="Hit"or index =="Target") then
local _0x2B05 = _0xE37E()
if _0x2B05 and _0x2B05.Character then
local _0x140C = _0x2B05.Character:FindFirstChild(_0x71CB.aimPart) or _0x2B05.Character.PrimaryPart
if _0x140C then return (index =="Hit"and _0x140C.CFrame or _0x140C) end
end
end
return _0x878F(self, index)
end)_0x46B5.RenderStepped:Connect(function()
_0x4A1B.Visible = (_0x71CB.aimbot or _0x71CB.silentAim)
_0x4A1B.Radius = _0x71CB.aimFOV
_0x4A1B.Position = _0xC2D8:GetMouseLocation()
if _0x71CB.aimbot and _0x0DD3:GetState() then
local _0x2B05 = _0xE37E()
if _0x2B05 and _0x2B05.Character then
local _0x140C = _0x2B05.Character:FindFirstChild(_0x71CB.aimPart) or _0x2B05.Character.PrimaryPart
if _0x140C then
local _0x95C0 = CFrame.new(_0xBB30.CFrame.Position, _0x140C.Position)
_0xBB30.CFrame = _0xBB30.CFrame:Lerp(_0x95C0, 1 / math.max(_0x71CB.aimSmooth, 1))
end
end
end
end)
_0x46B5.Heartbeat:Connect(function(dt)
local _0x4C54 = _0x5AE8.Character
local _0x8C68 = _0x4C54 and _0x4C54:FindFirstChild("HumanoidRootPart")
if not _0x8C68 then return end
if _0x71CB.noclip then
for _, v in pairs(_0x4C54:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end
end
if _0x71CB.speedhack and not _0x71CB.flyhack then
local _0x9BA4 = _0x4C54:FindFirstChildOfClass("Humanoid")
if _0x9BA4 and _0x9BA4.MoveDirection.Magnitude > 0 then
_0x8C68.CFrame = _0x8C68.CFrame + (_0x9BA4.MoveDirection * (_0x71CB.speedValue / 10) * dt * 10)
end
end
if _0x71CB.flyhack then
local _0xAC73 = Vector3.new(0,0,0)
if _0xC2D8:IsKeyDown(Enum.KeyCode.W) then _0xAC73 = _0xAC73 + _0xBB30.CFrame.LookVector end
if _0xC2D8:IsKeyDown(Enum.KeyCode.S) then _0xAC73 = _0xAC73 - _0xBB30.CFrame.LookVector end
if _0xC2D8:IsKeyDown(Enum.KeyCode.A) then _0xAC73 = _0xAC73 - _0xBB30.CFrame.RightVector end
if _0xC2D8:IsKeyDown(Enum.KeyCode.D) then _0xAC73 = _0xAC73 + _0xBB30.CFrame.RightVector end
if _0xC2D8:IsKeyDown(Enum.KeyCode.Space) then _0xAC73 = _0xAC73 + Vector3.new(0,1,0) end
if _0xC2D8:IsKeyDown(Enum.KeyCode.LeftControl) then _0xAC73 = _0xAC73 - Vector3.new(0,1,0) end
_0x8C68.Velocity = Vector3.new(0, 0.1, 0)
_0x8C68.CFrame = _0x8C68.CFrame + (_0xAC73 * _0x71CB.flySpeed * dt)
end
end)_0xC2D8.JumpRequest:Connect(function()
if _0x71CB.infJump and _0x5AE8.Character then
local _0x9BA4 = _0x5AE8.Character:FindFirstChildOfClass("Humanoid")
if _0x9BA4 then _0x9BA4:ChangeState("Jumping") end
end
end)local function _0xFF88(plr)
local _0x3208 = Instance.new("Highlight")
local _0x898D = Instance.new("BillboardGui")
_0x898D.Size = UDim2.new(0, 200, 0, 50)
_0x898D.AlwaysOnTop = true
_0x898D.StudsOffset = Vector3.new(0, 3, 0)
local _0xE7ED = Instance.new("TextLabel", _0x898D)
_0xE7ED.Size = UDim2.new(1, 0, 1, 0)
_0xE7ED.BackgroundTransparency = 1
_0xE7ED.Font = Enum.Font.GothamBold
_0xE7ED.TextSize = 13
_0xE7ED.TextColor3 = Color3.new(1, 1, 1)
_0x46B5.RenderStepped:Connect(function()
if not _0x71CB.esp or not plr.Character or not plr.Parent then
_0x3208.Parent = nil
_0x898D.Parent = nil
return
end
local _0x4C54 = plr.Character
local _0x9BA4 = _0x4C54:FindFirstChildOfClass("Humanoid")
_0x3208.Parent = _0x4C54
_0x3208.Enabled = _0x71CB.espBoxes
_0x3208.FillColor = (plr.TeamColor == _0x5AE8.TeamColor and Color3.new(0,1,0) or Color3.new(1,0,0))
if _0x71CB.espNames or _0x71CB.espHealth then
_0x898D.Parent = _0x4C54:FindFirstChild("Head") or _0x4C54.PrimaryPart
local _0x5EF9 =""if _0x71CB.espNames then _0x5EF9 = _0x5EF9 .. plr.Name .."\n"end
if _0x71CB.espHealth and _0x9BA4 then _0x5EF9 = _0x5EF9 .."HP: ".. math.floor(_0x9BA4.Health) end
_0xE7ED.Text = _0x5EF9
else
_0x898D.Parent = nil
end
end)
end
_0x194A.PlayerAdded:Connect(_0xFF88)
for _, _0x140C in pairs(_0x194A:GetPlayers()) do if _0x140C ~= _0x5AE8 then _0xFF88(_0x140C) end end
_0x200F:Notify({ Title ="Universal Hub V17", Content ="All Tabs Loaded Successfully!", Duration = 5 })