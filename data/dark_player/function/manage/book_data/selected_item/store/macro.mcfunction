# Parameters:
# - storage (string): The name of the storage to save the data
# - identifier (string): The name of the storage identifier to save the data to
# - component_id (string): The name of the component "minecraft:writable_book_content" or "minecraft:written_book_content"

$data modify storage $(storage) $(identifier) set from entity @s SelectedItem.components.$(component_id).pages[0].raw