execute if score @s dark_player.attribute.jump_strength matches -1 run function dark_player:triggers/attribute_items/jump_strength/dialog
execute unless score @s dark_player.attribute.jump_strength matches 1..20 run return run function dark_player:triggers/attribute_items/jump_strength/enable

# Set New Jump Strength
execute store result storage dark_player.temp blocks int 1 run scoreboard players get @s dark_player.attribute.jump_strength
function dark_player:manage/attribute/presets/block_jump_height with storage dark_player.temp
data remove storage dark_player.temp blocks

function dark_player:triggers/attribute_items/jump_strength/enable