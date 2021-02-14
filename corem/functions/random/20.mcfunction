tag @s add corem.random

execute as @e[tag=corem.random,limit=1] run tag @s add corem.random.20

execute as @e[tag=corem.random.20,limit=1] run function corem:random/10

execute as @e[tag=corem.random.20,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0.0f,Tags:["corem.random.20.help"]}

execute as @e[type=area_effect_cloud,tag=corem.random.20.help,limit=1] run function corem:random/2

scoreboard players operation @e[type=area_effect_cloud,tag=corem.random.20.help,limit=1] corem.random -= 1 corem.const
scoreboard players operation @e[type=area_effect_cloud,tag=corem.random.20.help,limit=1] corem.random *= 10 corem.const

scoreboard players operation @e[tag=corem.random.20,limit=1] corem.random += @e[type=area_effect_cloud,tag=corem.random.20.help,limit=1] corem.random

tag @e[tag=corem.random.20,limit=1] remove corem.random.20
tag @e[tag=corem.random,limit=1] remove corem.random