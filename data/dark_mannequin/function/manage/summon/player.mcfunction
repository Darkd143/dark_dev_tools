execute unless entity @s[type=player] run return 0

# Summon Mannequin
summon minecraft:mannequin ~ ~ ~ {profile:{id:[I; 0, 0, 0, 0]},Tags:["dark_mannequin.mannequin","dark_mannequin.new_mannequin"]}

# Copy User UUID
data modify entity @n[type=mannequin,tag=dark_mannequin.new_mannequin] profile.id set from entity @s UUID

# Assign Mannequin ID
execute as @n[type=minecraft:mannequin,tag=dark_mannequin.new_mannequin] run function dark_mannequin:manage/id/assign_id

# Remove New Mannequin Tag
tag @n[type=mannequin,tag=dark_mannequin.new_mannequin] remove dark_mannequin.new_mannequin