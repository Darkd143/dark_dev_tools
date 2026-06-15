# Set up Storage
execute unless data storage dark_player.temp storage run data modify storage dark_player.temp storage set value "dark_player"
execute unless data storage dark_player.temp identifier run data modify storage dark_player.temp identifier set value "username"

# Save Storage
tag @s add dark_player.identifier
execute at @s run function dark_player:manage/username/helper/text_display with storage dark_player.temp
tag @s remove dark_player.identifier

# Remove Storage
data remove storage dark_player.temp storage
data remove storage dark_player.temp identifier