# Parameters:
# - id (int): The id to assign to the entity

$team add mannequin_ai_team_$(id)
$team modify mannequin_ai_team_$(id) collisionRule never

# Add Players to team
$execute as @s run team join mannequin_ai_team_$(id)
$execute as @n[tag=dark_mannequin.new_ai] run team join mannequin_ai_team_$(id)