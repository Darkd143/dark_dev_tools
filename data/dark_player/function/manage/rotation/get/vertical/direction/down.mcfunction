function dark_player:manage/rotation/get/vertical/helper/store_score
execute if score @s dark_player.temp matches 30000001..90000000 run return 1
return 0