# Any general on-enter action
scoreboard players set @s cutscene_tick 0
scoreboard players set @s cutscene_wait 0
title @s times 0s 2s 0.5s

execute unless data storage dyingworld:macro cutscene run data modify storage dyingworld:macro cutscene set value []
$execute unless data storage dyingworld:macro cutscene[{UUID:$(UUID)}] run data modify storage dyingworld:macro cutscene append value {UUID:$(UUID), path:""}

# Storage saves the player UUID and cutscene path
$data modify storage dyingworld:macro cutscene[{UUID:$(UUID)}].path set value "dyingworld:cutscene/$(cutscene)"