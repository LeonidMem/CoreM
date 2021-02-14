execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:gold_block"},{Slot:12b,id:"minecraft:golden_apple"},{Slot:13b,id:"minecraft:gold_block"},{Slot:20b,id:"minecraft:gold_block"},{Slot:21b,id:"minecraft:gold_block"},{Slot:22b,id:"minecraft:gold_block"}]} unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] run tag @s add corem.recipe

execute if entity @s[tag=corem.recipe,scores={corem.workbench=0}] run data modify block ~ ~ ~ Items[{Slot:15b}] set value {Slot:15b,Count:1b,id:"minecraft:enchanted_golden_apple",tag:{Tags:[corem.clear,corem.recipe.2]}}

execute if entity @s[tag=corem.recipe] run scoreboard players set @s corem.workbench 2

execute if entity @s[tag=!corem.recipe] if data block ~ ~ ~ Items[{Slot:15b,id:"minecraft:enchanted_golden_apple",tag:{Tags:[corem.recipe.2]}}] run scoreboard players set @s corem.workbench 0

tag @s remove corem.recipe

execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:gold_block"},{Slot:12b,id:"minecraft:golden_apple"},{Slot:13b,id:"minecraft:gold_block"},{Slot:20b,id:"minecraft:gold_block"},{Slot:21b,id:"minecraft:gold_block"},{Slot:22b,id:"minecraft:gold_block"},{Slot:15b,id:"minecraft:barrier"}]} unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] run tag @s add corem.recipe.crafted

execute if entity @s[tag=corem.recipe.crafted] run clear @a[distance=..6] enchanted_golden_apple{Tags:[corem.clear]}

execute if entity @s[tag=corem.recipe.crafted] run give @p enchanted_golden_apple

execute if entity @s[tag=corem.recipe.crafted] run function corem:custom_wb/count

execute if entity @s[tag=corem.recipe.crafted] run scoreboard players set @s corem.workbench 0

tag @s remove corem.recipe.crafted