function nme_state_land() {
	x_spd = 0;
	y_spd = 0;
	sprite_index = sprite_land;

	land_timer += global.dt
	if (land_timer = land_timer_max)
	{
		land_timer = 0;
		state = nme_states.idle
	}


}
