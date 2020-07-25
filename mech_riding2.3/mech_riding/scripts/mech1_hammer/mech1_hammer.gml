function mech1_hammer() {
	if (but_ATK_pressed) 
	{
		global.AP -= global.AP_chunk;
		state = states.jump_atk_charge;	
		hammer_step = 0;
	}


}
