local class = require("libs.middleclass")

---@class Choice
local Choice = class("Choice")
local destination = ""
local description = ""


function Choice:initialize(destination, description)
    self.destination = destination ---@type string
    self.description = description ---@type string
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