# Setup Storage
data merge storage dark_player.temp {actions:[{"label":"Exit","tooltip":"exit this menu"}]}

# Add Actions

execute as @a[tag=!dark_player.non_selector,scores={dark_player.id=1..}] at @s run function dark_player:triggers/player_tp_menu/player_menu/dialog/add_player_action


# Display Dialog
function dark_player:triggers/player_tp_menu/player_menu/dialog/show with storage dark_player.temp

# Remove Storage
data remove storage dark_player.temp actions