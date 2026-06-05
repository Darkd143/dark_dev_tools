function dark_chunk_manager:manage/positioning/score_pos/x
scoreboard players operation @s dark_chunk_manager.x %= $dark_chunk_manager.globals dark_chunk_manager.x
execute unless score @s dark_chunk_manager.x matches 0 run function dark_chunk_manager:manage/positioning/move/x-1
execute unless score @s dark_chunk_manager.x matches 0 run function dark_chunk_manager:manage/positioning/corner_x_loop