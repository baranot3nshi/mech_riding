if (but_CROSS_pressed && jump_number > 0)
{
	y_spd = 0;
	y_spd -= jump_power; 
	jump_number -= 1;
	state = mech1_states.jump
	repeat(6) {create_dust_particle();}
}