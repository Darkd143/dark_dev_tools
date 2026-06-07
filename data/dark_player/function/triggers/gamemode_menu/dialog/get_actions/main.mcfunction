# Get Username
data modify storage dark_player.temp storage set value "dark_player.temp"
data modify storage dark_player.temp identifier set value "username"
function dark_player:manage/username/by_selector

# Store Actions for player
function dark_player:triggers/gamemode_menu/dialog/get_actions/add_all with storage dark_player.temp

# Remove Storage
data remove storage dark_player.temp username