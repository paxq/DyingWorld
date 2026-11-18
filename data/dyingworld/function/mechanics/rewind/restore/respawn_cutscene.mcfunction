scoreboard players set @s in_cutscene 1
effect give @s minecraft:invisibility infinite 0 true
effect give @s minecraft:weakness infinite 255 true

# Save inventory & clear player
data modify storage dyingworld:macro temp.UUID set from entity @s UUID
execute as @s run function dyingworld:mechanics/rewind/restore/save_snapshot with storage dyingworld:macro temp.UUID
# clear @s

execute in minecraft:overworld run tp @s 0.5 316 -0.5 0 0

execute at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 2.0
function dyingworld:mechanics/rewind/restore/start
# execute if score @s revives matches ..0 run schedule function dyingworld:mechanics/rewind/restore/start 5s
# execute if score @s revives matches 1 run schedule function dyingworld:mechanics/rewind/restore/start 2.5s
# execute if score @s revives matches 2 run schedule function dyingworld:mechanics/rewind/restore/start 2.5s
# execute if score @s revives matches 3.. run schedule function dyingworld:mechanics/rewind/restore/start 2.5s
# execute if score @s can_revive matches -1 run schedule function dyingworld:mechanics/rewind/restore/start 2.5s