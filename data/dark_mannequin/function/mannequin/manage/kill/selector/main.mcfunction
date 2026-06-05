# Save mannequin ID to storage
execute if score @s dark_mannequin.id matches 1.. store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.id

execute if score @s dark_mannequin.id matches 1.. run function dark_mannequin:mannequin/manage/kill/selector/macro with storage dark_mannequin.temp

# Kill Mannequin
kill @s

# Remove Storage
data remove storage dark_mannequin.temp id