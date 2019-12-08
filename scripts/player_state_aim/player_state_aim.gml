grounded = true;

can_move = false;
x_spd = 0;
sprite_index = sprite_aim;

if (!but_AIM_charge)
{	
	can_move = true;
	state = states.on_ground;
}

player_walkoff();