execute if score @s dark_mannequin.kill matches -1 run function dark_mannequin:manage/kill/nearest
execute if score @s dark_mannequin.kill matches 1.. run function dark_mannequin:triggers/kill/helper

function dark_mannequin:triggers/kill/enable