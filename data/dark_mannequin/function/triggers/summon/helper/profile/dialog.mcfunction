# Parameters:
# - profile (string): The profile data

$dialog show @s { \
  "type": "minecraft:confirmation", \
  "title": "Dark Mannequin - Summon Profile Mannequin Confirmation", \
  "body": { \
    "type": "minecraft:plain_message", \
    "contents": { \
      "text": "Summon a mannequin of \"$(profile)\"?", \
      "color": "gold" \
    } \
  }, \
  "yes": { \
    "label": "Confirm", \
    "tooltip": "Summon the Mannequin", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_mannequin.summon set -7" \
    } \
  }, \
  "no": { \
    "label": "Cancel", \
    "tooltip": "Return to the Summon Menu", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_mannequin.summon set -1" \
    } \
  } \
}