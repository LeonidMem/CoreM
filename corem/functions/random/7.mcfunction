tag @s add corem.random

execute as @e[tag=corem.random,limit=1] run tag @s add corem.random.7

execute as @e[tag=corem.random.7,limit=1] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom1"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}

execute as @e[tag=corem.random.7,limit=1] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom2"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}

execute as @e[tag=corem.random.7,limit=1] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom3"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}

execute as @e[tag=corem.random.7,limit=1] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom4"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}

execute as @e[tag=corem.random.7,limit=1] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom5"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}

execute as @e[tag=corem.random.7,limit=1] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom6"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}

execute as @e[tag=corem.random.7,limit=1] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom7"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}


execute as @e[tag=corem.random.7,limit=1] at @s run tp @e[sort=random,tag=CoreMRandom,limit=1,distance=5] @s

execute as @e[tag=corem.random.7,limit=1] at @s if entity @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=..1,name=CoreMRandom1] run scoreboard players set @s corem.random 1

execute as @e[tag=corem.random.7,limit=1] at @s if entity @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=..1,name=CoreMRandom2] run scoreboard players set @s corem.random 2

execute as @e[tag=corem.random.7,limit=1] at @s if entity @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=..1,name=CoreMRandom3] run scoreboard players set @s corem.random 3

execute as @e[tag=corem.random.7,limit=1] at @s if entity @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=..1,name=CoreMRandom4] run scoreboard players set @s corem.random 4

execute as @e[tag=corem.random.7,limit=1] at @s if entity @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=..1,name=CoreMRandom5] run scoreboard players set @s corem.random 5

execute as @e[tag=corem.random.7,limit=1] at @s if entity @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=..1,name=CoreMRandom6] run scoreboard players set @s corem.random 6

execute as @e[tag=corem.random.7,limit=1] at @s if entity @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=..1,name=CoreMRandom7] run scoreboard players set @s corem.random 7


execute as @e[tag=corem.random.7,limit=1] at @s if entity @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=..1] run kill @e[type=minecraft:area_effect_cloud,distance=..10,tag=CoreMRandom]

execute as @e[tag=corem.random.7,limit=1] run tag @s remove corem.random

execute as @e[tag=corem.random.7,limit=1] run tag @s remove corem.random.7