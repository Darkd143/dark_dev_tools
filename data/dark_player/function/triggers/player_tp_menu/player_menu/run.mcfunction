# Reset Trigger
function dark_player:triggers/player_tp_menu/player_menu/enable

# Cannot show menu to adventure or survival mode players
execute if entity @s[gamemode=!spectator,gamemode=!creative] run return run tellraw @s [{"text":"[Dark Player] ","color":"gray"},{"text":"You cannot access the player tp menu unless you are in spectator or creative mode.","color":"red"}]

# Make sure there is one other non-spectator player
tag @s add dark_player.non_selector
execute unless entity @p[tag= dark_player.non_selector,gamemode=!spectator,scores={dark_player.id=1..}] run return run function dark_player:triggers/player_tp_menu/player_menu/failed_to_find_other_player

# Display Dialog
function dark_player:triggers/player_tp_menu/player_menu/dialog/run

# Remove Tag
tag @s remove dark_player.non_selector