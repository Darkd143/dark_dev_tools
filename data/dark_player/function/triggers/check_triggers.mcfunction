execute as @a[scores={dark_player.menu=1..}] run function dark_player:triggers/menu/run
execute as @a[scores={dark_player.gamemode_menu=-1..}] run function dark_player:triggers/menu/run
execute as @a[scores={dark_player.reset=1..}] run function dark_player:triggers/menu/run
execute as @a[scores={dark_player.attribute_menu=1..}] run function dark_player:triggers/menu/run

function dark_player:triggers/attribute_items/check_triggers