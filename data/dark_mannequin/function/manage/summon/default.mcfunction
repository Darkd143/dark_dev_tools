summon minecraft:mannequin ~ ~ ~ {Tags:["dark_mannequin.mannequin","dark_mannequin.new_mannequin"]}
execute as @n[tag=dark_mannequin.new_mannequin,type=minecraft:mannequin] run function dark_mannequin:manage/id/assign_id
tag @n[tag=dark_mannequin.new_mannequin,type=minecraft:mannequin] remove dark_mannequin.new_mannequin