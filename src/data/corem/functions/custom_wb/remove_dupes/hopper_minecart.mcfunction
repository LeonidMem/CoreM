data remove entity @s Items[{id:"minecraft:barrier"}]
data remove entity @s Items[{id:"minecraft:light_gray_stained_glass_pane"}]
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:hopper_minecart",Count:1b}}
kill @s