# Set Up Storage
data merge storage dark_text_utils.dialog {dialog:{"type":"minecraft:confirmation"}}

# Required Dialog Fields
# TITLE
function dark_text_utils:dialog/storage/update_title/main

# YES
execute if data storage dark_text_utils.temp yes run data modify storage dark_text_utils.dialog dialog."yes" set from storage dark_text_utils.temp yes
execute unless data storage dark_text_utils.dialog dialog."yes" run data modify storage dark_text_utils.dialog dialog."yes" set value {"label":"Yes"}

# NO
execute if data storage dark_text_utils.temp no run data modify storage dark_text_utils.dialog dialog."no" set from storage dark_text_utils.temp no
execute unless data storage dark_text_utils.dialog dialog."no" run data modify storage dark_text_utils.dialog dialog."no" set value {"label":"No"}

# Optional Dialog Fields
function dark_text_utils:dialog/storage/update_shared_fields

# Display Dialog
function dark_text_utils:dialog/display with storage dark_text_utils.dialog

# Remove Storage
data remove storage dark_text_utils.dialog dialog