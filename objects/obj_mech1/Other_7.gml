#region //JUMP
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
#endregion
#region//ENTER
else if (sprite_index = spr_mech1_enter)
{
	state = mech1_states.on_ground;
}
#endregion
#region //ATK
else if (sprite_index = spr_mech1_atk1 || sprite_index = spr_mech1_atk1_init ||
		 sprite_index = spr_mech1_atk2 || sprite_index = spr_mech1_atk2_init)
{
	image_index = image_number - 1;
}

else if (sprite_index = spr_mech1_jump_atk)
{
	jump_atk_step = atk.reset;
}
#endregion