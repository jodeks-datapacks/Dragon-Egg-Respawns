# Append blank
function dragon_egg_respawns:image/process/append/blank

data modify storage dragon_egg_respawns:image data.tellraw append \
  from storage dragon_egg_respawns:image data.current.description_text

# Append blank
function dragon_egg_respawns:image/process/append/blank

# Append line_break
execute unless score $index.image_data dragon_egg_respawns.image = $length dragon_egg_respawns.image \
  run function dragon_egg_respawns:image/process/append/line_break

# Remove first element from the description
data remove storage dragon_egg_respawns:image data.current.description[0]
 