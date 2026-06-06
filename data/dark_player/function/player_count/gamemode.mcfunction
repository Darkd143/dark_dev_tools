# Parameters:
# gamemode (string): The gamemode name: "survival", "adventure", "creative", "spectator"

function dark_player:player_count/helper/reset
$execute as @a[gamemode=$(gamemode)] run function dark_player:player_count/helper/adds