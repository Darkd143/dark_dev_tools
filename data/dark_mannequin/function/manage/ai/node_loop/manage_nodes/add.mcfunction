# Parameters:
# - path_node_loop (int): The loop id for the new node
# - path_node (int): The node id for the new node

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["dark_mannequin.path_node","dark_mannequin.new_node"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
$scoreboard players set @n[type=minecraft:armor_stand,tag=dark_mannequin.new_node] dark_mannequin.ai.path_node $(path_node)
$scoreboard players set @n[type=minecraft:armor_stand,tag=dark_mannequin.new_node] dark_mannequin.ai.path_node_loop $(path_node_loop)
tag @n[type=minecraft:armor_stand,tag=dark_mannequin.new_node] remove dark_mannequin.new_node