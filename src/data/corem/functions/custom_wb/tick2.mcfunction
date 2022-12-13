# Put glass pane back
#execute unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{Tags:[corem.clear]}}]} run clear @a light_gray_stained_glass_pane{Tags:[corem.clear]}
#execute unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{Tags:[corem.clear]}}]} run kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:[corem.clear]}}}]
#execute if block ~ ~ ~ barrel[open=true] unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run data modify block ~ ~ ~ Items append value {Slot:0b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{Tags:[corem.clear],CustomModelData:324324,display:{Name:'{"text":""}'}}}

# Return item from barrier
execute unless data block ~ ~ ~ Items[{Slot:15b,tag:{Tags:[corem.clear]}}] if data block ~ ~ ~ Items[{Slot:15b}] positioned ~ ~1 ~ run function corem:custom_wb/anti_barrier

# Set barrier back if there is an air in the slot
execute if block ~ ~ ~ barrel[open=true] unless block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{Tags:[corem.clear]}}]} run data modify block ~ ~ ~ Items append value {Slot:15b,Count:1b,id:"minecraft:barrier",tag:{Tags:[corem.clear],display:{Name:'{"text":""}'}}}

# Kill workbench
execute if block ~ ~ ~ air run function corem:custom_wb/remove_wb

# Craft
execute if block ~ ~ ~ barrel[open=true] run function corem:custom_wb/recipes

# Anti-dupes
execute positioned ~ ~-1 ~ as @e[type=hopper_minecart,distance=..1] run function corem:custom_wb/remove_dupes/hopper_minecart
execute if block ~ ~-1 ~ hopper run function corem:custom_wb/remove_dupes/hopper

# Remove extra items
function corem:custom_wb/storage
