# Equipment
$summon item_display ~ ~ ~ {Tags:["r$(simple_uuid).buffer_equip"]}
$execute if data storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.head run data modify entity @e[type=item_display,tag=r$(simple_uuid).buffer_equip,limit=1,sort=nearest] item set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.head
$execute if data storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.head run item replace entity @s armor.head from entity @e[type=item_display, tag=r$(simple_uuid).buffer_equip, limit=1, sort=nearest] hotbar.0

$execute if data storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.chest run data modify entity @e[type=item_display,tag=r$(simple_uuid).buffer_equip,limit=1,sort=nearest] item set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.chest
$execute if data storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.chest run item replace entity @s armor.chest from entity @e[type=item_display, tag=r$(simple_uuid).buffer_equip, limit=1, sort=nearest] hotbar.0

$execute if data storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.legs run data modify entity @e[type=item_display,tag=r$(simple_uuid).buffer_equip,limit=1,sort=nearest] item set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.legs
$execute if data storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.legs run item replace entity @s armor.legs from entity @e[type=item_display, tag=r$(simple_uuid).buffer_equip, limit=1, sort=nearest] hotbar.0

$execute if data storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.feet run data modify entity @e[type=item_display,tag=r$(simple_uuid).buffer_equip,limit=1,sort=nearest] item set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.feet
$execute if data storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.feet run item replace entity @s armor.feet from entity @e[type=item_display, tag=r$(simple_uuid).buffer_equip, limit=1, sort=nearest] hotbar.0

$execute if data storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.offhand run data modify entity @e[type=item_display,tag=r$(simple_uuid).buffer_equip,limit=1,sort=nearest] item set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.offhand
$execute if data storage dyingworld:macro temp.players[{UUID:$(UUID)}].snapshot.equip.offhand run item replace entity @s weapon.offhand from entity @e[type=item_display, tag=r$(simple_uuid).buffer_equip, limit=1, sort=nearest] hotbar.0
$kill @e[type=item_display, tag=r$(simple_uuid).buffer_equip]