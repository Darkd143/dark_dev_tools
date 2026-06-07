# Objectives
scoreboard objectives add dark_player.id dummy
scoreboard objectives add dark_player.count dummy
scoreboard objectives add dark_player.temp dummy

# Triggers
scoreboard objectives add dark_player.menu trigger
scoreboard objectives add dark_player.gamemode_menu trigger
scoreboard objectives add dark_player.reset trigger
scoreboard objectives add dark_player.attribute_menu trigger
scoreboard objectives add dark_player.player_tp_menu trigger
scoreboard objectives add dark_player.tp_to_player trigger

# Attribute Triggers
scoreboard objectives add dark_player.attribute.preset_menu trigger
scoreboard objectives add dark_player.attribute.scale trigger

# Default Variables
execute unless score $dark_player dark_player.id matches 0.. run scoreboard players set $dark_player dark_player.id -1