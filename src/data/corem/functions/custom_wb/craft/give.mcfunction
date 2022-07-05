give @s bat_spawn_egg{CustomModelData:324324,EntityTag:{id:"minecraft:bat",CustomName:'{"text":"MBench"}',CustomNameVisible:0,NoAI:1b,Health:1,Silent:1},display:{Name:'[{"text":"Workbench","italic":false,"color":"gold"}]'}}
scoreboard players remove @s corem.wbcrafted 1
execute as @s[scores={corem.wbcrafted=1..}] run function corem:custom_wb/craft/give