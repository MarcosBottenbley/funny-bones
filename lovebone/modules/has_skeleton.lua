local HasSkeleton = {}

function HasSkeleton:allocate(skeleton)
    if (skeleton.class = Skeleton) then
        self.skeleton = skeleton
    end
end

function HasSkeleton:getSkeleton()
    return self.skeleton
end

function HasSkeleton:setSkeleton(skeleton)
    if (skeleton.class = Skeleton) then
        self.skeleton = skeleton
    end
end

return HasSkeleton