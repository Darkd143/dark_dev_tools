# Set Up Storage
execute store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.custom_name

# Main Function
execute if score @s dark_mannequin.custom_name matches 1.. run function dark_mannequin:triggers/nametag/custom_name/dialog/main with storage dark_mannequin.temp
execute if score @s dark_mannequin.custom_name matches ..-1 run function dark_mannequin:triggers/nametag/custom_name/set/main

# Remove Storage
data remove storage dark_mannequin.temp id

# Enable Trigger
function dark_mannequin:triggers/nametag/custom_name/enable