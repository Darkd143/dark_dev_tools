# Objectives
scoreboard objectives add dark_player_tp_menu.player_id dummy

# Triggers
scoreboard objectives add dark_player_tp_menu.player_menu trigger
scoreboard objectives add dark_player_tp_menu.tp_to_player trigger

# Variables
execute unless score $dark_player_tp_menu.player_manager dark_player_tp_menu.player_id matches 0.. run scoreboard players set $dark_player_tp_menu.player_manager dark_player_tp_menu.player_id 0