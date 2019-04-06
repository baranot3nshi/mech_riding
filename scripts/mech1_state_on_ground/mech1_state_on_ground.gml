//resetting states
atk_step = 0;
jump_atk_step = 0;

jump_number = jump_number_max;

#region shift to other states
//fall
if (!place_meeting(x,y + 1, obj_wall))
{
	state = mech1_states.fall;
}

//jump
if (global.AP > global.charge && charging)	{mech1_jump_charged();}
else										{mech1_jump();}

//atk1
mech1_atk();

//dismount
if (but_TRIANGLE_pressed)
{
	state = mech1_states.wait;
}

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
	
}
else
{
	sprite_index = spr_mech1_idle; 
	walk_timer = 0;
}




#endregion