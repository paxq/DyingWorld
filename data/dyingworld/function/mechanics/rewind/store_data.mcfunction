data modify storage dyingworld:data temp.UUID set from entity @s UUID
data modify storage dyingworld:data temp.pos set from entity @s Pos
data modify storage dyingworld:data temp.rot set from entity @s Rotation
data modify storage dyingworld:data temp.dim set from entity @s Dimension
data modify storage dyingworld:data temp.inv set from entity @s Inventory
data modify storage dyingworld:data temp.equip set from entity @s equipment

execute unless data entity @s Inventory run data modify storage dyingworld:data temp.inv set value []
execute unless data entity @s equipment run data modify storage dyingworld:data temp.equip set value {}

execute store result storage dyingworld:data temp.time int 1 run scoreboard players get #global_timer global

function dyingworld:mechanics/rewind/add_record with storage dyingworld:data temp
function dyingworld:mechanics/rewind/add_snapshot with storage dyingworld:data temp