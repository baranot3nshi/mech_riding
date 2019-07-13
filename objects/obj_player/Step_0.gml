input_get();
if (current_mech = mechs.none)
{
	
	#region human states
switch(state)
{
	case states.on_ground:		player_state_on_ground();			break;
	case states.jump:			player_state_jump();				break;
	case states.fall:			player_state_fall();				break;
	case states.jetpack:		player_state_jetpack();				break;
	case states.ground_atk:		player_state_ground_atk();			break;
	case states.dash:			player_state_ground_atk_charged();	break;
	case states.jump_atk:		player_state_jump_atk();			break;
	case states.hurt:			player_state_hurt();				break;
	case states.aim:			player_state_aim();					break;
}
#endregion
	

		mask_index = spr_player_idle;
		
		x_spd_max = human_x_spd_max;
		jump_power = human_jump_power;
		fall_spd_max = human_fall_spd_max;
	
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
	
		x_spd_max = human_x_spd_max;
		jump_power = mech1_jump_power;
		fall_spd_max = mech1_fall_spd_max;
	
		sprite_aim = spr_mech1_idle;
	
}
//=============================================================================================
#region//things that are done regardless

	//X INPUT
	if (can_move) {player_input_x();}
	//X APPLY
	apply_x_spd(x_spd);
	
	//Y APPLY
	if (can_fall) {apply_gravity();}	
	
	//charging
	charge_overtime();
	
	visible = true;
	
	//creating the servodrone
	if (!instance_exists(obj_drone)) {instance_create_depth(x-10,y-10,depth-5,obj_drone)}

#endregion
//=============================================================================================
#region//if riding a mech, twintails should still follow your position

	////failsafe to avoid twintails to move farther from the character when colliding with a wall
	//if (current_mech.colliding)	{x_spd = 0}
	//else						{x_spd = current_mech.x_spd;}

	//y_spd = current_mech.y_spd;
	//dir = current_mech.dir;
	
	//x = current_mech.x + x_spd;
	//y = current_mech.y - 16 +y_spd;
	
	//visible = false;
	//image_xscale = current_mech.image_xscale;

#endregion
//=============================================================================================
#region//vulnerability
if (!vulnerable)
{
	vul_timer++
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