input_get();

switch(state)
{
	case mech1_states.on_ground:	mech1_state_on_ground();	break;
	case mech1_states.jump:			mech1_state_jump();			break;
	case mech1_states.fall:			mech1_state_fall();			break;
	case mech1_states.ground_atk:	mech1_state_ground_atk();	break;
	case mech1_states.jump_atk:		mech1_state_jump_atk();		break;
	case mech1_states.jump_charge:	mech1_state_jump_charge();	break;
	case mech1_states.hurt:			mech1_state_hurt();			break;
	
	case mech1_states.wait:			mech1_state_wait();			break;
	case mech1_states.wake:			mech1_state_wake();			break;
}



if (state < mech1_states.wait) //DO THESE THINGS ONLY WHEN ACTIVE
{
	move_player();
	
	//charge_hold(); //<--- OLD CHARGING SYSTEM
	charge_overtime_obj();
	

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


