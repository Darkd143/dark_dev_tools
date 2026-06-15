# Set Up Storage
execute store result storage dark_player.temp scale double 1 run function dark_player:manage/attribute/get/base {name:"minecraft:scale",scale:1}

# Run Dialog
function dark_player:triggers/attribute_items/scale/dialog/show with storage dark_player.temp

# Reset Storage
data remove storage dark_player.temp scale