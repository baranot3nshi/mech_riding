function player_state_wall_slide_atk() {
	grounded = false;

	y_spd = .5;

	//smoke
	wall_slide_timer += global.dt;
	if (wall_slide_timer % 3 = 0)
	{
		instance_create_depth(random_range(x-3,x+3)-7*dir,y-random_range(15,21),depth+5,obj_dust_particle)
	}

	player_land();

	//==========================================================================================
#region STEP ATK1_INIT
	//==========================================================================================
	if (human_wall_slide_atk_step = atk.atk1_init)
	{
		human_wall_slide_atk_step = atk.atk1;
	}

#endregion
	//==========================================================================================
#region STEP ATK1
	//==========================================================================================
	if (human_wall_slide_atk_step = atk.atk1 && (!charging || (charging && global.AP < global.AP_chunk)))
	{
		//player anim
		if (sprite_index != spr_player_atk_wall) {image_index = 0;}
		sprite_index = spr_player_atk_wall;

		//atkFX
		if (!instance_exists(obj_player_jump_atk))
		{
			//FX offset is set in horizontal movement
			var atk1FX = instance_create_depth(x, y, depth - 5, obj_player_jump_atk);
			atk1FX.image_xscale = image_xscale;
			atk1FX.sprite_index = spr_player_atk_wall_fx;
		}
		human_wall_slide_atk_step = atk.reset;
	}


#endregion
	//==========================================================================================
#region STEP RESET
	//==========================================================================================

	if (human_wall_slide_atk_step = atk.reset)
	{
		human_wall_slide_atk_step = atk.atk1_init;
		state = states.wall_slide;
	}	
#endregion
	//==========================================================================================


}
