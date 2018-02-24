//Constant
objectTyp = "Player";
marked = [];
movement_inputs[0] = ord("D");
movement_inputs[1] = ord("W");
movement_inputs[2] = ord("A");
movement_inputs[3] = ord("S");
cameraExt = undefined;
//State
depth = 7;
move_last_x = 0;
move_last_y = 0;
xPos = floor((x + sprite_get_width(spr_player)/2) / sprite_get_width(spr_floor));
yPos = floor((y + sprite_get_height(spr_player)/2) / sprite_get_height(spr_floor));
sprite_mini = spr_minimap_player;
	

//Balancing
distance = 1600; //lvl gen distance
spawnInterval = 30; //spawnTime of lvl secments
spawnProtect = 30;
base_speed = 10;
acceleration = 0.1;
decceleration = 0.2;
move_speed = 0;
move_dir = 0;
knockback = 15;
factorX = 16;
factorY = 12;

room_width = sprite_get_width(spr_floor) * factorX;
room_height = sprite_get_height(spr_floor) * factorY;

x = room_width/2 + sprite_get_width(spr_floor)/2 - sprite_get_width(spr_path);
y = room_height/2 + sprite_get_height(spr_floor)/2 - sprite_get_height(spr_path);

colorArray = init_ColorfulFlash(55, 255, 55, 255);

camRef = instance_create_depth(x, y, 0, obj_camera);


effextvel_x=0;
effextvel_y=0;