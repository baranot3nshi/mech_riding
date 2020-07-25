function nme_state_fall() {
	//nme_land

	var _plat = instance_place(x, y + 1, obj_platform)

	sprite_index = sprite_fall;

	if (place_meeting_array(x, y + 1, collider) ||
		(_plat && _plat.bbox_top > bbox_bottom))
	{
		state = nme_states.land;
		grounded = false;
	}


}
