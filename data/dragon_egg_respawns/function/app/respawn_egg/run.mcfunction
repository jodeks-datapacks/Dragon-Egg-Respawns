execute store result storage dragon_egg_respawns:root data.y int 1 run scoreboard players get y dragon_egg_respawns.calc

scoreboard players add y dragon_egg_respawns.calc 1

execute store result storage dragon_egg_respawns:root data.y_increased int 1 run scoreboard players get y dragon_egg_respawns.calc

execute if score y dragon_egg_respawns.calc matches 0..100 run function dragon_egg_respawns:app/respawn_egg/check with storage dragon_egg_respawns:root data

execute if score y dragon_egg_respawns.calc matches 101 run scoreboard players set y dragon_egg_respawns.calc -1