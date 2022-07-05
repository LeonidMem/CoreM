advancement revoke @s only corem:events/attack_entity
execute if score event.PLAYER_ATTACK_ENTITY corem.functions matches 1 as @s run function corem:events/player/start/attack_entity