var this = argument0;

var spawnDirection = [];
var countDirection = 0;


var exitColl = floor_getExit(this.floorRef, this.xPos + 1, this.yPos);
if (exitColl == "Empty")
{
	spawnDirection[countDirection] = "E";
	countDirection++;
}
exitColl = floor_getExit(this.floorRef, this.xPos - 1, this.yPos);
if (exitColl == "Empty")
{
	spawnDirection[countDirection] = "W";
	countDirection++;
}
exitColl = floor_getExit(this.floorRef, this.xPos, this.yPos + 1);
if (exitColl == "Empty")
{
	spawnDirection[countDirection] = "S";
	countDirection++;
}
exitColl = floor_getExit(this.floorRef, this.xPos, this.yPos - 1);
if (exitColl == "Empty")
{
	spawnDirection[countDirection] = "N";
	countDirection++;
}

if (countDirection > 0)
{
	var countDirectionTemp = intRandom(countDirection);
		
	switch (spawnDirection[countDirectionTemp])
	{
		case ("E"):
		{
			floor_createExit(this.floorRef, this.xPos + 1, this.yPos, this.pathIdx);
			break;
		}
		case ("W"):
		{
			floor_createExit(this.floorRef, this.xPos - 1, this.yPos, this.pathIdx);
			break;
		}
		case ("S"):
		{
			floor_createExit(this.floorRef, this.xPos, this.yPos + 1, this.pathIdx);
			break;
		}
		case ("N"):
		{
			floor_createExit(this.floorRef, this.xPos, this.yPos - 1, this.pathIdx);
			break;
		}
		default:
		{
			break;
		}
	}	
}

exit_checkCollision(this);