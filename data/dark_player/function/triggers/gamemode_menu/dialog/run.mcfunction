# Set up Storage
data merge storage dark_player.temp {actions:[]}

# Save actions with selected player being first
tag @s add dark_player.identifier2
execute as @s at @s run function dark_player:triggers/gamemode_menu/dialog/get_actions/main
execute as @a[tag=!dark_player.identifier2] at @s run function dark_player:triggers/gamemode_menu/dialog/get_actions/main
tag @s remove dark_player.identifier2

# Add Exit Button
data modify storage dark_player.temp actions append value {"label":"Exit","tooltip":"Exit the dialog menu"}

# Display Dialog
function dark_player:triggers/gamemode_menu/dialog/show with storage dark_player.temp

# Remove Storage
data remove storage dark_player.temp actions