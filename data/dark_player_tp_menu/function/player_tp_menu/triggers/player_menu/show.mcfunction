# Parameters:
# - actions (object): list of player actions

$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": "Dark Player TP Menu", \
  "columns": 1, \
  "exit_action": { \
    "label": "Back", \
    "tooltip": "exit this menu" \
  }, \
  "actions": $(actions) \
}