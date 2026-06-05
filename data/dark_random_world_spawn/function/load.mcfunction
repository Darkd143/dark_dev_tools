# Objectives
scoreboard objectives add dark_random_world_spawn.player_id dummy

# Triggers
scoreboard objectives add dark_random_world_spawn.randomize trigger

# Variables
execute unless score $dark_random_world_spawn.player_manager dark_random_world_spawn.player_id matches 0.. run scoreboard players set $dark_random_world_spawn.player_manager dark_random_world_spawn.player_id 0