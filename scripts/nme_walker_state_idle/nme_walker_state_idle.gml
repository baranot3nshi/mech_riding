sprite_index = sprite_idle;
grounded = true;

idle_timer++;
if (idle_timer == idle_timer_max)
{
	state = nme_states.roam;
	idle_timer = 0;
}