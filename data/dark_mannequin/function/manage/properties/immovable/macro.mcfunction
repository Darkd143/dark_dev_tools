# Parameters:
# - value (string): 0b or 1b
# - id (int): The id to assign to the entity

$data modify entity @n[tag=dark_mannequin.ai_selector,scores={dark_mannequin.id=$(id)}] Motion set value [I;0,0,0]
$data modify entity @n[tag=dark_mannequin.ai_selector,scores={dark_mannequin.id=$(id)}] immovable set value $(value)