# Save mannequin ID to storage
execute store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.id

execute as @s run function dark_mannequin:mannequin/manage/ai/remove/macro with storage dark_mannequin.temp

# Remove Storage
data remove storage dark_mannequin.temp id