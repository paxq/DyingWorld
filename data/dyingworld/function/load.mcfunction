say Reloaded!

scoreboard objectives add global dummy
scoreboard objectives add loop dummy
scoreboard objectives add death_count deathCount
scoreboard objectives add revives dummy
scoreboard objectives add revive_countdown dummy
scoreboard objectives add heal_count dummy
scoreboard objectives add can_revive dummy
scoreboard objectives add in_cutscene dummy


scoreboard players set #global_timer global 0
scoreboard players display name #global_timer global "timer"

execute unless data storage dyingworld:data players run data modify storage dyingworld:data players set value []
execute as @a run execute unless score @s can_revive matches -1 run scoreboard players set @s can_revive 1

# General Notes:
# 7 Days to Apocolapse
# 'Dying World' — each day the total daylight decreases
# WB starts 10k, everyday shrinks 1k every day
# Dying makes you lose a heart, killing makes you lose 0.5 hearts permanately

# Timeline:
# Day 1: Everyone is split up into groups of 2 and must find their way to 0, 0 without f3
# Day 2: No difference, just extra time to group up
# Day 3: Nether unlocks, mistwraiths start appearing
# Day 4: (need some event)
# Day 5: Wither fight
# Day 6: (need some event)
# Day 7: Fight the apocolapse

# Effects / Custom Texture Ideas:
# WB is a wall of smoke / fog, slowly creeping closer
# The world is slowly dying, day by day, and the skybox reflects that

# Mechanics:
# -- Death --
# Instead of dying and losing gear, keep inventory and immediate respawn are turned on.
# Instead of returning to the player's last spawnpoint, when a player 'dies' their max health gets reduced,
# and the player's position is 'rewound' in time to before they died.
#
# How it actually works:
# Every ~20 ticks of a global timer, each player's data is saved in storage, along with the timestamp it was taken at.
# This data is stored for up to 140 ticks, then deleted.
# When a player dies, they are moved to their postion 140 ticks ago, and the rest of their saved data is cleared.
# If a player has less than 8 position backups, the earliest captured is used.