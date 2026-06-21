# Set Up Storage
data merge storage dark_mannequin.temp {actions:[]}

# Throw error if no players with player id
execute unless entity @p[scores={dark_player.id=1..}] run return run function dark_mannequin:triggers/summon/player_mannequin_menu/error

# Add Actions Per Player
execute as @a[scores={dark_player.id=1..}] run function dark_mannequin:triggers/summon/player_mannequin_menu/add_action/main

# Add Back Action
data modify storage dark_mannequin.temp actions append value {"label": "Exit","tooltip": "Exit the dialog menu"}

# Display Dialog
function dark_mannequin:triggers/summon/player_mannequin_menu/show with storage dark_mannequin.temp

# Remove Storage
data remove storage dark_mannequin.temp actions