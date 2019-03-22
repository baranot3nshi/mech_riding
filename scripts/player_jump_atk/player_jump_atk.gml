if (but_SQUARE_pressed || (atk_charged && but_SQUARE_released)) 
{
	state = states.jump_atk;	
	jump_atk_step = 0;
}