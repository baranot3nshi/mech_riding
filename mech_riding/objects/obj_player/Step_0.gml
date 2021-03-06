if (global.PAUSE_MENU_show) {input_on = false} else {input_on = true}

if (input_on) 
{
		input_get();

	if (current_mech = mechs.none)
	{
	
	#region human states
	switch(state)
	{
		case states.on_ground:		player_state_on_ground();			break;
		case states.jump:			player_state_jump();				break;
		case states.fall:			player_state_fall();				break;
		case states.wall_slide:		player_state_wall_slide();			break;
		case states.jetpack:		player_state_jetpack();				break;
		case states.ground_atk:		player_state_ground_atk();			break;
		case states.dash:			player_state_ground_atk_charged();	break;
		case states.wall_slide_atk:	player_state_wall_slide_atk();		break;
		case states.jump_atk:		player_state_jump_atk();			break;
		case states.hurt:			player_state_hurt();				break;
		case states.aim:			player_state_aim();					break;
		case states.death:			player_state_death();				break;
	}
	#endregion
	

			mask_index = spr_player_idle;
		
			x_spd_max = human_x_spd_max;
			jump_power = human_jump_power;
			fall_spd_max = human_fall_spd_max;
			sprite_hurt = spr_player_hurt;
	
			sprite_aim = spr_player_idle;
	
	}
	else if (current_mech = mechs.mech1)
	{
		#region mech1 states

	switch(state)
	{
		case states.on_ground:			mech1_state_on_ground();	break;
		case states.jump:				mech1_state_jump();			break;
		case states.fall:				mech1_state_fall();			break;
		case states.ground_atk:			mech1_state_ground_atk();	break;
		case states.dash:				mech1_state_dash();			break;
		case states.jump_atk:			mech1_state_jump_atk();		break;
		case states.jump_atk_charge:	mech1_state_hammer();		break;
		case states.jump_charge:		mech1_state_jump_charge();	break;
		case states.hurt:				player_state_hurt();		break;
		case states.aim:				player_state_aim();			break;
	}
	#endregion
	

			mask_index = spr_mech1_idle;
	
			x_spd_max = mech1_x_spd_max;
			jump_power = mech1_jump_power;
			fall_spd_max = mech1_fall_spd_max;
			sprite_hurt = spr_mech1_hurt;
	
			sprite_aim = spr_mech1_idle;
		
			global.mech1_x = x;
			global.mech1_y = y;
			global.mech1_rm = room;
	
	}
	//=============================================================================================
	#region//things that are done regardless

		if (global.HP <= 0) {state = states.death}

		image_xscale = dir;
		//X INPUT
		if (can_move) {player_input_x();}
		//X APPLY
		apply_x_spd(x_spd);
	
		//Y APPLY
		if (can_fall) {apply_gravity();}	
	
		//charging
		charge_overtime();
	
		visible = true;



	#endregion
	//=============================================================================================
	#region//vulnerability
	if (!vulnerable)
	{
		vul_timer += global.dt
		if (vul_timer >= vul_timer_max)
		{
			vulnerable = true;
			vul_timer = 0;
		}
	
		if (vul_timer % 3 = 0 && alarm[11] = -1) {visible = true ? visible = false : visible = true}
	}
	if (vul_timer = 0) {visible = true;}
	#endregion
	//=============================================================================================

	if (audio_is_playing(snd_jetpack) && state != states.jetpack) {audio_stop_sound(snd_jetpack)}
}