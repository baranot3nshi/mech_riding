function nme_jumper_jump() {
	x_spd = 0;
	y_spd = 0;

	y_spd -= jump_power * global.dt;
	x_spd += (jump_length * dir) * global.dt;

	//secure jump height
	y_spd = clamp(y_spd, -jump_power, 0)
	x_spd = clamp(x_spd, -jump_length, jump_length)

	state = nme_states.jump;


}
