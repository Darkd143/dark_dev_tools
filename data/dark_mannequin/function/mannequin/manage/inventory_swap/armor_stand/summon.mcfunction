# Parameters:
# - id (int): The id to assign to the entity

summon minecraft:armor_stand ~ ~ ~ {"Tags":["dark_mannequin.temp_equipment"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true}
$scoreboard players set @n[type=minecraft:armor_stand,tag=dark_mannequin.temp_equipment] dark_mannequin.id $(id)

# Swap all items from mannequin inventory to armor stand
$function dark_mannequin:mannequin/manage/inventory_swap/armor_stand/swap_all {id:$(id)}