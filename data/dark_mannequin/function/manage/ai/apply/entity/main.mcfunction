# Parameters:
# - entity_id (int): The identifier for the entity to use as AI (1..4)

execute unless entity @s[type=minecraft:mannequin] run return run tellraw @a [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: Command not run on a Mannequin!","color":"red"}]

$scoreboard players set @s dark_mannequin.ai.entity $(entity_value)

# Ground - Tradable
execute if score @s dark_mannequin.ai.entity matches 1 run function dark_mannequin:manage/ai/apply/entity/default {entity_type:"minecraft:wandering_trader"}
execute if score @s dark_mannequin.ai.entity matches 2 run function dark_mannequin:manage/ai/apply/entity/default {entity_type:"minecraft:villager"}

# Ground - Hostile
execute if score @s dark_mannequin.ai.entity matches 3 run function dark_mannequin:manage/ai/apply/entity/default {entity_type:"minecraft:vindicator"}
execute if score @s dark_mannequin.ai.entity matches 4 run function dark_mannequin:manage/ai/apply/entity/default {entity_type:"minecraft:zombie"}

execute if score @s dark_mannequin.ai.entity matches 1..4 at @s run function dark_mannequin:manage/ai/apply/entity/team/connect