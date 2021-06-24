execute as @s[type=player] run tag @s add corem.ban
execute as @s[type=player] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1,CustomName:'{"text":"COREM_PLUGIN;BAN"}'}
execute as @s[type=player] run tag @s remove corem.ban