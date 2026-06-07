# Parameters:
# - storage (string): The name of the storage
# - variable (string): The storage variable name

execute unless entity @s[type=player] run return fail
$execute if entity @s[gamemode=adventure] run return run data modify storage $(storage) $(variable) set value "adventure"
$execute if entity @s[gamemode=survival] run return run data modify storage $(storage) $(variable) set value "survival"
$execute if entity @s[gamemode=creative] run return run data modify storage $(storage) $(variable) set value "creative"
$execute if entity @s[gamemode=spectator] run return run data modify storage $(storage) $(variable) set value "spectator"