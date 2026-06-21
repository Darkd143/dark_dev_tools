# Parameters:
# - id (int): The id to assign to the entity

$item replace entity @n[type=minecraft:armor_stand,tag=dark_mannequin.temp_equipment,scores={dark_mannequin.id=$(id)}] weapon.mainhand from entity @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin,scores={dark_mannequin.id=$(id)}] weapon.mainhand
$item replace entity @n[type=minecraft:armor_stand,tag=dark_mannequin.temp_equipment,scores={dark_mannequin.id=$(id)}] weapon.offhand from entity @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin,scores={dark_mannequin.id=$(id)}] weapon.offhand

$item replace entity @n[type=minecraft:armor_stand,tag=dark_mannequin.temp_equipment,scores={dark_mannequin.id=$(id)}] armor.head from entity @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin,scores={dark_mannequin.id=$(id)}] armor.head
$item replace entity @n[type=minecraft:armor_stand,tag=dark_mannequin.temp_equipment,scores={dark_mannequin.id=$(id)}] armor.chest from entity @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin,scores={dark_mannequin.id=$(id)}] armor.chest
$item replace entity @n[type=minecraft:armor_stand,tag=dark_mannequin.temp_equipment,scores={dark_mannequin.id=$(id)}] armor.legs from entity @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin,scores={dark_mannequin.id=$(id)}] armor.legs
$item replace entity @n[type=minecraft:armor_stand,tag=dark_mannequin.temp_equipment,scores={dark_mannequin.id=$(id)}] armor.feet from entity @n[type=minecraft:mannequin,tag=dark_mannequin.mannequin,scores={dark_mannequin.id=$(id)}] armor.feet