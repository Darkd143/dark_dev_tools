# Parameters:
# - type (string): "default", "steve", or "player"
# - count (int): The amount to summon

$scoreboard players set $dark_mannequin dark_mannequin.temp $(count)
$execute if score $dark_mannequin dark_mannequin.temp matches 1.. at @s run function dark_mannequin:mannequin/manage/summon/multi/macro {type:$(type)}
scoreboard players reset $dark_mannequin dark_mannequin.temp
execute at @s run spreadplayers ~ ~ 0 10 false @e[type=minecraft:mannequin,tag=dark_mannequin.mannequin,distance=..1]