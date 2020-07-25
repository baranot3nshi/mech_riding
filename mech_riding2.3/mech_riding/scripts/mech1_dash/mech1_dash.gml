function mech1_dash() {
	if (but_ATK_pressed)
	{
		global.AP -= global.AP_chunk/2;
		state = states.dash;
		dash_step = 0;
	}




}
