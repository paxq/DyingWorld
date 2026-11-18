$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].simple_uuid.UUID set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].UUID
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].simple_uuid.block_1 set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].UUID[0]
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].simple_uuid.block_2 set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].UUID[1]
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].simple_uuid.block_3 set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].UUID[2]
$data modify storage dyingworld:macro temp.players[{UUID:$(UUID)}].simple_uuid.block_4 set from storage dyingworld:macro temp.players[{UUID:$(UUID)}].UUID[3]

$function dyingworld:mechanics/rewind/uuid/assign_uuid with storage dyingworld:macro temp.players[{UUID:$(UUID)}].simple_uuid