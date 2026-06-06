# Objectives
scoreboard objectives add dark_player.id dummy

scoreboard objectives add dark_player.rotation_horizontal dummy
scoreboard objectives add dark_player.rotation_vertical dummy

scoreboard objectives add dark_player.temp dummy

# Default Variables
execute unless score $dark_player dark_player.id matches 0.. run scoreboard players set $dark_player dark_player.id 0