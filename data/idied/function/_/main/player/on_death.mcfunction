#> idied:_/main/player/on_death
#--------------------
# _/main/tick
#--------------------
scoreboard players reset @s _idied.death

# imre death:
execute if score *imre _idied matches 1 if score *imre_supported _idied matches 1 run return run function idied:_/main/player/imre_death/trigger

tag @s add _idied.dead

# HOOK: death
function #idied:hook/death