//JUMP
if (sprite_index = spr_mech1_jump_downward)
{
	image_index = image_number - 1;
}

else if (sprite_index = spr_mech1_exit)
{
	image_index = image_number - 1;
}

else if (sprite_index = spr_mech1_jump_charge)
{
	image_index = image_number - 1;
}

//ENTER
else if (sprite_index = spr_mech1_enter)
{
	state = mech1_states.on_ground;
}

