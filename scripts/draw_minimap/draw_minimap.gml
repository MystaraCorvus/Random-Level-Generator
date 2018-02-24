///draw_minimap(minimapx,minimapy,viewnumber,playerobject,playerobjectmnimpsprite,range,minimapradius)
/*
****************
NOTE:
Your minimap sprite must be centered
This script must be run in the draw event of an object called obj_minimap
The bigger the range, the smaller the minimap sprites must be and vice versa. (400 range = 8x8 sprites | 256 range = 10x10 sprites)
****************
minimapx: the x-coordinate to draw the minimap
minimapy: the y-coordinate to draw the minimap
viewnumber: the number of the view[0-7] that you are using to follow the player
playerobject: the object the minimap is based off
playerobjectmnimpsprite: the minimap sprite of the object the minimap is based off
range: the range in pixels from the player object to be displayed on the minimap
minimapradius: half of the width in pixels of the minimap sprite
*/

x = obj_camera.x + argument0;
y = obj_camera.y + argument1;

for (var xx = -1; xx < 2; xx++)
for (var yy = -1; yy < 2; yy++)
{
	var floorToActivated = ds_map_find_value(obj_level.floors, (obj_player.xPos + xx) * 10000 + (obj_player.yPos + yy));
	if (!is_undefined(floorToActivated))
	{
		/*
		if (distance_to_object(obj_player) < argument2)
		{
			var dstnc = argument3*(point_distance(obj_player.x,obj_player.y,floorToActivated.x,floorToActivated.y)/argument2);
			var ang = point_direction(obj_player.x,obj_player.y,floorToActivated.x,floorToActivated.y);
			draw_sprite_ext(floorToActivated.sprite_mini,0,x+lengthdir_x(dstnc,ang),y+lengthdir_y(dstnc,ang),1,1,floorToActivated.image_angle,c_white,1);
		}
		*/
	    for(var j = 0; j < array_length_1d(floorToActivated.obstacleList); j++)
		{
			var obj = floorToActivated.obstacleList[j];
			if(!is_undefined(obj.sprite_mini)) 
			{
				if (distance_to_object(obj_player) < argument2)
				{
					var dstnc = argument3*(point_distance(obj_player.x,obj_player.y,obj.x,obj.y)/argument2);
					var ang = point_direction(obj_player.x,obj_player.y,obj.x,obj.y);
					draw_sprite_ext(obj.sprite_mini,0,x+lengthdir_x(dstnc,ang),y+lengthdir_y(dstnc,ang),1,1,obj.image_angle,c_white,1);
				}
			}
		}
	}
}

draw_sprite(obj_player.sprite_mini,0,obj_minimap.x,obj_minimap.y);

//
/*
for (i=0; i<ds_list_size(global.minimapobjects); i+=1)
{
    with (ds_list_find_value(global.minimapobjects,i))
    {
        if (distance_to_object(argument3) < argument5)
        {
            var dstnc = argument6*(point_distance(argument3.x,argument3.y,x,y)/argument5);
            var ang = point_direction(argument3.x,argument3.y,x,y);
            draw_sprite_ext(ds_list_find_value(global.minimapobjects,other.i+1),0,other.x+lengthdir_x(dstnc,ang),other.y+lengthdir_y(dstnc,ang),1,1,image_angle,c_white,1);
        }
    }
}
*/
//