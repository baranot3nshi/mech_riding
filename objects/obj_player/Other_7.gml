//jump
if (sprite_index = spr_player_jump_downward)
{
	image_index = image_number-1;
}

//atk
else if (sprite_index = spr_player_atk1 || sprite_index = spr_player_atk2)
{
	image_index = image_number -1; 
	
}

else if (sprite_index = spr_player_atk1_init)
{
	image_index = image_number -1; 
	
}

else if(sprite_index = spr_player_atk1_charge_anim)
{
	image_index = image_number -1; 
}

else if (sprite_index = spr_player_jump_atk)
{
	jump_atk_step = atk.reset;
}