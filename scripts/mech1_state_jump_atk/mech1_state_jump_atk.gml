player_land();
grounded = false;

//==========================================================================================
#region STEP ATK1_INIT
//==========================================================================================
if (jump_atk_step = atk.atk1_init)
{
	
	if (sprite_index != spr_mech1_atk1_init) {image_index = 0;}
	sprite_index = spr_mech1_atk1_init;
	jump_atk_init_timer++;
	
	if (jump_atk_init_timer = jump_atk_init_timer_max)
	{
		jump_atk_step = atk.atk1
		jump_atk_init_timer = 0;
	}
}


#endregion
//==========================================================================================
#region STEP ATK1
//==========================================================================================
if (jump_atk_step = atk.atk1 && (!charging || (charging && global.AP = global.charge)))
{
	//player anim
	if (sprite_index != spr_mech1_jump_atk) {image_index = 0;}
	sprite_index = spr_mech1_jump_atk;

	//atkFX
	if (!instance_exists(obj_mech1_jump_atk))
	{
		//FX offset is set in horizontal movement
		var atk1FX = instance_create_depth(x, y, depth - 5, obj_mech1_jump_atk );
		atk1FX.image_xscale = image_xscale;
	}
	jump_atk_step = 1;
}


#endregion
//==========================================================================================
#region STEP CHARGED (INACTIVE)
//==========================================================================================
//if (jump_atk_step = atk.atk1 && charging && global.AP >= global.charge)
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

//}


#endregion
//==========================================================================================
#region STEP RESET
//==========================================================================================

if (jump_atk_step = atk.reset)
{
	jump_atk_init_timer = 0;
	jump_atk_step = atk.atk1_init;
	state = states.fall;
}
#endregion