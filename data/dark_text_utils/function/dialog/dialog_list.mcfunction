# Set Up Storage
data merge storage dark_text_utils.dialog {dialog:{"type":"minecraft:dialog_list"}}

# Required Dialog Fields
# TITLE
function dark_text_utils:dialog/storage/update_title/main

# DIALOGS
execute if data storage dark_text_utils.temp dialogs run data modify storage dark_text_utils.dialog dialog."dialogs" set from storage dark_text_utils.temp dialogs
execute unless data storage dark_text_utils.dialog dialog."dialogs" run data modify storage dark_text_utils.dialog dialog."dialogs" set value ["minecraft:custom_options"]

# Optional Dialog Fields
function dark_text_utils:dialog/storage/update_shared_fields
function dark_text_utils:dialog/storage/update_other_shared_fields
execute if data storage dark_text_utils.temp button_width run data modify storage dark_text_utils.dialog dialog."button_width" set from storage dark_text_utils.temp button_width

# Display Dialog
function dark_text_utils:dialog/display with storage dark_text_utils.dialog

# Remove Storage
data remove storage dark_text_utils.dialog dialog