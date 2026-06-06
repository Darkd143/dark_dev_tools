function dark_player:rotation/vertical/helper/store_score
execute if score @s dark_player.rotation_vertical matches ..-1 run return 1
return 0