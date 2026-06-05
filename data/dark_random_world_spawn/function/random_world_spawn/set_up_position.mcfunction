execute as @p[tag=dark_random_world_spawn.anchor] at @s run setworldspawn ~ ~ ~
execute as @p[tag=dark_random_world_spawn.anchor] at @s run spreadplayers ~ ~ 3 5 false @a
tag @a[tag=dark_random_world_spawn.anchor] remove dark_random_world_spawn.anchor