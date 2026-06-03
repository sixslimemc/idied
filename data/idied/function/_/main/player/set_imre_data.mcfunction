#> idied:_/main/player/set_imre_data
#--------------------
# _/main/tick
#--------------------

data modify storage pdata:in set.value.Pos set from entity @s Pos 
data modify storage pdata:in set.value.Rotation set from entity @s Rotation
data modify storage pdata:in set.value.Dimension set from entity @s Dimension
data modify storage pdata:in set.path set value "_idied.imre"
function pdata:self/set