dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": "Dark Player - Gamemode Menu", \
  "body": { \
    "type":"plain_message", \
    "contents": [{"text": "Warning You are about to reset your player which will kill yourself and reset your player data. Do this for only you, or for all players?","color":"gold"}]}, \
  "columns": 5, \
  "exit_action": { \
    "label": "Cancel", \
    "tooltip": "cancel player reset", \
    "action": { \
      "type": "minecraft:show_dialog", \
      "dialog": "dark_player:menu" \
    } \
  }, \
  "actions": [ \
    { \
      "label": "Only Yourself", \
      "tooltip": [{"text":"Reset all player data for "},{"selector":"@s"}], \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_player.reset set 2" \
      } \
    }, \
    { \
      "label": "All players", \
      "tooltip": [{"text":"Reset player data for all players"}], \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_player.reset set 3" \
      } \
    } \
  ] \
}