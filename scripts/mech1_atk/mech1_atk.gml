if (but_SQUARE_pressed || (atk_charged = true && but_SQUARE_released))
{
	state = mech1_states.ground_atk;
	atk_step = 0;
}