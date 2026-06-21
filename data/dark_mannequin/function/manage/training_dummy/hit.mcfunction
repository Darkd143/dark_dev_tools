# Determine Damage Taken
scoreboard players operation @s dark_mannequin.temp = @s dark_mannequin.max_hp
scoreboard players operation @s dark_mannequin.temp -= @s dark_mannequin.hp
execute store result storage dark_mannequin.temp damage double 0.1 run scoreboard players get @s dark_mannequin.temp

# Display Damage
execute on attacker run tellraw @s [{"text":"[Dark Mannequin] ","color":"gray"},{"text":"Damage: ","color":"white"},{"storage":"dark_mannequin.temp","nbt":"damage","color":"white","plain":true}]

# Reset Health
function dark_mannequin:manage/properties/health/set_to_max
data remove storage dark_mannequin.temp damage