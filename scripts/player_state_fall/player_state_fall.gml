grounded = false;

//go to on_ground
player_land();
//jump
player_jump();
//jump_atk
player_jump_atk();

if (jump_number = 0 && y_spd > 0) {jump_number = -1}

//go to jetpack
if (but_JUMP_charge && jump_number = -1 && got(item.jetpack))
{
	state = states.jetpack;
}

sprite_index = spr_player_jump_downward;

