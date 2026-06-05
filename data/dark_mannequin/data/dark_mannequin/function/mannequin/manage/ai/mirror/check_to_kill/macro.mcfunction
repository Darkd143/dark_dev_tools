# Parameters:
# - id (int): The id to assign to the entity

$execute unless entity @n[type=minecraft:mannequin,scores={dark_mannequin.id=$(id)}] run kill @s