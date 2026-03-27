#> dragon_egg_respawns:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage dragon_egg_respawns:image data.image_data  
# @writes storage dragon_egg_respawns:image data.width  
# @writes storage dragon_egg_respawns:image data.height  
# @writes storage dragon_egg_respawns:image data.background_color  
# @writes storage dragon_egg_respawns:image data.description  
# @writes storage dragon_egg_respawns:image data.pixel_character.blank  
# @writes storage dragon_egg_respawns:image data.pixel_character.chat  
# @writes storage dragon_egg_respawns:image data.pixel_character.lore

data remove storage dragon_egg_respawns:image data.image_data
data remove storage dragon_egg_respawns:image data.width
data remove storage dragon_egg_respawns:image data.height
data remove storage dragon_egg_respawns:image data.background_color
data remove storage dragon_egg_respawns:image data.description

$data modify storage dragon_egg_respawns:image data.image_data set value $(image_data)
$data modify storage dragon_egg_respawns:image data.width set value $(width)
$data modify storage dragon_egg_respawns:image data.height set value $(height)
$data modify storage dragon_egg_respawns:image data.background_color set value "$(background_color)"
$data modify storage dragon_egg_respawns:image data.description set value $(description)

data modify storage dragon_egg_respawns:image data.pixel_character.blank set value "　"
data modify storage dragon_egg_respawns:image data.pixel_character.pixel set value "▌▌"
data modify storage dragon_egg_respawns:image data.pixel_character.line_break set value '\n'

function dragon_egg_respawns:image/process/generate
