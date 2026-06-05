# Properties:
# - signature (string): The signature of the texture properties
# - value (string): The value of the texture properties

$data merge entity @s {profile:{properties:[{signature:"$(signature)",name:"textures",value:"$(value)"}]}}
data remove entity @s profile.name