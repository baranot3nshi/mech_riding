grounded = false;

player_land();

//==========================================================================================
#region STEP ATK1_INIT
//==========================================================================================
if (jump_atk_step = atk.atk1_init)
{
	jump_atk_step = atk.atk1;
}


#endregion
//==========================================================================================
#region STEP ATK1
//==========================================================================================
if (jump_atk_step = atk.atk1 && (!charging || (charging && global.AP < global.AP_chunk)))
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


#endregion
//==========================================================================================
#region STEP CHARGED (INACTIVE)
//==========================================================================================
//if (jump_atk_step = atk.atk1 && charging && global.AP >= global.AP_chunk)
//{
//		//player anim
//	if (sprite_index != spr_player_jump_atk) {image_index = 0;}
//	sprite_index = spr_player_jump_atk;

//	//atkFX
//	if (!instance_exists(obj_player_jump_atk))
//	{
//		//FX offset is set in horizontal movement
//		var atkcFX = instance_create_depth(x, y, depth - 5, obj_player_atk_charge);
//		atkcFX.image_xscale = image_xscale;
//	}
//	jump_atk_step = atk.safe;
//	atk_charged = false;
//}


#endregion
//==========================================================================================
#region STEP RESET
//==========================================================================================

if (jump_atk_step = atk.reset)
{
	atk_charged = false;
	jump_atk_step = atk.atk1_init;
	state = states.fall;
}
#endregion
//==========================================================================================