sprite_index = sprite_idle;

x_spd = 0;
y_spd = 0;

idle_timer += global.dt
if (idle_timer == idle_timer_max)
{
	state = nme_states.roam;
	idle_timer = 0;
}

//go to other states