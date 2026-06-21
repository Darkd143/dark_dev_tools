# Parameters:
# - ai_type (int): The type of ai being used
# - entity_id (int): The identifier for the entity to use as AI
#                    1: Default Mob
#                    2: Node Path Mob
#                    3: Block Path Mob

execute unless entity @s[type=minecraft:mannequin] run return run tellraw @a [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: Command not run on a Mannequin!","color":"red"}]

$scoreboard players set @s dark_mannequin.ai.type $(ai_type)

$execute if score @s dark_mannequin.ai.type matches 1 run function dark_mannequin:manage/ai/apply/entity/main {entity_id:$(entity_id)}
execute if score @s dark_mannequin.ai.type matches 2 run function dark_mannequin:manage/ai/apply/pathing/main