execute store result score corem.seed corem.random run time query gametime
execute if score corem.seed corem.random matches 195225118.. run scoreboard players operation corem.seed corem.random -= 195225118 corem.const
scoreboard players set @s corem.random 0
scoreboard players operation @s corem.random += corem.seed corem.random
scoreboard players operation @s corem.random *= 11 corem.random
scoreboard players operation @s corem.random += 7349 corem.random
