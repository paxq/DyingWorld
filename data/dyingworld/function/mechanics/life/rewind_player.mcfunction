# Update health
execute store result storage dyingworld:macro result int 1 run compute entity @s float dyingworld:fibonacci
execute store result storage dyingworld:macro input int 1 run data get storage dyingworld:macro result
execute store result storage dyingworld:macro result int 1 run compute entity @s float dyingworld:sub_max_health
function dyingworld:mechanics/life/update_health with storage dyingworld:macro

# Restore snapshot
scoreboard players set @s revive_countdown 2

# Allow player to die permanately    ## NOTE: This may be prone to bugs if the temp variable is modified in-between functions running
execute store result score #temp global run attribute @s minecraft:max_health get
execute if score #temp global matches ..1 run scoreboard players set @s can_revive -1