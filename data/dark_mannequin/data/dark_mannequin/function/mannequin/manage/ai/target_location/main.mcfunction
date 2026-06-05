# Parameters:
# - x (int): The x value for the wandering trader target
# - y (int): The x value for the wandering trader target
# - z (int): The x value for the wandering trader target

# Save mannequin ID to storage
execute store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.id
$data merge storage dark_mannequin.temp {x:$(x),y:$(y),z:$(z)}

execute as @s run function dark_mannequin:mannequin/manage/ai/target_location/macro with storage dark_mannequin.temp

# Remove Storage
data remove storage dark_mannequin.temp id
data remove storage dark_mannequin.temp x
data remove storage dark_mannequin.temp y
data remove storage dark_mannequin.temp z