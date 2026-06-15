# Set Up Storage
execute store result storage dark_player.temp scale double 0.1 run function dark_player:manage/attribute/get/base {name:"minecraft:scale",scale:10}

tellraw @s [{"storage":"dark_player.temp","nbt":"scale"}]

# Run Dialog
function dark_player:triggers/attribute_items/scale/dialog/show with storage dark_player.temp

# Reset Storage
data remove storage dark_player.temp scale