var this = argument0;
var xExit = argument1;
var yExit = argument2;

var obs = instance_create_depth(this.x + (sprite_get_width(spr_wall) * xExit), this.y + (sprite_get_height(spr_wall) * yExit), 9, obj_Obstacle);
obs.xPos = xExit;
obs.yPos = yExit;
obs.floorRef = this;

this.obstacle[xExit, yExit] = obs;
this.obstacleList[array_length_1d(this.obstacleList)] = obs;
obs.listID = array_length_1d(this.obstacleList) - 1;
return obs;