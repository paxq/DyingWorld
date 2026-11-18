schedule function dyingworld:session/timer 20t

scoreboard players add #global_timer global 1

# Store/trim player data
execute as @a run function dyingworld:mechanics/rewind/store_data
execute as @a run function dyingworld:mechanics/rewind/trim_data