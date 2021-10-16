execute as @s[type=player] run tag @s add corem.open_gui
execute as @s[type=player] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1,CustomName:'{"text":"COREM;OPEN_GUI"}'}
execute as @s[type=player] run tag @s remove corem.open_gui