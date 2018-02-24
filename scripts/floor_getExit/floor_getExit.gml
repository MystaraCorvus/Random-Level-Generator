var this = argument0;
var xPos = argument1;
var yPos = argument2;

if(xPos<0 || yPos< 0|| xPos>this.floorW|| yPos>this.floorH) return "OutOfBounds";
if(this.instExit[xPos,yPos] == 0 ||	!instance_exists(this.instExit[xPos,yPos])) return "Empty";

return this.instExit[xPos,yPos];
