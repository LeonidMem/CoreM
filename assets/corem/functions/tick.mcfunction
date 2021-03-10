execute if score workbench corem.functions matches 1 run function corem:custom_wb/tick
# Binary mask:
# 1 - 5 ticks
# 2 - 5 and 20 ticks
# 3 - 5, 20 and 50 ticks
execute if score timer corem.functions matches 1.. run function corem:timer/tick