# Properties:
# - name (string): The name of the user

$data merge entity @s {profile:{"name":$(name)}}
data remove entity @s profile.properties