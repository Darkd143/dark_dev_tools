# Parameters:
# - player_id (int): The player's id
# - username (string): The player's username

$data modify storage dark_mannequin.temp actions append value { \
      "label": [{"text":"Summon "},{"player":"$(username)"}], \
      "tooltip": "Summon a $(username) Mannequin", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_mannequin.summon set $(player_id)" \
      } \
    }