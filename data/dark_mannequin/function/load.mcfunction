# Triggers
scoreboard objectives add dark_mannequin.id dummy
scoreboard objectives add dark_mannequin.temp dummy
scoreboard objectives add dark_mannequin.persist_damage dummy
scoreboard objectives add dark_mannequin.allow_knockback dummy
scoreboard objectives add dark_mannequin.allow_trading dummy

scoreboard objectives add dark_mannequin.trading dummy

scoreboard objectives add dark_mannequin.ai.type dummy
scoreboard objectives add dark_mannequin.ai.entity dummy
scoreboard objectives add dark_mannequin.ai.interface dummy
scoreboard objectives add dark_mannequin.ai.path_node_loop dummy
scoreboard objectives add dark_mannequin.ai.path_node dummy
scoreboard objectives add dark_mannequin.ai.debug dummy

# Variables
execute unless score $dark_mannequin dark_mannequin.id matches 0.. run scoreboard players set $dark_mannequin dark_mannequin.id 0