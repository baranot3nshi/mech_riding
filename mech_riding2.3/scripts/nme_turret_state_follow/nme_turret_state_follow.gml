function nme_turret_state_follow() {
	sprite_index = sprite_turn;


	if (image_index = image_number - 1) 
	{
		dir = -dir; 
		state = nme_states.idle;
		sprite_index = sprite_idle;
	}


}
