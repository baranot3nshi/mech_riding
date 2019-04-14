x = lerp(x,follow_x,spd)
y = lerp(y,follow_y,spd)

if (x = follow_x && y = follow_y)
{state = drone_states.idle}

drone_shoot();