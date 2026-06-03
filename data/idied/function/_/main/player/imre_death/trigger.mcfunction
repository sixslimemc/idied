#> idied:_/main/player/imre_death/trigger
#--------------------
# ../on_death
#--------------------

data modify storage pdata:in get.path set value "data._idied.imre"
function pdata:self/get
data modify storage idied:_ t.imre.data set from storage pdata:out get.result

data modify storage idied:_ t.imre.player.Pos set from entity @s Pos
data modify storage idied:_ t.imre.player.Rotation set from entity @s Rotation
data modify storage idied:_ t.imre.player.Dimension set from entity @s Dimension

data modify storage idied:_ t.imre.death_dim set from storage idied:_ t.imre.data.Dimension
data modify storage idied:_ t.imre.cur_dim set from storage idied:_ t.imre.player.Dimension

tag @s add _idied.death_target
execute summon marker run function idied:_/main/player/imre_death/proxy with storage idied:_ t.imre
tag @s remove _idied.death_target

data remove storage idied:_ t.imre