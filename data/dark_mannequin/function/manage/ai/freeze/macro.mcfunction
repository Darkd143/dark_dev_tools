# Parameters:
# - id (int): The id to assign to the entity
# - pause_ai (int): Whether to enable or disable the AI (ob or 1b)

$data modify entity @n[tag=dark_mannequin.ai_selector,scores={dark_mannequin.id=$(id)}] NoAI set value $(pause_ai)