var this = argument0;
var f = player_getFloor(this);
if (f == 0) return true;
var xPoint = floor((this.x - f.x)/sprite_get_width(spr_path));
var yPoint = floor((this.y - f.y)/sprite_get_height(spr_path));

var exitN = floor_getExit(f, xPoint, yPoint - 1);
var exitS = floor_getExit(f, xPoint, yPoint + 1);
var exitW = floor_getExit(f, xPoint - 1, yPoint);
var exitE = floor_getExit(f, xPoint + 1, yPoint);

if (exitN == 0 && exitS == 0 && exitW == 0 && exitE == 0) return false;

return true;