# Parameters:
# - actions (object): list of player actions
# - columns (int): The number of columns

$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": "Dark Player TP Menu", \
  "columns": $(columns), \
  "exit_action": { \
    "label": "Back", \
    "tooltip": "back to player menu", \
    "action": { \
      "type": "minecraft:show_dialog", \
      "dialog": "dark_player:menu" \
    } \
  }, \
  "actions": $(actions) \
}