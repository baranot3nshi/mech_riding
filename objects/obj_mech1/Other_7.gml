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
#region //ENTER
else if (sprite_index = spr_mech1_enter)
{
	state = states.on_ground;
}
#endregion
#region //ATK
else if (sprite_index = spr_mech1_atk1 || sprite_index = spr_mech1_atk1_init ||
		 sprite_index = spr_mech1_atk2 || sprite_index = spr_mech1_atk2_init)
{
	image_index = image_number - 1;
}
#endregion
#region //JUMP ATK
else if (sprite_index = spr_mech1_jump_atk_init)
{
	image_index = image_number - 1;
}

else if (sprite_index = spr_mech1_jump_atk)
{
	jump_atk_step = atk.reset;
}
#endregion
#region //DASH
else if (sprite_index = spr_mech1_dash_init)
{
	image_index = image_number - 1;
}

else if (sprite_index = spr_mech1_dash_atk_post)
{
	dash_step = dash.reset;
}
#endregion
#region //HAMMER
else if (sprite_index = spr_mech1_jump_atk_charge_init)
{
	image_index = image_number - 1;
}
else if (sprite_index = spr_mech1_jump_atk_charge)
{
	image_index = 0;
	sprite_index = spr_mech1_jump_atk_charge_loop;
	hammer_FX.sprite_index = spr_mech1_jump_atk_charge_loop_fx;
}
else if (sprite_index = spr_mech1_jump_atk_charge_post)
{
	hammer_step = atk.reset;
	image_index = image_number - 1;
}
#endregion