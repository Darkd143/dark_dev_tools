# Parameters:
# - blocks (int): The amount of blocks to be able to jump over (0-20)

$scoreboard players set @s dark_player.temp $(blocks)

# No Jumping
execute if score @s dark_player.temp matches 0 run return run function dark_player:manage/attribute/presets/no_jump

# Normal Jumping
execute if score @s dark_player.temp matches 1 run function dark_player:manage/attribute/modify/reset {name:"minecraft:jump_strength"}

# Boosted Jumping
execute if score @s dark_player.temp matches 2 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:0.563489112736982}
execute if score @s dark_player.temp matches 3 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:0.6772296297129657}
execute if score @s dark_player.temp matches 4 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:0.7744417102333849}
execute if score @s dark_player.temp matches 5 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:0.8607438374669083}
execute if score @s dark_player.temp matches 6 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:0.9391485212283033}
execute if score @s dark_player.temp matches 7 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.011493913038214}
execute if score @s dark_player.temp matches 8 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.078999502919908}
execute if score @s dark_player.temp matches 9 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.142523487062501}
execute if score @s dark_player.temp matches 10 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.202696931765233}
execute if score @s dark_player.temp matches 11 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.259999960660934}
execute if score @s dark_player.temp matches 12 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.314807929719625}
execute if score @s dark_player.temp matches 13 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.367420887379469}
execute if score @s dark_player.temp matches 14 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.418083169080609}
execute if score @s dark_player.temp matches 15 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.466996886710314}
execute if score @s dark_player.temp matches 16 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.514331488415203}
execute if score @s dark_player.temp matches 17 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.560230703451849}
execute if score @s dark_player.temp matches 18 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.604817696556809}
execute if score @s dark_player.temp matches 19 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.648198965650067}
execute if score @s dark_player.temp matches 20 run function dark_player:manage/attribute/modify/base {name:"minecraft:jump_strength",scale:1.690467338210946}

# Reset Score
scoreboard players reset @s dark_player.temp