# Objectives
scoreboard objectives add dark_mannequin.id dummy
scoreboard objectives add dark_mannequin.temp dummy
scoreboard objectives add dark_mannequin.persist_damage dummy
scoreboard objectives add dark_mannequin.allow_knockback dummy
scoreboard objectives add dark_mannequin.max_hp dummy
scoreboard objectives add dark_mannequin.hp dummy

scoreboard objectives add dark_mannequin.ai.type dummy
scoreboard objectives add dark_mannequin.ai.entity dummy
scoreboard objectives add dark_mannequin.ai.interface dummy
scoreboard objectives add dark_mannequin.ai.path_node_loop dummy
scoreboard objectives add dark_mannequin.ai.path_node dummy
scoreboard objectives add dark_mannequin.ai.debug dummy

# Triggers
scoreboard objectives add dark_mannequin.menu trigger
scoreboard objectives add dark_mannequin.summon trigger
scoreboard objectives add dark_mannequin.mannequin_menu trigger
scoreboard objectives add dark_mannequin.kill trigger

# Variables
execute unless score $dark_mannequin dark_mannequin.id matches 0.. run scoreboard players set $dark_mannequin dark_mannequin.id 0