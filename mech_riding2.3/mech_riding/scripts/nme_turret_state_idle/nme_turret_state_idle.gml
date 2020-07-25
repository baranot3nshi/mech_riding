function nme_turret_state_idle() {
	var col_height = bbox_bottom - bbox_top;

	idle_timer += global.dt;

	sprite_index = sprite_idle;


	/// go to follow ///
	if (nme_detect_player_rectangle(-150,-100))
	{
		idle_timer = 0;
		state = nme_states.follow;
	}

	/// attack ///
	if (nme_detect_player_rectangle(150,-col_height) && idle_timer >= idle_timer_max)
	{
		idle_timer = 0;
		atk_step = atk.atk1_init;
		state = nme_states.atk1;
	}


}
