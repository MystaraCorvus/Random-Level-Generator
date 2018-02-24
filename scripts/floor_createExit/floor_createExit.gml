var this = argument0;
var xExit = argument1;
var yExit = argument2;
var pathValue = argument3;

var ex = instance_create_depth(this.x + (sprite_get_width(spr_path) * xExit), this.y + (sprite_get_height(spr_path) * yExit), 9, obj_room_exit);

ex.xPos = xExit;
ex.yPos = yExit;
ex.floorRef = this;
ex.pathIdx = pathValue;

if(ex.xPos==0) this.hasExitW=true;
if(ex.yPos==0) this.hasExitN=true;
if(ex.xPos==this.floorW) this.hasExitE=true;
if(ex.yPos==this.floorH) this.hasExitS=true;

this.instExit[xExit, yExit] = ex;
this.instExitList[array_length_1d(this.instExitList)] = ex;
return ex;