//ENTERING MECH

if (collision_line( bottom_wall.bbox_left+3 , bottom_wall.bbox_top-1,
					bottom_wall.bbox_right-3, bottom_wall.bbox_top-1,
					obj_player,false,false))
{
	obj_player.can_move = false;
	obj_player.current_mech = mechs.transition;
	if (instance_exists(obj_mech1_enter_back)) instance_destroy(enter_back);
	sprite_index = spr_mech1_enter;
	
	
	//VFX
	//if (!instance_exists(obj_charged_FX)) instance_create_depth(x,y-20, obj_player.depth - 15, obj_charged_FX)
}

//set dir to facing direction
if (variable_instance_exists(obj_player, dir)) {dir = obj_player.dir;} else {dir = image_xscale;}
image_xscale = dir;