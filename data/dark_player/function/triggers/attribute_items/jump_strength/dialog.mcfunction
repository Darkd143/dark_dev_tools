dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": "Dark Player - Jump Strength", \
  "columns": 1, \
  "inputs": [ \
    { \
      "type": "minecraft:number_range", \
      "key": "new_jump_strength", \
      "label": "New Jump Strength (in blocks)", \
      "start": 1, \
      "end": 20, \
      "step": 1, \
      "initial": 1 \
    } \
  ], \
  "actions": [ \
    { \
      "label": "Save", \
      "tooltip": "Set Jump Strength to the value set above (in blocks)", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_player.attribute.jump_strength set $(new_jump_strength)" \
      } \
    }, \
    { \
      "label": "No Jump", \
      "tooltip": "Apply No Jump to yourself", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_player.attribute.preset_menu set 3" \
      } \
    }, \
    { \
      "label": "Reset", \
      "tooltip": "Reset Jump Strength to Default", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_player.attribute.jump_strength set 1" \
      } \
    }, \
    { \
      "label": "Exit", \
      "tooltip": "Exit the dialog menu" \
    } \
  ] \
}