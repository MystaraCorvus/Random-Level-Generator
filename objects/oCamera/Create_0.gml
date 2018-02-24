camera = camera_create();
x = obj_player.x;
y = obj_player.y;

offsetX = 1240;
offsetY = 960;

var vm = matrix_build_lookat(x,y,-10,obj_player.x,obj_player.y,0,0,1,0);
var pm = matrix_build_projection_ortho(offsetX,offsetY,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

follow = obj_player;

xTo = x;
yTo = y;
