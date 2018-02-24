var this = argument0;

for(var j = 0; j < 200; j++)
{
	floor_clearRoom(this);
	
	for(var i = 0; i < array_length_1d(this.instExitList); i++)
	{
		var ex=this.instExitList[i];
		exit_genPath(ex);
	}
	
	floor_checkLinked(this);
	floor_checkLinked(this);
	
	if(floor_isGood(this)) 
	{
		for (var ix = 0; ix < 16; ix++)
		for (var iy = 0; iy < 12; iy++)
		{
			if (this.instExit[ix, iy] == 0)
			{
				floor_createObstacle(this, ix, iy);
			}
		}
		break;
	}
	
}