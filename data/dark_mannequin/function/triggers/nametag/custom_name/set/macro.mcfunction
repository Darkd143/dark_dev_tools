# Parameters:
# - id (int): The id of the mannequin

$execute unless entity @n[scores={dark_mannequin.id=$(id)},tag=dark_mannequin.mannequin,type=minecraft:mannequin] run return run tellraw @s [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: Failed to find a mannequin with an id of $(id)!","color":"red"}]

# If player is not holding a writable or written book, remove the custom name
$execute unless entity @s[predicate=dark_player:holding/mainhand/writable_or_written_book,type=player] as @n[scores={dark_mannequin.id=$(id)},tag=dark_mannequin.mannequin,type=minecraft:mannequin] run return run function dark_mannequin:triggers/nametag/custom_name/set/remove

# Storage
data modify storage dark_player.temp storage set value "dark_mannequin.temp"
data modify storage dark_player.temp identifier set value "CustomName"
function dark_player:manage/book_data/selected_item/store/main

# Error handling for invalid book data
execute unless data storage dark_mannequin.temp CustomName run return run tellraw @s [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Error: Valid Data not found in selected item book!","color":"red"}]

# Set the CustomName
$execute as @n[scores={dark_mannequin.id=$(id)},tag=dark_mannequin.mannequin,type=minecraft:mannequin] run function dark_mannequin:triggers/nametag/custom_name/set/set with storage dark_mannequin.temp

data remove storage dark_mannequin.temp CustomName

