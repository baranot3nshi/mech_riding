locked = false;
state = "closed";

image_speed = 0;
image_index = 0;

var _wall_layer = layer_get_depth("TILES_wall")
wall = instance_create_depth(x,y, _wall_layer + 5, obj_wall)
wall.sprite_index = spr_door_body
wall.visible = true;

wall_open_y = y - tw*3;

spd = .5;
open_dist = tw*2