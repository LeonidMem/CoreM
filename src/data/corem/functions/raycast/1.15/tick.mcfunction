scoreboard players add @s[scores={corem.raycast=0..199}] corem.raycast 1

execute unless block ~ ~ ~ #corem:air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0.0f,Tags:["corem.raycast.point"]}

execute positioned ~ ~-1 ~ if entity @e[distance=..1,tag=!corem.raycast.area,tag=!corem.raycast.mark,type=!#corem:1.15/raycast] unless entity @s positioned ~ ~1 ~ run function corem:raycast/end

execute as @s[scores={corem.raycast=200}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0.0f,Tags:["corem.raycast.point"]}

execute if block ~ ~ ~ #corem:air as @s[scores={corem.raycast=..200}] positioned ^ ^ ^0.5 run function corem:raycast/1.15/tick