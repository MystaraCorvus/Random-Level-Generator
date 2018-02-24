var color00 = c_red;
var color01 = c_red;
var shBorder = 0;
var shader = sh_unite;
test = true;
ground = spr_floor_first;

var neighborsCount = 0;
if (lvl_getFloor(obj_level, xPos + 1, yPos) != 0) neighborsCount += 1;
if (lvl_getFloor(obj_level, xPos - 1, yPos) != 0) neighborsCount += 2;
if (lvl_getFloor(obj_level, xPos, yPos + 1) != 0) neighborsCount += 4;
if (lvl_getFloor(obj_level, xPos, yPos - 1) != 0) neighborsCount += 8;
UniteSettings(shader, neighborsCount, color00, color01, shBorder);
visible = true;

for(var i = 0; i < array_length_1d(obstacleList); i++)
{
	var obs = obstacleList[i];
	var neighbors = obstacle_getNeighbors(obs, obs.floorRef);
	if(neighbors[0].objectTyp == "Obstacle" && neighbors[1].objectTyp == "Obstacle" && neighbors[2].objectTyp == "Obstacle" && neighbors[3].objectTyp == "Obstacle") {obs.marked[array_length_1d(obs.marked)] = "Inside"; }
	else { if(neighbors[0].objectTyp == "Way" || neighbors[1].objectTyp == "Way" || neighbors[2].objectTyp == "Way" || neighbors[3].objectTyp == "Way") obs.marked[array_length_1d(obs.marked)] = "Outside";
	if(neighbors[0].objectTyp == "Way" && neighbors[1].objectTyp == "Way" && neighbors[2].objectTyp == "Way" && neighbors[3].objectTyp == "Way") obs.marked[array_length_1d(obs.marked)] = "Open"; }
}

for(var i = 0; i < array_length_1d(obstacleList); i++)
{
	var obsChance = random(1);
	var obs = obstacleList[i];
	for (var j = 0; j < array_length_1d(obs.marked); j++)
	{
		if(obs.marked[j] == "Inside")
		{
			if (obsChance <= 0.3)
			{
				obs.marked[array_length_1d(obs.marked)] = "Free"; 
				obs = floor_switchObstacle(id, obs, obj_free);
			}
			if (obsChance <= 0.4 && obsChance > 0.3)
			{
				obs.marked[array_length_1d(obs.marked)] = "Trap"; 
				obs = floor_switchObstacle(id, obs, obj_firewood);
			}
			if (obsChance <= 0.5 && obsChance > 0.4)
			{
				obs.marked[array_length_1d(obs.marked)] = "Poop"; 
				obs = floor_switchObstacle(id, obs, obj_poop);
			}
		}
		if(obs.marked[j] == "Outside")
		{
			if (obsChance <= 0.1)
			{
				obs.marked[array_length_1d(obs.marked)] = "Barrel"; 
				obs = floor_switchObstacle(id, obs, obj_barrel);
			}
			if (obsChance <= 0.2 && obsChance > 0.1)
			{				
				obs.marked[array_length_1d(obs.marked)] = "Trap"; 
				obs = floor_switchObstacle(id, obs, obj_firewood);
			}
			if (obsChance <= 0.3 && obsChance > 0.2)
			{
				obs.marked[array_length_1d(obs.marked)] = "Steel"; 
				obs = floor_switchObstacle(id, obs, obj_steel_block);
			}
			if (obsChance <= 0.6 && obsChance > 0.3)
			{
				obs.marked[array_length_1d(obs.marked)] = "Poop"; 
				obs = floor_switchObstacle(id, obs, obj_poop);
			}
		}
		if(obs.marked[j] == "Open")
		{
			if (obsChance <= 0.1)
			{
				obs.marked[array_length_1d(obs.marked)] = "Trap"; 
				obs = floor_switchObstacle(id, obs, obj_firewood);
			}
			if (obsChance <= 0.3 && obsChance > 0.1)
			{
				obs.marked[array_length_1d(obs.marked)] = "Trap"; 
				obs = floor_switchObstacle(id, obs, obj_spikes);
			}
			if (obsChance <= 0.6 && obsChance > 0.3)
			{
				obs.marked[array_length_1d(obs.marked)] = "Poop"; 
				obs = floor_switchObstacle(id, obs, obj_poop);
			}
			if (obsChance <= 0.65 && obsChance > 0.6)
			{
				obs.marked[array_length_1d(obs.marked)] = "Button"; 
				obs = floor_switchObstacle(id, obs, obj_button);
			}
		}
	}
	
}

if (spriteShaderFirst != 0) 
{
	sprite_delete(spriteShaderFirst);
	spriteShaderFirst = 0;
}
spriteShaderFirst = floor_extractSprite(id, spr_floor_first, spr_floor, spr_wall, obstacleList);