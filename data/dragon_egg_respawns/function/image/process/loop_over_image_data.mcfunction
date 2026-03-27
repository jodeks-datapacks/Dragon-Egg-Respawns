# Copy current pixel
data modify storage dragon_egg_respawns:image data.current.pixel_color set \
  from storage dragon_egg_respawns:image data.current.image_data[0]
data modify storage dragon_egg_respawns:image data.current.description_text set \
  from storage dragon_egg_respawns:image data.current.description[0]

scoreboard players add $index.image_data dragon_egg_respawns.image 1

# Calculate column
scoreboard players operation $index.column dragon_egg_respawns.image = $index.image_data dragon_egg_respawns.image
scoreboard players operation $index.column dragon_egg_respawns.image %= $width dragon_egg_respawns.image

# Calculate row
scoreboard players operation $index.row dragon_egg_respawns.image = $index.image_data dragon_egg_respawns.image
scoreboard players operation $index.row dragon_egg_respawns.image /= $width dragon_egg_respawns.image

# Append start spacing
execute if score $index.column dragon_egg_respawns.image matches 1 run \
  function dragon_egg_respawns:image/process/append/blank

# Append colored pixel
execute unless data storage dragon_egg_respawns:image data.current{pixel_color: ''} run \
  function dragon_egg_respawns:image/process/append/pixel
# Append background pixel
execute if data storage dragon_egg_respawns:image data.current{pixel_color: ''} run \
  function dragon_egg_respawns:image/process/append/background

# Append description
execute if score $index.column dragon_egg_respawns.image matches 0 run \
    function dragon_egg_respawns:image/process/image_end/description

# Remove first element from the image_data array
data remove storage dragon_egg_respawns:image data.current.image_data[0]
# Loop over rows
execute if score $index.row dragon_egg_respawns.image < $height dragon_egg_respawns.image run \
  function dragon_egg_respawns:image/process/loop_over_image_data
 