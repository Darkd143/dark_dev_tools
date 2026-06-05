# New Player
execute as @a unless score @s dark_random_world_spawn.player_id matches 1.. run function dark_random_world_spawn:new_player/new_player

# Triggers
execute as @a[scores={dark_random_world_spawn.randomize=1..}] run function dark_random_world_spawn:trigger/run