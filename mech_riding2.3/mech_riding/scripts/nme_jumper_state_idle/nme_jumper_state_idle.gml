function nme_jumper_state_idle() {
	sprite_index = sprite_idle;

	idle_timer += global.dt
	if (idle_timer >= idle_timer_max)
	{
		//direction
		if (place_meeting (x+20*dir,y-32,obj_wall))
		{dir = -dir;}
	
		//charge jump
		sprite_index = spr_nme_jumper_jump_init;
	
		jump_timer += global.dt	
		if (jump_timer > jump_timer_max) 
		{
			if (x_spd = 0 && y_spd = 0) 
			{nme_jumper_jump();}
			jump_timer = 0;
			idle_timer = 0;
		}
	}
	else
	{
		x_spd = lerp(x_spd, 0, .1);
		y_spd = lerp(y_spd, 0, .1);
	}

	//secure jump height
	y_spd = clamp(y_spd, -jump_power, 0)
	x_spd = clamp(x_spd, -jump_length, jump_length)

	nme_fall();


}
