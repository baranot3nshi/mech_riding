//resetting states
atk_step = 0;
jump_atk_step = 0;
grounded = true;

jump_number = jump_number_max;

#region shift to other states
//fall
player_walkoff();

//jump
if (global.AP > global.charge && charging)	{mech1_jump_charged();}
else										{player_jump();}

//atk1
if (global.AP > global.charge && charging)	{mech1_dash();}
else										{mech1_atk();}

//dismount
if (but_DISMOUNT_pressed)
{state = states.wait;}

//aim
player_aim();

#endregion

#region animation
if (but_right || but_left)
{
	sprite_index = spr_mech1_walk;
	
	//DUST FX
	walk_timer++;
	if (walk_timer %4 = 0)
	{
		create_dust_particle();
	}
	
	//walk sound
	if (walk_timer%15 = 0 || walk_timer = 0) 
	{
		audio_sound_pitch(snd_mech_step,random_range(.8,1.2));
		audio_play_sound(snd_mech_step,5,0);
	}
	
}
else
{
	sprite_index = spr_mech1_idle; 
	walk_timer = 0;
}




#endregion