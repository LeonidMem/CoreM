execute as @s run function corem:random/10

execute as @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0.0f,Tags:["corem.random.20.help"]}

execute as @e[type=area_effect_cloud,tag=corem.random.20.help,limit=1] run function corem:random/check/20

scoreboard players operation @s corem.random += @e[type=area_effect_cloud,tag=corem.random.20.help,limit=1] corem.random

kill @e[type=area_effect_cloud,tag=corem.random.20.help,limit=1]

tag @s remove corem.random