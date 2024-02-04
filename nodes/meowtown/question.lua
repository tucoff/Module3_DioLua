local ID = "meowtown.question"
local title = "Gatinho informado"
local description = "'Sei n, só gato por aqui fecho' ~Papinho de gato maloqueiro"
local header = [[
  ,-.       _,---._ __  / \
 /  )    .-'       `./ /   \
(  (   ,'            `/    /|
 \  `-"             \'\   / |
  `.              ,  \ \ /  |
   /`.          ,'-`----Y   |
  (            ;        |   '
  |  ,-.    ,-'         |  /
  |  | (   |        kkk | /
  )  |  \  `.___________|/
  `--'   `--'
]]

local Node = require("node")
local Choice = require("choice")
local choices = {}

table.insert(choices, Choice:new(
    "start",
    "Tô engolindo isso aí não, vomimbora que é lucro."
))

local node = Node:new(ID, title, description, header, choices) ---@type Node

return node