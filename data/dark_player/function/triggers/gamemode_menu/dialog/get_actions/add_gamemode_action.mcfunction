# Parameters:
# - gamemode (string): The gamemode name: "survival", "adventure", "creative", "spectator"
# - username (string): The player's username

# Set up storage
$execute if entity @s[gamemode=$(gamemode)] run data modify storage dark_player.temp color set value "green"
$execute unless entity @s[gamemode=$(gamemode)] run data modify storage dark_player.temp color set value "white"

# Save the action
function dark_player:triggers/gamemode_menu/dialog/get_actions/gamemode_action_macro with storage dark_player.temp

# Remove Storage
data remove storage dark_player.temp color