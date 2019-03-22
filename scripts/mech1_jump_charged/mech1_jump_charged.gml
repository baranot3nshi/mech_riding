if (but_CROSS_pressed && jump_number > 0)
{
	y_spd = 0;
	y_spd -= charge_jump_power; 
	jump_number -= 1;
	state = mech1_states.jump;
	
	global.AP --
}