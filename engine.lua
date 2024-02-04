local  class = require("libs.middleclass")
local ansicolorsx = require("libs.ansicolorsx")
local nodeLoader = require("node_loader")

local Engine = class("Engine")

function Engine:initialize()
    
end

local function print(...)
    _G.print(ansicolorsx(...))
end

function Engine:runMainLoop()
    while not game.isOver do 
        local node = game.activeNode

        local isWindows = type(package) == 'table' and type(package.config) == 'string' and package.config:sub(1,1) == '\\'
        if isWindows then os.execute("cls")
        else os.execute("clear") end

        self:printNode(node)

        local validChoices = self:getValidChoices(node)

        self:showChoices(validChoices)
        
        local choiceIndex = self:askForInput(#validChoices)
        local choice = validChoices[choiceIndex]
        local destinationId = choice.destination
        local destinationNode = nodeLoader.getNode(destinationId)
        game.activeNode = destinationNode

        if destinationNode.id == "game_over_real" then
            game.isOver = true
        end
    end
end

function Engine:printNode(node)
    if node.header then 
        print("%{black}" .. node.header)
    end
    print("%{red}======" .. node.title)
    print("%{yellow}" .. node.description)
    print("%{red}==================================================")
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

function Engine:askForInput(amount)
    while true do
        io.write("> ")
        local awnser = tonumber(io.read())

        if awnser ~= nil and awnser > 0 and awnser <= amount then
            return awnser    
        else 
            print("%{red}Resposta inválida, tente novamente.")
        end
    end
end
    
return Engine