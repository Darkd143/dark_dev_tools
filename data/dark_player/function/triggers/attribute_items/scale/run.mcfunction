# Add or Subtract Scale
execute if score @s dark_player.attribute.scale matches -2 run function dark_player:manage/attribute/presets/scale/add_0.1

execute if score @s dark_player.attribute.scale matches -3 if function dark_player:manage/attribute/presets/scale/helper/scale_is_more_than_0.1 run function dark_player:manage/attribute/presets/scale/subtract_0.1
execute if score @s dark_player.attribute.scale matches -3 unless function dark_player:manage/attribute/presets/scale/helper/scale_is_more_than_0.1 run tellraw @s [{"text":"[Dark Player] ","color":"gray"},{"text":"Can't remove 0.1 from your scale because your scale is less than or equal to 0.1.","color":"gold"}]

# Reset Scale
execute if score @s dark_player.attribute.scale matches -4 run function dark_player:manage/attribute/modify/reset {name:"minecraft:scale"}

# Reset Trigger and return unless value is one or more
execute unless score @s dark_player.attribute.scale matches 1.. run function dark_player:triggers/attribute_items/scale/dialog/run
execute unless score @s dark_player.attribute.scale matches 1.. run return run function dark_player:triggers/attribute_items/scale/enable

# Set Up Storage for Positive Values
execute store result storage dark_player.temp scale int 1 run function dark_player:manage/attribute/get/base {name:"minecraft:scale",scale:1}
data modify storage dark_player.temp name set value "minecraft:scale"

# Modify Scale
function dark_player:manage/attribute/modify/base with storage dark_player.temp

# Remove Storage
data remove storage dark_player.temp scale
data remove storage dark_player.temp name

function dark_player:triggers/attribute_items/scale/dialog/run
function dark_player:triggers/attribute_items/scale/enable