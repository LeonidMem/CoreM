tag @s add corem.random

execute as @e[tag=corem.random,limit=1] run tag @s add corem.random.2

execute as @e[tag=corem.random.2,limit=1] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom1"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}

execute as @e[tag=corem.random.2,limit=1] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom2"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}

execute as @e[tag=corem.random.2,limit=1] at @s run tp @e[sort=random,tag=CoreMRandom,limit=1,distance=5] @s


execute as @e[tag=corem.random.2,limit=1] at @s if entity @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=..1,name=CoreMRandom1] run scoreboard players set @s corem.random 1

execute as @e[tag=corem.random.2,limit=1] at @s if entity @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=..1,name=CoreMRandom2] run scoreboard players set @s corem.random 2


execute as @e[tag=corem.random.2,limit=1] at @s run kill @e[type=minecraft:area_effect_cloud,distance=..10,tag=CoreMRandom]

execute as @e[tag=corem.random.2,limit=1] run tag @s remove corem.random

execute as @e[tag=corem.random.2,limit=1] run tag @s remove corem.random.2