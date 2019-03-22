player_land();

//not charged
if (jump_atk_step = atk.atk1 && !atk_charged)
{
	//player anim
	if (sprite_index != spr_player_jump_atk) {image_index = 0;}
	sprite_index = spr_player_jump_atk;

	//atkFX
	if (!instance_exists(obj_player_jump_atk))
	{
		//FX offset is set in horizontal movement
		var atk1FX = instance_create_depth(x, y, depth - 5, obj_player_jump_atk);
		atk1FX.image_xscale = image_xscale;
	}
	jump_atk_step = 1;
}

//charged
if (jump_atk_step = atk.atk1 && atk_charged)
{
		//player anim
	if (sprite_index != spr_player_jump_atk) {image_index = 0;}
	sprite_index = spr_player_jump_atk;

	//atkFX
	if (!instance_exists(obj_player_jump_atk))
	{
		//FX offset is set in horizontal movement
		var atkcFX = instance_create_depth(x, y, depth - 5, obj_player_atk_charge);
		atkcFX.image_xscale = image_xscale;
	}
	jump_atk_step = atk.safe;
	atk_charged = false;
}



//goes to step 2 in Animation End

if (jump_atk_step = atk.reset)
{
	atk_charged = false;
	jump_atk_step = 0;
	state = states.fall;
}