# Set Up Storage
data merge storage dark_text_utils.dialog {dialog:{"type":"minecraft:notice"}}

# Required Dialog Fields
# TITLE
function dark_text_utils:dialog/storage/update_title/main

# ACTION
execute if data storage dark_text_utils.temp action run data modify storage dark_text_utils.dialog dialog."action" set from storage dark_text_utils.temp action
execute unless data storage dark_text_utils.dialog dialog."action" run data modify storage dark_text_utils.dialog dialog."action" set value {"label":"Exit"}

# Optional Dialog Fields
function dark_text_utils:dialog/storage/update_shared_fields

# Display Dialog
function dark_text_utils:dialog/display with storage dark_text_utils.dialog

# Remove Storage
data remove storage dark_text_utils.dialog dialog