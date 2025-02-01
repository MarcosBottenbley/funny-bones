local class = require("lib.middleclass")
local HasTransformer = require("modules.has_transformer")
local HasSkeleton = require("modules.has_skeleton")
local HasAttachments = require("modules.has_attachments")

--[[
	Actor
	This is what ties everything together. 
	Each actor has a reference to a skeleton, its own transformer/eventhandler, and a list of attachments.
--]]
local MActor = class("MActor")
MActor:include(HasTransformer)
MActor:include(HasSkeleton)
MActor:include(HasAttachments)

--[[
	Animation
	Animations are basically keyframe data containers.
	They also come with utility methods for finding keyframe ranges and interpolating between them.
--]]
local MAnimation = class("MAnimation")

--[[
	Attachment
	An oriented visual representation of a bone on an actor.
--]]
local MAttachment = class("MAttachment")

--[[
	Bone
	Defines bone hierarchies, the shape of a skeleton, the skeleton bind-pose, and bone rendering order.
	These are at the very bottom of the data structure chain.
--]]
local MBone = class("MBone")

--[[
	EventHandler
	Registers and listens for animation events on an actor.
--]]
local MEventHandler = class("MEventHandler")

--[[
	Skeleton
	A simple containment data structure for bones, animations, and skins.
	Actors hold a reference to a skeleton, which defines what animations and skins it can use.
--]]
local MSkeleton = class("MSkeleton")

--[[
	Transformer
	This is what makes the actor move.
	To make the actor do anything, you must register transformations with its transformer.
	The transformer is also used as an interface to the bone orientations of an actor.
--]]
local MTransformer = class("MTransformer")

--[[
	Visual
	Used by Attachments as a wrapper/abstraction object for anything that could be used to render as an attachment.
	In most cases, the backing visual element will be some type of Drawable.
	The backing visual element could be an image, a particle emitter, a canvas, etc.
	We could even extend this to objects with a draw method (like our Actor object).
--]]
local MVisual = class("MVisual")

return {
    MActor,
    MAnimation,
    MAttachment,
    MBone,
    MEventHandler,
    MSkeleton,
    MTransformer,
    MVisual
}