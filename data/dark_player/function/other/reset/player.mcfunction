clear @s
execute if entity @s[gamemode=spectator] run function dark_player:gamemode/presets/undo_spectator/helper
execute if entity @s[gamemode=!survival] run function dark_player:gamemode/set {gamemode:"survival"}
function dark_player:advancements/revoke_all
function dark_player:attribute/reset_all