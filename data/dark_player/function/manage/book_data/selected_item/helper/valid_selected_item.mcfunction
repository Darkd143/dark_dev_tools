execute if data entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw run return run data modify storage dark_player.temp component_id set value "minecraft:writable_book_content"
execute if data entity @s SelectedItem.components."minecraft:written_book_content".pages[0].raw run return run data modify storage dark_player.temp component_id set value "minecraft:written_book_content"
tellraw @s [{"text":"[Dark Player] ","color":"gray"},{"text":"Error! You are not holding a book with valid data on the first page.","color":"red"}]
return 0