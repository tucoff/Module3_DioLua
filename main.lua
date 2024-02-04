local GameData = require("game_data")
local Engine = require("engine")
local nodeLoader = require("node_loader")

os.execute("chcp 65001 > NUL")
warn("@on")

local gameData = GameData:new() ---@type GameData
_G.game = gameData

nodeLoader.loadNodes()
game.activeNode = nodeLoader.getInitialNode()

local engine = Engine:new() ---@type Engine
engine:runMainLoop()