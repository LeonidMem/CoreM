scoreboard players reset total_fishes corem.count

execute as @e[type=#corem:fishes,distance=..32] unless data entity @s CustomName run tag @s add corem.count.fishes
execute as @e[type=#corem:fishes,tag=corem.count.fishes] run scoreboard players add total_fishes corem.count 1