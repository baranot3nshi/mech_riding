if (but_SQUARE_pressed || (atk_charged = true && but_SQUARE_released))
{
	state = states.ground_atk;
	atk_step = 0;
}