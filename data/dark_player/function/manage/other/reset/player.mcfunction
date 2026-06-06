clear @s
execute if entity @s[gamemode=spectator] run function dark_player:manage/gamemode/presets/undo_spectator/helper
execute if entity @s[gamemode=!survival] run function dark_player:manage/gamemode/set {gamemode:"survival"}
function dark_player:manage/advancements/revoke_all
function dark_player:manage/attribute/reset_all