var this = argument0;
var backgroundSprite = argument1;
var floorSprite = argument2;
var filterSprite = argument3;
var objectList = argument4;

var surf = surface_create(sprite_get_width(floorSprite), sprite_get_height(floorSprite));
surface_set_target(surf);
if(backgroundSprite != false) draw_sprite(backgroundSprite, this.image_index, 0, 0);
for (var i = 0; i < array_length_1d(objectList); i++)
{
	var obs = objectList[i];
	if(obs.objectTyp == "Obstacle") 
	{
		draw_sprite(obs.sprite_index, obs.image_index, obs.x - this.x, obs.y - this.y);
		if(obs.effekt != 0) draw_sprite(obs.effekt.sprite_index, obs.effekt.image_index, obs.x - this.x, obs.y - this.y);
	}
	obs.visible = false;
}
surface_reset_target();
var sprite = sprite_create_from_surface(surf, 0, 0, sprite_get_width(floorSprite), sprite_get_height(floorSprite), false, false, 0, 0);
surface_free(surf);
return sprite;