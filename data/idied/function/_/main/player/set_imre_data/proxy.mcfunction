#> idied:_/main/player/set_imre_data/proxy
# [AS] proxy marker
#--------------------
# ./do
#--------------------

tp @s ~ ~ ~ ~ ~
data modify storage pdata:in set.value.Pos set from entity @s Pos 
data modify storage pdata:in set.value.Rotation set from entity @s Rotation

kill @s