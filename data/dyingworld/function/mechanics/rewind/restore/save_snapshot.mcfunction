# Save snapshot for after cutscene
execute unless data storage dyingworld:macro temp.players run data modify storage dyingworld:macro temp.players set value []
$execute unless data storage dyingworld:macro temp.players[{UUID:$(UUID)}] run data modify storage dyingworld:macro temp.players append value {UUID:$(UUID)}
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot set from storage dyingworld:data players[{UUID:$(UUID)}].snapshots[0]
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.inv set from entity @s Inventory
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip set from entity @s equipment