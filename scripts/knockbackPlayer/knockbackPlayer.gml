var this = argument0;

var dir = point_direction(0, 0, this.move_last_x * -1, this.move_last_y * -1);
var spd = this.knockback;


with (this)
{
	var xtarg = x + lengthdir_x(spd,dir);
	var ytarg = y + lengthdir_y(spd,dir);
 
	if (place_free(xtarg,ytarg)) 
	{
	    x = xtarg;
	    y = ytarg;
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
	                x = xtarg;
	                y = ytarg;  
	                exit;       
	            }   
	        }
	    }
	}
}