# Reset Trigger
function dark_player_tp_menu:player_tp_menu/triggers/player_menu/reset

# Cannot show menu to adventure or survival mode players
execute if entity @s[gamemode=!spectator,gamemode=!creative] run return run tellraw @s [{"text":"[Dark Player TP Menu] ","color":"gray"},{"text":"You cannot access the player menu unless you are in spectator or creative mode.","color":"red"}]

# Display Dialog
function dark_player_tp_menu:player_tp_menu/triggers/player_menu/run_display
