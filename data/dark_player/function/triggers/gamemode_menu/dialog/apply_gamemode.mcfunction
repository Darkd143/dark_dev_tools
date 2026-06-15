# Parameters:
# - gamemode (string): The gamemode name: "survival", "adventure", "creative", "spectator"
# - username (string): The player's username

$execute as $(username) run function dark_player:manage/gamemode/set {gamemode:"$(gamemode)"}
function dark_player:triggers/gamemode_menu/dialog/run