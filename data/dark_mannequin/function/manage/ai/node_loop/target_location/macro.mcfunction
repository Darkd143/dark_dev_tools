# Parameters:
# - id (int): The id to assign to the entity
# - x (int): The x value for the wandering trader target
# - y (int): The x value for the wandering trader target
# - z (int): The x value for the wandering trader target

$data modify entity @n[tag=dark_mannequin.ai_selector,type=minecraft:wandering_trader,scores={dark_mannequin.id=$(id)}] wander_target set value [I;$(x),$(y),$(z)]