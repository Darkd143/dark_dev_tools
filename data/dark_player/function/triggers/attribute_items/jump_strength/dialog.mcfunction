dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": "Dark Player - Jump Strength", \
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
      "label": "Save Jump Strength", \
      "tooltip": "Select an attribute preset to apply to yourself", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_player.attribute.jump_strength set $(new_jump_strength)" \
      } \
    }, \
    { \
      "label": "Change to No Jump", \
      "tooltip": "Apply No Jump to yourself", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_player.attribute.preset_menu set 3" \
      } \
    }, \
    { \
      "label": "Reset Jump Strength to Default", \
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