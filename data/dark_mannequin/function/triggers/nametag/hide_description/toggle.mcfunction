# Parameters:
# - id (int): The id of the Mannequin

$execute unless entity @n[scores={dark_mannequin.id=$(id)},tag=dark_mannequin.mannequin,type=minecraft:mannequin] run return run tellraw @s [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: Failed to find a mannequin with an id of $(id)!","color":"red"}]

$execute as @n[scores={dark_mannequin.id=$(id)},tag=dark_mannequin.mannequin,type=minecraft:mannequin] if function dark_mannequin:manage/properties/hide_description/is_hidden run return run function dark_mannequin:manage/properties/hide_description/show
$execute as @n[scores={dark_mannequin.id=$(id)},tag=dark_mannequin.mannequin,type=minecraft:mannequin] run function dark_mannequin:manage/properties/hide_description/hide