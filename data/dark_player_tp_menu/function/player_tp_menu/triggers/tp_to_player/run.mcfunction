# Cannot show menu to adventure or survival mode players
execute if entity @s[gamemode=!spectator,gamemode=!creative] run function dark_player_tp_menu:player_tp_menu/triggers/tp_to_player/reset
execute if entity @s[gamemode=!spectator,gamemode=!creative] run return run tellraw @s [{"text":"[Dark Player TP Menu] ","color":"gray"},{"text":"You cannot TP to a player unless you are in spectator or creative mode.","color":"red"}]

# Determine TP Target
tag @s add dark_player_tp_menu.player_to_tp
execute as @a if score @p[tag=dark_player_tp_menu.player_to_tp] dark_player_tp_menu.tp_to_player = @s dark_player_tp_menu.player_id run tag @s add dark_player_tp_menu.tp_target
tag @s remove dark_player_tp_menu.player_to_tp

# TP
tp @s @p[tag=dark_player_tp_menu.tp_target]

# Message Player
tellraw @s [{"text":"[Dark Player TP Menu] ","color":"gray"},{"text":"Now viewing ","color":"white"},{"selector":"@p[tag=dark_player_tp_menu.tp_target]","color":"white"}]
tag @a remove dark_player_tp_menu.tp_target

# Reset Trigger
function dark_player_tp_menu:player_tp_menu/triggers/tp_to_player/reset