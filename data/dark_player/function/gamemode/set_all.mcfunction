# Parameters:
# gamemode (string): The gamemode name: "survival", "adventure", "creative", "spectator"

$execute as @a run function dark_player:gamemode/set {gamemode:$(gamemode)}