local nodeLoader = {}

local nodeDictionary = {} ---@type table<string,Node>
local initialNode = nil ---@type Node
local hasErrors = false

local function loadNode(path)
    local success, nodeOrErr = pcall(function()
        return require(path)
    end)
    if not success then 
        warn("Falha ao carregar o node " .. path .. ". Arquivo não encontrado")
        hasErrors = true
        return
    end
    local node = nodeOrErr ---@type Node
    if nodeDictionary[node.id] ~= nil then
        warn("Falha ao carregar o node " .. path .. ". O ID " .. node.id .. " já está registrado.")
    end
    nodeDictionary[node.id] = node
end

function nodeLoader.loadNodes()
    nodeDictionary = {}
    initialNode =  require("nodes.start")
    nodeDictionary[initialNode.id] = initialNode
    loadNode("nodes.farmmeow.start")
    loadNode("nodes.farmmeow.joke")
    loadNode("nodes.meowtown.start")
    loadNode("nodes.meowtown.question")
    loadNode("nodes.end")
    loadNode("nodes.game_over")
    loadNode("nodes.game_over_real")

    for id, node in pairs(nodeDictionary) do
        for _, choice in pairs(node.choices) do 
            local destinationId = choice.destination
            local destinationNode = nodeDictionary[destinationId]
            if destinationNode == nil then
                warn(string.format("Uma das escolhas do node %s tem como destino um node inexistente: %s", node.id, destinationId))
                hasErrors = true
            end
        end
    end
end

---@return table<string,Node>
function nodeLoader.getNodes()
    return nodeDictionary
end

---@param nodeId string
---@return Node
function nodeLoader.getNode(nodeId)
    return nodeDictionary[nodeId]    
end

function nodeLoader.getInitialNode()
    return initialNode
end

function nodeLoader.hasErrors()
    return hasErrors
end

return nodeLoader