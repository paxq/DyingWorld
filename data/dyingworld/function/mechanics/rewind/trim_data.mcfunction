data modify storage dyingworld:macro UUID set from entity @s UUID
function dyingworld:mechanics/rewind/get_player_data with storage dyingworld:macro

execute store result score #temp global run data get storage dyingworld:macro result.snapshots
execute if score #temp global matches 9.. run function dyingworld:mechanics/rewind/trim_snapshot with storage dyingworld:macro