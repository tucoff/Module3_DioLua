local class = require("libs.middleclass")

---@class Node
local Node = class("Node")

function Node:initialize(id, title, description, header,choices)
    self.id = id ---@type string
    self.title = title ---@type string
    self.description = description ---@type string
    self.header = header ---@type string
    self.choices = choices ---@type Choice
end

return Node