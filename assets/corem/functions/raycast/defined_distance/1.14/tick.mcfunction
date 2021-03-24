execute as @e[tag=corem.raycast.mark,limit=1] if score @s corem.raycast < corem.distance corem.raycast run scoreboard players add @s corem.raycast 1

execute if score @e[tag=corem.raycast.mark,limit=1] corem.raycast < corem.distance corem.raycast unless block ~ ~ ~ #corem:air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0.0f,Tags:["corem.raycast.point"]}

execute as @e[tag=corem.raycast.mark,limit=1] if score @s corem.raycast < corem.distance corem.raycast unless block ~ ~ ~ #corem:air run scoreboard players set @s corem.raycast 10001

execute if score @e[tag=corem.raycast.mark,limit=1] corem.raycast < corem.distance corem.raycast positioned ~ ~-1 ~ if entity @e[distance=..1,tag=!corem.raycast.area,tag=!corem.raycast.mark,type=!#corem:1.14/raycast,limit=1] positioned ~ ~1 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Radius:0.0f,Tags:["corem.raycast.point"]}

execute if score @e[tag=corem.raycast.mark,limit=1] corem.raycast < corem.distance corem.raycast positioned ~ ~-1 ~ if entity @e[distance=..1,tag=!corem.raycast.area,tag=!corem.raycast.mark,type=!#corem:1.14/raycast,limit=1] positioned ~ ~1 ~ run scoreboard players set @e[tag=corem.raycast.mark,limit=1] corem.raycast 10001

execute if score @e[tag=corem.raycast.mark,limit=1] corem.raycast = corem.distance corem.raycast run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Radius:0.0f,Tags:["corem.raycast.point"]}

execute if score @e[tag=corem.raycast.mark,limit=1] corem.raycast < corem.distance corem.raycast if block ~ ~ ~ #corem:air as @e[tag=corem.raycast.mark,limit=1] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!corem.raycast.mark,type=!#corem:1.14/raycast] positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function corem:raycast/defined_distance/1.14/tick