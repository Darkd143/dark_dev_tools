execute unless entity @s[type=minecraft:mannequin] run return run tellraw @a [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: The identified entity is not a mannequin!","color":"red"}]

tag @s add dark_mannequin.training_dummy
function dark_player:manage/attribute/modify/base {name:"minecraft:max_health",scale:1000}
function dark_mannequin:manage/properties/health/set_to_max
scoreboard players set @s dark_mannequin.hp 10000
scoreboard players set @s dark_mannequin.max_hp 10000