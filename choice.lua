local class = require("libs.middleclass")

---@class Choice
local Choice = class("Choice")

function Choice:initialize()
    self.destination = nil ---@type string
    self.description = nil ---@type string
    self.condition = nil
end

--- Retorna se existe uma condição
function Choice:hasCondition()
    return self.condition ~= nil    
end

function Choice:runCondition()
    return true
end

return Choice