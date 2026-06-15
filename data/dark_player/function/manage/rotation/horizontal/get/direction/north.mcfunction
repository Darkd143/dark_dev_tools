function dark_player:manage/rotation/horizontal/get/helper/store_score
execute if score @s dark_player.temp matches -180000000..-135000001 run return 1
execute if score @s dark_player.temp matches 135000000..180000000 run return 1
return 0