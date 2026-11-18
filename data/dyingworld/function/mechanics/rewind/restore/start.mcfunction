scoreboard players set @s in_cutscene -1

data modify storage dyingworld:macro temp.UUID set from entity @s UUID
function dyingworld:mechanics/rewind/restore/restore_snapshot with storage dyingworld:macro temp