data remove block ~ ~ ~ Items[{tag:{Tags:[corem.clear]}}]
execute if data block ~ ~ ~ Items[0] positioned ~ ~1 ~ run function corem:custom_wb/back_item
#data modify block ~ ~ ~ Items insert 0 value {Slot:0b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{Tags:[corem.clear],CustomModelData:324324}}
execute if data block ~ ~ ~ Items[0] run function corem:custom_wb/remove
