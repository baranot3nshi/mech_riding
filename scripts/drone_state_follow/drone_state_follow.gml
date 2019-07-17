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

drone_shoot();