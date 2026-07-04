# Parameters:
# - warning_object (object): The Warning Message as an object

execute unless data storage dark_text_utils.storage datapack_name run function dark_text_utils:storage/set_datapack_name {datapack_name:"Dark Text Utils"}
$tellraw @s [{text:"",color:"yellow"},{text:"[","color":"gray"},{storage:"dark_text_utils.storage",nbt:"datapack_name","color":"gray",interpret:true},{text:"] ","color":"gray"},{text:"Warning: ","color":"yellow"},$(warning_object)]