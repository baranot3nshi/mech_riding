function nme_dasher_atk() {
	// init dash
	if (atk1_step = atk.atk1_init)
	{
		if (sprite_index != spr_nme_dasher_dash_init)
		{
			sprite_index = spr_nme_dasher_dash_init;
			image_index = 0;
		
			x_spd = spd_dash_init*dir;
		}
	
		atk1_step = atk.atk1;

	}

	// start dashing
	if (atk1_step = atk.atk1)
	{
	
		if (abs(x_spd) >= abs(spd_dash)) 
		{
			x_spd = lerp(x_spd,spd_dash*dir,.05)
		}
	
		atk1_timer++
	
		if (atk1_timer >= atk1_timer_max)  
		{	
			atk1_step = atk.atk1_post;
			x_spd = spd_dash*dir;
			atk1_timer = 0;
		}


	}
	// keep dashing
	if (atk1_step = atk.atk1_post)
	{
		sprite_index = spr_nme_dasher_dash;
		x_spd = spd_dash*dir;
	
		if (!nme_detect_player_rectangle(300,-8) && !nme_detect_player_rectangle(-300,-8))
		{
			atk1_step = atk.reset;
		}
	}

	// reset
	if (atk1_step = atk.reset)
	{
		atk1_step = atk.atk1_init;
		state = nme_states.roam;
	}



	// turning around
	if (place_meeting_array(x + 8*dir,y,collider))
	{
		dir = -dir;
	}


}
