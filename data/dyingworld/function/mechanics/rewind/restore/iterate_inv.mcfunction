# Clear on first loop
$execute store result score #r$(simple_uuid) loop run data get storage dyingworld:macro temp.players[{UUID:$(UUID)}].inv_loop_index

# Set current item & slot
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].current_item set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.inv[$(inv_loop_index)]
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].current_item_slot set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].current_item.Slot

$execute store result score #temp global run data get storage dyingworld:macro temp.players[{UUID:$(UUID)}].current_item_slot
execute if score #temp global matches 9..35 run scoreboard players remove #temp global 9
$execute store result storage dyingworld:macro temp.players[{UUID:$(UUID)}].inv_slot int 1 run scoreboard players get #temp global

$function dyingworld:mechanics/rewind/restore/set_item_dest with storage dyingworld:macro temp.players[{UUID:$(UUID)}]

$summon item_display ~ ~ ~ {Tags:["r$(simple_uuid).buffer_inv"]}
$data modify entity @e[type=item_display, tag=r$(simple_uuid).buffer_inv, limit=1, sort=nearest] item set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].current_item
$function dyingworld:mechanics/rewind/restore/set_item with storage dyingworld:macro temp.players[{UUID:$(UUID)}]
$kill @e[type=item_display, tag=r$(simple_uuid).buffer_inv]

# Loop again
$scoreboard players add #r$(simple_uuid) loop 1
$execute store result storage dyingworld:macro temp.players[{UUID:$(UUID)}].inv_loop_index int 1 run scoreboard players get #r$(simple_uuid) loop

$execute store result score #temp global run data get storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.inv
$execute if score #r$(simple_uuid) loop < #temp global run function dyingworld:mechanics/rewind/restore/iterate_inv with storage dyingworld:macro temp.players[{UUID:$(UUID)}]