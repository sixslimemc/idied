#> idied:_/sc/load
# @ LOAD

scoreboard objectives add _idied dummy



# DEBUG
scoreboard players reset *init _idied

execute unless score *init _idied matches 1 run function idied:_/sc/init