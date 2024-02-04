local ID = "meowtown.start"
local title = "COITADO!!! UM GATO SEM TETO!"
local description = "'Coé bença, o gato mordeu sua lingua?' ~Som de gato maloqueiro"
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
    "Nossa, que grosso, foi mal cara, tava só olhando, fique bem. 👍"
))

table.insert(choices, Choice:new(
    "meowtown.question",
    "Sô não irmão, preciso saber onde estão as pessoas, sabe de algo?"
))

local node = Node:new(ID, title, description, header, choices) ---@type Node

return node