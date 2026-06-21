# Save mannequin ID to storage
data modify storage dark_mannequin.temp pause_ai set value "1b"

function dark_mannequin:manage/ai/freeze/main

# Remove Storage
data remove storage dark_mannequin.temp pause_ai