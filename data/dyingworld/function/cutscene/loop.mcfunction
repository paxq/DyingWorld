# Take cutscene data from storage and run corrosponding function
scoreboard players set @s cutscene_wait 0
$function dyingworld:cutscene/buffer with storage dyingworld:macro cutscene[{UUID:$(UUID)}]