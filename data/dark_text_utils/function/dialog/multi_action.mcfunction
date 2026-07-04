# Set Up Storage
data merge storage dark_text_utils.dialog {dialog:{"type":"minecraft:multi_action"}}

# Required Dialog Fields
# TITLE
function dark_text_utils:dialog/storage/update_title/main

# ACTIONS
execute if data storage dark_text_utils.temp actions run data modify storage dark_text_utils.dialog dialog."actions" set from storage dark_text_utils.temp actions
execute unless data storage dark_text_utils.dialog dialog."actions" run data modify storage dark_text_utils.dialog dialog."actions" set value [{"label": "Exit","tooltip":"exit"}]

# Optional Dialog Fields
function dark_text_utils:dialog/storage/update_shared_fields
function dark_text_utils:dialog/storage/update_other_shared_fields

# Display Dialog
function dark_text_utils:dialog/display with storage dark_text_utils.dialog

# Remove Storage
data remove storage dark_text_utils.dialog dialog