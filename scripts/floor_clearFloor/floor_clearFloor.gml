var this = argument0;
floor_clearRoom(this);

for(var i = 0; i < array_length_1d(this.instExitList); i++)
{
	var ex=this.instExitList[i];
	this.instExit[ex.xPos, ex.yPos]=0;
	instance_destroy(ex);
}

this.instExitList = [];

for (var i = 0; i < array_length_1d(this.obstacleList); i++)
{
	if(this.obstacleList[i].effekt != 0) instance_destroy(this.obstacleList[i].effekt);	
	instance_destroy(this.obstacleList[i]);	
}

this.obstacleList = []
