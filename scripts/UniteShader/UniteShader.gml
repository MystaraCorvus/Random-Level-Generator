/// @description UniteShader(Sprite,Frame,x,y,Remaining)
/// @arg Sprite - sprite index
/// @arg Frame - image index
/// @arg x - x
/// @arg y - y
/// @arg Remaining - from 0 (fully transparent) to 1 (fully revealed)

//Call UniteSettings at least once in the object before using this.


//If you have a fixed sprite you could possibly move this to UniteSettings for a minor speed boost
var _UniteSprUvs = sprite_get_uvs(argument0,argument1);

shader_set(_Unite_Shader);
shader_set_uniform_f(_u_Unite,argument4);
shader_set_uniform_f(_u_UniteEdge,_UniteEdge);
shader_set_uniform_f(_u_UniteUV,_UniteTexUvs[0],_UniteTexUvs[1]);
shader_set_uniform_f(_u_DefaultUV,_UniteSprUvs[0],_UniteSprUvs[1]);
shader_set_uniform_f(_u_UniteC1,_UniteC1[0],_UniteC1[1],_UniteC1[2]);
shader_set_uniform_f(_u_UniteC2,_UniteC2[0],_UniteC2[1],_UniteC2[2]);
texture_set_stage(_u_UniteTex,_UniteTex);


draw_sprite(argument0,argument1,argument2,argument3);
//If you need to scale & rotate etc you can use draw_sprite_ext() above instead.
//You must then add each argument to the script as necessary or insert a default value.
//Example:
//draw_sprite_ext(argument0,argument1,argument2,argument3,argument5,argument6,argument7,argument8,argument9);
shader_reset();

UniteAmount += 0.0025;

if (UniteAmount > 1)
{
	solid = false;
	test = false;
	if (spriteShaderFirst != 0) 
	{
		sprite_delete(spriteShaderFirst);
	}
	
	if (spriteShaderSecond != 0) 
	{
		sprite_delete(spriteShaderSecond);
	}
	
	for(var i = 0; i < array_length_1d(obstacleList); i++)
	{
		if(obstacleList[i].objectTyp == "Obstacle") 
		{
			var obs = obstacleList[i];
			obs.visible = true;
			if(obs.effekt != 0) obs.effekt.visible = true;
		}
	}
}
