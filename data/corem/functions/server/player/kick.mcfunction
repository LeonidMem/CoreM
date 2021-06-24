execute as @s[type=player] run tag @s add corem.kick
execute as @s[type=player] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1,CustomName:'{"text":"COREM_PLUGIN;KICK"}'}
execute as @s[type=player] run tag @s remove corem.kick