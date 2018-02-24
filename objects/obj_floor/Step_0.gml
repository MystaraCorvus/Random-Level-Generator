
if (test == false)
{ 
	var playerFloor = player_getFloor(obj_player);
	if (playerFloor != 0)
	{
		if (playerFloor.xPos < xPos - 1)
		{
			for(var i = 0; i < array_length_1d(obstacleList); i++)
			{
				if (obstacleList[i].effekt != 0) instance_deactivate_object(obstacleList[i].effekt);
				instance_deactivate_object(obstacleList[i]);
			}
			active = false;
			instance_deactivate_object(id);
		}
		if (playerFloor.xPos > xPos + 1)
		{
			for(var i = 0; i < array_length_1d(obstacleList); i++)
			{
				if (obstacleList[i].effekt != 0) instance_deactivate_object(obstacleList[i].effekt);
				instance_deactivate_object(obstacleList[i]);
			}
			active = false;
			instance_deactivate_object(id);
		}
		if (playerFloor.yPos < yPos - 1)
		{
			for(var i = 0; i < array_length_1d(obstacleList); i++)
			{
				if (obstacleList[i].effekt != 0) instance_deactivate_object(obstacleList[i].effekt);
				instance_deactivate_object(obstacleList[i]);
			}
			active = false;
			instance_deactivate_object(id);
		}
		if (playerFloor.yPos > yPos + 1)
		{
			for(var i = 0; i < array_length_1d(obstacleList); i++)
			{
				if (obstacleList[i].effekt != 0) instance_deactivate_object(obstacleList[i].effekt);
				instance_deactivate_object(obstacleList[i]);
			}
			active = false;
			instance_deactivate_object(id);
		}
	}
}