execute if score @s dark_player.attribute.preset_menu matches -1 run dialog show @s dark_player:preset_menu

execute if score @s dark_player.attribute.preset_menu matches 1 run function dark_player:manage/attribute/presets/creative_maneuverability
execute if score @s dark_player.attribute.preset_menu matches 2 run function dark_player:manage/attribute/presets/no_fall_damage
execute if score @s dark_player.attribute.preset_menu matches 3 run function dark_player:manage/attribute/presets/no_jump
execute if score @s dark_player.attribute.preset_menu matches 4 run function dark_player:manage/attribute/presets/no_knockback

function dark_player:triggers/attribute_items/preset_menu/enable