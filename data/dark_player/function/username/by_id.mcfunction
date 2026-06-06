execute unless score @s dark_player.id matches 1.. run return run tellraw @s [{"text":"[Dark Player] "},{"text":"Error! Can't save the username of a player with no player id!","color":"red"}]

# Set up Storage
execute unless data storage dark_player.temp storage run data modify storage dark_player.temp storage set value "dark_player"
execute store result storage dark_player.temp identifier int 1 run scoreboard players get @s dark_player.id

# Save Storage
tag @s add dark_player.identifier
execute at @s run function dark_player:username/helper/text_display with storage dark_player.temp
tag @s remove dark_player.identifier

# Remove Storage
execute if data storage dark_player.temp storage run data remove storage dark_player.temp storage
execute if data storage dark_player.temp identifier run data remove storage dark_player.temp identifier