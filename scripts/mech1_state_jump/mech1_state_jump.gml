grounded = false;

if (y_spd > 0)
{
	state = states.fall;
}

//jump
player_jump();

mech1_jump_atk();


sprite_index = spr_mech1_jump_upward;