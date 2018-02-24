var this = argument0;
var xTemp, yTemp;

hasExitN=false;
hasExitS=false;
hasExitW=false;
hasExitE=false;

with (this)
{
	countExit = irandom_range(3, 5);

	var ex = floor_createExit(id, 7, 5, 0);
	ex.officialExit = true;

	for (var i = 1; i < countExit; i += 1)
	{
		var switchExit = intRandom(4);
		if(switchExit==0) xTemp = this.floorW;
		if(switchExit==1) yTemp = this.floorH;
		if(switchExit==2) xTemp = 0;
		if(switchExit==3) yTemp = 0;
	
		if(switchExit==0||switchExit==2)
		{
			do
			{
				yTemp = irandom_range(0, this.floorH);
			}
			until (floor_getExit(id, xTemp, yTemp) == "Empty");
		} else {
			do
			{
				xTemp = irandom_range(0, this.floorW);
			}
			until (floor_getExit(id, xTemp, yTemp) == "Empty");
		}
	 
		ex = floor_createExit(id, xTemp, yTemp, i);
		ex.officialExit = true;
	}

	floor_genPath(id);
}