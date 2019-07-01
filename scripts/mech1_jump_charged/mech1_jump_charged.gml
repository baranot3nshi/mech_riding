if (but_JUMP_pressed && jump_number > 0)
{
	state = states.jump_charge;
	global.AP -= global.AP_chunk/2;
	jump_charge_step = 0;
	jump_charge_timer = 0;	
}