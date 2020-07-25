//subtract jump power
if (jump_step = 0)
{
	y_spd = 0;
	y_spd -= jump_power; 
	jump_number -= 1;
	
	grounded = false;
	
		audio_play_sound(sound_jump,5,0);
	
	repeat(6)
	{
		create_dust_particle();
	}
	
	jump_step = 1;
}

//jump state
else if (jump_step = 1)
{
	if (y_spd >= 0)
	{
		state = states.fall;
		jump_step = 0;
	}

	//jump
	player_jump();

	//go to jetpack
	player_jump_atk();

	//go to jetpack
	player_jetpack();

	//player_wall_slide();

	sprite_index = spr_player_jump_upward;

	if (but_JUMP_released) {y_spd++;}
}