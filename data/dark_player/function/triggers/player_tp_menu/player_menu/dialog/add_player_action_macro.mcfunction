# Parameters:
# - player_id (int): The id of the player
# - name (string): The players name

$data modify storage dark_player.temp actions append value { \
    "label": [ \
            { \
                "player": "$(name)" \
            }, \
            " $(name)" \
        ], \
        "tooltip": "TP to $(name)", \
        "action": { \
            "type": "minecraft:run_command", \
            "command": "/trigger dark_player.tp_to_player set $(player_id)" \
    } \
}