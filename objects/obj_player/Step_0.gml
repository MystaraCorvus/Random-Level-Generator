xPos = floor((x + sprite_get_width(spr_player)/2) / sprite_get_width(spr_floor));
yPos = floor((y + sprite_get_height(spr_player)/2) / sprite_get_height(spr_floor));

var move_xinput = 0;
var move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if (keyboard_check(this_key))
	{
        var this_angle = i * 90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
    }
}

 
var moving = (point_distance(0, 0, move_xinput,move_yinput) > 0);
if (moving)  
{
	var V2 = scr_acceleration(acceleration, move_xinput, move_yinput, move_last_x, move_last_y);
	move_last_x = V2[0];
	move_last_y = V2[1];
}
else
{
	var V2 = scr_decceleration(decceleration, move_last_x, move_last_y);
	move_last_x = V2[0];
	move_last_y = V2[1];
}

speed_modifier=1;
effect_modifier=1;

var V2 = scr_decceleration(decceleration, effextvel_x, effextvel_y);
effextvel_x = V2[0];
effextvel_y = V2[1];

var dx=(move_last_x*speed_modifier)+(effextvel_x*effect_modifier);
var dy=(move_last_y*speed_modifier)+(effextvel_y*effect_modifier);

move_dir = point_direction(0, 0, dx, dy);
move_speed = point_distance(0, 0, dx, dy)*base_speed;


if(move_speed > 0.01) player_move(id, move_speed,  move_dir);

if (keyboard_check_released(vk_tab))
{
	obj_minimap.visible = !obj_minimap.visible;
	/*
	if (instance_exists(obj_minimap)) 
	{
		instance_destroy(obj_minimap);
	}
	else
	{
		instance_create_depth(0, 0, -100, obj_minimap);
	}
	*/
}

if (keyboard_check_released(ord("J")))
{
	effextvel_x = lengthdir_x(5, 225);
	effextvel_y = lengthdir_y(5, 225);
}


