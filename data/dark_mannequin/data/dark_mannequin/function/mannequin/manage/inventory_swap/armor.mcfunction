execute unless data storage dark_mannequin.temp all run execute at @s unless entity @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin,distance=..10] run return run function dark_mannequin:mannequin/manage/inventory_swap/helper/no_mannequin_near

# Save mannequin ID and "multi" to storage
execute unless data storage dark_mannequin.temp all run execute as @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin] store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.id
data merge storage dark_mannequin.temp {"multi":true}

# Armor
function dark_mannequin:mannequin/manage/inventory_swap/body_parts/head
function dark_mannequin:mannequin/manage/inventory_swap/body_parts/chest
function dark_mannequin:mannequin/manage/inventory_swap/body_parts/legs
function dark_mannequin:mannequin/manage/inventory_swap/body_parts/feet

# Remove armor stand unless there are more parts to swap
execute unless data storage dark_mannequin.temp all run function dark_mannequin:mannequin/manage/inventory_swap/armor_stand/kill

# Remove Storage
execute unless data storage dark_mannequin.temp all run data remove storage dark_mannequin.temp id
execute unless data storage dark_mannequin.temp all run data remove storage dark_mannequin.temp multi