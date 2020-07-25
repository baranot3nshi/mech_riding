function drone_state_follow() {
	if (!instant)
	{
		x = lerp(x,follow_x,spd*global.dt)
		y = lerp(y,follow_y,spd*global.dt)
	}
	else
	{
		x = follow_x;
		y = follow_y;
		if (x = follow_x) instant = false;
	}

	if (x = follow_x && y = follow_y)
	{state = drone_states.follow}

	if (global.dt != 0) drone_shoot();


}
