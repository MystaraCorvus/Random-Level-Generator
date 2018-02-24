//instance_activate_region(obj_player.x - sprite_get_width(spr_floor), obj_player.y - sprite_get_height(spr_floor), sprite_get_width(spr_floor) * 2, sprite_get_height(spr_floor) * 2, true);

var playerFloor = player_getFloor(obj_player);
if (playerFloor != 0)
{
	for (var xx = -1; xx < 2; xx++)
	for (var yy = -1; yy < 2; yy++)
	{
		var floorToActivated = ds_map_find_value(floors, (playerFloor.xPos + xx) * 10000 + (playerFloor.yPos + yy));
		if (!is_undefined(floorToActivated))
		{
			if (floorToActivated.active == false)
			{
				instance_activate_object(floorToActivated);
				for(var j = 0; j < array_length_1d(floorToActivated.obstacleList); j++)
				{
					instance_activate_object(floorToActivated.obstacleList[j]);
					if (floorToActivated.obstacleList[j].effekt != 0) instance_activate_object(floorToActivated.obstacleList[j].effekt);
				}
				floorToActivated.active = true;
			}
		}
	}
}