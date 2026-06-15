# Parameters:
# - player_id (int): The id of the player
# - name (string): The players name

$data modify storage dark_player.temp actions append value { \
    "label": [ \
            { \
                "player": "$(name)" \
            }, \
            " Teleport" \
        ], \
        "tooltip": "Teleport to $(name)", \
        "action": { \
            "type": "minecraft:run_command", \
            "command": "/trigger dark_player.tp_to_player set $(player_id)" \
    } \
}

$execute if entity @s[gamemode=spectator] run data modify storage dark_player.temp actions append value { \
    "label": [ \
            { \
                "player": "$(name)" \
            }, \
            " Spectate" \
        ], \
        "tooltip": "Spectate $(name)", \
        "action": { \
            "type": "minecraft:run_command", \
            "command": "/trigger dark_player.spectate set $(player_id)" \
    } \
}