execute as @s run function corem:random/100

scoreboard players operation @s corem.random -= 1 corem.const
scoreboard players operation @s corem.random *= 100 corem.const