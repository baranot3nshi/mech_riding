grounded = false;
//go to on_ground
player_land();
//jump
mech1_jump();
//jump_atk
if (global.AP > global.AP_chunk && charging && got(item.mech_hammer))		{mech1_hammer();}
else																	{mech1_jump_atk();}

//go to jetpack

if (jump_number = 0 && y_spd > 0) {jump_number = -1}

if (sprite_index!= spr_mech1_jump_downward){image_index = 0; sprite_index = spr_mech1_jump_downward;}
