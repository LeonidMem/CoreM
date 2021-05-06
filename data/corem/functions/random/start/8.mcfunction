summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom1"}',Duration:1,Radius:0.0f,Tags:["CoreMRandom"]}
summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom2"}',Duration:1,Radius:0.0f,Tags:["CoreMRandom"]}
summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom3"}',Duration:1,Radius:0.0f,Tags:["CoreMRandom"]}
summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom4"}',Duration:1,Radius:0.0f,Tags:["CoreMRandom"]}
summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom5"}',Duration:1,Radius:0.0f,Tags:["CoreMRandom"]}
summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom6"}',Duration:1,Radius:0.0f,Tags:["CoreMRandom"]}
summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom7"}',Duration:1,Radius:0.0f,Tags:["CoreMRandom"]}
summon minecraft:area_effect_cloud ~ ~5 ~ {CustomName:'{"text":"CoreMRandom8"}',Duration:1,Radius:0.0f,Tags:["CoreMRandom"]}

tp @e[type=minecraft:area_effect_cloud,sort=random,tag=CoreMRandom,limit=1,distance=5] @s

execute as @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,distance=..0.0000001] run function corem:random/check/8

kill @e[type=minecraft:area_effect_cloud,tag=CoreMRandom,limit=8]

tag @s remove corem.random