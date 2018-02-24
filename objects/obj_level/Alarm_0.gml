if(array_length_1d(EmptyX)>=Amount) return;

var lastX=EmptyX[array_length_1d(EmptyX) - 1];
var lastY=EmptyY[array_length_1d(EmptyY) - 1];

var oldObj = lvl_getFloor(id, lastX, lastY);
var manhattanDist = abs(oldObj.xPos - obj_player.xPos) + abs(oldObj.yPos - obj_player.yPos);
if (manhattanDist == 0)
{
	alarm[0] = obj_player.spawnInterval;
	
	var dirAll = floor_getAllFloorDir(oldObj);
	
	dirAll = shuffleArray(dirAll);
	var blocked = false;

	for (var i = 0; i < array_length_1d(dirAll); i++)
	{
		var dir = dirAll[i];
		
		var nextX=lastX;
		var nextY=lastY;
		
		if(dir=="N") nextY--;
		if(dir=="S") nextY++;
		if(dir=="E") nextX++;
		if(dir=="W") nextX--;
	
		if (i + 1 == array_length_1d(dirAll))
		{
			blocked = true;
		}
	
		var newObj = lvl_getFloor(id, nextX, nextY);
		if(newObj!=0 && floor_isProtected(newObj)) 
		{
			if (blocked == false)
			{
				continue;
			}	
			EmptyX[array_length_1d(EmptyX)]=nextX;
			EmptyY[array_length_1d(EmptyY)]=nextY;
			oldObj.ground = spr_floor;
			newObj.ground = spr_floor_first;
			return;
		}
		if(newObj != 0)
		{
			if (newObj.spriteShaderSecond != 0) 
			{
				sprite_delete(newObj.spriteShaderSecond);
				newObj.spriteShaderSecond = 0;
			}
			newObj.spriteShaderSecond = floor_extractSprite(newObj, spr_floor_first, spr_floor, spr_wall, newObj.obstacleList);
			newObj.alarm[0] = 1;
			oldObj.ground = spr_floor;
			newObj.spawnTime = global.time;
		}
		if (newObj == 0)
		{
			newObj = instance_create_depth(nextX*SizeX, nextY*SizeY, 10, obj_floor);
			ds_map_add(floors, nextX * 10000 + nextY, newObj);
			floorList[array_length_1d(floorList)] = newObj;
			newObj.alarm[0] = 1;
			oldObj.ground = spr_floor;
			newObj.spawnTime = global.time;
		}
		floor_clearFloor(newObj);
		floor_genExit(newObj);
		show_debug_message(string(array_length_1d(floorList)));
		EmptyX[array_length_1d(EmptyX)]=nextX;
		EmptyY[array_length_1d(EmptyY)]=nextY;
		return;
	}
}
else
{
	alarm[0] = 5;	
}