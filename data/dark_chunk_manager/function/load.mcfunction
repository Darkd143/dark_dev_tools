scoreboard objectives add dark_chunk_manager.x dummy
scoreboard objectives add dark_chunk_manager.y dummy
scoreboard objectives add dark_chunk_manager.z dummy

# Globals
# Chunk Size
scoreboard players set $dark_chunk_manager.globals dark_chunk_manager.x 16
scoreboard players set $dark_chunk_manager.globals dark_chunk_manager.z 16

# Cubed Root of Max Fill Size
scoreboard players set $dark_chunk_manager.globals dark_chunk_manager.y 32