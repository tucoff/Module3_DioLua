local ID = "farmmeow.start"
local title = "WOW UM GATO FAZENDEIRO GIGANTE!!!!"
local description = "'Miau sô' ~Som de gato caipira"
local header = [[
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

local Node = require("node")
local Choice = require("choice")
local choices = {}

table.insert(choices, Choice:new(
    "start",
    "Miau sô pra tu também, tchau mal educado."
))

table.insert(choices, Choice:new(
    "farmmeow.joke",
    "COMO ASSIM???? Você pode falar??"
))

local node = Node:new(ID,title,description,header,choices) ---@type Node

return node