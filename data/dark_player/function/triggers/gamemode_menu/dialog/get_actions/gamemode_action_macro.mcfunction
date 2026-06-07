# Parameters:
# - gamemode (string): The gamemode name: "survival", "adventure", "creative", "spectator"
# - username (string): The player's username
# - color (string): The color of the gamemode

$data modify storage dark_player.temp actions append value { \
      "label": [{"text":"$(gamemode)",color:"$(color)"}], \
      "tooltip": "Change $(username) to $(gamemode) mode", \
      "width": 2, \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/function dark_player:triggers/gamemode_menu/dialog/apply_gamemode {gamemode:"$(gamemode)",username:"$(username)"}" \
      } \
    }