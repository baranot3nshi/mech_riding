function player_state_hurt() {
	grounded = true;

	if (hurt_timer = 0) {alarm[11] = 5;}

	sprite_index = sprite_hurt;

	can_move = false;
	hurt_timer += global.dt

	x_spd = lerp(x_spd, 0, .1);


	if (hurt_timer = hurt_timer_max)
	{
		can_move = true;
		can_fall = true;
	
		state = states.fall;
		hurt_timer = 0;
		can_move = true;
	}


}
