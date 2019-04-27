grounded = true;

//resetting states
atk_step = 0;
jump_atk_step = 0;
global.charging = true;

jump_number = jump_number_max;

#region shift to other states
//fall
player_walkoff();

//aim
player_aim();

//jump
player_jump();

//atk1
player_atk();

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
}
else
{
	sprite_index = spr_player_idle; 
	walk_timer = 0;
}

#endregion