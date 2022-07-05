scoreboard players remove @s[scores={corem.workbench=1..2}] corem.workbench 1

execute as @s at @s run function #corem:custom_recipes

execute if score @s corem.workbench matches 0 run data modify block ~ ~ ~ Items[{Slot:15b}] set value {Slot:15b,Count:1b,id:"minecraft:barrier",tag:{Tags:[corem.clear],display:{Name:'{"text":""}'}}}