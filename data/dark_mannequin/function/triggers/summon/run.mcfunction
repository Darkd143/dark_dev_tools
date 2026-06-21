execute if score @s dark_mannequin.summon matches -1 run dialog show @s dark_mannequin:summon_menu
execute if score @s dark_mannequin.summon matches -2 run function dark_mannequin:manage/summon/steve
execute if score @s dark_mannequin.summon matches -3 run function dark_mannequin:manage/summon/default
execute if score @s dark_mannequin.summon matches -4 run function dark_mannequin:manage/summon/profile
execute if score @s dark_mannequin.summon matches -5 run function dark_mannequin:triggers/summon/player_mannequin_menu/run

execute if score @s dark_mannequin.summon matches 1.. 

function dark_mannequin:triggers/summon/enable