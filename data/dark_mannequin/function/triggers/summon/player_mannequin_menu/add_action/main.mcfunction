# Get Score
execute store result storage dark_mannequin.temp player_id int 1 run scoreboard players get @s dark_player.id

# Get Username
data modify storage dark_player.temp storage set value "dark_mannequin.temp"
data modify storage dark_player.temp identifier set value "username"
function dark_player:manage/username/by_selector

# Store Action for player
function dark_mannequin:triggers/summon/player_mannequin_menu/add_action/macro with storage dark_mannequin.temp

# Remove Storage
data remove storage dark_mannequin.temp username