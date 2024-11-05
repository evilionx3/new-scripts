-- all this code does is uses the roblox "drag detector" object and puts it in any unanchored parts
-- made by evilionx3 
-- .gg/getluna
local function addDragDetectorToPart(part)
    if part:IsA("BasePart") and not part.Anchored then
        if not part:FindFirstChildOfClass("DragDetector") then
            local dragDetector = Instance.new("DragDetector")
            dragDetector.RunLocally = true
            dragDetector.MaxForce = math.huge 
            dragDetector.MaxActivationDistance = math.huge 
            dragDetector.Parent = part
        end
    end
end

for _, part in ipairs(workspace:GetDescendants()) do
    addDragDetectorToPart(part)
end

workspace.DescendantAdded:Connect(function(descendant)
    addDragDetectorToPart(descendant)
end) 
