execute at @s unless entity @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin,distance=..10] run return run function dark_mannequin:mannequin/manage/inventory_swap/helper/no_mannequin_near

# Save mannequin ID and "all" to storage
execute as @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin] store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.id
data merge storage dark_mannequin.temp {"all":true}

# Armor
function dark_mannequin:mannequin/manage/inventory_swap/armor

# Hands
function dark_mannequin:mannequin/manage/inventory_swap/hands

# Remove armor stand unless there are more parts to swap
function dark_mannequin:mannequin/manage/inventory_swap/armor_stand/kill

# Remove Storage
data remove storage dark_mannequin.temp id
data remove storage dark_mannequin.temp all
data remove storage dark_mannequin.temp multi