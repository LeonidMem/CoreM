execute as @a[scores={corem.wbcrafted=1..},limit=1] run give @s bat_spawn_egg{CustomModelData:324324,EntityTag:{id:"minecraft:bat",CustomName:'{"text":"MBench"}',CustomNameVisible:0,NoAI:1b,Health:1,Silent:1},display:{Name:"[{\"text\":\"Workbench\",\"italic\":false,\"color\":\"gold\"}]"}}
execute as @a[scores={corem.wbcrafted=1..},limit=1] run clear @s structure_block
execute as @a[scores={corem.wbcrafted=1..},limit=1] run recipe take @s corem:workbench
execute as @a[scores={corem.wbcrafted=1..},limit=1] run advancement revoke @s only corem:root
execute as @a[scores={corem.wbcrafted=1..},limit=1] run scoreboard players remove @s corem.wbcrafted 1
execute as @a[scores={corem.wbcrafted=1..},limit=1] run function corem:custom_wb/workbench