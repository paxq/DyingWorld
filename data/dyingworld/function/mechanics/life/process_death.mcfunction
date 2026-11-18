scoreboard players operation @s revives = @s death_count

execute store result storage dyingworld:macro max_hp float 1 run attribute @s minecraft:max_health get
execute store result storage dyingworld:macro input float 1 run scoreboard players get @s death_count

# Kill player if the cannot revive
execute if score @s can_revive matches -1 run function dyingworld:mechanics/life/kill_player

# Else, rewind player
execute store result score #temp global run attribute @s minecraft:max_health get
execute if score #temp global matches 2.. run function dyingworld:mechanics/life/rewind_player