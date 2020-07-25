//standard door variables
state = "closed";
locked = false;

image_speed = 0;
image_index = 0;

var _wall_layer = layer_get_depth("TILES_wall")
wall = instance_create_depth(x,y, _wall_layer + 5, obj_door_body)

wall_open_y = y - tw*3 - 1;

spd = .5;

//save data
save_key = save_data_key();

//init lock in alarm1
alarm[1] = 2;