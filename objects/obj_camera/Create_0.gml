///ObjectTyp
ObjectTyp = "Camera";

x = obj_player.x;
y = obj_player.y;

offsetX = 1240;
offsetY = 960;

cam = camera_create_view(x, y, offsetX, offsetY, 0, -1, -1, -1, 0, 0);

view_xview = camera_get_view_x(cam);
view_yview = camera_get_view_y(cam);

view_camera[0] = cam;

shake = 0;