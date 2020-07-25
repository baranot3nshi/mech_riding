function nme_turret_state_atk() {
	// CHARGING
	if (atk_step = atk.atk1_init)
	{
		sprite_index = spr_nme_turret_atk_charge;
	
		atk_charge_timer += global.dt;
		if (atk_charge_timer >= atk_charge_timer_max) {atk_step = atk.atk1; atk_charge_timer = 0;}
	}

	// SHOOTING
	if (atk_step = atk.atk1)
	{	
		if (sprite_index != spr_nme_turret_atk)
		{
			//FX
			var FX = instance_create_depth(x+11*dir,y-8,depth-5,obj_FX_parent);
			FX.sprite_index = spr_nme_turret_atk_fx;
			FX.image_xscale = dir;
		
			//PROJECTILE
			var bullet = instance_create_depth(x+11*dir,y-8,depth-6,obj_nme_bullet1);
			bullet.spd = 3;
			bullet.image_xscale = image_xscale;
			bullet.dir = dir;
		
			sprite_index = spr_nme_turret_atk;
		}

		atk_step = atk.reset;
	}

	// RESET
	if (atk_step = atk.reset)
	{
		state = nme_states.idle;
		atk_step = atk.atk1_init;
	}


}
