var this = argument0;

var spawnDirection = [];
var playerPos = player_getFloor(obj_player);
if (playerPos != 0)
{
	if (!(this.xPos + 1 == playerPos.xPos && this.yPos == playerPos.yPos) && this.hasExitE == true)
	{
		spawnDirection[array_length_1d(spawnDirection)] = "E";
	}
	if (!(this.xPos - 1 == playerPos.xPos && this.yPos == playerPos.yPos) && this.hasExitW == true)
	{
		spawnDirection[array_length_1d(spawnDirection)] = "W";
	}
	if (!(this.xPos == playerPos.xPos && this.yPos + 1 == playerPos.yPos) && this.hasExitS == true)
	{
		spawnDirection[array_length_1d(spawnDirection)] = "S";
	}
	if (!(this.xPos == playerPos.xPos && this.yPos - 1 == playerPos.yPos) && this.hasExitN == true)
	{
		spawnDirection[array_length_1d(spawnDirection)] = "N";
	}
}
else
{
	if (this.hasExitE == true)
	{
		spawnDirection[array_length_1d(spawnDirection)] = "E";
	}
	if (this.hasExitW == true)
	{
		spawnDirection[array_length_1d(spawnDirection)] = "W";
	}
	if (this.hasExitS == true)
	{
		spawnDirection[array_length_1d(spawnDirection)] = "S";
	}
	if (this.hasExitN == true)
	{
		spawnDirection[array_length_1d(spawnDirection)] = "N";
	}
}
return spawnDirection;