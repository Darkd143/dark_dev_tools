# Parameters:
# gamemode (string): The gamemode name: "survival", "adventure", "creative", "spectator"

$execute as @a run function dark_player:manage/gamemode/set {gamemode:$(gamemode)}