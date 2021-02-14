tag @s add corem.random

execute as @e[tag=corem.random,limit=1] run tag @s add corem.random.50

execute as @e[tag=corem.random.50,limit=1] run function corem:random/10

execute as @e[tag=corem.random.50,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0.0f,Tags:["corem.random.50.help"]}

execute as @e[type=area_effect_cloud,tag=corem.random.50.help,limit=1] run function corem:random/5

#tellraw LeonidM ["",{"score":{"name":"@e[type=area_effect_cloud,tag=corem.random.50.help,limit=1]","objective":"corem.random"}},{"text":" and "},{"score":{"name":"@e[tag=corem.random.50,limit=1]","objective":"corem.random"}},{"text":""}]

scoreboard players operation @e[type=area_effect_cloud,tag=corem.random.50.help,limit=1] corem.random -= 1 corem.const
scoreboard players operation @e[type=area_effect_cloud,tag=corem.random.50.help,limit=1] corem.random *= 10 corem.const

scoreboard players operation @e[tag=corem.random.50,limit=1] corem.random += @e[type=area_effect_cloud,tag=corem.random.50.help,limit=1] corem.random

execute as @e[tag=corem.random.50,limit=1,scores={corem.random=..0}] run tellraw LeonidM [{"text":"check"}]

tag @e[tag=corem.random.50,limit=1] remove corem.random.50
tag @e[tag=corem.random,limit=1] remove corem.random