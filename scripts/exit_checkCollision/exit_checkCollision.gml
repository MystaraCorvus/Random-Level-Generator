var this = argument0;
with (this)
{
	var exitIDOther = floor_getExit(floorRef, xPos + 1, yPos);
	if (exitIDOther != "Empty" && exitIDOther != "OutOfBounds")
	{
		floor_setLinked(floorRef, pathIdx, exitIDOther.pathIdx, true);
	}
	exitIDOther = floor_getExit(floorRef, xPos - 1, yPos);
	if (exitIDOther != "Empty" && exitIDOther != "OutOfBounds")
	{
		floor_setLinked(floorRef, pathIdx, exitIDOther.pathIdx, true);
	}
	exitIDOther = floor_getExit(floorRef, xPos, yPos - 1);
	if (exitIDOther != "Empty" && exitIDOther != "OutOfBounds")
	{
		floor_setLinked(floorRef, pathIdx, exitIDOther.pathIdx, true);
	}
	exitIDOther = floor_getExit(floorRef, xPos, yPos + 1);
	if (exitIDOther != "Empty" && exitIDOther != "OutOfBounds")
	{
		floor_setLinked(floorRef, pathIdx, exitIDOther.pathIdx, true);
	}
}