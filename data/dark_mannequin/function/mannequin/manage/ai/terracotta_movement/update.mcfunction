# Parameters:
# - movement_direction (string): The direction of the movement (north, south, east, or west)

# Motion
data modify entity @s Motion[0] set from storage dark_mannequin.temp Motion[0]
data modify entity @s Motion[2] set from storage dark_mannequin.temp Motion[2]

$execute unless function dark_player:manage/rotation/horizontal/get/direction/$(movement_direction) run function dark_mannequin:mannequin/manage/properties/rotation/set/direction/$(movement_direction)

# Clear Up Storage
data remove storage dark_mannequin.temp Motion
data remove storage dark_mannequin.temp direction