execute store result score corem.seed corem.random run time query daytime
execute if score corem.seed corem.random matches 17568.. run scoreboard players operation corem.seed corem.random %= 17568 corem.random
scoreboard players set @s corem.random 0
scoreboard players operation @s corem.random += corem.seed corem.random
scoreboard players operation @s corem.random *= 64525 corem.random
scoreboard players operation @s corem.random += 1013904223 corem.random
