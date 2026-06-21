# Set Up Storage
execute store result storage dark_mannequin.temp player_id int 1 run scoreboard players get @s dark_mannequin.summon

# Select Player
function dark_mannequin:triggers/summon/helper/selector/macro with storage dark_mannequin.temp

# Remove Storage
data remove storage dark_mannequin.temp player_id