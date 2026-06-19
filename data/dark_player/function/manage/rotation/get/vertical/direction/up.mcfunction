function dark_player:manage/rotation/get/vertical/helper/store_score
execute if score @s dark_player.temp matches -90000000..-29999999 run return 1
return 0