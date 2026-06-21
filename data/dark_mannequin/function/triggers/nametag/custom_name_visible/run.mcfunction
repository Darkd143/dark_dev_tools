# Set Up Storage
execute store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.custom_name_visible

# Toggle CustomNameVisible
function dark_mannequin:triggers/nametag/custom_name_visible/toggle with storage dark_mannequin.temp

# Remove Storage
data remove storage dark_mannequin.temp id

# Enable Trigger
function dark_mannequin:triggers/nametag/custom_name_visible/enable