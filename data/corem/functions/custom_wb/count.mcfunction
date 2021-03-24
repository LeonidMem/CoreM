execute as @s store result score Count2 corem.workbench run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute as @s store result score Count3 corem.workbench run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute as @s store result score Count4 corem.workbench run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute as @s store result score Count11 corem.workbench run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute as @s store result score Count12 corem.workbench run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute as @s store result score Count13 corem.workbench run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute as @s store result score Count20 corem.workbench run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute as @s store result score Count21 corem.workbench run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute as @s store result score Count22 corem.workbench run data get block ~ ~ ~ Items[{Slot:22b}].Count

execute as @s store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players remove Count2 corem.workbench 1
execute as @s store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove Count3 corem.workbench 1
execute as @s store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove Count4 corem.workbench 1
execute as @s store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players remove Count11 corem.workbench 1
execute as @s store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove Count12 corem.workbench 1
execute as @s store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players remove Count13 corem.workbench 1
execute as @s store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players remove Count20 corem.workbench 1
execute as @s store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players remove Count21 corem.workbench 1
execute as @s store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players remove Count22 corem.workbench 1

scoreboard players reset Count2 corem.workbench
scoreboard players reset Count3 corem.workbench
scoreboard players reset Count4 corem.workbench
scoreboard players reset Count11 corem.workbench
scoreboard players reset Count12 corem.workbench
scoreboard players reset Count13 corem.workbench
scoreboard players reset Count20 corem.workbench
scoreboard players reset Count21 corem.workbench
scoreboard players reset Count22 corem.workbench