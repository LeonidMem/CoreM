advancement revoke @s only corem:events/interact_block
execute if score event.PLAYER_INTERACT_BLOCK corem.function matches 1 as @s run function corem:events/player/start/interact_block