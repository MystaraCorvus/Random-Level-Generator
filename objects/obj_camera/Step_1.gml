move_towards_point(mouse_x, mouse_y, 0);

//var radius = 96 + (20 * obj_player.move_speed) * (abs(180 - abs(direction - obj_player.move_dir))/180);
var radius = 96;

var xTo = obj_player.x + lengthdir_x(min(radius, distance_to_point(mouse_x, mouse_y)), direction);
var yTo = obj_player.y + lengthdir_y(min(radius, distance_to_point(mouse_x, mouse_y)), direction);

x += (xTo - x) / 25;
y += (yTo - y) / 25;

view_xview = -(offsetX / 2) + x;
view_yview = -(offsetY / 2) + y;

//view_xview = clamp(view_xview, 0, room_width - offsetX);
//view_yview = clamp(view_yview, 0, room_height - offsetY);

if (shake >= 0.05)
{
    view_xview += random_range(-shake, shake);
    view_yview += random_range(-shake, shake);
    shake *= 0.9;
}
else
{
    shake = 0;
}

camera_set_view_pos(cam, view_xview, view_yview);

if (keyboard_check(ord("G")))
{
	shake = 12;	
}
/*
if (keyboard_check_released(ord("F")))
{
   if window_get_fullscreen()
   {
		window_set_fullscreen(false);
   }
   else
   {
		window_set_fullscreen(true);
   }
}