execute as @a[scores={dark_player.player_tp_menu=1..}] run function dark_player:triggers/player_tp_menu/player_menu/dialog/run
execute as @a[scores={dark_player.tp_to_player=-1..}] run function dark_player:triggers/player_tp_menu/tp_to_player/run
execute as @a[scores={dark_player.spectate=-1..}] run function dark_player:triggers/player_tp_menu/spectate/run