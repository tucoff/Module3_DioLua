local ID = "start"
local title = "Gatos falam?"
local description = "Meow meow meow, meow meow meow, mown meaw miau. Mewn meow meow?"
local header = [[
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

local Node = require("node")
local Choice = require("choice")
local choices = {}

table.insert(choices, Choice:new(
    "meowtown.start",
    "Meow meow meow"
))

table.insert(choices, Choice:new(
    "farmmeow.start",
    "MEOWNNNN!!!!!"
))

table.insert(choices, Choice:new(
    "end",
    "(...caminho silencioso assustador...)"
))

local node = Node:new(ID,title,description,header,choices) ---@type Node

return node