# Parameters:
# - actions (object): list of player actions

$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": "Dark Player - Gamemode Menu", \
  "columns": 5, \
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