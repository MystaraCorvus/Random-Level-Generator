var this = argument0;
var xTemp = floor((this.x + sprite_get_width(spr_player)/2) / sprite_get_width(spr_floor));
var yTemp = floor((this.y + sprite_get_height(spr_player)/2) / sprite_get_height(spr_floor));
	
return lvl_getFloor(obj_level, xTemp, yTemp);
