input_get();

switch(state)
{
	case states.on_ground	:	mech1_state_on_ground();	break;
	case states.jump:			mech1_state_jump();			break;
	case states.fall:			mech1_state_fall();			break;
	case states.ground_atk:		mech1_state_ground_atk();	break;
	case states.dash:			mech1_state_dash();			break;
	case states.jump_atk:		mech1_state_jump_atk();		break;
	case states.jump_charge:	mech1_state_jump_charge();	break;
	case states.hurt:			player_state_hurt();		break;
	case states.aim:			player_state_aim();			break;
	
	case states.wait:			mech1_state_wait();			break;
	case states.wake:			mech1_state_wake();			break;
}



if (state < states.wait) //DO THESE THINGS ONLY WHEN ACTIVE
{
	//X INPUT
	if (can_move) {player_input_x();}
	
	//X APPLY
	apply_x_spd(x_spd);
	//Y APPLY
	if (can_fall) {apply_gravity();}
	
	//charge_hold(); //<--- OLD CHARGING SYSTEM
	charge_overtime();
	

}

//vulnerability
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


