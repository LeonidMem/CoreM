effect give @s invisibility 15 0 true
setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'[{"translate":"space.-8"},{"text":"","color":"white"},{"translate":"space.-128"},{"translate":"space.-6"},{"translate":"container.crafting"}]',Items:[{Slot:15b,Count:1b,id:"minecraft:barrier",tag:{display:{Name:'{"text":""}'},Tags:[corem.workbench,corem.clear]}},]} destroy
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"MWorkbench"}',Duration:2147483647,Radius:0.0f}
summon minecraft:armor_stand ~ ~1 ~ {ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b}],NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:[corem.workbench.armor_stand]}
execute as @e[type=area_effect_cloud,name="MWorkbench",limit=1,distance=..0.5] run scoreboard players set @s corem.workbench 0
tp @s ~ -10 ~
kill @s
