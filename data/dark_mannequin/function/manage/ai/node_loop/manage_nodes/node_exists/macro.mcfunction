# Parameters:
# - path_node (int): The node id for the new node
# - path_node_loop (int): The loop id for the new node

$execute if entity @n[type=minecraft:armor_stand,tag=dark_mannequin.path_node,scores={dark_mannequin.ai.path_node=$(path_node),dark_mannequin.ai.path_node_loop=$(path_node_loop)}] run return 1
return 0