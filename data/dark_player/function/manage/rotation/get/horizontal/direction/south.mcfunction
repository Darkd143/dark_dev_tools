function dark_player:manage/rotation/get/horizontal/helper/store_score
execute if score @s dark_player.temp matches -45000000..44999999 run return 1
return 0