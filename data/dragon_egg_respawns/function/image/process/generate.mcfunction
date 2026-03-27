#> dragon_egg_respawns:image/process/generate
#
# This function generates the image data.

data modify storage dragon_egg_respawns:image data.current.image_data set from storage dragon_egg_respawns:image data.image_data
data modify storage dragon_egg_respawns:image data.current.description set from storage dragon_egg_respawns:image data.description
data modify storage dragon_egg_respawns:image data.current.pixel_character set from storage dragon_egg_respawns:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data dragon_egg_respawns.image 0
# Set width
execute store result score $width dragon_egg_respawns.image run data get storage dragon_egg_respawns:image data.width
# Set height
execute store result score $height dragon_egg_respawns.image run data get storage dragon_egg_respawns:image data.height
# Set length
scoreboard players operation $length dragon_egg_respawns.image = $width dragon_egg_respawns.image
scoreboard players operation $length dragon_egg_respawns.image *= $height dragon_egg_respawns.image
# Clear remaining entries in tellraw
data remove storage dragon_egg_respawns:image data.tellraw

# Add spacing on top
function dragon_egg_respawns:image/process/append/line_break
# Loop over image data
function dragon_egg_respawns:image/process/loop_over_image_data
# Add spacing on bottom
function dragon_egg_respawns:image/process/append/line_break