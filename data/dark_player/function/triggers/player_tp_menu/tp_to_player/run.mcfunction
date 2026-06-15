# Cannot show menu to adventure or survival mode players
execute if entity @s[gamemode=!spectator,gamemode=!creative] run function dark_player:triggers/player_tp_menu/tp_to_player/enable
execute if entity @s[gamemode=!spectator,gamemode=!creative] run return run tellraw @s [{"text":"[Dark Player] ","color":"gray"},{"text":"You cannot TP to a player unless you are in spectator or creative mode.","color":"red"}]

# Determine TP Target
tag @s add dark_player.identifier
execute as @a if score @p[tag=dark_player.identifier] dark_player.tp_to_player = @s dark_player.id run tag @s add dark_player.identifier2
tag @s remove dark_player.identifier

# TP
tp @s @p[tag=dark_player.identifier2]

# Message Player
tellraw @s [{"text":"[Dark Player] ","color":"gray"},{"text":"Now viewing ","color":"white"},{"selector":"@p[tag=dark_player.identifier2]","color":"white"}]
tag @a remove dark_player.identifier2

# Reset Trigger
function dark_player:triggers/player_tp_menu/tp_to_player/enable