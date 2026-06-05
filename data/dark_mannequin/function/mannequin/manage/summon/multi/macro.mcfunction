# Parameters:
# - type (string): "default", "steve", or "player"

scoreboard players remove $dark_mannequin dark_mannequin.temp 1
$function dark_mannequin:mannequin/manage/summon/$(type)
$execute if score $dark_mannequin dark_mannequin.temp matches 1.. run function dark_mannequin:mannequin/manage/summon/multi/macro {type:$(type)}