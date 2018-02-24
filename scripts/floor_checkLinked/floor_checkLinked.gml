var this = argument0;

for (var i = 0; i < array_length_2d(this.link, 0); i++)
{
	for (var j = 0; j < array_length_2d(this.link, 0); j++)
	{
		if(floor_isLinked(this, i, j))
		{
			for (var k = 0; k < array_length_2d(this.link, 0); k++) 
			{
				if(floor_isLinked(this, j, k)) 
				{
					floor_setLinked(this, i, k, true);
				}
			}
		}
	}
}