scoreboard objectives add jodek.config dummy
execute unless score &dragon_egg_respawns_load_message jodek.config = &dragon_egg_respawns_load_message jodek.config run scoreboard players set &dragon_egg_respawns_load_message jodek.config 1
execute unless score &dragon_egg_respawns_advancements jodek.config = &dragon_egg_respawns_advancements jodek.config run scoreboard players set &dragon_egg_respawns_advancements jodek.config 1

scoreboard objectives add dragon_egg_respawns.image dummy

advancement revoke @a only dragon_egg_respawns:killed_ender_dragon

# Print the image
function dragon_egg_respawns:config/image