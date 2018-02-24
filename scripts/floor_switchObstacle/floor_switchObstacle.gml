var this = argument0;
var oldObs = argument1;
var newObs = argument2;

newObs = instance_create_depth(oldObs.x, oldObs.y, oldObs.depth, newObs);

this.obstacleList[oldObs.listID] = newObs;
this.obstacle[oldObs.xPos, oldObs.yPos] = newObs;
newObs.xPos = oldObs.xPos;
newObs.yPos = oldObs.yPos;	
newObs.floorRef = oldObs.floorRef;
newObs.listID = oldObs.listID;
newObs.marked = oldObs.marked;
instance_destroy(oldObs);

return newObs;