# Parameters:
# - id (int): The id to assign to the entity

$kill @n[tag=dark_mannequin.ai_selector,scores={dark_mannequin.id=$(id)}]

$team empty mannequin_ai_team_$(id)
$team remove mannequin_ai_team_$(id)

scoreboard players reset @s dark_mannequin.id