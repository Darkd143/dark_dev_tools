# Parameters:
# - value (string): 0b or 1b

execute if score @s dark_mannequin.id matches 1.. store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.id

$data modify storage dark_mannequin.temp value set value $(value)

# Apply immovability and correct any motion
data modify entity @s Motion set value [I;0,0,0]
$data modify entity @s immovable set value $(value)

execute if score @s dark_mannequin.id matches 1.. run function dark_mannequin:mannequin/manage/properties/invulnerable/macro with storage dark_mannequin.temp

# Remove Storage
data remove storage dark_mannequin.temp id
data remove storage dark_mannequin.temp value