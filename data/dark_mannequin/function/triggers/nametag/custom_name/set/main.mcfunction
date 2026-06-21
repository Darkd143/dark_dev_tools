# Invert the negative score
scoreboard players set @s dark_mannequin.temp 0
scoreboard players operation @s dark_mannequin.temp -= @s dark_mannequin.custom_name
scoreboard players operation @s dark_mannequin.custom_name = @s dark_mannequin.temp
scoreboard players reset @s dark_mannequin.temp

# Set Up Storage
execute store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.custom_name

function dark_mannequin:triggers/nametag/custom_name/set/macro with storage dark_mannequin.temp