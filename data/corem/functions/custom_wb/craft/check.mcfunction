execute if score workbench corem.functions matches 1 run function corem:custom_wb/craft/give
execute unless score workbench corem.functions matches 1 run function corem:custom_wb/craft/return

clear @s structure_block
recipe take @s corem:workbench
recipe take @s corem:workbench2
advancement revoke @s only corem:workbench
advancement revoke @s only corem:workbench2