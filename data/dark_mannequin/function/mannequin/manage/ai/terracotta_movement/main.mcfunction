# Determine Movement Speed
execute store result storage dark_mannequin.temp movement_speed double 0.01 run function dark_player:manage/attribute/get/base {name:"minecraft:movement_speed",scale:100}

# Check for arrow blocks below the player, and update accordingly
execute positioned ~ ~-2 ~ run function dark_mannequin:mannequin/manage/ai/terracotta_movement/check_block_macro with storage dark_mannequin.temp
execute if data storage dark_mannequin.temp Motion run return run function dark_mannequin:mannequin/manage/ai/terracotta_movement/update with storage dark_mannequin.temp

execute positioned ~ ~-3 ~ run function dark_mannequin:mannequin/manage/ai/terracotta_movement/check_block_macro with storage dark_mannequin.temp
execute if data storage dark_mannequin.temp Motion run return run function dark_mannequin:mannequin/manage/ai/terracotta_movement/update with storage dark_mannequin.temp

execute positioned ~ ~-4 ~ run function dark_mannequin:mannequin/manage/ai/terracotta_movement/check_block_macro with storage dark_mannequin.temp
execute if data storage dark_mannequin.temp Motion run return run function dark_mannequin:mannequin/manage/ai/terracotta_movement/update with storage dark_mannequin.temp

execute positioned ~ ~-5 ~ run function dark_mannequin:mannequin/manage/ai/terracotta_movement/check_block_macro with storage dark_mannequin.temp
execute if data storage dark_mannequin.temp Motion run return run function dark_mannequin:mannequin/manage/ai/terracotta_movement/update with storage dark_mannequin.temp

execute positioned ~ ~-6 ~ run function dark_mannequin:mannequin/manage/ai/terracotta_movement/check_block_macro with storage dark_mannequin.temp
execute if data storage dark_mannequin.temp Motion run return run function dark_mannequin:mannequin/manage/ai/terracotta_movement/update with storage dark_mannequin.temp

# Clear Up Storage
data remove storage dark_mannequin.temp Motion
data remove storage dark_mannequin.temp direction