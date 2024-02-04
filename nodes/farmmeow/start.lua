local ID = "farmmeow.start"

local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.title = "WOW UM GATO FAZENDEIRO GIGANTE!!!!"
node.description = "Miau sô"
node.header = [[
                                  _      _
           (c\-.--/a)
            |q: p   /\_            _____
          __\(_/  ).'  '---._.---'`     '---.__
         /  (Y_)_/             /        : \-._ \
 !!!!,,, \_))'-';             (       _/   \  '\\_
!!II!!!!!IIII,, \_             \     /      \_  '.\
 !IIsndIIIII!!!!,,\     /_      \   |----.___ '-. \'.__
 !!!IIIIIIIIIIIIIIII\   | '--._.-'  _)       \  |  `'--'
     '''!!!!IIIIIII/   .',, ((___.-'         / /
           '''!!!!/  _/!!!!IIIIIII!!!!!,,,,,;,;,,,.....
                 | /IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
                 | \   ''IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
                 \_,)     '''''!!!!IIIIIIIIIIIIIIII!!!!!!!!
                                   ''''''''''!!!!!!!!!!!!!!!
]]

--table.insert(node.choices, Choice:new(
--    "meowtown.start",
--    "Meow meow meow"
--))
--
--table.insert(node.choices, Choice:new(
--    "farmmeow.start",
--    "MEOWNNNN!!!!!"
--))



return node