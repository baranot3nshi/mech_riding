/// @description DMG

multi_hit_timer += global.dt


	if (multi_hit_timer >= multi_hit_timer_max) 
	{
		multi_hit_timer = 0;

		instance_create_depth(x,y,depth-5,obj_mech1_dash_atk_destroy_FX)
		dmg_b = instance_create_depth(x,y,depth,obj_wpn_hurtbox);
		dmg_b.sprite_index = sprite_index;
		dmg_b.image_xscale = image_xscale;
		dmg_b.dmg = dmg;
		dmg_b.pushback = pushback;
		//dmg_b.visible = false;
		//dmg_b.image_blend = c_yellow;
	}

