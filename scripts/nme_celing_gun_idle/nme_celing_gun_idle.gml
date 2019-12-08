enum rotation {
forward,
half_forward,
center,
half_backward,
backward
}


	
if (!nme_detect_player_triangle_rotated(cone_width,-112.5,-33))
{
	sprite_index = spr_nme_ceiling_gun_idle;
	
	idle_timer++;

	if (idle_timer >= idle_timer_max)
	{
		state = nme_states.roam;
		idle_timer = 0;
	}
}

else
{
		state = nme_states.atk1;
		idle_timer = 0;
}