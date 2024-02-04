local  class = require("libs.middleclass")
local nodeLoader = require("node_loader")

local Engine = class("Engine")

function Engine:initialize()
    
end

function Engine:runMainLoop()
    local node = game.activeNode

    while not game.isOver do 
        self:printNode(node)

        local validChoices = self:getValidChoices(node)

        self:showChoices(validChoices)

        game.isOver = true
    end
end

function Engine:printNode(node)
    if node.header then 
        print(node.header)
    end
    print("======" .. node.title)
    print(node.description)
    print("==================================================")
end

function Engine:getValidChoices(node)
    local result = {}

    for _, choice in pairs(node.choices) do      
        if (not choice:hasCondition()) or (choice:hasCondition() and choice:runCondition()) then
            table.insert(result, choice)
        end  
    end

    return result
end

function Engine:showChoices(choices)
    for i, choice in pairs(choices) do
        print(string.format("%d) %s", i, choice.description))
    end
end
    
return Engine