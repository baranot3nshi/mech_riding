function drone_shoot() {

	if (but_SHOOT_pressed && shoot_timer = 0)
	{
		if (but_CHARGE_charge && global.AP > global.AP_chunk/2)
		{
			state = drone_states.shoot_charge;
			global.AP -= shoot_charge_AP;
		}
	
		else if (!but_CHARGE_charge && global.AP > global.AP_chunk/5)
		{
			state = drone_states.shoot;
			global.AP -= global.AP_chunk/5;
		}
	}


}
