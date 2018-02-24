var this = argument0;

if (global.time - this.spawnTime <= obj_player.spawnProtect) 
{
	return true;
}
if (player_getFloor(obj_player) == this)
{
	return true;
}

return false;