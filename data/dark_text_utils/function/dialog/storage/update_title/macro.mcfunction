execute unless data storage dark_text_utils.storage datapack_name run function dark_text_utils:storage/set_datapack_name {datapack_name:"Dark Text Utils"}
data modify storage dark_text_utils.temp datapack_name set from storage dark_text_utils.storage datapack_name
execute unless data storage dark_text_utils.temp dialog_title run data modify storage dark_text_utils.temp dialog_title set value "Default Subtitle"

function dark_text_utils:dialog/storage/update_title/helper with storage dark_text_utils.temp

data remove storage dark_text_utils.temp datapack_name
data remove storage dark_text_utils.temp dialog_title