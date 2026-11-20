# TODO: Make animation

# Example animation line: execute if score @s cutscene_tick matches 1 run title @s title ""
execute if score @s cutscene_tick matches 0 run execute at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 2.0
execute if score @s cutscene_tick matches 0 run say start!
execute if score @s cutscene_tick matches 20 run say middle!
execute if score @s cutscene_tick matches 40 run say end!


# Loop cutscene
scoreboard players add @s cutscene_tick 1
execute unless score @s cutscene_tick matches 41.. run scoreboard players set @s cutscene_wait 1

# End cutscene
execute if score @s cutscene_tick matches 41.. run function dyingworld:cutscene/exit
execute if score @s cutscene_tick matches 41.. run function dyingworld:mechanics/rewind/restore/start