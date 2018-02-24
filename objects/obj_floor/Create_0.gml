//Constant
objectTyp = "Floor";
marked = [];
floorW = obj_level.floorW;
floorH = obj_level.floorH; 

//State
instExit = initArray2D([], floorW, floorH);
instExitList = [];
link = [];
obstacle = initArray2D([], floorW, floorH);
obstacleList = [];

levelID = obj_level;
spawnTime = 0;
xPos = x / sprite_width;
yPos = y / sprite_height;
hasExitN=false;
hasExitS=false;
hasExitW=false;	
hasExitE=false;
visible = false;
active = true;

ground = spr_floor_first;
spriteShaderFirst = 0;
spriteShaderSecond = 0;

sprite_mini = spr_minimap_floor;

alarm[0] = 1;
test = true;