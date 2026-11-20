execute as @a run attribute @s minecraft:max_health base reset

scoreboard players reset * global
scoreboard players reset * loop
scoreboard players set * death_count 0
scoreboard players set * heal_count 0
scoreboard players set * revives 0
scoreboard players set * can_revive 1
scoreboard players reset * revive_countdown
scoreboard players reset * cutscene_tick
scoreboard players reset * cutscene_wait
scoreboard players reset * in_cutscene

schedule clear dyingworld:session/timer

# TODO: Clear snapshot storage