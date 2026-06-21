# Parameters:
# - id (int): The id to assigned to the entity

$execute unless entity @n[scores={dark_mannequin.id=$(id)},tag=dark_mannequin.mannequin,type=minecraft:mannequin] run return run tellraw @s [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: Failed to find a mannequin with and id of $(id)!","color":"red"}]
$execute as @n[scores={dark_mannequin.id=$(id)},tag=dark_mannequin.mannequin,type=minecraft:mannequin] run function dark_mannequin:manage/kill/selector/main