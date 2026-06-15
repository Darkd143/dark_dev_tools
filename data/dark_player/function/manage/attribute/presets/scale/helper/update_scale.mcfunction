# Set up Storage
execute store result storage dark_player.temp scale double 0.000001 run scoreboard players get @s dark_player.temp
data modify storage dark_player.temp name set value "minecraft:scale"

# Save Attribute
function dark_player:manage/attribute/modify/base with storage dark_player.temp

# Remove Storage
data remove storage dark_player.temp scale
data remove storage dark_player.temp name