kill @e[tag=corem.raycast.point]
scoreboard players set @s corem.raycast 0

execute if score corem.mc.version corem.version >= 117 corem.const at @s anchored eyes positioned ^ ^ ^0.5 run function corem:raycast/defined_distance/1.17/tick
execute if score corem.mc.version corem.version matches 116 at @s anchored eyes positioned ^ ^ ^0.5 run function corem:raycast/defined_distance/1.16/tick
execute if score corem.mc.version corem.version matches 115 at @s anchored eyes positioned ^ ^ ^0.5 run function corem:raycast/defined_distance/1.15/tick