# Make sure at least one Mannequin is present
execute unless entity @n[scores={dark_mannequin.id=1..},tag=dark_mannequin.mannequin,type=minecraft:mannequin] run return run function dark_mannequin:triggers/mannequin_menu/all_mannequin_dialog/error

# Set Up Storage
data merge storage dark_mannequin.temp {actions:[]}

# Determine Actions per Mannequin
execute as @e[scores={dark_mannequin.id=1..},tag=dark_mannequin.mannequin,type=minecraft:mannequin] run function dark_mannequin:triggers/mannequin_menu/all_mannequin_dialog/add_action/main

# Show Dialog
function dark_mannequin:triggers/mannequin_menu/all_mannequin_dialog/show with storage dark_mannequin.temp

# Clean Up Storage
data remove storage dark_mannequin.temp actions