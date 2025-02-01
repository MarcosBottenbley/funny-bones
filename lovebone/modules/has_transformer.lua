local HasTransformer = {}

function HasTransformer:allocate(transformer)
    self.transformer = transformer or Transformer:new()
end

function HasTransformer:getTransformer()
    return self.transformer
end

function HasTransformer:setTransformer(transformer)
    self.transformer = transformer
end

return HasTransformer