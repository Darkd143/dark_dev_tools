# New Players
execute as @a unless score @s dark_player_tp_menu.player_id matches 0.. run function dark_player_tp_menu:player_tp_menu/new_player/new_player

# Triggers
execute as @a[scores={dark_player_tp_menu.player_menu=1..}] run function dark_player_tp_menu:player_tp_menu/triggers/player_menu/run
execute as @a[scores={dark_player_tp_menu.tp_to_player=1..}] run function dark_player_tp_menu:player_tp_menu/triggers/tp_to_player/run