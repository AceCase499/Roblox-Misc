local lava = script.Parent

local function Touch(part)
	local burned = script.Parent.Burned:Clone()
	burned.Fire.Enabled = true
	burned.Vanish.Enabled = true
	burned.Parent = workspace
	burned.Position = part.Position
	burned.Fire.Color = Color3.new(11,11,11)
	burned.Fire.SecondaryColor = Color3.new(0,0,0)
	part:Destroy()
end

lava.Touched:connect(Touch)