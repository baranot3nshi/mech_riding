function mech1_state_hammer() {
	x_spd = 0;

	//==========================================================================================
#region//jump upwards a little
	//==========================================================================================
	if (hammer_step = atk.atk1_init)
	{
		image_index = 0;
		sprite_index = spr_mech1_jump_atk_charge_init;
		y_spd = 0;
		y_spd -= 2*global.dt;
		hammer_timer += global.dt
		if (hammer_timer >= hammer_timer_max)
		{
			hammer_step = 1;
			hammer_timer = 0;
		}
	}
#endregion
	//==========================================================================================
#region//start attack
	//==========================================================================================
	if (hammer_step = atk.atk1)
	{
		y_spd = lerp(y_spd,0,.07)
		if (y_spd >= 0) 
		{
			image_index = 0;
			sprite_index = spr_mech1_jump_atk_charge;
		
			can_move = false;
		
			hammer_FX = instance_create_depth(x,y,depth-5,obj_mech1_jump_atk_charge)
			hammer_FX.image_xscale = dir;
			y_spd = 4*global.dt;
			hammer_step = 2;
		}
	}
#endregion
	//==========================================================================================
#region//falling and land
	//==========================================================================================
	if (hammer_step = atk.atk1_post)
	{
		var _plat = instance_place(x, y + 1, obj_platform)
		if (
				(
					place_meeting(x, y + 1, obj_wall) ||
					(_plat && _plat.bbox_top > bbox_bottom)
					&& !but_down
				)
				|| but_JUMP_pressed || but_ATK_pressed)
		{
			if (sprite_index != spr_mech1_jump_atk_charge_post)
			{
				y_spd = 0;
				sprite_index = spr_mech1_jump_atk_charge_post;
				image_index = 0;
			
				if (instance_exists(obj_mech1_jump_atk_charge))
				{hammer_FX.sprite_index = spr_mech1_jump_atk_charge_post_fx;}
			
				global.screenshake = 15;
				global.screenfreeze = 10;
			}
			//back to idle in animation end
		}
	}
#endregion
	//==========================================================================================
#region//reset
	//==========================================================================================
	if (hammer_step = atk.reset)
	{
		state = states.on_ground;
		hammer_step = atk.atk1_init;
		hammer_timer = 0;
		can_move = true;
	}
#endregion
	//==========================================================================================


}
