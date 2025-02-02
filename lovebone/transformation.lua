-- Helper methods for transformation tables.
local class = require("lib.middleclass")
local MTransformation = class("MTransformation")

function MTransformation:initilize(id, rotation, translateX, translateY, scaleX, scaleY, layer, visual, vFlip, hFlip)
    self.id = id;
	self.rotation = tonumber(rotation) or 0
	self.translateX = tonumber(translateX) or 0
	self.translateY = tonumber(translateY) or 0
	self.scaleX = tonumber(scaleX) or 1
	self.scaleY = tonumber(scaleY) or 1
end

return MTransformation
