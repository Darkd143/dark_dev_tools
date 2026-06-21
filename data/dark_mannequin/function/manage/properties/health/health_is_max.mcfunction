execute store result score @s dark_mannequin.max_hp run function dark_player:manage/attribute/get/base {name:"minecraft:max_health",scale:10}
execute store result score @s dark_mannequin.hp run function dark_mannequin:manage/properties/health/get {scale:10}
execute if score @s dark_mannequin.max_hp = @s dark_mannequin.hp run return 1
return 0