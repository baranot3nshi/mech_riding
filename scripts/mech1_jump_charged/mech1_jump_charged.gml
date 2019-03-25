if (but_CROSS_pressed && jump_number > 0)
{
	state = mech1_states.jump_charge;
	
	jump_charge_step = 0;
	jump_charge_timer = 0;	
}