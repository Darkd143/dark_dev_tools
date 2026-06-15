# Set up Storage
execute store result score @s dark_player.temp run function dark_player:manage/attribute/get/base {name:"minecraft:scale",scale:10}
execute if score @s dark_player.temp matches 2.. run return run scoreboard players reset @s dark_player.temp
scoreboard players reset @s dark_player.temp
return 0