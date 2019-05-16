grounded = false;

if (y_spd >= 0)
{
	state = states.fall;
}

//jump
player_jump();

//atk
if (global.AP > global.charge && charging && got(item.mech_hammer))		{mech1_hammer();}
else																	{mech1_jump_atk();}


sprite_index = spr_mech1_jump_upward;