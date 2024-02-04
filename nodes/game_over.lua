local ID = "game_over_real"
local title = "Game Over"
local description = "Fim."
local header = [[
               ('-.     _   .-')       ('-.                           (`-.      ('-.  _  .-')   
              ( OO ).-.( '.( OO )_   _(  OO)                        _(OO  )_  _(  OO)( \( -O )  
  ,----.      / . --. / ,--.   ,--.)(,------.       .-'),-----. ,--(_/   ,. \(,------.,------.  
 '  .-./-')   | \-.  \  |   `.'   |  |  .---'      ( OO'  .-.  '\   \   /(__/ |  .---'|   /`. ' 
 |  |_( O- ).-'-'  |  | |         |  |  |          /   |  | |  | \   \ /   /  |  |    |  /  | | 
 |  | .--, \ \| |_.'  | |  |'.'|  | (|  '--.       \_) |  |\|  |  \   '   /, (|  '--. |  |_.' | 
(|  | '. (_/  |  .-.  | |  |   |  |  |  .--'         \ |  | |  |   \     /__) |  .--' |  .  '.' 
 |  '--'  |   |  | |  | |  |   |  |  |  `---.         `'  '-'  '    \   /     |  `---.|  |\  \  
  `------'    `--' `--' `--'   `--'  `------'           `-----'      `-'      `------'`--' '--' 
]]

local Node = require("node")
local Choice = require("choice")
local choices = {}

local node = Node:new(ID, title, description, header, choices) ---@type Node

return node