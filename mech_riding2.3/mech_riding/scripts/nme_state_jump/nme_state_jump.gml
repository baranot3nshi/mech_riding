function nme_state_jump() {
	sprite_index = sprite_jump;
	grounded = false;

	if (y_spd >= 0)
	{
		state = nme_states.fall;
	}




}
