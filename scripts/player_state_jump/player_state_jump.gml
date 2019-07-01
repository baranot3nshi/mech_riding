grounded = false;

if (y_spd >= 0)
{
	state = states.fall;
}

//jump
player_jump();

//go to jetpack
player_jump_atk();

//go to jetpack
player_jetpack();

sprite_index = spr_player_jump_upward;

if (but_JUMP_released) {y_spd++;}