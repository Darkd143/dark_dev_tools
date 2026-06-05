# Save mannequin ID to storage
execute store result storage dark_mannequin.temp id int 1 run scoreboard players get @s dark_mannequin.id

function dark_mannequin:mannequin/manage/ai/mirror/macro with storage dark_mannequin.temp

# Remove Storage
data remove storage dark_mannequin.temp id