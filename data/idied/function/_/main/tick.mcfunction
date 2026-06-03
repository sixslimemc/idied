#> idied:_/main/tick
#--------------------
# _/entrypoints/main
#--------------------
schedule function idied:_/main/tick 1t
execute store result score *imre _idied run gamerule immediate_respawn

execute as @a[tag=_idied.dead] if data entity @s {DeathTime:0s} at @s run function idied:_/main/player/respawn
execute as @a[scores={_idied.death=1..}] at @s run function idied:_/main/player/on_death

execute if score *imre _idied matches 1 if score *imre_supported _idied matches 1 as @a at @s run function idied:_/main/player/set_imre_data