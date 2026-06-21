# Parameters:
# - player_id (int): The player's id

$execute unless entity @p[scores={dark_player.id=$(player_id)}] run tellraw @s [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: No players with an id of $(player_id)!","color":"red"}]
$execute as @p[scores={dark_player.id=$(player_id)}] run function dark_mannequin:manage/summon/player