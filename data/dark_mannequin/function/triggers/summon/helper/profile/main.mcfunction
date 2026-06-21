# If player is not holding a writable or written book, don't proceed
execute unless entity @s[predicate=dark_player:holding/mainhand/writable_or_written_book,type=player] run return run tellraw @s [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: You aren't holding a writable or written book!","color":"red"}]

# Storage
data modify storage dark_player.temp storage set value "dark_mannequin.temp"
data modify storage dark_player.temp identifier set value "profile"
function dark_player:manage/book_data/selected_item/store/main

# Error handling for invalid book data
execute unless data storage dark_mannequin.temp profile run return run tellraw @s [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: Valid Data not found in selected item book!","color":"red"}]

execute if score @s dark_mannequin.summon matches -6 run function dark_mannequin:triggers/summon/helper/profile/dialog with storage dark_mannequin.temp
execute if score @s dark_mannequin.summon matches -7 run function dark_mannequin:triggers/summon/helper/profile/macro with storage dark_mannequin.temp

data remove storage dark_mannequin.temp profile