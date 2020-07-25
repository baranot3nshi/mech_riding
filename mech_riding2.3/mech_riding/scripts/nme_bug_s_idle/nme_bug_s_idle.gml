function nme_bug_s_idle() {
	grounded = true;

	sprite_index = sprite_idle;

	idle_timer += global.dt
	if (idle_timer == idle_timer_max)
	{
		state = nme_states.roam;
		idle_timer = 0;
	}

	nme_fall();


}
