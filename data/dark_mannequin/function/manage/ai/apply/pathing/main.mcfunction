execute unless entity @s[type=minecraft:mannequin] run return run tellraw @a [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: Command not run on a Mannequin!","color":"red"}]

function dark_mannequin:manage/ai/apply/entity/main {entity_id:1}
function dark_mannequin:manage/ai/freeze/freeze_ai

scoreboard players set @s dark_mannequin.ai.path_node -1