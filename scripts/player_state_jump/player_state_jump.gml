grounded = false;

if (y_spd >= 0)
{
	state = states.fall;
}

//jump
player_jump();

player_jump_atk();

sprite_index = spr_player_jump_upward;