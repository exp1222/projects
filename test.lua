while do true
    wait(1)

local Buttons = workspace:WaitForChild("Buttons")
local lp = game.Players.LocalPlayer
local char = lp.Character

for i,v in pairs(Buttons:GetDescendants()) do
    if v and v:IsA("ProximityPrompt") and v.Name == "ButtonPrompt" and v.Parent:FindFirstChild("PointLight") and v.Parent:FindFirstChild("PointLight").Enabled == true then
        local orgpos = char.HumanoidRootPart.Position
        char.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position+Vector3.new(0,1,-1))
        wait(0.30)
        fireproximityprompt(v)
        wait(0.1)
        char.HumanoidRootPart.CFrame = CFrame.new(orgpos)
    end
end
end
