function nme_dasher_roam() {

	if (sprite_index != spr_nme_dasher_walk) 
		{sprite_index = spr_nme_dasher_walk;}
	
	y_spd = 0;
	x_spd = dir * global.dt;

	if (place_meeting_array(x + 8*dir,y,collider))
	{
		dir = -dir;
	}

	if (nme_detect_player_rectangle(300,-8))
	{
		state = nme_states.atk1;
	}


}
