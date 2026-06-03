#> idied:_/main/player/imre_death/do
# [AS] marker proxy
#--------------------
# ../trigger
#--------------------
kill @s

data modify entity @s Pos set from storage idied:_ t.imre.data.Pos
data modify entity @s Rotation set from storage idied:_ t.imre.data.Rotation

# HOOK: death
$execute at @s in $(death_dim) run tp @p[tag=_idied.death_target] ~ ~ ~ ~ ~
execute as @p[tag=_idied.death_target] at @s run function #idied:hook/death

data modify entity @s Pos set from storage idied:_ t.imre.player.Pos
data modify entity @s Rotation set from storage idied:_ t.imre.player.Rotation

# HOOK: respawn
$execute at @s in $(cur_dim) run tp @p[tag=_idied.death_target] ~ ~ ~ ~ ~
execute as @p[tag=_idied.death_target] at @s run function #idied:hook/respawn