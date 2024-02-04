local nodeLoader = {}

local nodeDictionary = {} ---@type table<string,Node>
local initialNode = nil ---@type Node

local function loadNode(path)
    local success, nodeOrErr = pcall(function()
        return require(path)
    end)
    if not success then 
        warn("Falha ao carregar o node " .. path .. ". Arquivo não encontrado")
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
    loadNode("nodes.meowtown.start")
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

return nodeLoader