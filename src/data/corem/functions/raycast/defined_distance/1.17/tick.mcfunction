execute if score @s[scores={corem.raycast=0..}] corem.raycast < corem.distance corem.raycast run scoreboard players add @s corem.raycast 1

execute if score @s corem.raycast < corem.distance corem.raycast unless block ~ ~ ~ #corem:air run function corem:raycast/end

execute if score @s corem.raycast < corem.distance corem.raycast positioned ~ ~-1 ~ if entity @e[distance=..1,tag=!corem.raycast.area,tag=!corem.raycast.mark,type=!#corem:1.17/raycast,limit=1] unless entity @s positioned ~ ~1 ~ run function corem:raycast/end

execute if score @s corem.raycast = corem.distance corem.raycast run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0.0f,Tags:["corem.raycast.point"]}

execute if score @s corem.raycast < corem.distance corem.raycast if block ~ ~ ~ #corem:air as @s[scores={corem.raycast=0..}] positioned ^ ^ ^0.5 run function corem:raycast/defined_distance/1.17/tick