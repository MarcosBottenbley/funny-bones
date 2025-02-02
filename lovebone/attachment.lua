--[[
	Attachment
	An oriented visual representation of a bone on an actor.
--]]

local class = require("lib.middleclass")
local MAttachment = class("MAttachment")
local util = RequireLibPart("util")

function MAttachment:newAttachment(visual)
	if (visual) then
		self:SetVisual(visual)
	end
	--t.Origin = {0,0}
	self:SetRotation(0)
	self:SetTranslation(0, 0)
	self:SetScale(1, 1)
	self:SetLayerOffset(0)
	self:SetColor(255, 255, 255, 255)
end

function MAttachment:SetVisual(vis)
	if (not vis or not util.isType(vis, "Visual")) then
		error(util.errorArgs("BadMeta", 1, "SetVisual", "Visual", tostring(util.Meta.Visual), tostring(getmetatable(vis))))
	end
	self.Visual = vis
end
function MAttachment:GetVisual()
	return self.Visual
end

function MAttachment:SetColor(...)
	self.Color = self.Color or {}
	local color = {...}
	color[4] = color[4] or 255
	for i = 1, 4 do
		if (not tonumber(color[i])) then
			error(util.errorArgs("BadArg", i, "SetColor", "number", type(color[i])))
		end
		self.Color[i] = tonumber(color[i])
	end
end
function MAttachment:GetColor()
	return unpack(self.Color)
end

function MAttachment:SetLayerOffset(layer)
	if (not layer or not tonumber(layer)) then
		error(util.errorArgs("BadArg", 1, "SetLayerOffset", "number", type(layer)))
	end
	self.LayerOffset = tonumber(layer)
end
function MAttachment:GetLayerOffset()
	return self.LayerOffset
end
--[[
function MAttachment:SetOrigin(x, y)
	self.Origin = {x, y}
end
function MAttachment:GetOrigin()
	return unpack(self.Origin)
end
]]
function MAttachment:SetRotation(angle)
	if (not angle or not tonumber(angle)) then
		error(util.errorArgs("BadArg", 1, "SetRotation", "number", type(angle)))
	end
	self.Rotation = tonumber(angle)
end
function MAttachment:GetRotation()
	return self.Rotation
end

function MAttachment:SetTranslation(x, y)
	if (not x or not tonumber(x)) then
		error(util.errorArgs("BadArg", 1, "SetTranslation", "number", type(x)))
	elseif (not y or not tonumber(y)) then
		error(util.errorArgs("BadArg", 2, "SetTranslation", "number", type(y)))
	end
	self.Translation = {tonumber(x), tonumber(y)}
end
function MAttachment:GetTranslation()
	return unpack(self.Translation)
end

function MAttachment:SetScale(x, y)
	if (not x or not tonumber(x)) then
		error(util.errorArgs("BadArg", 1, "SetScale", "number", type(x)))
	elseif (not y or not tonumber(y)) then
		error(util.errorArgs("BadArg", 2, "SetScale", "number", type(y)))
	end
	self.Scale = {tonumber(x), tonumber(y)}
end
function MAttachment:GetScale()
	return unpack(self.Scale)
end

return newAttachment