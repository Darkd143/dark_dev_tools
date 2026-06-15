# Parameters:
# - username (string): The player's username

# Add the player Button
$data modify storage dark_player.temp actions append value {"label":[{"player":"$(username)"},{"text":" $(username)"}],"width":140,"action": {"type": "minecraft:run_command","command": "/trigger dark_player.gamemode_menu"}}

# Survival
data modify storage dark_player.temp gamemode set value "survival"
function dark_player:triggers/gamemode_menu/dialog/get_actions/add_gamemode_action with storage dark_player.temp

# Adventure
data modify storage dark_player.temp gamemode set value "adventure"
function dark_player:triggers/gamemode_menu/dialog/get_actions/add_gamemode_action with storage dark_player.temp

# Creative
data modify storage dark_player.temp gamemode set value "creative"
function dark_player:triggers/gamemode_menu/dialog/get_actions/add_gamemode_action with storage dark_player.temp

# Spectator
data modify storage dark_player.temp gamemode set value "spectator"
function dark_player:triggers/gamemode_menu/dialog/get_actions/add_gamemode_action with storage dark_player.temp

# Remove Storage
data remove storage dark_player.temp gamemode