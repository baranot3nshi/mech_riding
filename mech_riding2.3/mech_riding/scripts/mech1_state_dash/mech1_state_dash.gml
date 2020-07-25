function mech1_state_dash() {
	can_move = false;
	//can_fall = false;
	//grounded = true;

	enum dash {
		init,
		dash,
		skid,
		drill,
		drill_post,
		jump,
		jump_post,
		reset
	}

	//==========================================================================================
#region INIT
	//==========================================================================================
	if (dash_step = dash.init)
	{
		sprite_index = spr_mech1_dash_init;
	
		x_spd = 0;
	
	
		dash_init_timer += global.dt;
		if (dash_init_timer = dash_init_timer_max)
		{
			x_spd = dash_spd * dir * global.dt;
		
			dash_step = dash.dash;
			dash_init_timer = 0;	
		
			dash_wall = instance_create_depth(x+10*dir,y-32,depth,obj_push_nme);
			dash_wall.dir = dir;
			dash_wall.image_xscale = image_xscale;
			dash_wall.image_yscale = 2;
			//dash_wall.visible = true;
		
			dash_FX = instance_create_depth(x,y,depth+5, obj_dash_FX)
			dash_FX.image_xscale = image_xscale;
		}
	}
#endregion
	//==========================================================================================
#region DASH
	//==========================================================================================
	if (dash_step = dash.dash)
	{
		sprite_index = spr_mech1_dash;
	
		x_spd = lerp (x_spd, 0, .1)
		vulnerable = false;
		vul_timer = -1;
	
		if (instance_exists(dash_wall))
		{
			dash_wall.x = x+10*dir;
			dash_wall.y = y-32;
		}
	
		//END
		dash_timer += global.dt
		if (dash_timer = dash_timer_max)
		{
			if (instance_exists(obj_push_nme)){instance_destroy(dash_wall)}
			dash_step = dash.reset;
			dash_timer = 0;
			vulnerable = true;
		}
	
		//GO TO DASH JUMP
		if (but_JUMP_pressed)
			{
				dash_step = dash.jump;
				grounded = false;
				y_spd -= jump_power;
				dash_timer = 0;
				x_spd = (dash_spd/2) * dir * global.dt;
			}
	
		//GO TO DASH ATK
		if (but_ATK_pressed)
		{
			if (got(item.mech_dash_atk))
			{
				//dash atk movement
				if (instance_exists(obj_dash_FX)) {instance_destroy(obj_dash_FX);}
				x_spd = (dash_spd/3) * dir * global.dt;
				dash_step = dash.drill;
				dash_timer = 0;
			}
			else
			{
				dash_step = dash.skid;
			}
		}
	}
#endregion
	//==========================================================================================
#region SKID
	//==========================================================================================
	if (dash_step = dash.skid)
	{
		dash_atk_timer += global.dt;
		vul_timer = -1;
		x_spd = lerp(x_spd, 0, .1)
	
			
		if (dash_atk_timer >= dash_atk_timer_max)
		{
			if (instance_exists(dash_wall)){instance_destroy(dash_wall)}
			if (instance_exists(obj_dash_FX)) {instance_destroy(obj_dash_FX);}
			dash_step = dash.reset;
			dash_timer = 0;
			vulnerable = true;
		}
	}
#endregion
	//==========================================================================================
#region JUMP
	//==========================================================================================
	if (dash_step = dash.jump)
	{
		sprite_index = spr_mech1_jump_upward;
		vulnerable = true;
	
		x_spd = lerp (x_spd, 0, .02)
	
		dash_timer += global.dt;
	
		if (dash_timer > 10 && player_land())
		{
			dash_step = dash.reset;
		}
		else if (dash_timer > 50) {dash_step = dash.reset;}
	
	}

#endregion
	//==========================================================================================
#region DRILL
	//==========================================================================================
	if (dash_step = dash.drill)
	{
		sprite_index = spr_mech1_dash_atk;
		dash_atk_timer += global.dt
	
		vul_timer = -1
	
		if (instance_exists(dash_wall))
		{
			dash_wall.x = x+10*dir;
			dash_wall.y = y-32;
		}
	
		x_spd = lerp (x_spd, 0, .2)
	
		if (!instance_exists(obj_mech1_dash_atk))
		{
			var fx = instance_create_depth(x*dir,y,depth-5,obj_mech1_dash_atk);
			fx.image_xscale = image_xscale
		}
	
		if (dash_atk_timer = dash_atk_timer_max)
		{
			vulnerable = true;
			if (instance_exists(obj_push_nme)){instance_destroy(dash_wall)}
			dash_step = dash.drill_post;
			dash_atk_timer = 0;
		}
	}
#endregion
	//==========================================================================================
#region DASH ATK POST
	//==========================================================================================
	if (dash_step = dash.drill_post)
	{
		sprite_index = spr_mech1_dash_atk_post;	
	
		if (instance_exists(obj_mech1_dash_atk))
		{
			instance_destroy(obj_mech1_dash_atk);
		}
	
		//GOES TO RESET IN ANIMATION END
	}

#endregion
	//==========================================================================================
#region RESET
	//==========================================================================================
	if (dash_step = dash.reset)
	{
		if (instance_exists(obj_dash_FX)) {instance_destroy(obj_dash_FX);}
		if (instance_exists(obj_push_nme)){instance_destroy(dash_wall)}
	
		vulnerable = true;
		dash_init_timer = 0;
		dash_timer = 0;
		dash_atk_timer = 0;
		dash_step = 0;
	
		x_spd = 0;
	
		can_move = true;
		can_fall = true;
		state = states.on_ground;
	}

#endregion


}
