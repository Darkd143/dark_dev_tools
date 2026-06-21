# Set up Storage
execute unless data storage dark_player.temp storage run data modify storage dark_player.temp storage set value "dark_player.temp"
execute unless data storage dark_player.temp identifier run data modify storage dark_player.temp identifier set value "page_data"

# Save Storage
execute if function dark_player:manage/book_data/selected_item/helper/valid_selected_item run function dark_player:manage/book_data/selected_item/store/macro with storage dark_player.temp

# Remove Storage
data remove storage dark_player.temp storage
data remove storage dark_player.temp identifier
data remove storage dark_player.temp component_id