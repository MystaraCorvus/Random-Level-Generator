var this = argument0;
var instExitTemp = initArray2D([], this.floorW, this.floorH);
var instExitListTemp = [];
this.link = [];

for(var i = 0; i < array_length_1d(this.instExitList); i++)
{
	var ex=this.instExitList[i];
	if (ex.officialExit == false)
	{
		instance_destroy(ex);
	}
	else
	{
		instExitTemp[ex.xPos, ex.yPos] = ex;
		instExitListTemp[array_length_1d(instExitListTemp)] = ex;
	}
}
this.instExit = instExitTemp;
this.instExitList = instExitListTemp; 

var numPathsIdxs = floor_numExit(this);

for(var xx = 0; xx < numPathsIdxs; xx += 1) 
{
	for(var yy = xx; yy < numPathsIdxs; yy += 1) 
	{
		floor_setLinked(this, xx, yy, xx==yy);
	}
}

for (var i = 0; i < array_length_1d(this.obstacleList); i++)
{
	if(this.obstacleList[i].effekt != 0) instance_destroy(this.obstacleList[i].effekt);	
	instance_destroy(this.obstacleList[i]);	
}
this.obstacleList = []

this.hasExitN=false;
this.hasExitS=false;
this.hasExitW=false;
this.hasExitE=false;

for(var ix = 0; ix <= this.floorW; ix++)
{
	if(this.instExit[ix, 0]) this.hasExitN=true;
	if(this.instExit[ix, this.floorH]) this.hasExitS=true;
}
for(var iy = 0; iy <= this.floorH; iy++)
{
	if(this.instExit[0, iy]) this.hasExitW=true;
	if(this.instExit[this.floorW, iy]) this.hasExitE=true;
}

