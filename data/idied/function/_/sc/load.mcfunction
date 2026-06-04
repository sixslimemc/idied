#> idied:_/sc/load
# @ LOAD

scoreboard objectives add _idied dummy
scoreboard objectives add _idied.death deathCount
scoreboard objectives add _idied.dead dummy

# check optional dependencies:
execute store success score *installed.pdata _idied if data storage slimecore:data build.aux.pack_map.pdata

# DEBUG
scoreboard players reset *init _idied

execute unless score *init _idied matches 1 run function idied:_/sc/init

# immediate_respawn_supported:
data modify storage idied:data immediate_respawn_supported set value false
execute if score *installed.pdata _idied matches 1 run data modify storage idied:data immediate_respawn_supported set value true
execute store result score *imre_supported _idied run data get storage idied:data immediate_respawn_supported