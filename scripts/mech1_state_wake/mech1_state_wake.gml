
obj_player.state = states.mech;
	
instance_destroy(left_wall);
instance_destroy(right_wall);
instance_destroy(bottom_wall);
instance_destroy(enter_back);


if (sprite_index!= spr_mech1_enter){image_index = 0; sprite_index = spr_mech1_enter;}
obj_player.current_mech = id;
depth = obj_player.depth;

//change of state in Animation End