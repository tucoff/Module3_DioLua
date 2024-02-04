local ID = "farmmeow.joke"
local title = "Será que ele pode mesmo falar???.."
local description = "'Miau sô...' ~Repete o som de gato caipira"
local header = [[
                                  _      _
           (c\-.--/a)
            |_: _   /\_            _____
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
    "Compreensível, tenha um bom dia."
))

table.insert(choices, Choice:new(
    "farmmeow.joke",
    "EU SEI QUE VOCÊ PODE FALAR! MOSTRE A SUA VERDADEIRA FACE!!!"
))

local node = Node:new(ID,title,description,header,choices) ---@type Node

return node