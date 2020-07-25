function nme_turret_shield_state_atk() {
	// SHIELD RAISE
	if (atk_step = atk.atk1_init)
	{
		if (sprite_index != spr_nme_shield_turret_raise)
		{
			sprite_index = spr_nme_shield_turret_raise;
			image_index = 0;
		}
	
		raise_timer += global.dt;
		if (raise_timer >= raise_timer_max) 
		{
			raise_timer = 0;
			atk_step = atk.atk1;
			toggle_shield_horizontal(false)
		}
	}

	// CHARGING
	if (atk_step = atk.atk1)
	{
		if (sprite_index != spr_nme_shield_turret_atk_charge)
		{
			sprite_index = spr_nme_shield_turret_atk_charge;
			image_index = 0;
		}
	
		atk_charge_timer += global.dt;
		if (atk_charge_timer >= atk_charge_timer_max) {atk_step = atk.atk1_post; atk_charge_timer = 0;}
	}

	// SHOOTING
	if (atk_step = atk.atk1_post)
	{	
		if (sprite_index != spr_nme_shield_turret_atk)
		{
			//FX
			var FX = instance_create_depth(x+11*dir,y-8,depth-5,obj_FX_parent);
			FX.sprite_index = spr_nme_turret_atk_fx;
			FX.image_xscale = dir;
		
			//PROJECTILE
			var bullet = instance_create_depth(x+11*dir,y-8,depth-6,obj_nme_bullet1);
			bullet.spd = 3*dir;
			bullet.image_xscale = image_xscale;
			bullet.dir = dir;
		
			sprite_index = spr_nme_shield_turret_atk;
			image_index = 0;
		}

		atk_step = atk.reset;
	}

	// LOWER AND RESET
	if (atk_step = atk.reset)
	{
	
		if (sprite_index != spr_nme_shield_turret_lower)
		{
			sprite_index = spr_nme_shield_turret_lower;
			image_index = 0;
		}
	
		lower_timer += global.dt;
		if (lower_timer >= lower_timer_max) 
		{
			toggle_shield_horizontal(true)
			lower_timer = 0;
			state = nme_states.idle;
			atk_step = atk.atk1_init;
		}

	}




}
