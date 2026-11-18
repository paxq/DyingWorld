execute as @a run attribute @s minecraft:max_health base reset

scoreboard players reset * global
scoreboard players reset * loop
scoreboard players set * death_count 0
scoreboard players set * heal_count 0
scoreboard players set * revives 0
scoreboard players reset * revive_countdown
scoreboard players set * can_revive 1

schedule clear dyingworld:session/timer