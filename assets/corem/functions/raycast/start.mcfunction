kill @e[tag=corem.raycast.point]
tag @s add corem.raycast
scoreboard players set @e[tag=corem.raycast,nbt=!{Tags:["corem.raycast.mark"]}] corem.raycast 0
tag @e[tag=corem.raycast,nbt=!{Tags:["corem.raycast.mark"]}] add corem.raycast.mark

execute if score corem.mc.version corem.version matches 116 as @e[tag=corem.raycast,limit=1] positioned ~ ~1.62 ~ positioned ^ ^ ^0.5 run function corem:raycast/1.16/tick
execute if score corem.mc.version corem.version matches 115 as @e[tag=corem.raycast,limit=1] positioned ~ ~1.62 ~ positioned ^ ^ ^0.5 run function corem:raycast/1.15/tick
execute if score corem.mc.version corem.version matches 114 as @e[tag=corem.raycast,limit=1] positioned ~ ~1.62 ~ positioned ^ ^ ^0.5 run function corem:raycast/1.14/tick
execute if score corem.mc.version corem.version matches 113 as @e[tag=corem.raycast,limit=1] positioned ~ ~1.62 ~ positioned ^ ^ ^0.5 run function corem:raycast/1.13/tick

tag @s remove corem.raycast.mark
tag @s remove corem.raycast