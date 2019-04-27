grounded = false;

//go to on_ground
player_land();
//jump
player_jump();
//jump_atk
player_jump_atk();

//go to jetpack

if (jump_number = 0 && y_spd > 0) {jump_number = -1}

if (but_JUMP_charge && jump_number = -1)
{
	state = states.jetpack;
}

sprite_index = spr_player_jump_downward;

