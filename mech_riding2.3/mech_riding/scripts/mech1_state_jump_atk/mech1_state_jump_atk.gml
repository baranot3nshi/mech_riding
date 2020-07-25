function mech1_state_jump_atk() {
	grounded = false;

	//==========================================================================================
#region STEP ATK1_INIT
	//==========================================================================================
	if (mech1_jump_atk_step = atk.atk1_init)
	{
	
		if (sprite_index != spr_mech1_jump_atk_init) {image_index = 0;}
		sprite_index = spr_mech1_jump_atk_init;
		mech1_jump_atk_init_timer += global.dt
	
		if (mech1_jump_atk_init_timer = mech1_jump_atk_init_timer_max)
		{
			mech1_jump_atk_step = atk.atk1
			mech1_jump_atk_init_timer = 0;
		}
	}


#endregion
	//==========================================================================================
#region STEP ATK1
	//==========================================================================================
	if (mech1_jump_atk_step = atk.atk1 && (!charging || (charging && global.AP = global.AP_chunk)))
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
		mech1_jump_atk_step = atk.reset;
	}


#endregion
	//==========================================================================================
#region STEP RESET
	//==========================================================================================

	if (mech1_jump_atk_step = atk.reset || player_land())
	{
		mech1_jump_atk_init_timer = 0;
		mech1_jump_atk_step = atk.atk1_init;
		state = states.fall;
	}
#endregion


}
