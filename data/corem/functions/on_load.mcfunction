# scoreboard objectives add corem.bedrock minecraft.crafted:minecraft.bedrock {"text":"CoreM.Bedrock","color":"red"}
scoreboard objectives add corem.wbcrafted minecraft.crafted:minecraft.structure_block {"text":"CoreM.WBCrafted","color":"red"}
scoreboard objectives add corem.random dummy {"text":"CoreM.Random","color":"red"}
scoreboard objectives add corem.math dummy {"text":"CoreM.Math","color":"red"}
scoreboard objectives add corem.version dummy {"text":"CoreM.Version","color":"red"}
scoreboard objectives add corem.raycast dummy {"text":"CoreM.Raycast","color":"red"}
scoreboard objectives add corem.const dummy {"text":"CoreM.Const","color":"red"}
scoreboard objectives add corem.workbench dummy {"text":"CoreM.Workbench","color":"red"}
scoreboard objectives add corem.count dummy {"text":"CoreM.Count","color":"red"}
scoreboard objectives add corem.timer dummy {"text":"CoreM.Timer","color":"red"}
scoreboard objectives add corem.functions dummy {"text":"CoreM.Functions","color":"red"}
scoreboard objectives add corem.events dummy {"text":"CoreM.Events","color":"red"}
scoreboard objectives add corem.arguments dummy {"text":"CoreM.Arguments","color":"red"}

scoreboard players set corem.version corem.version 20002
scoreboard players set corem.check corem.version 0
scoreboard players set 1 corem.version 1

scoreboard players set 1 corem.const 1
scoreboard players set 2 corem.const 2
scoreboard players set 3 corem.const 3
scoreboard players set 3 corem.const 4
scoreboard players set 5 corem.const 5
scoreboard players set 6 corem.const 6
scoreboard players set 7 corem.const 7
scoreboard players set 8 corem.const 8
scoreboard players set 9 corem.const 9
scoreboard players set 10 corem.const 10
scoreboard players set 100 corem.const 100
scoreboard players set 17568 corem.const 17568

# function corem:unsubscribe/custom_wb
scoreboard players reset * corem.timer
# function corem:unsubscribe/timer
# function corem:unsubscribe/events/player/interactblock
# scoreboard players reset * corem.functions

function faunapm:check
function steelupdatem:check
function potionspm:check
function optimizationm:check
function villagerspm:check

scoreboard players set corem.mc.version corem.version 0

function corem:mc_version/1.16
function corem:mc_version/1.15
function corem:mc_version/1.14
function corem:mc_version/1.13

tellraw @a ["",{"text":"One of your datapacks uses ","color":"gold"},{"text":"CoreM (2.0.2)","color":"red"},{"text":".","color":"gold"}]

execute if score corem.check corem.version >= 1 corem.version run tellraw @a ["",{"text":"At least:","color":"gold"},{"text":"\n"}]

function faunapm:version
function steelupdatem:version
function potionspm:version
function optimizationm:version
function villagerspm:version

scoreboard players reset corem.check corem.version
scoreboard players reset 1 corem.version

tellraw @a [{"text":"More information here: ","color":"gold"},{"text":"*click*","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/LeonidMem/CoreM"}}]
