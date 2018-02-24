/// @description UniteSettings(MaskSprite,MaskFrame,InnerColour,OuterColour,EdgeThickness);
/// @arg MaskSprite - black and white Unite pattern. Dimensions must match the sprite to be United!
/// @arg MaskFrame - Mask sub-image index
/// @arg InnerColour - eg: c_red, or make_colour_rgb())
/// @arg OuterColour - eg: c_red, or make_colour_rgb())
/// @arg EdgeThickness - from 0 (no colour edge) to 0.99 (full sprite)

//Call in the create event of an object, or when you need to change the colours, mask or thickness of the Unite

_Unite_Shader = shUnite; //Incase you want to change the name of the shader resource

_u_UniteTex = shader_get_sampler_index(_Unite_Shader,"UniteTex");
_u_Unite = shader_get_uniform(_Unite_Shader,"Unite");
_u_UniteUV = shader_get_uniform(_Unite_Shader,"UniteUV"); 
_u_DefaultUV = shader_get_uniform(_Unite_Shader,"DefaultUV"); 
_u_UniteEdge = shader_get_uniform(_Unite_Shader,"Edge");
_u_UniteC1 = shader_get_uniform(_Unite_Shader,"C1");
_u_UniteC2 = shader_get_uniform(_Unite_Shader,"C2");

_UniteTex = sprite_get_texture(argument0,argument1);
_UniteTexUvs = sprite_get_uvs(argument0,argument1);

_UniteC1 = [colour_get_red(argument2)/255,colour_get_green(argument2)/255,colour_get_blue(argument2)/255];
_UniteC2 = [colour_get_red(argument3)/255,colour_get_green(argument3)/255,colour_get_blue(argument3)/255];
_UniteEdge = argument4;
UniteAmount = 0.25;
solid = true;
