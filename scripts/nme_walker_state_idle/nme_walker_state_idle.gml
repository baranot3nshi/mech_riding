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
nme_detect_player(nme_states.atk1,110);
nme_fall();