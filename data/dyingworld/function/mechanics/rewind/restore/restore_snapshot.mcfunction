scoreboard players set @s revive_countdown -1
effect clear @s minecraft:invisibility
effect clear @s minecraft:weakness

# Save snapshot (Handled in respawn_cutscene)

# Set position
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.pos_x set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.pos[0]
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.pos_y set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.pos[1]
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.pos_z set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.pos[2]
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.rot_h set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.rot[0]
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.rot_v set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.rot[1]
$execute as @s run function dyingworld:mechanics/rewind/restore/position with storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot

# Get UUID for buffer creation
# $function dyingworld:mechanics/rewind/uuid/create_simple_uuid with storage dyingworld:macro temp.players[{UUID:$(UUID)}]

# # Set inventory
# $data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].inv_loop_index set value 0
# $execute as @s run function dyingworld:mechanics/rewind/restore/iterate_inv with storage dyingworld:macro temp.players[{UUID:$(UUID)}]

# # Set equipment
# $execute as @s run function dyingworld:mechanics/rewind/restore/equipment with storage dyingworld:macro temp.players[{UUID:$(UUID)}]

# Force remove most recent snapshots (they are now futures that shouldnt exist)
$data modify storage dyingworld:data temp.snapshot set from storage dyingworld:data players[{UUID:$(UUID)}].snapshots[0]
$data remove storage dyingworld:data players[{UUID:$(UUID)}].snapshots
$data modify storage dyingworld:data players[{UUID:$(UUID)}].snapshots[0] set from storage dyingworld:data temp.snapshot
data remove storage dyingworld:data temp.snapshot