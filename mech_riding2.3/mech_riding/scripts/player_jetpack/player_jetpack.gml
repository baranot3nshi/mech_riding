function player_jetpack() {
	if (but_JUMP_pressed && but_JUMP_charge && jump_number <= 0 && got(item.jetpack) && global.AP > 0)
	{
		y_spd = 0
		state = states.jetpack;
	}


}
