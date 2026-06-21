execute if score @s dark_mannequin.inventory_swap matches 1 run function dark_mannequin:manage/inventory_swap/all
execute if score @s dark_mannequin.inventory_swap matches 2 run function dark_mannequin:manage/inventory_swap/hands
execute if score @s dark_mannequin.inventory_swap matches 3 run function dark_mannequin:manage/inventory_swap/armor
execute if score @s dark_mannequin.inventory_swap matches 4 run function dark_mannequin:manage/inventory_swap/body_parts/mainhand
execute if score @s dark_mannequin.inventory_swap matches 5 run function dark_mannequin:manage/inventory_swap/body_parts/offhand
execute if score @s dark_mannequin.inventory_swap matches 6 run function dark_mannequin:manage/inventory_swap/body_parts/head
execute if score @s dark_mannequin.inventory_swap matches 7 run function dark_mannequin:manage/inventory_swap/body_parts/chest
execute if score @s dark_mannequin.inventory_swap matches 8 run function dark_mannequin:manage/inventory_swap/body_parts/legs
execute if score @s dark_mannequin.inventory_swap matches 9 run function dark_mannequin:manage/inventory_swap/body_parts/feet

dialog show @s dark_mannequin:inventory_swap
function dark_mannequin:triggers/inventory_swap/enable