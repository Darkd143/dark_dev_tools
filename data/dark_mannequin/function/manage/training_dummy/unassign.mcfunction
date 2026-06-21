execute unless entity @s[type=minecraft:mannequin,tag=dark_mannequin.training_dummy] run return run tellraw @a [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: The identified entity is not a mannequin training dummy!","color":"red"}]

tag @s remove dark_mannequin.training_dummy
function dark_player:manage/attribute/modify/reset {name:"minecraft:max_health"}
function dark_mannequin:manage/properties/health/set_to_max
scoreboard players reset @s dark_mannequin.hp
scoreboard players reset @s dark_mannequin.max_hp