# Parameters:
# - blocks (int): The amount of blocks to be able to jump over (0-20)

$scoreboard players set @s dark_player.temp $(blocks)

# No Jumping
execute if score @s dark_player.temp matches 0 run return run function dark_player:manage/attribute/presets/no_jump

# Normal Jumping
execute if score @s dark_player.temp matches 1 run function dark_player:manage/attribute/modify/reset {name:"minecraft:jump_strength"}

# Boosted Jumping
execute if score @s dark_player.temp matches 2 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:0.59}
execute if score @s dark_player.temp matches 3 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:0.72}
execute if score @s dark_player.temp matches 4 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:0.84}
execute if score @s dark_player.temp matches 5 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:0.94}
execute if score @s dark_player.temp matches 6 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.04}
execute if score @s dark_player.temp matches 7 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.13}
execute if score @s dark_player.temp matches 8 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.21}
execute if score @s dark_player.temp matches 9 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.29}
execute if score @s dark_player.temp matches 10 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.37}
execute if score @s dark_player.temp matches 11 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.44}
execute if score @s dark_player.temp matches 12 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.51}
execute if score @s dark_player.temp matches 13 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.58}
execute if score @s dark_player.temp matches 14 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.65}
execute if score @s dark_player.temp matches 15 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.71}
execute if score @s dark_player.temp matches 16 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.78}
execute if score @s dark_player.temp matches 17 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.84}
execute if score @s dark_player.temp matches 18 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.9}
execute if score @s dark_player.temp matches 19 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.96}
execute if score @s dark_player.temp matches 20 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:2.02}

# Reset Score
scoreboard players reset @s dark_player.temp