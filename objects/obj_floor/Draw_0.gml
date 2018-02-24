if (test == true)
{
	if (UniteAmount <= 1) 
	{
		if (spriteShaderSecond != 0) draw_sprite(spriteShaderSecond, image_index, x, y);
		if (spriteShaderFirst != 0) UniteShader(spriteShaderFirst, image_index, x, y,UniteAmount);
	}
	else
	{
		draw_sprite(ground, image_index, x, y);
	}
}
else
{
	draw_sprite(ground, image_index, x, y);
}