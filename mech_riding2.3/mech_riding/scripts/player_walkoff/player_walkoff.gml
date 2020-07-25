function player_walkoff() {
	//walkoff
	//var _collider = [obj_wall, obj_platform]

	if (!place_meeting(x, y + 1, obj_wall) &&
		!collision_line(bbox_left, y+1,bbox_right, y+1, obj_platform,false,false))
	{
		state = states.fall;
		alarm[0] = 5; //coyote time
	}

	//descend platform
	if (but_down && but_JUMP_pressed && !place_meeting(x,y +1, obj_wall))
	{
		grounded = false;
		state = states.fall;
		//jump_number--; is done in coyote time
	}	

	//ALSO CHECK OUT player_land AND apply_gravity


}
