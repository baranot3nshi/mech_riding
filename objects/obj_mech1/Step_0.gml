if (collision_line( bottom_wall.bbox_left+3 , bottom_wall.bbox_top-1,
					bottom_wall.bbox_right-3, bottom_wall.bbox_top-1,
					obj_player,false,false))
{
	obj_player.can_move = false;
	if (instance_exists(obj_mech1_enter_back)) instance_destroy(enter_back);
	sprite_index = spr_mech1_enter;
}
