var this = argument0;
//var dir = argument1;
var xTemp, yTemp;
var exitTempN = [];
var exitTempS = [];
var exitTempE = [];
var exitTempW = [];

with (this)
{
	var nextExit=0;
	for(var i = 0; i < 4; i++)
	{
		var f;
		if(i==0) f=lvl_getFloor(obj_level, xPos+1, yPos);
		if(i==1) f=lvl_getFloor(obj_level, xPos-1, yPos);
		if(i==2) f=lvl_getFloor(obj_level, xPos, yPos+1);
		if(i==3) f=lvl_getFloor(obj_level, xPos, yPos-1);
		if(f==0) continue;
		
		var added=false;
	
		for(var j = 0; j < 16; j++)
		{
			var ex;
			if(i==0) ex=floor_getExit(f, 0, j);
			if(i==1) ex=floor_getExit(f, floorW, j);
			if(i==2) ex=floor_getExit(f, j, 0);
			if(i==3) ex=floor_getExit(f, j, floorH);
			if(ex=="Empty") continue;
		
			if(i==0 && floor_getExit(id, floorW, j) == "Empty") {exitTempE[array_length_1d(exitTempE)] = floor_createExit(id, floorW, j, nextExit); added=true;}
			if(i==1 && floor_getExit(id, 0, j) == "Empty") {exitTempW[array_length_1d(exitTempW)] = floor_createExit(id, 0, j, nextExit); added=true;}
			if(i==2 && floor_getExit(id, j, floorH) == "Empty") {exitTempS[array_length_1d(exitTempS)] = floor_createExit(id, j, floorH, nextExit); added=true;}
			if(i==3 && floor_getExit(id, j, 0) == "Empty") {exitTempN[array_length_1d(exitTempN)] = floor_createExit(id, j, 0, nextExit); added=true;}
		}
		if(added) nextExit++;
	}	
	floor_shuffleExit(id, exitTempN);
	floor_shuffleExit(id, exitTempS);
	floor_shuffleExit(id, exitTempE);
	floor_shuffleExit(id, exitTempW);
	
	if (this.hasExitE + this.hasExitW + this.hasExitN + this.hasExitS < 2)
	{
		var spawnDirection = [];
		
		if (this.hasExitE == false)	spawnDirection[array_length_1d(spawnDirection)] = "E";
		if (this.hasExitW == false)	spawnDirection[array_length_1d(spawnDirection)] = "W";
		if (this.hasExitN == false)	spawnDirection[array_length_1d(spawnDirection)] = "N";
		if (this.hasExitS == false)	spawnDirection[array_length_1d(spawnDirection)] = "S";

		var dir = spawnDirection[intRandom(array_length_1d(spawnDirection))];

		var nextOne=0;
		
		if(dir=="E") nextOne = floor_createExit(id, floorW, irandom_range(1, floorH), nextExit);
		if(dir=="W") nextOne = floor_createExit(id, 0, irandom_range(1, floorH), nextExit);
		if(dir=="S") nextOne = floor_createExit(id, irandom_range(1, floorW), floorH, nextExit);
		if(dir=="N") nextOne = floor_createExit(id, irandom_range(1, floorW), 0, nextExit);
		nextExit++;
		
		nextOne.officialExit = true;		
	}
	
}
	
floor_genPath(this);