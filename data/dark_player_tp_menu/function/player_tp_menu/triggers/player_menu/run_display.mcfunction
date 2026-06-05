# Setup Storage
data merge storage dark_player_tp_menu:player_actions {actions:[{"label":"Exit","tooltip":"exit this menu"}]}

# Add Actions
tag @s add dark_player_tp_menu.menu_player
execute as @a[tag=!dark_player_tp_menu.menu_player] at @s run function dark_player_tp_menu:player_tp_menu/triggers/player_menu/add_player_action
tag @s remove dark_player_tp_menu.menu_player

# Display Dialog
function dark_player_tp_menu:player_tp_menu/triggers/player_menu/show with storage dark_player_tp_menu:player_actions

# Remove Storage
data remove storage dark_player_tp_menu:player_actions actions