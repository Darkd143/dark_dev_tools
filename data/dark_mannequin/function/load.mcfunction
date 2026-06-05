# Triggers
scoreboard objectives add dark_mannequin.id dummy
scoreboard objectives add dark_mannequin.temp dummy
scoreboard objectives add dark_mannequin.persist_damage dummy
scoreboard objectives add dark_mannequin.allow_knockback dummy
scoreboard objectives add dark_mannequin.allow_trading dummy

# Variables
execute unless score $dark_mannequin dark_mannequin.id matches 0.. run scoreboard players set $dark_mannequin dark_mannequin.id 0