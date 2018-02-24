var this = argument0;
var xPos = argument1;
var yPos = argument2;

for (var i = 0; i < array_length_1d(this.floorList); i++)
{
	var f = this.floorList[i];
	if (f.xPos = xPos && f.yPos = yPos)
	{
		return f;
	}
}
return 0;