# Parameters:
# - custom_name_text (string): The profile data
# - id (int): The id of the 

$dialog show @s { \
  "type": "minecraft:confirmation", \
  "title": "Dark Mannequin - Apply Custom Name Confirmation", \
  "body": { \
    "type": "minecraft:plain_message", \
    "contents": { \
      "text": "$(custom_name_text)", \
      "color": "gold" \
    } \
  }, \
  "yes": { \
    "label": "Confirm", \
    "tooltip": "Summon the Mannequin", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_mannequin.summon set -$(id)" \
    } \
  }, \
  "no": { \
    "label": "Cancel", \
    "tooltip": "Return to the Mannequin Menu", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_mannequin.mannequin_menu set $(id)" \
    } \
  } \
}