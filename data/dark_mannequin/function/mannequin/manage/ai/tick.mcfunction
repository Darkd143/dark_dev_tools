# ENTITY AI
execute as @e[type=minecraft:mannequin,tag=dark_mannequin.mannequin,scores={dark_mannequin.ai.type=1}] run function dark_mannequin:mannequin/manage/ai/mirror/main
execute as @e[type=!minecraft:mannequin,tag=dark_mannequin.ai_selector] run function dark_mannequin:mannequin/manage/ai/mirror/check_to_kill/main

# NODE MOVEMENT
execute as @e[type=minecraft:mannequin,tag=dark_mannequin.mannequin,scores={dark_mannequin.ai.type=2}] run function dark_mannequin:mannequin/manage/ai/node_loop/main

# TERRACOTTA MOVEMENT
execute as @e[type=minecraft:mannequin,tag=dark_mannequin.mannequin,scores={dark_mannequin.ai.type=3}] at @s anchored eyes positioned ^ ^ ^-0.5 run function dark_mannequin:mannequin/manage/ai/terracotta_movement/main