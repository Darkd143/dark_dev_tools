# Can't run without players
execute unless entity @a run return 0

# Using round_count temporarily
execute store result storage dark_random_world_spawn:worldborder distance int 1 run function dark_random_world_spawn:random_world_spawn/get_worldborder

# Spreadplayer TP
function dark_random_world_spawn:random_world_spawn/spreadplayer_tp with storage dark_random_world_spawn:worldborder

# Schedule set up position
schedule function dark_random_world_spawn:random_world_spawn/set_up_position 5s

# Remove storage
data remove storage dark_random_world_spawn:worldborder distance