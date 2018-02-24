var this = argument0;
var xPos = argument1;
var yPos = argument2;

if(xPos<0 || yPos< 0|| xPos>this.floorW|| yPos>this.floorH) return "OutOfBounds";
if(this.obstacle[xPos,yPos] == 0 || !instance_exists(this.obstacle[xPos,yPos])) return "Empty";

return this.obstacle[xPos,yPos];