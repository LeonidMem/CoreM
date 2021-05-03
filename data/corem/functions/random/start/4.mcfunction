summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom1"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}
summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom2"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}
summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom3"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}
summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom4"}',Duration:2147483647,Radius:0.0f,Tags:["CoreMRandom"]}

tp @e[sort=random,tag=CoreMRandom,limit=1,distance=5] @s

execute as @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=0] run function corem:random/check/4

kill @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,limit=4]

tag @s remove corem.random