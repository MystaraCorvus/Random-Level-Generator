//use_ColorfulFlash(sprite_index, colorArray);
draw_self();

draw_text(x, y, string(move_dir));

draw_line(x + sprite_width/2, y + sprite_height/2, (x + sprite_width/2) + move_last_x * 100, (y + sprite_height/2) + move_last_y * 100);