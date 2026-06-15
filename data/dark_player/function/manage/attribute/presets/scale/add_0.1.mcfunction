function dark_player:manage/attribute/presets/scale/helper/store_scale
scoreboard players add @s dark_player.temp 100000
tellraw @s [{"score":{"name":"@s","objective":"dark_player.temp"}}]
function dark_player:manage/attribute/presets/scale/helper/update_scale