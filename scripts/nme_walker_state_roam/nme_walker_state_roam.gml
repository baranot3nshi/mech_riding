sprite_index = spr_nme_walker_walk;

move_h_nme(x_spd);

if (distance_to_object(obj_player) < 110 && 
	obj_player.y > y-17 && obj_player.y < y+10 &&
	(obj_player.x < x && dir = -1 ||
	 obj_player.x > x && dir = 1
	))
	
	{
		state = nme_states.atk1;
		atk_step = atk.atk1_init;
		atk_timer = 0;
	}