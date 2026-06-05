execute unless entity @s[type=player] run return 0
summon minecraft:mannequin ~ ~ ~ {profile:{id:[I; 0, 0, 0, 0]},Tags:["dark_mannequin.mannequin","dark_mannequin.new_mannequin"]}
data modify entity @n[type=mannequin,tag=dark_mannequin.new_mannequin] profile.id set from entity @s UUID
execute as @n[type=minecraft:mannequin,tag=dark_mannequin.new_mannequin] run function dark_mannequin:mannequin/manage/id/assign_id
tag @n[type=mannequin,tag=dark_mannequin.new_mannequin] remove dark_mannequin.new_mannequin