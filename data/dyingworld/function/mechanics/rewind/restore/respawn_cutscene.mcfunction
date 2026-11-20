scoreboard players set @s in_cutscene 1
gamemode spectator @s

# Save inventory & clear player
data modify storage dyingworld:macro temp.UUID set from entity @s UUID
execute as @s run function dyingworld:mechanics/rewind/restore/save_snapshot with storage dyingworld:macro temp
# clear @s

execute in minecraft:overworld run tp @s 0.5 316 -0.5 0 0


execute if score @s revives matches 0.. run data modify storage dyingworld:macro temp.cutscene set value "revive/0"

data modify storage dyingworld:macro temp.UUID set from entity @s UUID
function dyingworld:cutscene/init with storage dyingworld:macro temp
scoreboard players set @s cutscene_wait 1

# execute if score @s revives matches 0.. run function dyingworld:cutscene/revive/0
# execute if score @s revives matches 1 run function dyingworld:cutscene/revive/1
# execute if score @s revives matches 2 run function dyingworld:cutscene/revive/2
# execute if score @s revives matches 3.. run function dyingworld:cutscene/revive/3
# execute if score @s can_revive matches -1 run function dyingworld:cutscene/revive/4