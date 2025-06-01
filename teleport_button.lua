local p=game.Players.LocalPlayer
local g=Instance.new("ScreenGui",game.CoreGui)
local b=Instance.new("TextButton",g)
b.Size=UDim2.new(0,100,0,35) b.Position=UDim2.new(0,20,0,200)
b.Text="ลง/ขึ้น" b.BackgroundColor3=Color3.fromRGB(128,0,128)
b.BorderColor3=Color3.fromRGB(255,255,255) b.TextColor3=Color3.new(1,1,1)
b.Font=Enum.Font.GothamBold b.TextSize=22 b.Text=b.Text:upper()
b.Active=true b.Draggable=true

local c=Instance.new("Frame",g)
c.Size=UDim2.new(0,120,0,25) c.Position=UDim2.new(1,-130,1,-35)
c.BackgroundColor3=Color3.new(1,1,1)
c.BorderColor3=Color3.fromRGB(128,0,128) c.BorderSizePixel=2

local l=Instance.new("TextLabel",c)
l.Size=UDim2.new(1,0,1,0) l.BackgroundTransparency=1
l.Text="BY NEXTLEVEL" l.TextColor3=Color3.fromRGB(128,0,128)
l.Font=Enum.Font.GothamBold l.TextSize=16
l.TextXAlignment=Enum.TextXAlignment.Center l.TextYAlignment=Enum.TextYAlignment.Center

local d=false
b.MouseButton1Click:Connect(function()
 local hrp=p.Character and p.Character:FindFirstChild("HumanoidRootPart")
 if hrp then
  if not d then hrp.Anchored=true hrp.CFrame=hrp.CFrame*CFrame.new(0,-10,0) b.Text="ขึ้น/ลง"
  else hrp.Anchored=false hrp.CFrame=hrp.CFrame*CFrame.new(0,10,0) b.Text="ลง/ขึ้น" end
  d=not d
 end
end)