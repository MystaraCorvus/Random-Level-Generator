var this = argument0;
var f = argument1;
if (f == 0) return false;

var xPoint = floor((this.x - f.x)/sprite_get_width(spr_path));
var yPoint = floor((this.y - f.y)/sprite_get_height(spr_path));

var objCount = 0;
var objArray = [];

objArray[0] = obj_free;
objArray[1] = obj_free;
objArray[2] = obj_free;
objArray[3] = obj_free;
	
var exitN = floor_getExit(f, xPoint, yPoint - 1);
var exitS = floor_getExit(f, xPoint, yPoint + 1);
var exitW = floor_getExit(f, xPoint - 1, yPoint);
var exitE = floor_getExit(f, xPoint + 1, yPoint);

if (exitN != "Empty" && exitN != "OutOfBounds")
{
	objArray[objCount] = exitN;
	objCount++;
}
if (exitS != "Empty" && exitS != "OutOfBounds")
{
	objArray[objCount] = exitS;
	objCount++;
}
if (exitW != "Empty" && exitW != "OutOfBounds") 
{
	objArray[objCount] = exitW;
	objCount++;
}
if (exitE != "Empty" && exitE != "OutOfBounds")
{
	objArray[objCount] = exitE;
	objCount++;
}

var obsN = floor_getObstacle(f, xPoint, yPoint - 1);
var obsS = floor_getObstacle(f, xPoint, yPoint + 1);
var obsW = floor_getObstacle(f, xPoint - 1, yPoint);
var obsE = floor_getObstacle(f, xPoint + 1, yPoint);

objCount = 0;

if (obsN != "Empty" && obsN != "OutOfBounds")
{
	objArray[objCount] = obsN;
	objCount++;
}
if (obsS != "Empty" && obsS != "OutOfBounds")
{
	objArray[objCount] = obsS;
	objCount++;
}
if (obsW != "Empty" && obsW != "OutOfBounds") 
{
	objArray[objCount] = obsW;
	objCount++;
}
if (obsE != "Empty" && obsE != "OutOfBounds")
{
	objArray[objCount] = obsE;
	objCount++;
}
return objArray;