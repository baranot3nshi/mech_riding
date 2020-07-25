function nme_celing_gun_atk() {
	var bullet_x = x;
	var bullet_y = y;
	var bullet_angle = 0;



#region directional detection
	//forward

	if(nme_detect_player_triangle_rotated(cone_width,-22.5,-33))
	{
		if (dir = 1)	gun_rot = rotation.forward;
		else			gun_rot = rotation.backward;
	}
	else
	//half forward
	if(nme_detect_player_triangle_rotated(cone_width,-22.5,-56))
	{
		if (dir = 1)	gun_rot = rotation.half_forward;
		else			gun_rot = rotation.half_backward;
	}
	else

	//center
	if(nme_detect_player_triangle_rotated(cone_width,-22.5,-78))
	{
		gun_rot = rotation.center;
	}
	else

	//forward
	if(nme_detect_player_triangle_rotated(cone_width,-22.5,-101))
	{
		if (dir = 1)	gun_rot = rotation.half_backward;
		else			gun_rot = rotation.half_forward;
	}
	else
	//half forward
	if(nme_detect_player_triangle_rotated(cone_width,-22.5,-123))
	{
		if (dir = 1)	gun_rot = rotation.backward;
		else			gun_rot = rotation.forward;
	}
#endregion
#region directional specs

	switch (gun_rot)
	{
		case rotation.forward:			sprite_index = spr_nme_ceiling_gun_forward;
										bullet_x = x+10*dir; bullet_y = y+20;
										bullet_angle = -45;
										break;
									
		case rotation.half_forward:		sprite_index = spr_nme_ceiling_gun_half_forward;	
										bullet_x = x+7*dir; bullet_y = y+22;
										bullet_angle = -67.5;
										break;
									
		case rotation.center:			sprite_index = spr_nme_ceiling_gun_idle;			
										bullet_x = x-0*dir; bullet_y = y+24;
										bullet_angle = -90;
										break;
									
		case rotation.half_backward:	sprite_index = spr_nme_ceiling_gun_half_backward;	
										bullet_x = x-6*dir; bullet_y = y+22;
										bullet_angle = -112.5;
										break;
									
		case rotation.backward:			sprite_index = spr_nme_ceiling_gun_backward;		
										bullet_x = x-9*dir; bullet_y = y+20;
										bullet_angle = -135;
										break;
	}
#endregion

	// charging animation
	if (atk1_step = atk.atk1_init)
	{
		_charge_FX = instance_create_depth(bullet_x,bullet_y,depth-3,obj_nme_ceiling_gun_atk_charge_FX)
		_charge_FX.origin = id;
	
		atk1_step = atk.atk1;
	}

	//shooting
	if (atk1_step = atk.atk1)
	{
		//keep the charge FX in its place
		if (instance_exists(obj_nme_ceiling_gun_atk_charge_FX))
			{
				_charge_FX.x = bullet_x;
				_charge_FX.y = bullet_y;
			}
	
		atk1_timer += global.dt;
	
		if (atk1_timer >= atk1_timer_max)
		{
			var _bullet = instance_create_depth(bullet_x,bullet_y,depth-5,obj_nme_bullet2)
			_bullet.bullet_angle = bullet_angle;
			_bullet.dir = dir;
			instance_create_depth(bullet_x,bullet_y,depth-5,obj_nme_ceiling_gun_atk_shoot_FX)
		
			if (instance_exists(obj_nme_ceiling_gun_atk_charge_FX))
			{instance_destroy(_charge_FX)}
		
			atk1_step = atk.reset;
		}
	}

	// reset
	if (atk1_step = atk.reset)

	{
		atk1_timer = 0;
		atk1_step = atk.atk1_init;
		state = nme_states.idle;
	}


}
