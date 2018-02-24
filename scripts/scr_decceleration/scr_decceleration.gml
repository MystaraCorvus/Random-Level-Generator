/// @description funktion to calculate speed relative to acceleration
/// @args decceleration	
/// @args move_last_x
/// @args move_last_y

var dec = argument0;
var move_last_x = argument1;
var move_last_y = argument2;

	var l = point_distance(0, 0, move_last_x, move_last_y);
	if (l < decceleration + 0.01)
	{
		move_last_x = 0;
		move_last_y = 0;
	} 
	else 
	{
		move_last_x -= (move_last_x/l) * dec;
		move_last_y -= (move_last_y/l) * dec;
	}

return Vec2(move_last_x, move_last_y);
