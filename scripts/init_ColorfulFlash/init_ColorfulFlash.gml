var Red = argument0;
var Blue = argument1;
var Green = argument2;
var Alpha = argument3;

Red = Red/255;
Blue = Blue/255;
Green = Green/255;
Alpha = Alpha/255;
var colorTemp = [];

colorTemp[0] = Red;
colorTemp[1] = Blue;
colorTemp[2] = Green;
colorTemp[3] = Alpha;
colorTemp[4] = shader_get_uniform(ColorfulFlash, "Colorful");

return colorTemp;