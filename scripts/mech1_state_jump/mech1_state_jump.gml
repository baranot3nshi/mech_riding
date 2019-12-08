grounded = false;

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
if (jump_step = 1)
{
	if (y_spd >= 0)
	{
		state = states.fall;
	}

	//jump
	player_jump();

	//atk
	if (global.AP > global.AP_chunk && charging && got(item.mech_hammer))		{mech1_hammer();}
	else																		{mech1_jump_atk();}


	sprite_index = spr_mech1_jump_upward;

	if (but_JUMP_released) {y_spd+=1.5;}
}