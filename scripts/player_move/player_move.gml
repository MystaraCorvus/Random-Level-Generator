var this = argument0;
var spd = argument1;
var dir = argument2;

with (this)
{
	var xtarg = x + lengthdir_x(spd,dir);
	var ytarg = y + lengthdir_y(spd,dir);
	
	if (place_free(xtarg,ytarg)) 
	{
		if (camRef != undefined)
		{
			camRef.x += xtarg - x;
			camRef.y += ytarg - y;
		}
		
	    x = xtarg;
	    y = ytarg;
		return;
	}
	else 
	{
	    var sweep_interval = 10;
    
	    for (var angle = sweep_interval; angle <= 80; angle += sweep_interval) 
		{
	        for (var multiplier = -1; multiplier <= 1; multiplier += 2) 
			{      
	            var angle_to_check = dir+angle*multiplier;
	            xtarg = x + lengthdir_x(spd, angle_to_check);
	            ytarg = y + lengthdir_y(spd, angle_to_check);
				
	            if (place_free(xtarg,ytarg)) 
				{
					if (camRef != undefined)
					{
						camRef.x += xtarg - x;
						camRef.y += ytarg - y;
					}
					
	                x = xtarg;
	                y = ytarg;  
					return;
	            }
	        }
	    }
	}
 
	move_last_x = 0;
	move_last_y = 0;	
}