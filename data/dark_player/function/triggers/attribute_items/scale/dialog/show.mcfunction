# Permissions:
# - scale (float): The current scale of the player

$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": "Dark Player - Jump Strength", \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "contents": "Currently: $(scale)" \
    }, \
  ], \
  "inputs": [ \
    { \
      "type": "minecraft:number_range", \
      "key": "new_scale", \
      "label": "New Jump Strength (in blocks)", \
      "start": 0.1, \
      "end": 10, \
      "step": 0.1, \
      "initial": $(scale) \
    } \
  ], \
  "actions": [ \
    { \
      "label": "Save Scale", \
      "tooltip": "Apply the scale to yourself", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/function dark_player:manage/attribute/modify/base {name:\"minecraft:scale\",scale:$(new_scale)}" \
      } \
    }, \
    { \
      "label": "+0.1", \
      "tooltip": "Add 0.1 to your scale", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_player.attribute.scale set -2" \
      } \
    }, \
    { \
      "label": "-0.1", \
      "tooltip": "Remove 0.1 to your scale", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_player.attribute.scale set -3" \
      } \
    }, \
    { \
      "label": "Reset Scale", \
      "tooltip": "Reset your scale", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_player.attribute.scale set -4" \
      } \
    }, \
    { \
      "label": "Exit", \
      "tooltip": "Exit the dialog menu" \
    } \
  ] \
}