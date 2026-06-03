#> idied:_/main/tick
#--------------------
# _/entrypoints/main
#--------------------
schedule function idied:_/main/tick 1t

execute as @a[scores={_idied.death=1..}] at @s run function idied:_/main/player/on_death