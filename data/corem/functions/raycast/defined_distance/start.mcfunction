kill @e[tag=corem.raycast.point]
tag @s add corem.raycast
scoreboard players set @e[tag=corem.raycast,nbt=!{Tags:["corem.raycast.mark"]}] corem.raycast 0
tag @e[tag=corem.raycast,nbt=!{Tags:["corem.raycast.mark"]}] add corem.raycast.mark

execute if score corem.mc.version corem.version matches 116 anchored eyes positioned ^ ^ ^0.5 run function corem:raycast/defined_distance/1.16/tick
execute if score corem.mc.version corem.version matches 115 anchored eyes positioned ^ ^ ^0.5 run function corem:raycast/defined_distance/1.15/tick

tag @s remove corem.raycast.mark
tag @s remove corem.raycast