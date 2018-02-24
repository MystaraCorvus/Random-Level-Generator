/// @description funktion to calculate speed relative to acceleration
/// @args acceleration
/// @args move_xinput
/// @args move_yinput
/// @args move_last_x
/// @args move_last_y

var acc = argument0;
var move_xinput = argument1;
var move_yinput = argument2;
var move_last_x = argument3;
var move_last_y = argument4;

	move_last_x += move_xinput * acc;
	move_last_y += move_yinput * acc;
	
	var l = point_distance(0, 0, move_last_x, move_last_y);
	if (l > 1)
	{
		move_last_x/=l;
		move_last_y/=l;
	}

return Vec2(move_last_x, move_last_y);