execute as @s run function corem:random/100

execute as @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0.0f,Tags:["corem.random.10000.help"]}

execute as @e[type=area_effect_cloud,tag=corem.random.10000.help,limit=1] run function corem:random/check/10000

scoreboard players operation @s corem.random += @e[type=area_effect_cloud,tag=corem.random.10000.help,limit=1] corem.random

kill @e[type=area_effect_cloud,tag=corem.random.10000.help,limit=1]

tag @s remove corem.random