function nme_state_hurt() {
	//GETS HIT IN nme_hurt

	//flashing
	if (hurt_timer = 0) {alarm[11] = 5;}

	//FLY AWAY
	x_spd = lerp(x_spd,0,.1);
	y_spd = lerp(y_spd,0,.1);

	//end atk fase
	hurt_timer += global.dt

	if (hurt_timer = hurt_timer_max)
	{
		hurt_timer = 0;

		//kill if no HP, otherwise go back to idle
		if (HP > 0) 
		{
			state = hurt_reset_state;
			idle_timer = 0;
		}
		else 
		{state = nme_states.dead;}
	
		//turn towards character	
		if (obj_player.dir = 1) {dir = -1}
		else {dir = 1}
	}


}
