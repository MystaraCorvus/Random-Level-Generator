var spriteTemp = argument0;
var colorTemp = argument1;

shader_set(ColorfulFlash);
shader_set_uniform_f_array(colorTemp[4], colorTemp);
draw_sprite(spriteTemp, image_index, x, y);
shader_reset();