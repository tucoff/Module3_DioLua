local ID = "meowtown.start"

local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.title = "COITADO!!! UM GATO SEM TETO!"
node.description = "Coé bença, o gato mordeu sua lingua?"
node.header = [[
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

--table.insert(node.choices, Choice:new(
--    "meowtown.start",
--    "Meow meow meow"
--))
--
--table.insert(node.choices, Choice:new(
--    "farmmeow.start",
--   "MEOWNNNN!!!!!"
--))



return node