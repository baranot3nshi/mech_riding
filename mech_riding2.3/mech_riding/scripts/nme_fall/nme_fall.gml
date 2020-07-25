function nme_fall() {
	//walkoff

	var _collider = [obj_wall, obj_platform, obj_wall_nme]

	if (!collision_line_array(bbox_left,y + 1,bbox_right, y + 1, _collider,false,false))
	{
		state = nme_states.fall;
		grounded = false;
	}


}
