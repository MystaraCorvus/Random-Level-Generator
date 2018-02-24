///Constant 
objectTyp = "Level";
marked = [];

SizeX = sprite_get_width(spr_floor);
SizeY = sprite_get_height(spr_floor);
floorW = SizeX/sprite_get_width(spr_path) - 1;
floorH = SizeY/sprite_get_height(spr_path) - 1;
roomW = room_width/SizeX;
roomH = room_height/SizeY;
var xPos = roomW/2;
var yPos = roomH/2;

///State
EmptyX=[xPos];
EmptyY=[yPos];
global.time = 0;

///Balancing
//Amount of floor tiles to be created
Amount = 2000;
Border = -2;
floors = ds_map_create();

///StartGenerating
var startFloor = instance_create_depth(xPos * SizeX, yPos * SizeY, 10, obj_floor);
ds_map_add(floors, xPos * 10000 + yPos, startFloor);
floorList[0] = startFloor;
floor_startRoom(startFloor);
alarm[0] = obj_player.spawnInterval;
