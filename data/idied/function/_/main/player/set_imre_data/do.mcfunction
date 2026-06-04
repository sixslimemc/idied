#> idied:_/main/player/set_imre_data/do
#--------------------
# _/main/tick
#--------------------

execute store result storage pdata:in set.index int 1 run scoreboard players get @s pdata.index
data modify storage pdata:_ x.player set from entity @s
data modify storage pdata:in set.value.Dimension set from storage pdata:_ x.player.Dimension
# data modify storage pdata:in set.value.Dimension set from entity @s Dimension
execute summon marker run function idied:_/main/player/set_imre_data/proxy

data modify storage pdata:in set.path set value "_idied.imre"
function pdata:index/set