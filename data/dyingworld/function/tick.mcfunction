# Process Deaths
execute as @a unless score @s death_count = @s revives run function dyingworld:mechanics/life/process_death

# Revive Tick
scoreboard players remove @a[scores={revive_countdown=1..}] revive_countdown 1
execute as @a[scores={revive_countdown=0}] run function dyingworld:mechanics/rewind/restore/respawn_cutscene
execute as @a[scores={revive_countdown=0}] run scoreboard players set @s revive_countdown -1