# Parameters:
# - actions (object): list of player actions

$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": "Dark Mannequin - Player Mannequin Menu", \
  "exit_action": { \
    "label": "Back", \
    "tooltip": "back to the mannequin summon menu", \
    "action": { \
      "type": "minecraft:show_dialog", \
      "dialog": "dark_mannequin:summon_menu" \
    } \
  }, \
  "columns": 1, \
  "actions": $(actions) \
}