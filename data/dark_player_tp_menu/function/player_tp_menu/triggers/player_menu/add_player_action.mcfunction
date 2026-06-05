# Get player id
execute store result storage dark_player_tp_menu:player_actions player_id int 1 run scoreboard players get @s dark_death_swap.gameplay.player_id

# Tag Current Player
tag @s add dark_player_tp_menu.username_target

# Summon text display for resolving player name
summon text_display ~ ~ ~ {Tags:["name_resolver"],text:{'selector':'@p[tag=dark_player_tp_menu.username_target,tag=!dark_player_tp_menu.menu_player,gamemode=!spectator]'}}
data modify storage dark_player_tp_menu:player_actions username set from entity @n[type=text_display,tag=name_resolver] text.text
kill @n[type=text_display,tag=name_resolver]

# Untag Current Player
tag @s remove dark_player_tp_menu.username_target

# Create Action
function dark_player_tp_menu:player_tp_menu/triggers/player_menu/add_player_action_macro with storage dark_player_tp_menu:player_actions

# Remove Storage
data remove storage dark_player_tp_menu:player_actions player_id
data remove storage dark_player_tp_menu:player_actions username