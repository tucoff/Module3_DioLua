local ID = "end"
local title = "Morte"
local description = "Você vai morrer."
local header = [[
                                                       
         88                               88           
         88                         ,d    88           
         88                         88    88           
 ,adPPYb,88  ,adPPYba, ,adPPYYba, MM88MMM 88,dPPYba,   
a8"    `Y88 a8P_____88 ""     `Y8   88    88P'    "8a  
8b       88 8PP""""""" ,adPPPPP88   88    88       88  
"8a,   ,d88 "8b,   ,aa 88,    ,88   88,   88       88  
 `"8bbdP"Y8  `"Ybbd8"' `"8bbdP"Y8   "Y888 88       88  
                                                       
               ...
             ;::::;
           ;::::; :;
         ;:::::'   :;
        ;:::::;     ;.
       ,:::::'       ;           OOO\
       ::::::;       ;          OOOOO\
       ;:::::;       ;         OOOOOOOO
      ,;::::::;     ;'         / OOOOOOO
    ;:::::::::`. ,,,;.        /  / DOOOOOO
  .';:::::::::::::::::;,     /  /     DOOOO
 ,::::::;::::::;;;;::::;,   /  /        DOOO
;`::::::`'::::::;;;::::: ,#/  /          DOOO
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /              DOO
`:`:::::::`;:::::: ;::::::#/               DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O
  `:::::`::::::::;' /  / `:#
   ::::::`:::::;'  /  /   `#
]]

local Node = require("node")
local Choice = require("choice")
local choices = {}

table.insert(choices, Choice:new(
    "game_over",
    "Não há nada que posso fazer. Desisto."
))

table.insert(choices, Choice:new(
    "game_over",
    "Nah, I'd win."
))

local node = Node:new(ID, title, description, header, choices) ---@type Node

return node