give @s iron_block 6
give @s furnace 1
give @s crafting_table 1
give @s anvil 1
scoreboard players remove @s corem.wbcrafted 1
execute as @s[scores={corem.wbcrafted=1..}] run function corem:custom_wb/craft/return