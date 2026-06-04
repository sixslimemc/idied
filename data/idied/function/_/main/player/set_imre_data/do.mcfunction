#> idied:_/main/player/set_imre_data/do
#--------------------
# _/main/tick
#--------------------

execute store result storage idied:_ t.set_imre_data.index int 1 run scoreboard players get @s pdata.index
data modify storage idied:_ x.player set from entity @s
data modify storage idied:_ t.set_imre_data.value.Pos set from storage idied:_ x.player.Pos
data modify storage idied:_ t.set_imre_data.value.Dimension set from storage idied:_ x.player.Dimension
data modify storage idied:_ t.set_imre_data.value.Rotation set from storage idied:_ x.player.Rotation

function idied:_/main/player/set_imre_data/set with storage idied:_ t.set_imre_data

data remove storage idied:_ t.set_imre_data