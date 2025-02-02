local HasBones = {}

local function HasBones:allocate()
    self.bones = {}
    self.bones["root"] = Bone()
end

return HasBones