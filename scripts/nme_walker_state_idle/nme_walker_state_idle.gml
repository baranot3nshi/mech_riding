sprite_index = sprite_idle;
grounded = true;
x_spd = 0;

idle_timer++;
if (idle_timer == idle_timer_max)
{
	state = nme_states.roam;
	idle_timer = 0;
}

//go to other states
nme_walker_atk();
nme_fall();