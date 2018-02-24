var this = argument0;

var numPathsIdxs = floor_numExit(this);

for(var xx = 0; xx < numPathsIdxs - 1; xx += 1)  //-1 weil letzte Abfrage Unnötig
{
	for(var yy = xx; yy < numPathsIdxs; yy += 1) 
	{
		if (floor_isLinked(this, xx, yy) == false)
		{	
			return false;
		}			
	}
}
return true;