scoreboard players add @e[tag=corem.raycast.mark,scores={corem.raycast=..200},limit=1] corem.raycast 1

execute unless block ~ ~ ~ #corem:air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0.0f,Tags:["corem.raycast.point"]}

execute positioned ~ ~-1 ~ if entity @e[distance=..1,tag=!corem.raycast.area,tag=!corem.raycast.mark,type=!#corem:1.14/raycast,limit=1] positioned ~ ~1 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Radius:0.0f,Tags:["corem.raycast.point"]}

execute positioned ~ ~-1 ~ if entity @e[distance=..1,tag=!corem.raycast.area,tag=!corem.raycast.mark,type=!#corem:1.14/raycast,limit=1] positioned ~ ~1 ~ run scoreboard players set @e[tag=corem.raycast.mark,scores={corem.raycast=..200}] corem.raycast 201

execute as @e[tag=corem.raycast.mark,scores={corem.raycast=200}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Radius:0.0f,Tags:["corem.raycast.point"]}

execute if block ~ ~ ~ #corem:air as @e[tag=corem.raycast.mark,scores={corem.raycast=..200}] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!corem.raycast.area,tag=!corem.raycast.mark,type=!#corem:1.14/raycast] positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function corem:raycast/1.14/tick