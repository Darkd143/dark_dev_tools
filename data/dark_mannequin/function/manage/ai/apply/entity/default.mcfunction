# Parameters:
# - entity_type (string): The type of Minecraft entity

$execute at @s run summon $(entity_type) ~ ~ ~ {Tags:["dark_mannequin.ai_selector","dark_mannequin.new_ai"],PersistenceRequired:1b,Silent:1b,CanPickUpLoot:0b,attributes:[{id:scale,base:0.9f}],active_effects:[{id:invisibility,duration:-1,show_particles:0b}]}