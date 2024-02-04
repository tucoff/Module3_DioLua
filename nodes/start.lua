local ID = "start"

local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.title = "Gatos falam?"
node.description = "Meow meow meow, meow meow meow, mown meaw miau. Mewn meow meow?"
node.header = [[
                      /^--^\     /^--^\     /^--^\
                      \____/     \____/     \____/
                     /      \   /      \   /      \
                    |        | |        | |        |
                     \__  __/   \__  __/   \__  __/
|^|^|^|^|^|^|^|^|^|^|^|^\ \^|^|^|^/ /^|^|^|^|^\ \^|^|^|^|^|^|^|^|^|^|^|^|
| | | | | | | | | | | | |\ \| | |/ /| | | | | | \ \ | | | | | | | | | | |
########################/ /######\ \###########/ /#######################
| | | | | | | | | | | | \/| | | | \/| | | | | |\/ | | | | | | | | | | | |
|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
]]

table.insert(node.choices, Choice:new(
    "meowtown.start",
    "Meow meow meow"
))

table.insert(node.choices, Choice:new(
    "farmmeow.start",
    "MEOWNNNN!!!!!"
))



return node