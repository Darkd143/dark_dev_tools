execute unless data storage dark_mannequin.temp multi run execute at @s unless entity @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin,distance=..10] run return run function dark_mannequin:mannequin/manage/inventory_swap/helper/no_mannequin_near

# Save mannequin ID to storage
execute unless data storage dark_mannequin.temp multi run execute as @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin] store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.id

# Store Mannequin items
execute as @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin] at @s unless entity @n[type=minecraft:armor_stand,tag=dark_mannequin.temp_equipment,distance=..1] if data entity @s equipment.feet run function dark_mannequin:mannequin/manage/inventory_swap/armor_stand/summon with storage dark_mannequin.temp

# Move item from player to mannequin
item replace entity @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin] armor.feet from entity @s armor.feet

# Move Armor stand item to player if one exists
tag @s add dark_mannequin.player_selector
execute as @n[type=minecraft:armor_stand,tag=dark_mannequin.temp_equipment,distance=..10] if data entity @s equipment.feet run item replace entity @p[tag=dark_mannequin.player_selector] armor.feet from entity @s armor.feet
tag @s remove dark_mannequin.player_selector

# Remove armor stand unless there are more parts to swap
execute unless data storage dark_mannequin.temp multi run function dark_mannequin:mannequin/manage/inventory_swap/armor_stand/kill

# Remove Storage
execute unless data storage dark_mannequin.temp multi run data remove storage dark_mannequin.temp id