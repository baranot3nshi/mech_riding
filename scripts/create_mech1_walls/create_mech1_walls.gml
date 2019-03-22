enter_back = instance_create_depth(x,y,obj_player.depth+5,obj_mech1_enter_back);
enter_back.image_xscale = image_xscale


left_wall =		instance_create_depth(x,y-32+10,depth-10,obj_wall);
left_wall.x = bbox_left+(sprite_get_width(left_wall)/2) - 2* sign(image_xscale)
left_wall.image_yscale =  1.4;
left_wall.image_xscale = .2;


right_wall =	instance_create_depth(x,y-32+10,depth-10,obj_wall);
right_wall.x = bbox_right+(sprite_get_width(left_wall)/2) - 2* sign(image_xscale)
right_wall.image_yscale =  1.4;
right_wall.image_xscale = .2;


bottom_wall =	instance_create_depth(bbox_left,y-10,depth-10,obj_wall);
bottom_wall.image_yscale =  .7;
bottom_wall.image_xscale =  1;

depth = obj_player.depth - 5;

left_wall.visible = false;
right_wall.visible = false;
bottom_wall.visible = false;