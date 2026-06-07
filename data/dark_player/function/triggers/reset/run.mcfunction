execute if score @s dark_player.reset matches 1 run function dark_player:triggers/reset/dialog
execute if score @s dark_player.reset matches 2 run function dark_player:manage/other/reset/player
execute if score @s dark_player.reset matches 3 run function dark_player:manage/other/reset/all_players
function dark_player:triggers/reset/enable