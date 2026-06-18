# The Mannequin Current Node is not valid
execute unless score @s dark_mannequin.ai.path_node matches -1.. run scoreboard players set @s dark_mannequin.ai.path_node 0

# If the Path Node is -1, then don't proceed
execute if score @s dark_mannequin.ai.path_node matches -1 run return 1

# If the Path Node Loop is not greater than 0, then don't proceed
execute unless score @s dark_mannequin.ai.path_node_loop matches 1.. run return 1

# If the wandering trader has a wander target, don't proceed
execute if function dark_mannequin:mannequin/manage/ai/node_loop/target_location/has_wander_target run return 1

# Get Current Score and set up storage
execute store result storage dark_mannequin.temp path_node int 1 run scoreboard players get @s dark_mannequin.ai.path_node

# Update Wander Target

# Remove Storage
data remove storage dark_mannequin.temp path_node