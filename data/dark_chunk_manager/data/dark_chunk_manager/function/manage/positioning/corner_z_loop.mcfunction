function dark_chunk_manager:manage/positioning/score_pos/z
scoreboard players operation @s dark_chunk_manager.z %= $dark_chunk_manager.globals dark_chunk_manager.z
execute unless score @s dark_chunk_manager.z matches 0 run function dark_chunk_manager:manage/positioning/move/z-1
execute unless score @s dark_chunk_manager.z matches 0 run function dark_chunk_manager:manage/positioning/corner_z_loop