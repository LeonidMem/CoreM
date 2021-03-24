execute as @s run function corem:random/10

execute as @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0.0f,Tags:["corem.random.100.help"]}

execute as @e[type=area_effect_cloud,tag=corem.random.100.help,limit=1] run function corem:random/check/100

scoreboard players operation @s corem.random += @e[type=area_effect_cloud,tag=corem.random.100.help,limit=1] corem.random

tag @s remove corem.random