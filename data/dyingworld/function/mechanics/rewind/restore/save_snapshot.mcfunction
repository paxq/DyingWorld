# Save snapshot for after cutscene
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot set from storage dyingworld:data players[{UUID:$(UUID)}].snapshots[0]
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.inv set from entity @s Inventory
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip set from entity @s equipment