# Parameters:
# - id (int): The id to assign to the entity

# Movement
$execute unless function dark_mannequin:mannequin/manage/ai/helper/has_hurt_time run tp @s @n[tag=dark_mannequin.ai_selector,scores={dark_mannequin.id=$(id)}]
$execute if function dark_mannequin:mannequin/manage/ai/helper/has_hurt_time run tp @n[tag=dark_mannequin.ai_selector,scores={dark_mannequin.id=$(id)}] @s

# Rotation
$data modify entity @s Rotation set from entity @n[tag=dark_mannequin.ai_selector,scores={dark_mannequin.id=$(id)}] Rotation

# Remove Milk from wandering Trader Offhand
$execute as @n[tag=dark_mannequin.ai_selector,scores={dark_mannequin.id=$(id)}] if entity @s[type=minecraft:wandering_trader] run item replace entity @s weapon.mainhand with minecraft:air

# Health
$execute if score @s dark_mannequin.persist_damage matches 0 run data modify entity @s Health set from entity @n[tag=dark_mannequin.ai_selector,scores={dark_mannequin.id=$(id)}] Health
$execute if score @s dark_mannequin.persist_damage matches 1 run data modify entity @n[tag=dark_mannequin.ai_selector,scores={dark_mannequin.id=$(id)}] Health set from entity @s Health