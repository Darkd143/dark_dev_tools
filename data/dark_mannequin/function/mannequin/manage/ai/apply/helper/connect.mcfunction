# Save mannequin ID to storage
execute store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.id

# Apply the ID to the villager/wandering trader
execute as @n[tag=dark_mannequin.new_ai] run function dark_mannequin:mannequin/manage/id/link_entity with storage dark_mannequin.temp

# Apply Team Collision Rule
function dark_mannequin:mannequin/manage/ai/apply/helper/team

# Set Damage Persists Score to Off
execute unless score @s dark_mannequin.persist_damage matches 0..1 run scoreboard players set @s dark_mannequin.persist_damage 0

# Teleport Mannequin to villager/wandering trader
tp @s @n[tag=dark_mannequin.new_ai]

# Remove Tag
tag @n[tag=dark_mannequin.new_ai] remove dark_mannequin.new_ai

# Remove Storage
data remove storage dark_mannequin.temp id