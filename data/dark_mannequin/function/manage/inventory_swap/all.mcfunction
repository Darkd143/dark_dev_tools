execute at @s unless entity @n[tag=dark_mannequin.mannequin,distance=..10,type=minecraft:mannequin] run return run function dark_mannequin:manage/inventory_swap/helper/no_mannequin_near

# Save mannequin ID and "all" to storage
execute as @n[tag=dark_mannequin.mannequin,type=minecraft:mannequin] store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.id
data merge storage dark_mannequin.temp {"all":true}

# Armor
function dark_mannequin:manage/inventory_swap/armor

# Hands
function dark_mannequin:manage/inventory_swap/hands

# Remove armor stand unless there are more parts to swap
function dark_mannequin:manage/inventory_swap/armor_stand/kill

# Remove Storage
data remove storage dark_mannequin.temp id
data remove storage dark_mannequin.temp all
data remove storage dark_mannequin.temp multi