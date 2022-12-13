execute if score workbench corem.functions matches 1 run function corem:custom_wb/tick
execute if score timer corem.functions matches 1.. run function corem:timer/permanent/counter/5

clear @a barrier{Tags:[corem.clear]}
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{Tags:[corem.clear]}}}]
