grounded = true;

//resetting states
atk_step = 0;
jump_atk_step = 0;

jump_number = jump_number_max;

#region shift to other states
//fall
player_walkoff();

//aim
player_aim();

//jump
player_jump();

//atk1
if (global.AP > global.AP_chunk/2 && charging)		{player_atk_charged();}
else												{player_atk();}

#endregion

#region animation
if (but_right || but_left)
{
	sprite_index = spr_player_walk;
	
	//DUST FX
	walk_timer++;
	if (walk_timer %5 = 0)
	{
		create_dust_particle();
	}
	
	//walk sound
	if (walk_timer%15 = 0 || walk_timer = 0) 
	{
		audio_sound_pitch(snd_step,random_range(.8,1.2));
		audio_play_sound(snd_step,5,0);
	}
}
else
{
	sprite_index = spr_player_idle; 
	walk_timer = 0;
}

#endregion