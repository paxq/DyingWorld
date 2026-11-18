advancement revoke @s only dyingworld:utility/restore_player_life
scoreboard players add @s heal_count 1

data modify storage dyingworld:macro input set value 2
execute store result storage dyingworld:macro max_hp double 1 run attribute @s minecraft:max_health get
execute store result storage dyingworld:macro result double 1 run compute entity @s float dyingworld:add_max_health

function dyingworld:mechanics/life/update_health with storage dyingworld:macro