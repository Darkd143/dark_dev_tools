# Properties:
# - signature (string): The signature of the texture properties
# - value (string): The value of the texture properties

$summon minecraft:mannequin ~ ~ ~ {profile:{properties:[{signature:"$(signature)",name:"textures",value:"$(value)"}]},Tags:["dark_mannequin.mannequin","dark_mannequin.new_mannequin"]}
execute as @n[type=minecraft:mannequin,tag=dark_mannequin.new_mannequin] run function dark_mannequin:mannequin/manage/id/assign_id
tag @n[type=minecraft:mannequin,tag=dark_mannequin.new_mannequin] remove dark_mannequin.new_mannequin