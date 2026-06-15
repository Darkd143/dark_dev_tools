kill @s
tellraw @a [{"text":"[Dark Player] ","color":"gray"},{"selector":"@s","color":"gold"},{"text":" has a spawn point set. They need to remove it before proceeding!","color":"gold"}]

execute if function dark_player:manage/spawnpoint/helper/has_forced_respawn run return run function dark_player:manage/spawnpoint/allow_reset/forced_respawn