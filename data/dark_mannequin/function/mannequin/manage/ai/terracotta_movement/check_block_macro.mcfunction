# Parameters:
# - movement_speed (double): The movement speed of the Mannequin

$execute if block ~ ~ ~ minecraft:magenta_glazed_terracotta[facing=north] run data merge storage dark_mannequin.temp {Motion:[0, 0, $(movement_speed)],movement_direction:"south"}
$execute if block ~ ~ ~ minecraft:magenta_glazed_terracotta[facing=south] run data merge storage dark_mannequin.temp {Motion:[0, 0, -$(movement_speed)],movement_direction:"north"}
$execute if block ~ ~ ~ minecraft:magenta_glazed_terracotta[facing=east] run data merge storage dark_mannequin.temp {Motion:[-$(movement_speed), 0, 0],movement_direction:"west"}
$execute if block ~ ~ ~ minecraft:magenta_glazed_terracotta[facing=west] run data merge storage dark_mannequin.temp {Motion:[$(movement_speed), 0, 0],movement_direction:"east"}