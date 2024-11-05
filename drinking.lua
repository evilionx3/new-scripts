local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animationId = 163203876

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

local tool = Instance.new("Tool")
tool.Name = "alcoholic tool"
tool.RequiresHandle = true

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1, 1, 3)
handle.Anchored = false
handle.CanCollide = false
handle.Transparency = 1
handle.Parent = tool

tool.GripForward = Vector3.new(0, 0, -1)
tool.GripRight = Vector3.new(1, 0, 0)
tool.GripUp = Vector3.new(0, 1, 0)

tool.Parent = player.Backpack

tool.Activated:Connect(function()
    animationTrack:Play()
end)
