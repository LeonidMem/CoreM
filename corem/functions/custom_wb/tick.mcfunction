execute at @e[type=area_effect_cloud,name=MWorkbench] unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{Tags:[corem.clear]}}]} run clear @a light_gray_stained_glass_pane{Tags:[corem.clear]}

execute at @e[type=area_effect_cloud,name=MWorkbench] if block ~ ~ ~ barrel[open=true] unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run data modify block ~ ~ ~ Items append value {Slot:0b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{Tags:[corem.clear],CustomModelData:324324,display:{Name:'{"text":""}'}}}


execute at @e[type=area_effect_cloud,name=MWorkbench] unless block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{Tags:[corem.clear]}}]} run clear @a barrier{Tags:[corem.clear]}

execute at @e[type=area_effect_cloud,name=MWorkbench] unless data block ~ ~ ~ Items[{Slot:15b,tag:{Tags:[corem.clear]}}] positioned ~ ~1 ~ run function corem:custom_wb/anti_barrier

execute at @e[type=area_effect_cloud,name=MWorkbench] if block ~ ~ ~ barrel[open=true] unless block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{Tags:[corem.clear]}}]} run data modify block ~ ~ ~ Items append value {Slot:15b,Count:1b,id:"minecraft:barrier",tag:{Tags:[corem.clear],display:{Name:'{"text":""}'}}}


execute as @e[type=area_effect_cloud,name=MWorkbench] at @s run function corem:custom_wb/storage

execute as @e[type=bat,name=MBench,limit=1] at @s run function corem:custom_wb/create_wb

execute as @e[type=area_effect_cloud,name=MWorkbench] at @s if block ~ ~ ~ air run function corem:custom_wb/remove_wb

execute as @e[type=area_effect_cloud,name=MWorkbench] at @s if block ~ ~ ~ barrel[open=true] run function corem:custom_wb/recipes
