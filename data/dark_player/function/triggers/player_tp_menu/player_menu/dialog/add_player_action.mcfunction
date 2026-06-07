# Get player id
execute store result storage dark_player.temp player_id int 1 run scoreboard players get @s dark_player.id

# Save Username
data modify storage dark_player.temp storage set value "dark_player.temp"
data modify storage dark_player.temp identifier set value "username"
function dark_player:manage/username/by_selector

# Create Action
function dark_player:triggers/player_tp_menu/player_menu/dialog/add_player_action_macro with storage dark_player.temp

# Remove Storage
data remove storage dark_player.temp player_id
data remove storage dark_player.temp username