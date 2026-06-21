execute if score @s dark_mannequin.summon matches -1 run dialog show @s dark_mannequin:summon_menu
execute if score @s dark_mannequin.summon matches -2 run function dark_mannequin:manage/summon/steve
execute if score @s dark_mannequin.summon matches -3 run function dark_mannequin:manage/summon/default
execute if score @s dark_mannequin.summon matches -4 run function dark_mannequin:manage/summon/player
execute if score @s dark_mannequin.summon matches -5 run function dark_mannequin:triggers/summon/player_mannequin_menu/run
execute if score @s dark_mannequin.summon matches -7..-6 run function dark_mannequin:triggers/summon/helper/profile/main

execute if score @s dark_mannequin.summon matches 1.. run function dark_mannequin:triggers/summon/helper/selector/main

function dark_mannequin:triggers/summon/enable